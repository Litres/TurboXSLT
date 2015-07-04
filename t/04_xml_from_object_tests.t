use strict;
use warnings;
use Test::More tests => 11;

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

# we need this only for output
my $ctx = $engine->LoadStylesheet("t/test.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my $object_1 = {a => "b", c => "d"};
my $xml_1 = <<_XML
<?xml version="1.0"?>
<root><c>d</c><a>b</a></root>
_XML
;

my $object_2 = {a => {b => "c"}};
my $xml_2 = <<_XML
<?xml version="1.0"?>
<root><a b="c"/></root>
_XML
;

my $object_3 = {a => {b => {c => "d"}}};
my $xml_3 = <<_XML
<?xml version="1.0"?>
<root><a><b c="d"/></a></root>
_XML
;

my $object_4 = {a => ["b", "c"]};
my $xml_4 = <<_XML
<?xml version="1.0"?>
<root><a>b</a><a>c</a></root>
_XML
;

my @objects = ($object_1, $object_2, $object_3, $object_4);
my @xmls = ($xml_1, $xml_2, $xml_3, $xml_4);

for my $i (0 .. $#objects) {
  my $document = $engine->CreateXMLFromObject($objects[$i], "root");
  isa_ok($document, 'TurboXSLT::Node', "Created XML");

  my $output = $ctx->Output($document);
  cmp_ok(Cleanup($output), 'eq', Cleanup($xmls[$i]), "XML is corrent");
}

sub Cleanup {
	$_ = shift;
	s/^\s+|\s+$//g;
	s/\s+/ /g;
	return $_;
}

exit;

