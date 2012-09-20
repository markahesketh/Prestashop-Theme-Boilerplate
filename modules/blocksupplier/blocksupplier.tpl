{if $suppliers}
	<section class="block blocksupplier">
		<h1>{if $display_link_supplier}<a href="{$link->getPageLink('supplier')}" title="{l s='Suppliers' mod='blocksupplier'}">{/if}{l s='Suppliers' mod='blocksupplier'}{if $display_link_supplier}</a>{/if}</h1>
		{if $text_list}
			<ul>
				{foreach from=$suppliers item=supplier name=supplier_list}
					{if $smarty.foreach.supplier_list.iteration <= $text_list_nb}
					<li>
						<a href="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}" title="{l s='More about' mod='blocksupplier'} {$supplier.name}">{$supplier.name|escape:'htmlall':'UTF-8'}</a>
					</li>
					{/if}
				{/foreach}
			</ul>
		{/if}
		{if $form_list}
			<form action="{$smarty.server.SCRIPT_NAME|escape:'htmlall':'UTF-8'}" method="get">
				<select id="supplier_list" onchange="autoUrl('supplier_list', '');">
					<option value="0">{l s='All suppliers' mod='blocksupplier'}</option>
				{foreach from=$suppliers item=supplier}
					<option value="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}">{$supplier.name|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
			</form>
		{/if}
	</section>
{/if}