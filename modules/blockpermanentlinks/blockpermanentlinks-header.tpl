{*
* =|= BLOCK PERMANENT LINKS ====================================
* Display sitemap, contact and bookmark links in header.
* ==============================================================
*}

<section class="block blockpermanentlinks-header">
	<ul>
        {if $logged}
            <li><a href="{$link->getPageLink('my-account', true)}" class="account">My Account</a></li>
        {/if}
		<li><a href="{$link->getPageLink('contact', true)}" title="{l s='contact' mod='blockpermanentlinks'}">{l s='Contact' mod='blockpermanentlinks'}</a></li>
		<li><a href="{$link->getPageLink('sitemap')}" title="{l s='sitemap' mod='blockpermanentlinks'}">{l s='Sitemap' mod='blockpermanentlinks'}</a></li>
		<li>
			<script type="text/javascript">writeBookmarkLink('{$come_from}', '{$meta_title|addslashes|addslashes}', '{l s='Bookmark' mod='blockpermanentlinks'}');</script>
		</li>
	<ul>
</section>