{*
* =|= Block Categories =========================================
* Display tree of store categories in sidebar.
* ==============================================================
*}

<section class="block blockcategories">
	<h1>{l s='Categories' mod='blockcategories'}</h1>
	<ul class="tree {if $isDhtml}dhtml{/if}">
	{foreach from=$blockCategTree.children item=child name=blockCategTree}
		{if $smarty.foreach.blockCategTree.last}
			{include file="$branche_tpl_path" node=$child last='true'}
		{else}
			{include file="$branche_tpl_path" node=$child}
		{/if}
	{/foreach}
	</ul>

	<script type="text/javascript">
		// <![CDATA[
		// we hide the tree only if JavaScript is activated
		$('div#categories_block_left ul.dhtml').hide();
		// ]]>
	</script>
</section>