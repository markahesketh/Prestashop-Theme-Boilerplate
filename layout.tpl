{*
* =|= Header ===================================================
*
* <head>, top <body> content and left sidebar.
* Included on every page.
* ==============================================================
*}

<!DOCTYPE html>
{* Stop conditional comments blocking downloads. (http://bit.ly/LXcukK) *}
<!--[if IE]><![endif]-->
<!-- Paul Irish´s conditional classes: http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]>  <html lang="{$meta_language}" class="ie ie6 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 7]>     <html lang="{$meta_language}" class="ie ie7 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 8]>     <html lang="{$meta_language}" class="ie ie8 lte9 lte8"> <![endif]-->
<!--[if IE 9]>     <html lang="{$meta_language}" class="ie ie9 lte9"> <![endif]-->
<!--[if gt IE 9]>  <html lang="{$meta_language}"> <![endif]-->
<!--[if !IE]><!--> <html lang="{$meta_language}">             <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	{* Title set in Back Office > Preferences > SEO & URLs. *}
	<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>

	{* Meta description for SERPs. *}
	{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
	{/if}

	{* Prestashop supports meta keywords, so little harm in including them here. (http://bit.ly/P4FuYL) *}
	{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
	{/if}

	{* Robots settings set in Back office. Don't forget to generate a robots.txt too. *}
	<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
	
	{* Favicon displayed in address bar, tabs and bookmarks. (http://bit.ly/P4F7xg) *}
	<link rel="icon" href="{$favicon_url}?{$img_update_time}">

	{* Include all CSS files from page controller's SetMedia() *}
	{if isset($css_files)}
		{foreach from=$css_files key=css_uri item=media}
			<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
		{/foreach}
	{/if}

	{* Required Prestashop JavaScript configuration. *}
	<script type="text/javascript">
		var baseDir               = '{$content_dir}';
		var static_token          = '{$static_token}';
		var token                 = '{$token}';
		var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
		var priceDisplayMethod    = {$priceDisplay};
		var roundMode             = {$roundMode};
	</script>

	{* Include all JavaScript files from page controller's SetMedia(). *}
	{if isset($js_files)}
		{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri}"></script>
		{/foreach}
	{/if}

	{* IE9.js makes older versions of Internet Explorer more standards-compliant. (http://bit.ly/LX9ox0) *}
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->

	{* HTML5Shiv enables HTML5 elements in older versions of Internet Explorer. (http://bit.ly/LX9S6f) *}
	<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

	{* Header modules hook *}
	{$HOOK_HEADER}
</head>

<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="light sidebar-a-left">
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="wrapper">

			{* Header *}
			<header id="header">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>
			
			{if $HOOK_TOP}
				<div id="header_right" class="">
					{$HOOK_TOP}
				</div>
			{/if}
			</header>

			<div id="contentwrapper">
				

				{* Center content *}
				<div id="content">
	{/if}

	{if !empty($template)}
		{$template}
	{/if}
	
	{if !$content_only}
				</div>
				
			{* Left sidebar *}
			{if $HOOK_LEFT_COLUMN}
				<aside id="sidebar-a">
					{$HOOK_LEFT_COLUMN}
				</aside>
			{/if}
				
				
			{* Right sidebar *}
			{if $HOOK_RIGHT_COLUMN}
				<aside id="sidebar-b">
					{$HOOK_RIGHT_COLUMN}
				</aside>
			{/if}
			</div>

			
		{if $HOOK_FOOTER}
			<footer id="footer" >
				{$HOOK_FOOTER}
			</footer>
		{/if}
		</div>
	{/if}
	</body>
</html>
{if !empty($live_edit)}
	{$live_edit}
{/if}