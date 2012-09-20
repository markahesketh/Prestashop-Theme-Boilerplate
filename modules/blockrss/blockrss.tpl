{*
* =|= BLOCK RSS ================================================
* Display custom RSS links in the sidebar
* ==============================================================
*}

{if $rss_links}
	<section class="block blockrss">
		<h1>{$title}</h1>
		<ul>
			{foreach from=$rss_links item='rss_link'}
				<li><a href="{$rss_link.url}">{$rss_link.title}</a></li>
			{/foreach}
		</ul>
	</section>
{/if}