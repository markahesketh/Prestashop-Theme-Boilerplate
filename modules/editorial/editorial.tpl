<section class="block editorial">
	{* Image / Link *}
	{if $editorial->body_home_logo_link}
		<a href="{$editorial->body_home_logo_link|escape:'htmlall':'UTF-8'}" title="{$editorial->body_title|escape:'htmlall':'UTF-8'|stripslashes}">
	{/if}
		{if $homepage_logo}
			<img src="{$link->getMediaLink($image_path)}" alt="{$editorial->body_title|escape:'htmlall':'UTF-8'|stripslashes}" {if $image_width}width="{$image_width}"{/if} {if $image_height}height="{$image_height}" {/if}/>
		{/if}
	{if $editorial->body_home_logo_link}
		</a>
	{/if}
	
	{* Image Caption *}
	{if $editorial->body_logo_subheading}
		<p id="editorial_image_legend">{$editorial->body_logo_subheading|stripslashes}</p>
	{/if}

	{* Heading *}
	{if $editorial->body_title}
		<h1>{$editorial->body_title|stripslashes}</h1>
	{elseif $editorial->body_title}
		<h1>{$editorial->body_title|stripslashes}</h1>
	{/if}

	{* Sub Heading *}
	{if $editorial->body_subheading}
		<h2>{$editorial->body_subheading|stripslashes}</h2>
	{elseif $editorial->body_subheading}
		<h2>{$editorial->body_subheading|stripslashes}</h2>
	{/if}

	{* Content *}
	{if $editorial->body_paragraph}
		{$editorial->body_paragraph|stripslashes}
	{/if}
</section>