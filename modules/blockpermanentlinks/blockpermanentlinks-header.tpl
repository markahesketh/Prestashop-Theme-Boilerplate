{*
* =|= BLOCK PERMANENT LINKS ====================================
* Display sitemap, contact and bookmark links in header.
* ==============================================================
*}

<section class="block blockpermanentlinks-header">
	<ul>
		<li><a href="{$link->getPageLink('contact', true)}" title="{l s='contact' mod='blockpermanentlinks'}">{l s='contact' mod='blockpermanentlinks'}</a></li>
		<li><a href="{$link->getPageLink('sitemap')}" title="{l s='sitemap' mod='blockpermanentlinks'}">{l s='sitemap' mod='blockpermanentlinks'}</a></li>
		<li>
			<script type="text/javascript">writeBookmarkLink('{$come_from}', '{$meta_title|addslashes|addslashes}', '{l s='bookmark' mod='blockpermanentlinks'}');</script>
		</li>
	<ul>
</section>