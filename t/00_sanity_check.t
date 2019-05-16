use strict;
use warnings;
use Test::More tests => 5; # With forks you never know... 69 in fact, but who cares?
use utf8;
use Encode;
use File::Temp;
use POSIX ':sys_wait_h';

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

my $second_engine = eval { new TurboXSLT };
is($second_engine, undef, 'Multiple instances of TurboXSLT are not allowed');

my $RegOk = 0;
eval {
	$engine->RegisterCallback('ltr:my_callback', sub {join '/',@_});
	$RegOk = 1;
};
ok($RegOk, 'RegisterCallback call works');

my $tmp = File::Temp->new();
my $TmpFilename = $tmp->filename();

open TPFH, ">", $TmpFilename;
print TPFH "FAIL\n";
close TPFH;

my $ctx = $engine->LoadStylesheet("t/test.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my $Threads = 4;

for my $ForkChild (1..4) {
	my $PID = fork();

	if ($PID) {
		if ($ForkChild == 4) {
			waitpid(-1, 0);
			exit;
		}
	} else {
		Test($engine, $ctx);
		last;
	}
}

sub Test {

	my $engine = shift;
	my $ctx = shift;

	my $ChildPID = $$;

	$engine->CreateThreadPool($Threads);
	pass("$ChildPID: CreateThreadPool($Threads) - no die");

	my $source =<<_XML
<foo>
  <bar developer1="жует печеньку" deve-Loper2="тоже хочет печенье" To_Pol="26755344">
    <xxx t="zzz"/>
  </bar>
</foo>
_XML
;
	my $expected=<<_XML
<?xml version="1.0"?>
<FOO>фуу

  <BAR>
    <XXX>my/path/zzz</XXX>
  </BAR>
</FOO>
_XML
;

	my $doc = $engine->Parse($source);
	isa_ok($doc, 'TurboXSLT::Node', "$ChildPID: Parsed document ($Threads threads)");

	my $text = $ctx->Output($doc);
	like($text, qr/<bar/, "$ChildPID: Document from TurboXSLT::Node ($Threads threads)");

	my $res = $ctx->Transform($doc);
	isa_ok($res, 'TurboXSLT::Node', "$ChildPID: DOM after Transform ($Threads threads)");

	$text = $ctx->Output($res);
	ok(Encode::is_utf8($text), "$ChildPID: Correct UTF-bit on Output ($Threads threads)");

	unless (Encode::is_utf8($text)) {
		$text = Encode::decode_utf8($text);
	}

	like($text, qr|<XXX>my/path/zzz</XXX>|, "$ChildPID: Callback receives parameters as an array ($Threads threads)");

	for ($expected, $text) {
		s/\s+/ /g;
	}

	cmp_ok($text, 'eq', $expected, "$ChildPID: Transformation 100% correct ($Threads threads)");

	my $node = $ctx->FindNodes($doc, '/foo/bar/@developer1');
	isa_ok($doc, 'TurboXSLT::Node', "FindNodes()");

	my $StringVal = $node->StringValue();
	ok($StringVal, 'StringValue() returns something');
	ok(Encode::is_utf8($StringVal),"$ChildPID: Correct UTF-bit on StringValue ($Threads threads)");

	my $StringVal1 = $node->StringValue();
	cmp_ok($StringVal, 'eq', $StringVal1, "$ChildPID: StringValue returns the same data next time");

	unless (Encode::is_utf8($StringVal)) {
		$StringVal = Encode::decode_utf8($StringVal, 0);
	}
	cmp_ok($StringVal, 'eq', qq{жует печеньку}, "$ChildPID: StringValue() evaluated correctly ($Threads threads)");

	my $Attr = $ctx->FindNodes($doc, '/foo/bar')->Attributes();
	is (ref($Attr), ref({}),'->Attributes() is HASH');
	cmp_ok($Attr->{To_Pol}, '==', 26755344, "$ChildPID: ->Attributes() digit value ($Threads threads)");

	ok(Encode::is_utf8($Attr->{'deve-Loper2'}), "$ChildPID: Attributes hash values have UTF bit on ($Threads threads)");

	unless (Encode::is_utf8($Attr->{'deve-Loper2'})) {
		$Attr->{'deve-Loper2'} = Encode::decode_utf8($Attr->{'deve-Loper2'}, 0);
	}
	cmp_ok($Attr->{'deve-Loper2'}, 'eq', 'тоже хочет печенье', "$ChildPID: ->Attributes() string value ($Threads threads)");
}
