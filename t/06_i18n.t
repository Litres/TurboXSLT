use utf8;

use strict;
use warnings;

use Test::More 'tests' => 18;

require_ok('TurboXSLT');

my $engine = new_ok('TurboXSLT');

my $ctx = $engine->LoadStylesheet('t/06_i18n/style.xsl');
isa_ok($ctx, 'TurboXSLT::Stylesheet', 'Stylesheet load');

my $gettext_available = $ctx->can('GettextInit');

my $xml_text  = $engine->Parse('<text/>');
my $xml_pages = $engine->Parse('<pages number="10"/>');
my $xml_days  = $engine->Parse('<days left="3"/>');
my $xml_unk   = $engine->Parse('<greetings number="13"/>');

SKIP: {

  skip 'Gettext is not supported yet', 15 unless $gettext_available;

  can_ok($ctx, 'GettextInit');

  ok($ctx->GettextInit('t/06_i18n/ru_RU/default.po'), 'init, ru_RU');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU');

  ok($ctx->GettextInit('t/06_i18n/ru_RU/default.po'), 're-init, ru_RU');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU, re-init');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU, re-init');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU');

  ok($ctx->GettextInit('t/06_i18n/en_US/default.po'), 'init, en_US');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: log out/,        'text, en_US');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: pages: 10/,     'pages, en_US');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: 3 days to go/,   'days, en_US');

  like($ctx->Output($ctx->Transform($xml_unk)),   qr/greetings: Greetings, Earth Citizens!/, 'no translation');

  my $failed = eval {

    my $x = TurboXSLT->new->LoadStylesheet('t/06_i18n/style.xsl');

    return $x->Output($x->Transform($xml_text));
  };

  nok($failed, 'Translation without GettextInit() should fail.');
}
