{if isset($homeslider)}
	<script type="text/javascript">
		{if isset($homeslider_slides) && $homeslider_slides|@count > 1}
			{if $homeslider.loop == 1}
				var homeslider_loop = true;
			{else}
				var homeslider_loop = false;
			{/if}
		{else}
			var homeslider_loop = false;
		{/if}
		var homeslider_speed = {$homeslider.speed};
		var homeslider_pause = {$homeslider.pause};
	</script>
	{if isset($homeslider_slides)}
		<div class="flexslider">
			<ul class="slides">
				{foreach from=$homeslider_slides item=slide}
					{if $slide.active}
						<li>
							<a href="{$slide.url}" title="{$slide.description}"><img src="{$smarty.const._MODULE_DIR_}/homeslider/images/{$slide.image}" alt="{$slide.legend}" title="{$slide.description}" /></a>
						</li>
					{/if}
				{/foreach}
			</ul>
		</div>
	{/if}
{/if}