use utf8;

use strict;
use warnings;

# В библиотеке turboxsl для нас будут сделаны три вещи:
# 
# perl-функция GettextInit('PathTo.mo') - принимает путь к .mo для текущей (!) трансформации
# xsl-функция __l, сейчас есть её реализация в виде перлового каллбэка __l, пример:
# <xsl:value-of select="ltr:__l('выйти')"/>
# <xsl:value-of select="ltr:__l('страниц: {pages}', 'pages', $pages)"/>
# xsl-функция __ln, сейчас есть её реализация в виде перлового каллбэка __ln, пример:
# <xsl:value-of select="ltr:__ln('Остался {count} день','Осталось {count} дней', $daysLeft, 'count', $daysLeft)"/>
# 
# Почти на 100% аналогичный тест мы делали для url_code, можно посмотреть на https://github.com/Litres/TurboXSLT/blob/master/t/05_url_code_test.t. Там тоже есть инит-функция AddURLCodeParameter и XSL-функция (одна, правда) ltr:url_code. Тест должен включать:
# 
# Простой тест для обоих функций (и инита)
# Простой тест после ре-инита экземпляра XSL на тот же язык
# Простой тест после ре-инита экземпляра XSL на другой язык
# Тест вызова функций с отсутствующими в .mo словами
# Тест вызова без инита (должно подохнуть)

use Test::More 'tests' => 18;

require_ok('TurboXSLT');

my $engine = new_ok('TurboXSLT');

my $ctx = $engine->LoadStylesheet('t/06_i18n/style.xsl');
isa_ok($ctx, 'TurboXSLT::Stylesheet', 'Stylesheet load');

my $gettext_available = $engine->can('GettextInit');

my $xml_text  = $engine->Parse('<text/>');
my $xml_pages = $engine->Parse('<pages number="10"/>');
my $xml_days  = $engine->Parse('<days left="3"/>');
my $xml_unk   = $engine->Parse('<greetings number="13"/>');

SKIP: {

  skip 'Gettext is not supported yet', 15 unless $gettext_available;

  can_ok($engine, 'GettextInit');

  ok($engine->GettextInit('t/06_i18n/ru_RU/LC_MESSAGES/default.mo'),        'init, ru_RU/LC_MESSAGES/default.mo');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU');

  ok($engine->GettextInit('t/06_i18n/ru_RU/LC_MESSAGES/default.mo'),        're-init, ru_RU/LC_MESSAGES/default.mo');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: выйти/,          'text, ru_RU, re-init');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: страниц: 10/,   'pages, ru_RU, re-init');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: Осталось 3 дня/, 'days, ru_RU');

  ok($engine->GettextInit('t/06_i18n/en_US/LC_MESSAGES/default.mo'),        'init, en_US/LC_MESSAGES/default.mo');
  like($ctx->Output($ctx->Transform($xml_text)),  qr/text: log out/,        'text, en_US');
  like($ctx->Output($ctx->Transform($xml_pages)), qr/pages: pages: 10/,     'pages, en_US');
  like($ctx->Output($ctx->Transform($xml_days)),  qr/days: 3 days to go/,   'days, en_US');

  like($ctx->Output($ctx->Transform($xml_unk)),   qr/greetings: Greetings, Earth Citizens!/, 'no translation');

  my $failed = eval {

    my $x = TurboXSLT->new->LoadStylesheet('t/06_i18n/style.xsl');

    diag($x->Output($x->Transform($xml_text)));

    return 1; 
  };

  nok($failed, 'Translation without GettextInit() should fail.');
}
