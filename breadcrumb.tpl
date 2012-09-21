{*
 * =|= Breadcrumb ===============================================
 *
 * Navigation trail shown at the top of most pages.
 * ==============================================================
 *}

{if isset($smarty.capture.path)}{assign var='path' value=$smarty.capture.path}{/if}
<nav class="breadcrumb">
	<a href="{$base_dir}" title="{l s='return to Home'}">Home</a>
	{if isset($path) AND $path}
		<span class="navigation-pipe">{$navigationPipe|escape:html:'UTF-8'}</span>
		{if !$path|strpos:'span'}
			<span class="navigation_page">{$path}</span>
		{else}
			{$path}
		{/if}
	{/if}
</nav>