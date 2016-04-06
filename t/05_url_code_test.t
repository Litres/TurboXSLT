use 5.008;
use strict;
use warnings;
use Test::More tests => 9;
use utf8;
use Encode;

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

my $RegOk=0;
eval {
	$engine->RegisterCallback('ltr:url_code', sub {join '/',@_});
	$RegOk = 1;
};
ok($RegOk,'RegisterCallback call works');

my $source =<<_XML
<foo>
  <bar>

  </bar>
</foo>
_XML
;

my $ctx = $engine->LoadStylesheet("t/url_code.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my $Ok=0;
eval{
  $ctx->AddURLCodeParameter("atest", 5);
  $Ok=1;
};
ok($Ok,'AddURLCodeParameter call works');

my $doc = $engine->Parse($source);
isa_ok($doc, 'TurboXSLT::Node', "Parsed document");

my $res = $ctx->Transform($doc);
my $text = $ctx->Output($res);
cmp_ok(Cleanup($text), 'eq', "<?xml version=\"1.0\"?> atest,5,0,test", "Parameter provided");

$Ok=0;
eval{
  $ctx->ResetURLCodeParameters();
  $Ok=1;
};
ok($Ok,'ResetURLCodeParameters call works');

$res = $ctx->Transform($doc);
$text = $ctx->Output($res);
cmp_ok(Cleanup($text), 'eq', "<?xml version=\"1.0\"?> 0,test", "Parameter not provided");

sub Cleanup {
	$_ = shift;
	s/^\s+|\s+$//g;
	s/\s+/ /g;
	return $_;
}

