use strict;
use TurboXSLT;
use Time::HiRes;
use Cwd;
use utf8;
my %Parcers;
$|=1;

if (!$ARGV[0] or !$ARGV[1]){
	print "turboxslt_bench.pl - XSLT transformation speed test.
Usage:
test.pl <data.xml> <template.xsl> <outfile.html> [<bench_counter> <threadnum>]\n\n";
	exit(0);
}

my $FN = $ARGV[0];
my $XSL = $ARGV[1];
my $OutFile = $ARGV[2];
my $NumBench = $ARGV[3] || 1;
my $ThreadsN = $ARGV[4] || 1;

my $engine = new TurboXSLT;
my $Start = Time::HiRes::time();
my $DOm;

my $step;

if ($NumBench > 1) {
	print "Started bench...\n";
} else {
	print "Simple transform...\n";
}

$engine->EnableExternalCache("--SERVER=be06:11211");

sub Rand {
	return rand()*5000;
}

# Fake callbacks
#$engine->RegisterCallback('chk:check_rights', sub {return 'Ok'});
#$engine->RegisterCallback('ltr:url_code', sub {join '/',@_});
#$engine->RegisterCallback('ltr:baner_code', \&Rand);
#$engine->RegisterCallback('ltr:get_onetime_sid', \&Rand);
#$engine->RegisterCallback('ltr:set_hash', \&Rand);

my $StyleSheet;
$Start = Time::HiRes::time();
#for $step (0..$NumBench) {
for (1..1) {
	$step = $_;
	$StyleSheet = $engine->LoadStylesheet($XSL);
}
#printf "XSLTParse:\t%1.6fs per action\n",(Time::HiRes::time() - $Start)/$NumBench;
#$StyleSheet->CreateThreadPool(8);

open(XML, "<:utf8", $FN) || die "Cannot open file '$FN'\n$!\n";
my $XMLString = join('', <XML>);
close XML;


$Start = Time::HiRes::time();
for (1..$NumBench) {
	$step = $_;
	$DOm = $engine->Parse($XMLString);
}
if ($NumBench > 1) {
	printf "XML parsing:\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench;
}

#if (fork()){
#	warn "Pappy 1!";
#	sleep 1;
#	warn "Pappy 2!";
#	exit;
#} else {
#	warn "Kid 1!";
#	sleep 2;
#	warn "Kid 2!";
#	exit;
#}

$StyleSheet->CreateThreadPool($ThreadsN) if $ThreadsN > 1;
$StyleSheet->SetCacheKeyPrefix("fake,");

my $results;
$Start = Time::HiRes::time();
for (1..$NumBench) {
	$step = $_;
	#$StyleSheet->SetCacheKeyPrefix("www.fbhub.ru,");
	$results = $StyleSheet->Transform($DOm);
}
if ($NumBench > 1) {
	printf "Transform:\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench;
}
my $Out;
$Start = Time::HiRes::time();
for (1..$NumBench/10) {
	$step = $_;
	$Out = $StyleSheet->Output($results);
}
if ($NumBench > 1) {
	printf "Output:\t\t%7.2fms per action\n",(Time::HiRes::time() - $Start)*1000/$NumBench*10;
}

utf8::upgrade($Out);

$OutFile = getcwd() . 'output.xml' if(!$OutFile);

open OUTFILE, '>',$OutFile;
print OUTFILE $Out;
close OUTFILE;

print "Finished\n";
