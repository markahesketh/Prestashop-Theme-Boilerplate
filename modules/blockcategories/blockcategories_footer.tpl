{*
* =|= Block Categories Footer ==================================
* Display tree of store categories in footer.
* ==============================================================
*}

<section class="block blockcategories_footer">
	<h1>{l s='Categories' mod='blockcategories'}</h1>
	<ul class="tree {if $isDhtml}dhtml{/if}" style="float:left;clear:none;width:{$widthColumn}%">

	{foreach from=$blockCategTree.children item=child name=blockCategTree}
		{if $smarty.foreach.blockCategTree.last}
			{include file="$branche_tpl_path" node=$child last='true'}
		{else}
			{include file="$branche_tpl_path" node=$child}
		{/if}
	
		{if ($smarty.foreach.blockCategTree.iteration mod $numberColumn) == 0 AND !$smarty.foreach.blockCategTree.last}
			</ul>
			<ul class="tree {if $isDhtml}dhtml{/if}" style="float:left;clear:none;width:{$widthColumn}%">
		{/if}
	{/foreach}
	</ul>
</section>