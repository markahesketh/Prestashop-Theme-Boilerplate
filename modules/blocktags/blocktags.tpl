{*
* =|= Block Tags ===============================================
*
* Display tag cloud of product tags in the sidebar
* ==============================================================
*}

{if $tags}
	<section class="block blocktags">
		<h1>{l s='Tags' mod='blocktags'}</h1>
			<ol>	
				{foreach from=$tags item=tag name=myLoop}
					<li><a href="{$link->getPageLink('search', true, NULL, "tag={$tag.name|urlencode}")}" title="{l s='More about' mod='blocktags'} {$tag.name|escape:html:'UTF-8'}" class="{$tag.class} {if $smarty.foreach.myLoop.last}last_item{elseif $smarty.foreach.myLoop.first}first_item{else}item{/if}">{$tag.name|escape:html:'UTF-8'}</a></li>
				{/foreach}
			</ol>
	</section>
{/if}