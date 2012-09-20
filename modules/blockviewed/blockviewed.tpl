{*
* =|= BLOCK VIEWED =============================================
* Display viewed products in the sidebar.
* ==============================================================
*}

<section class="block blockviewed">
	<h1>{l s='Viewed products' mod='blockviewed'}</h1>
	<ul class="products">
		{foreach from=$productsViewedObj item=viewedProduct name=myLoop}
			<li>
				<a href="{$viewedProduct->product_link}" title="{l s='More about' mod='blockviewed'} {$viewedProduct->name|escape:html:'UTF-8'}"><img src="{$link->getImageLink($viewedProduct->link_rewrite, $viewedProduct->cover, 'medium')}" alt="{$viewedProduct->legend|escape:html:'UTF-8'}" /></a>
				<h2><a href="{$viewedProduct->product_link}" title="{l s='More about' mod='blockviewed'} {$viewedProduct->name|escape:html:'UTF-8'}">{$viewedProduct->name|escape:html:'UTF-8'}</a></h2>
				<p><a href="{$viewedProduct->product_link}" title="{l s='More about' mod='blockviewed'} {$viewedProduct->name|escape:html:'UTF-8'}">{$viewedProduct->description_short|strip_tags:'UTF-8'|truncate:44}</a></p>
			</li>
		{/foreach}
	</ul>
</section>
