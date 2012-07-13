{if $new_products !== false}
	<section id="new-products_block_right" class="block products_block">
		<h1><a href="{$link->getPageLink('new-products')}" title="{l s='New products' mod='blocknewproducts'}">{l s='New products' mod='blocknewproducts'}</a></h1>

		<ul class="product_images clearfix">
			{foreach from=$new_products item='product' name='newProducts'}
				{if $smarty.foreach.newProducts.index < 2}
					<li{if $smarty.foreach.newProducts.first} class="first"{/if}><a href="{$product.link}" title="{$product.legend|escape:html:'UTF-8'}"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product.legend|escape:html:'UTF-8'}" /></a></li>
				{/if}
			{/foreach}
		</ul>
		
		<dl class="products">
			{foreach from=$new_products item=newproduct name=myLoop}
				<dt class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}"><a href="{$newproduct.link}" title="{$newproduct.name|escape:html:'UTF-8'}">{$newproduct.name|strip_tags|escape:html:'UTF-8'}</a></dt>
				{if $newproduct.description_short}<dd class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}"><a href="{$newproduct.link}">{$newproduct.description_short|strip_tags:'UTF-8'|truncate:75:'...'}</a><br /><a href="{$newproduct.link}" class="lnk_more">{l s='Read more' mod='blocknewproducts'}</a></dd>{/if}
			{/foreach}
		</dl>
		<p><a href="{$link->getPageLink('new-products')}" title="{l s='All new products' mod='blocknewproducts'}" class="button_large">&raquo; {l s='All new products' mod='blocknewproducts'}</a></p>
	</section>
{/if}