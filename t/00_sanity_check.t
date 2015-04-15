use strict;
use warnings;
use Test::More tests => 12;
use utf8;

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");
$engine->RegisterCallback('ltr:url_code', sub {join '/',@_});

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

my $text;# = $ctx->Output($doc);
like($text,m/<bar/,"Document from TurboXSLT::Node");

my $res = $ctx->Transform($doc);
isa_ok($res, 'TurboXSLT::Node', "DOM after Transform");

$text = $ctx->Output($res);
cmp_ok($text, 'eq', $expected, "Transformation correct");

my $node = $ctx->FindNodes($doc,'/foo/bar/@developer1');
isa_ok($doc, 'TurboXSLT::Node', "FindNodes()");
cmp_ok($node->StringValue(), 'eq', qq{тоже хочет печенье},'->StringValue()');

my $Attr = $ctx->FindNodes($doc,'/foo/bar')->Attributes();
is (ref($Attr),ref({}),'->Attributes() is HASH');
cmp_ok($Attr->{To_Pol}, '==', 26755344,'->Attributes() digit');
cmp_ok($Attr->{'deve-Loper2'}, 'eq', 'тоже хочет печенье','->Attributes() string');
