{*
* =|= BLOCK New Products =======================================
* My Account links within the footer columns when logged in.
* ==============================================================
*}

{if $new_products == true}
	<section class="block blocknewproducts">
		<h1><a href="{$link->getPageLink('new-products')}" title="{l s='New products' mod='blocknewproducts'}">{l s='New products' mod='blocknewproducts'}</a></h1>

		<ul class="products">
			{foreach from=$new_products item='product' name='newProducts'}
					<li>
						<a href="{$product.link}" title="{$product.legend|escape:html:'UTF-8'}">
							<img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product.legend|escape:html:'UTF-8'}" />
						</a>

						<h2><a href="{$newproduct.link}" title="{$newproduct.name|escape:html:'UTF-8'}">{$product.name|strip_tags|escape:html:'UTF-8'}</a></h2>
					{if $product.description_short}
						<p><a href="{$newproduct.link}">{$product.description_short|strip_tags:'UTF-8'|truncate:45:'...'}</a></p>
					{/if}
					</li>
			{/foreach}
		</ul>
		<a href="{$link->getPageLink('new-products')}" title="{l s='All new products' mod='blocknewproducts'}" class="btn">{l s='All new products' mod='blocknewproducts'}</a>
	</section>
{/if}