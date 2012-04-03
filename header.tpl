{*
* header.tpl - Theme Header
* ===================================================================
* <head> content and upper portion of the <body>. 
* This tpl file is included on every page.
* 
* Use this file to modify your theme's header' and 'left sidebar'.
* ===================================================================
*}

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html lang="{$lang_iso}">
<html >
	<head>
		<meta charset="utf-8">

		{* Title set in Back Office > SEO & Titles *}
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>

		{* Meta description for SERPs*}
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
		{/if}

		{* Keywords now mostly useless, but some clients may require them *}
		{if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
		{/if}

		{* Favicon is displayed in address bar and bookmark bars in visitor's browser *}
		<link rel="icon" href="{$img_ps_dir}favicon.ico?{$img_update_time}">

		{* Homescreen icon to be used on iOS devices such as iPhone and iPads *}
		<link rel="apple-touch-icon" href="{$img_ps_dir}apple-touch-icon.png?{$img_update_time}">
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>

		{*
		 * For Development purposes only, if using Bootstrap.
		 * Include Bootstrap LESS files and less.js
		 *
		 * Once finished, turn .less files into .css files using tools such as:
		 * LESS.app <http://incident57.com/less/>
		 * SimpLESS <http://wearekiss.com/simpless>
		 *
		 * Remove the following 2 lines when finished developing
		 *}
		 <link rel="stylesheet/less" type="text/css" href="{$css_dir}global.less" />
		 <script src="{$js_dir}less-1.3.0.min.js" type="text/javascript"></script>

		{* Include CSS files set in Controllers using setMedia() *}
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				<link href="{$css_uri}" rel="stylesheet" media="{$media}" />
			{/foreach}
		{/if}

		{* Include JS files set in Controllers using setMedia() *}
		{if isset($js_files)}
			{foreach from=$js_files item=js_uri}
				<script src="{$js_uri}"></script>
			{/foreach}
		{/if}

		{* Make HTML5 markup work correctly in older versions of IE *}
		<!--[if lt IE 9]><script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

		{$HOOK_HEADER}
	</head>
	
	<body {if $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="page">

			<!-- Header -->
			<div id="header">
				<a id="header_logo" href="{$link->getPageLink('index.php')}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$img_ps_dir}logo.jpg?{$img_update_time}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>
				<div id="header_right">
					{$HOOK_TOP}
				</div>
			</div>

			<div id="columns">
				<!-- Left -->
				<div id="left_column" class="column">
					{$HOOK_LEFT_COLUMN}
				</div>

				<!-- Center -->
				<div id="center_column">
	{/if}