{*
* =|= BLOCK CURRENCY ===========================================
* Display currency selection in header
* ==============================================================
*}

<section class="block blockcurrencies">
	<form id="setCurrency" action="{$request_uri}" method="post">
		<span>{$blockcurrencies_sign}</span>
		<ul id="first-currencies" class="currencies_ul">
			{foreach from=$currencies key=k item=f_currency}
				{if $cookie->id_currency != $f_currency.id_currency}
					<li>
						<a href="javascript:setCurrency({$f_currency.id_currency});" title="{$f_currency.name}">{$f_currency.sign}</a>
					</li>
				{/if}
			{/foreach}
		</ul>
		<input type="hidden" name="id_currency" id="id_currency" value=""/>
		<input type="hidden" name="SubmitCurrency" value="" />
	</form>
</section>