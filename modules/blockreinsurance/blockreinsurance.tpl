{if $infos|@count > 0}
<section class="blockreinsurance">
	<ul class="width{$nbblocks}">	
		{foreach from=$infos item=info}
			<li style="background: url({$module_dir}img/{$info.file_name}) top left no-repeat;">
				{$info.text|escape:html:'UTF-8'}
			</li>
		{/foreach}
	</ul>
</section>
{/if}