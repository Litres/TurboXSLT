use strict;
use warnings;
use Test::More tests => 6;

use TurboXSLT;

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

my $ctx = $engine->LoadStylesheet("t/test.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my $source = "<foo><bar><xxx t='zzz'/></bar></foo>";
my $doc = $engine->Parse($source);
isa_ok($doc, 'TurboXSLT::Node', "Parsed document");

my $text = $ctx->Output($doc);
like($text,m/<bar/,"Document from TurboXSLT::Node");

my $res = $ctx->Transform($doc);
isa_ok($res, 'TurboXSLT::Node', "DOM after Transform");

$text = $ctx->Output($res);
cmp_ok($text, 'eq', qq{<?xml version="1.0"?>\n<FOO><BAR><XXX>/pages/my?path=zzz</XXX></BAR></FOO>}, "Transformation correct");
