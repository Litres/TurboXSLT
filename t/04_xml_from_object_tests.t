use strict;
use warnings;
use Test::More tests => 22;

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

my $object_2 = {a => {b => "c'c"}};
my $xml_2 = <<_XML
<?xml version="1.0"?>
<root><a b="c'c"/></root>
_XML
;

my $object_3 = {a => {b => {c => "d\""}}};
my $xml_3 = <<_XML
<?xml version="1.0"?>
<root><a><b c="d&quot;"/></a></root>
_XML
;

my $object_4 = {a => ["b", "c"]};
my $xml_4 = <<_XML
<?xml version="1.0"?>
<root><a>b</a><a>c</a></root>
_XML
;

my $object_5 = {a => [1, 1.5, "b"]};
my $xml_5 = <<_XML
<?xml version="1.0"?>
<root><a>1</a><a>1.500000</a><a>b</a></root>
_XML
;

my $object_6 = {a => 1, b => 2.5, c => "d"};
my $xml_6 = <<_XML
<?xml version="1.0"?>
<root><c>d</c><a>1</a><b>2.500000</b></root>
_XML
;

my $object_7 = {a => [{b => ["c1", "c2"], d => 12}]};
my $xml_7 = <<_XML
<?xml version="1.0"?>
<root><a d="12"><b>c1</b><b>c2</b></a></root>
_XML
;

my %object_8 = ();
$object_8{a} = 1;
$object_8{b} = \%object_8;
my $xml_8 = <<_XML
<?xml version="1.0"?>
<root><a>1</a><b/></root>
_XML
;

my $object_9 = {a => [{b => 4, xml_text => "<a/>", xml_text2 => ["<b/>"], xml_text3 => {d => "<c/>"}}]};
my $xml_9 = <<_XML
<?xml version="1.0"?>
<root><a b="4"><xml_text2>&lt;b/&gt;</xml_text2><xml_text><a/></xml_text><xml_text3 d="&lt;c/&gt;"/></a></root>
_XML
;
my $TransTest = <<_XML
<?xml version="1.0"?>
<div>c'c</div>
_XML
;

my @objects = ($object_1, $object_2, $object_3, $object_4, $object_5, $object_6, $object_7, \%object_8, $object_9);
my @xmls = ($xml_1, $xml_2, $xml_3, $xml_4, $xml_5, $xml_6, $xml_7, $xml_8, $xml_9);

for my $i (0 .. $#objects) {
  my $document = $engine->CreateXMLFromObject($objects[$i], "root");
  isa_ok($document, 'TurboXSLT::Node', "Created XML");

  my $output = $ctx->Output($document);
  cmp_ok(Cleanup($output), 'eq', Cleanup($xmls[$i]), "XML is correct");
}
my $doc = $engine->CreateXMLFromObject($object_2, "root");
$ctx = $engine->LoadStylesheet("t/amptest.xsl");
my $res = $ctx->Transform($doc);
my $text = $ctx->Output($res);
cmp_ok(Cleanup($text), 'eq', Cleanup($TransTest), "Transform from object");

sub Cleanup {
	$_ = shift;
	s/^\s+|\s+$//g;
	s/\s+/ /g;
	return $_;
}

exit;
