use strict;
use warnings;
use Test::More tests => 6;
use utf8;
use Encode;

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

my $library = "library";

my @actions_1 = ("read", "write");
$engine->DefineGroupRights($library, "group_1", \@actions_1);

my @actions_2 = ("execute");
$engine->DefineGroupRights($library, "group_2", \@actions_2);

my $ctx = $engine->LoadStylesheet("t/check_rights.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my @groups_1 = ("group_1");
$ctx->SetUserContext($library, \@groups_1);

my $source =<<_XML
<foo>
  <bar>
    
  </bar>
</foo>
_XML
;

my $doc = $engine->Parse($source);
isa_ok($doc, 'TurboXSLT::Node', "Parsed document");

my $res = $ctx->Transform($doc);
my $text = $ctx->Output($res);
cmp_ok(Cleanup($text), 'eq', "<?xml version=\"1.0\"?> can read<br/>can write", "user has read and write rights");

my @groups_2 = ("group_2");
$ctx->SetUserContext($library, \@groups_2);

$res = $ctx->Transform($doc);
$text = $ctx->Output($res);
cmp_ok(Cleanup($text), 'eq', "<?xml version=\"1.0\"?> can execute", "user has execute right");

sub Cleanup {
	$_ = shift;
	s/^\s+|\s+$//g;
	s/\s+/ /g;
	return $_;
}

