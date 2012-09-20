{*
* =|= BLOCK NEWSLETTER =========================================
* Display newsletter sign up from in sidebar.
* ==============================================================
*}

<section class="block blocknewsletter">
	<h1>{l s='Newsletter' mod='blocknewsletter'}</h1>
	{if isset($msg) && $msg}
		<p class="{if $nw_error}warning_inline{else}success_inline{/if}">{$msg}</p>
	{/if}
	<form action="{$link->getPageLink('index')}" method="post">
			<input type="text" name="email" size="18" 
				value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='blocknewsletter'}{/if}" 
				class="inputNew" />
				<input type="submit" value="ok" class="button_mini" name="submitNewsletter" />
			<input type="hidden" name="action" value="0" />
	</form>
</section>