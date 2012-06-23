{*
 * =|= Store Info Details =======================================
 *
 * Displays information about listed retail store incl. contact
 * information and opening hours.
 * ==============================================================
 *}

{* The following lines allow translations in back-office and has to stay commented

	{l s='Monday'}
	{l s='Tuesday'}
	{l s='Wednesday'}
	{l s='Thursday'}
	{l s='Friday'}
	{l s='Saturday'}
	{l s='Sunday'}
*}
<br />
<br />
<span id="store_hours">{l s='Hours:'}</span>
<table style="font-size: 9px;">
	{foreach from=$days_datas  item=one_day}
	<tr>
		<td style="width: 70px;">{l s=$one_day.day}</td><td>{$one_day.hours}</td>
	</tr>
	{/foreach}
</table>
