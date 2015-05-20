use strict;
#use XPortal::XSL::LibXSL;
use XML::LibXSLT;
use XML::LibXML;
use Image::Size;
use Time::HiRes;

use Cwd;

use utf8;
my %Parcers;
$|=1;

sub Rand {
	return rand()*5000;
}

if (!$ARGV[0] or !$ARGV[1]){
	print "libxslt_bench.pl - XSLT transformation speed test.\nUsage:\nlibxslt_bench.pl <data.xml> <template.xsl> [output_file] [times_run]\n\n";
	exit(0);
}

my $FN = $ARGV[0];
my $XSL = $ARGV[1];
my $OutFile = $ARGV[2];
my $NumBench = $ARGV[3] || 1;

my $parser = XML::LibXML->new();
my $xslt   = XML::LibXSLT->new();

$xslt->register_function ('LTR:chk','check_rights', sub {return 'Ok'});
$xslt->register_function ('LTR','url_code', sub {join '/',@_});
$xslt->register_function ('LTR','baner_code', \&Rand);
$xslt->register_function ('LTR','mobile_google_ads', \&Rand);
$xslt->register_function ('LTR','url_encode', \&Rand);
$xslt->register_function ('LTR','str_escape', \&Rand);
$xslt->register_function ('LTR','get_onetime_sid', \&Rand);
$xslt->register_function ('LTR','veristat_local', sub {return '/path/'});
$xslt->register_function ('LTR','veristat', sub {return '/versioned_path/'});
$xslt->register_function ('LTR','md5_hex', sub {return 0x10});
$xslt->register_function ('LTR','encode_base64', \&Rand);
$xslt->register_function('LTR', 'set_hash', sub {return 1});

my $DOm;

print "Started...\n";
my $StyleSheet;
my $Start = Time::HiRes::time();
#for (0..$NumBench) {

$StyleSheet = $xslt->parse_stylesheet_file($XSL);

#printf "XSLTParse:\t%7.2fms per action\n",(Time::HiRes::time() - $Start)/$NumBench;

open(XML, "<:utf8", $FN) || die "Cannot open file '$FN'\n$!\n";
my $XMLString = join('', <XML>);
close XML;


$Start = Time::HiRes::time();
for (1..$NumBench) {
	$XMLString =~ s/</ </;
	$DOm = $parser->parse_string($XMLString);
}
printf "XML parsing:\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench;

my $results;
$Start = Time::HiRes::time();
for (1..$NumBench) {
	$results = $StyleSheet->transform($DOm);
}
printf "Transform:\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench;

my $Out;
$Start = Time::HiRes::time();
for (1..$NumBench) {
	$Out = $StyleSheet->output_string($results)
}
printf "Output:\t\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench;
$OutFile = getcwd() . '/output.xml' if(!$OutFile);

open OUTFILE, '>:utf8',$OutFile;
print OUTFILE $Out;
close OUTFILE;