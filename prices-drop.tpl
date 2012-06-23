{*
 * =|= Product List - Offers & Discounts ========================
 *
 * List of latest product offers and deals.
 * ==============================================================
 *}

{capture name=path}{l s='Price drop'}{/capture}
{include file="./breadcrumb.tpl"}

<h1>{l s='Price drop'}</h1>

{if $products}
	<div class="sortPagiBar clearfix">
	{include file="./product-sort.tpl"}
	</div>
	{include file="./product-list.tpl" products=$products}
	{include file="./pagination.tpl"}
{else}
	<p class="warning">{l s='No price drop.'}</p>
{/if}
