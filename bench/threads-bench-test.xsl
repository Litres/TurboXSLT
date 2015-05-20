<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR" >
	<xsl:template match="art">
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
			<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
		<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
			<xsl:value-of select="@name"/>
		</b>
		<div>
			<xsl:if test="@name = 'S.N.U.F.F.' and @adult &gt; 14 and @author-name-rodit">
				<xsl:value-of select="concat(@author_id,
					@authors-count,
					@available,
					@cover_ratio,
					@drm,
					@id,
					@mem)"/> .
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
				<a b="ltr:url_code(concat('dfdf',@id)" id="@id">
					<xsl:value-of select="@name"/>
				</a>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
				<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
				<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
				<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			</xsl:if>
			Требуется добавить два поля описания (BBCode и HTML) в таблицу тегов, по аналогии с полями описаний жанров.
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			Существующее поле s_description предполагалось для использования с простым текстовым описанием и более не требуется.
			Добавить GUI для двух текстовых полей, для ручного добавления текста на сайт, в начале и в конце страницы. bbcode, в БД два поля, как обычно - с исходником и итоговым html.
		<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Человек за шкафом" adult="16" atype="1" author-name="Олег Рой" author-name-rodit="Олега Роя" author_id="44994" authors-count="1" available="1" cover_ratio="0.667" drm="0" id="7965061" mem="text" price="99.90" promo_price="99.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="10668383" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Соотношение сил" adult="16" atype="1" author-name="Полина Дашкова" author-name-rodit="Полины Дашковой" author_id="44558" authors-count="1" available="1" cover_ratio="0.633" drm="0" id="6714094" mem="text" price="176.90" promo_price="176.90" reason="genre" reason_id="6285" reason_name="Современная русская литература" release_file="9060582" type="0"/>
			<xsl:value-of select="ltr:url_code(concat('dfdf',@author_id))"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="Любовь к трем цукербринам /Великий ХАМster/" adult="18" atype="2" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="1.114" downloads="1" drm="0" id="8271413" in_basket="228604512" mem="audio" price="199.00" promo_price="199.00" purchased="1" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="10977500" type="1"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
			<art name="S.N.U.F.F." adult="16" atype="1" author-name="Виктор Пелевин" author-name-rodit="Виктора Пелевина" author_id="45850" authors-count="1" available="1" cover_ratio="0.652" drm="0" id="2547755" mem="text" price="199.00" promo_price="199.00" reason="person" reason_id="45850" reason_name="Виктор Пелевин" release_file="4336925" type="0"/>
			<b b="ltr:url_code(concat('dfdf',@id)" id="@id">
				<xsl:value-of select="@name"/>
			</b>
		</div>
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>
