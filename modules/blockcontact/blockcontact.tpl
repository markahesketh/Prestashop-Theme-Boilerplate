<section id="contact_block" class="block">
	<h1>{l s='Contact us' mod='blockcontact'}</h1>
	<p>{l s='Our hotline is available 24/7' mod='blockcontact'}</p>
	{if $telnumber != ''}
		<p class="tel">{l s='Phone:' mod='blockcontact'}{$telnumber}</p>
	{/if}
	{if $email != ''}
		<a href="mailto:{$email}">{l s='Contact our hotline' mod='blockcontact'}</a>
	{/if}
</section>