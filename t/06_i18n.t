use utf8;

use strict;
use warnings;
use open ':std', ':encoding(utf8)';

use Test::More 'tests' => 19;

require_ok('TurboXSLT');

my $engine = new_ok('TurboXSLT');

my $ctx = $engine->LoadStylesheet('t/06_i18n/style.xsl');
isa_ok($ctx, 'TurboXSLT::Stylesheet', 'Stylesheet load');

my $xml_text          = $engine->Parse('<text/>');
my $xml_pages         = $engine->Parse('<pages number="10"/>');
my $xml_days          = $engine->Parse('<days left="3"/>');
my $xml_unk           = $engine->Parse('<greetings number="13"/>');
my $xml_symbols       = $engine->Parse('<symbols bookname="1" authors_list="2"/>');
my $xml_notranslate   = $engine->Parse('<notranslate name="aaa"/>');

ok($ctx->SetLocalization('t/06_i18n/ru_RU/default.po'), 'init, ru_RU');
like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU');
like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU');
like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU');

ok($ctx->SetLocalization('t/06_i18n/ru_RU/default.po'), 're-init, ru_RU');
like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU, re-init');
like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU, re-init');
like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU, re-init');

ok($ctx->SetLocalization('t/06_i18n/en_US/default.po'), 'init, en_US');
like($ctx->Output($ctx->Transform($xml_text)),  qr/text: log out/,        'text, en_US');
like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: pages: 10/,     'pages, en_US');
like($ctx->Output($ctx->Transform($xml_days)),  qr/days: 3 days to go/,   'days, en_US');

like($ctx->Output($ctx->Transform($xml_unk)),   qr/greetings: Greetings, Earth Citizens!/, 'no translation');

#Перевода нет, но нужно плейсхолдер заменить
like($ctx->Output($ctx->Transform($xml_notranslate)),   qr/notranslate: Сервис aaa/, 'no translation');

like($ctx->Output($ctx->Transform($xml_notranslate)),   qr/double_placeholeds: Сервис aaa да и aaa еще/, 'no translation');

ok($ctx->SetLocalization('t/06_i18n/pl_PL/default.po'), 'init, pl_PL');
my $Res1='E-book serwis 📚 LitRes zaprasza do pobrania książki &#x1F833 1, 2 w fb2, epub, pdf, txt lub przeczytania jej online! ➤ Napisz i przeczytaj recenzje o książce na stronie LitRes!';
like($ctx->Output($ctx->Transform($xml_symbols)),   qr/symbols: $Res1/, 'symbols, pl_PL');
