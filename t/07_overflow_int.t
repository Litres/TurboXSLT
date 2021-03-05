use 5.008;
use strict;
use warnings;
use Test::More tests => 6;
use utf8;
use Encode;
use feature 'say';
binmode STDOUT, ':utf8';

require_ok( 'TurboXSLT' );

my $engine = new TurboXSLT;
isa_ok($engine, 'TurboXSLT', "XSLT init");

my $RegOk=0;
eval {
  $engine->RegisterCallback('ltr:url_code', sub { say @_; join("#",@_) });
  $RegOk = 1;
};
ok($RegOk,'RegisterCallback call works');

my $ctx = $engine->LoadStylesheet("t/overflow_int.xsl");
isa_ok($ctx, 'TurboXSLT::Stylesheet', "Stylesheet load");

my $document = $engine->CreateXMLFromObject({ 'money-transfer' => [ { id=>111 } ] },'xportal_rmd');
my $text = $ctx->Output($document);
# say Cleanup($text);
cmp_ok(Cleanup($text), 'eq', "<?xml version=\"1.0\"?> <xportal_rmd><money-transfer id=\"111\"/></xportal_rmd>", "Small INT is Good");

my $document1 = $engine->CreateXMLFromObject({ 'money-transfer' => [ { id=>3456719652 } ] },'xportal_rmd');
my $text1 = $ctx->Output($document1);
# say Cleanup($text1);
cmp_ok(Cleanup($text1), 'eq', "<?xml version=\"1.0\"?> <xportal_rmd><money-transfer id=\"3456719652\"/></xportal_rmd>", "Big INT is Good");


sub Cleanup {
  $_ = shift;
  s/^\s+|\s+$//g;
  s/\s+/ /g;
  return $_;
}
#
