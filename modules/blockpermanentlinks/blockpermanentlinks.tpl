{*
* =|= BLOCK PERMANENT LINKS ====================================
* Display sitemap, contact and bookmark links in header.
* ==============================================================
*}

<section class="block blockpermanent">
	<div class="sitemap">
		<a href="{$link->getPageLink('sitemap')}"><img src="{$img_dir}icon/sitemap.gif" alt="{l s='sitemap' mod='blockpermanentlinks'}" title="{l s='sitemap' mod='blockpermanentlinks'}" /></a>&nbsp;
		<a href="{$link->getPageLink('sitemap')}">{l s='Sitemap' mod='blockpermanentlinks'}</a>
	</div>
	<div class="contact">
		<a href="{$link->getPageLink('contact', true)}"><img src="{$img_dir}icon/contact.gif" alt="{l s='contact' mod='blockpermanentlinks'}" title="{l s='contact' mod='blockpermanentlinks'}" /></a>&nbsp;
		<a href="{$link->getPageLink('contact', true)}">{l s='Contact' mod='blockpermanentlinks'}</a>
	</div>
	<div class="add_bookmark">
		<script type="text/javascript">
		writeBookmarkLink('{$come_from}', '{$shop_name|addslashes|addslashes}', '{l s='Bookmark this page' mod='blockpermanentlinks'}', '{$img_dir}icon/star.gif');</script>&nbsp;
	</div>
</section>