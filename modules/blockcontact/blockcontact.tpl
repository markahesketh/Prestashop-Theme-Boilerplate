{*
* =|= Block Contact ============================================
*
* Display contact informaton in the sidebar.
* ==============================================================
*}

<section class="block blockcontact">
	<h1>{l s='Contact us' mod='blockcontact'}</h1>
	{if $telnumber != ''}
		<p class="tel">{l s='Phone:' mod='blockcontact'}{$telnumber}</p>
	{/if}
	{if $email != ''}
		<a href="mailto:{$email}" class="btn">{l s='Contact our hotline' mod='blockcontact'}</a>
	{/if}
</section>