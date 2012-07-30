{*
* =|= BLOCK CONTACT INFOS ======================================
* Display store contact details in footer.
* ==============================================================
*}

<section class="block blockcontactinfos">
	<h1>{l s='Contact us' mod='blockcontactinfos'}</h1>
	<ul>
		{if $blockcontactinfos_company != ''}<li><strong>{$blockcontactinfos_company}</strong></li>{/if}
		{if $blockcontactinfos_address != ''}<li>{$blockcontactinfos_address}</li>{/if}
		{if $blockcontactinfos_phone != ''}<li>{l s='Tel:'} {$blockcontactinfos_phone}</li>{/if}
		{if $blockcontactinfos_email != ''}<li>{l s='Email:'} {mailto address=$blockcontactinfos_email encode="hex"}</li>{/if}
	</ul>
</section>