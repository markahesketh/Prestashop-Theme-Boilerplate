{*
* =|= BLOCK LANGUAGES ==========================================
* Display language selection in header
* ==============================================================
*}

{if count($languages) > 1}
	<section class="block blocklanguages">
		{foreach from=$languages key=k item=language name="languages"}
			{if $language.iso_code == $lang_iso}
				<img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code}" width="16" height="11" />
			{/if}
		{/foreach}
		<ul>
			{foreach from=$languages key=k item=language name="languages"}
				{if $language.iso_code != $lang_iso}
					<li>

						{assign var=indice_lang value=$language.id_lang}
						{if isset($lang_rewrite_urls.$indice_lang)}
							<a href="{$lang_rewrite_urls.$indice_lang|escape:htmlall}" title="{$language.name}">
						{else}
							<a href="{$link->getLanguageLink($language.id_lang)|escape:htmlall}" title="{$language.name}">
						{/if}
							<img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code}" width="16" height="11" />
						</a>
					</li>
				{/if}				
			{/foreach}
		</ul>
	</section>
{/if}