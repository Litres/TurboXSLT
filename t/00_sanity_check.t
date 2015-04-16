use strict;
use warnings;
use Test::More tests => 19;
use utf8;
use Encode;

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");
my $RegOk=0;
eval {
	$engine->RegisterCallback('ltr:my_callback', sub {join '/',@_});
	$RegOk = 1;
};
ok($RegOk,'RegisterCallback call works');

my $ctx = $engine->LoadStylesheet("t/test.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

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
isa_ok($doc, 'TurboXSLT::Node', "Parsed document");

my $text = $ctx->Output($doc);
like($text,qr/<bar/,"Document from TurboXSLT::Node");

my $res = $ctx->Transform($doc);
isa_ok($res, 'TurboXSLT::Node', "DOM after Transform");

$text = $ctx->Output($res);
cmp_ok($text, 'eq',Encode::decode_utf8($text), 'Correct UTF-bit on Output');

$text = Encode::decode_utf8($text);

like($text,qr|<XXX>my/path/zzz</XXX>|,"Callback receives parameters as an array");

for ($expected,$text){
	s/\s+/ /g;
}

cmp_ok($text, 'eq', $expected, "Transformation 100% correct");

my $node = $ctx->FindNodes($doc,'/foo/bar/@developer1');
isa_ok($doc, 'TurboXSLT::Node', "FindNodes()");

my $StringVal = $node->StringValue();
ok($StringVal, 'StringValue() returns something');
cmp_ok($StringVal,'eq',Encode::decode_utf8($StringVal),'Correct UTF-bit on StringValue');

my $StringVal1 = $node->StringValue();
cmp_ok($StringVal, 'eq', $StringVal1,'StringValue returns the same data next time');

$StringVal = Encode::decode_utf8($StringVal);
cmp_ok($StringVal, 'eq', qq{жует печеньку},'StringValue() evaluated correctly');

my $Attr = $ctx->FindNodes($doc,'/foo/bar')->Attributes();
is (ref($Attr),ref({}),'->Attributes() is HASH');
cmp_ok($Attr->{To_Pol}, '==', 26755344,'->Attributes() digit value');
cmp_ok($Attr->{'deve-Loper2'},'eq',Encode::decode_utf8($Attr->{'deve-Loper2'}),'Attributes hashe values have UTF bit on');
$Attr->{'deve-Loper2'} = Encode::decode_utf8($Attr->{'deve-Loper2'});
cmp_ok($Attr->{'deve-Loper2'}, 'eq', 'тоже хочет печенье','->Attributes() string value');
