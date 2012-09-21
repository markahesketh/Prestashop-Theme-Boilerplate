{*
* =|= BLOCK SPECIALS ===========================================
* Display products on offer in the sidebar.
* ==============================================================
*}

{if $special}
	<section class="block blockspecials">
		<h1><a href="{$link->getPageLink('prices-drop')}" title="{l s='Specials' mod='blockspecials'}">{l s='Specials' mod='blockspecials'}</a></h1>
		<a href="{$special.link}">
			<img src="{$link->getImageLink($special.link_rewrite, $special.id_image, 'medium')}" alt="{$special.legend|escape:html:'UTF-8'}" title="{$special.name|escape:html:'UTF-8'}" />
		</a>
		{if $special.specific_prices}
			{assign var='specific_prices' value=$special.specific_prices}
			{if $specific_prices.reduction_type == 'percentage' && ($specific_prices.from == $specific_prices.to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $specific_prices.to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $specific_prices.from))}
				<span class="label">-{$specific_prices.reduction*100|floatval}%</span>
			{/if}
		{/if}

		<h2><a href="{$special.link}" title="{$special.name|escape:html:'UTF-8'}">{$special.name|escape:html:'UTF-8'}</a></h2>
		<span class="price-discount">
			{if !$priceDisplay}
				{displayWtPrice p=$special.price_without_reduction}
			{else}
				{displayWtPrice p=$priceWithoutReduction_tax_excl}
			{/if}
		</span>
		<span class="price">
			{if !$priceDisplay}
				{displayWtPrice p=$special.price}
			{else}
				{displayWtPrice p=$special.price_tax_exc}
			{/if}
		</span>
		<a href="{$link->getPageLink('prices-drop')}" title="{l s='All specials' mod='blockspecials'}" class="btn">{l s='All specials' mod='blockspecials'}</a>
	</section>
{/if}