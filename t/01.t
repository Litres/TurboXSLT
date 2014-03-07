use strict;
use warnings;

use Test::More tests => 6;

use TurboXSLT;

my $engine = new TurboXSLT;
ok($engine, "XSLT init");

my $ctx = $engine->LoadStylesheet("t/test.xsl");
ok($ctx, "Stylesheet load");

my $source = "<foo><bar><xxx t='zzz'/></bar></foo>";
my $doc = $engine->Parse($source);
ok($doc, "Parsed document");

my $text = $ctx->Output($doc);
ok($text =~ m/<bar/,"Document from tree");

my $res = $ctx->Transform($doc);
ok($res, "Transform");

$text = $ctx->Output($res);
ok($text =~ m!<XXX>/pages/my\?path=zzz</XXX>!, "Transformation correct");
