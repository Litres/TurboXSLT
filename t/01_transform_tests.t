use strict;
use warnings;
use Test::More;
use Encode;

use TurboXSLT;

my $TestsFolder = "t/internal-data";

opendir TESTSDIR, $TestsFolder;

my @XSLs;
for (readdir(TESTSDIR)){
	push @XSLs,$1 if /(\w+)\.xsl$/;
}
closedir TESTSDIR;


plan(tests => (scalar @XSLs)*3 + 2);

ok(@XSLs > 0, "Tests loaded");

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

for my $XSL (@XSLs){
	my $XSLFile = "$TestsFolder/$XSL.xsl";
	my $XMLFile = "$TestsFolder/$XSL.xml";
	my $Expectance = "$TestsFolder/$XSL.out";

	my $ctx = $engine->LoadStylesheet($XSLFile);
	isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet $XSL.xsl load");

	my $XML;
	open XMLFILE, "<$XMLFile";
	read(XMLFILE, $XML, -s $XMLFile);
	close XMLFILE;
	$XML = Encode::decode_utf8($XML);

	my $doc = $engine->Parse($XML);

	isa_ok($doc, 'TurboXSLT::Node', "Parse $XSL.xml document");

	my $res = $ctx->Transform($doc);
	isa_ok($res, 'TurboXSLT::Node', "DOM after $XSL transform");

	my $Out = $ctx->Output($res);
	ok($Out, "Some text output from $XSLFile transform");

	my $ExpectedOut;
	open OUTFILE, "<$Expectance";
	read(OUTFILE, $ExpectedOut, -s $Expectance);
	close OUTFILE;
	$ExpectedOut = Encode::decode_utf8($ExpectedOut);

	cmp_ok($Out, 'eq', $ExpectedOut, "Transformation $XSL works as expected");
}
