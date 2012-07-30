<section class="block blocksocial">
	<h1>{l s='Follow us' mod='blocksocial'}</h1>
	<ul>
		{if $facebook_url != ''}<li class="facebook"><a href="{$facebook_url}">{l s='Facebook' mod='blocksocial'}</a></li>{/if}
		{if $twitter_url != ''}<li class="twitter"><a href="{$twitter_url}">{l s='Twitter' mod='blocksocial'}</a></li>{/if}
		{if $rss_url != ''}<li class="rss"><a href="{$rss_url}">{l s='RSS' mod='blocksocial'}</a></li>{/if}
	</ul>
</section>