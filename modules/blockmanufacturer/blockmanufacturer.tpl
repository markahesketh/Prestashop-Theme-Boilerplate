{if $manufacturers}
	<section class="block blockmanufacturer">
		<h1>{if $display_link_manufacturer}<a href="{$link->getPageLink('manufacturer')}" title="{l s='Manufacturers' mod='blockmanufacturer'}">{/if}{l s='Manufacturers' mod='blockmanufacturer'}{if $display_link_manufacturer}</a>{/if}</h1>
		{if $text_list}
			<ul>
				{foreach from=$manufacturers item=manufacturer name=manufacturer_list}
					{if $smarty.foreach.manufacturer_list.iteration <= $text_list_nb}
					<li>
						<a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}" title="{l s='More about' mod='blockmanufacturer'} {$manufacturer.name}">{$manufacturer.name|escape:'htmlall':'UTF-8'}</a>
					</li>
					{/if}
				{/foreach}
			</ul>
		{/if}
		{if $form_list}
			<form action="{$smarty.server.SCRIPT_NAME|escape:'htmlall':'UTF-8'}" method="get">
				<select id="manufacturer_list" onchange="autoUrl('manufacturer_list', '');">
					<option value="0">{l s='All manufacturers' mod='blockmanufacturer'}</option>
				{foreach from=$manufacturers item=manufacturer}
					<option value="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}">{$manufacturer.name|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
			</form>
		{/if}
	</section>
{/if}