{*
* =|= HOME FEATURED ============================================
* Display featured products on the homepage
* ==============================================================
*}

{if isset($products) AND $products}
	<section class="block homefeatured">
		<h1>{l s='Featured products' mod='homefeatured'}</h1>
		<ul class="products">
			{foreach from=$products item=product name=homeFeaturedProducts}
				<li>
					<a href="{$product.link}" title="{$product.name|escape:html:'UTF-8'}">
						<img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home')}" alt="{$product.name|escape:html:'UTF-8'}" />{if isset($product.new) && $product.new == 1}
					</a>
					<span class="label">{l s='New' mod='homefeatured'}</span>{/if}

					<h2><a href="{$product.link}" title="{$product.name|truncate:50:'...'|escape:'htmlall':'UTF-8'}">{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</a></h2>
					<p>{$product.description_short|strip_tags|truncate:100:'...'}</p>

					{if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
						<span class="price">
							{if !$priceDisplay}
								{convertPrice price=$product.price}
							{else}
								{convertPrice price=$product.price_tax_exc}
							{/if}
						</span>
					{/if}

					{if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}
						{if ($product.quantity > 0 OR $product.allow_oosp)}
							<a class="btn exclusive ajax_add_to_cart_button" rel="ajax_id_product_{$product.id_product}" href="{$link->getPageLink('cart.php')}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" title="{l s='Add to cart' mod='homefeatured'}">{l s='Add to cart' mod='homefeatured'}</a>
						{else}
							<span class="btn exclusive">{l s='Add to cart' mod='homefeatured'}</span>
						{/if}
					{/if}

					<a href="{$product.link}" title="{l s='View' mod='homefeatured'}" class="btn">{l s='View' mod='homefeatured'}</a>
				</li>
			{/foreach}
		</ul>
	</section>
{/if}