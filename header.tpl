{*
	* 2007-2012 PrestaShop
	*
	* NOTICE OF LICENSE
	*
	* This source file is subject to the Academic Free License (AFL 3.0)
	* that is bundled with this package in the file LICENSE.txt.
	* It is also available through the world-wide-web at this URL:
	* http://opensource.org/licenses/afl-3.0.php
	* If you did not receive a copy of the license and are unable to
	* obtain it through the world-wide-web, please send an email
	* to license@prestashop.com so we can send you a copy immediately.
	*
	* DISCLAIMER
	*
	* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
	* versions in the future. If you wish to customize PrestaShop for your
	* needs please refer to http://www.prestashop.com for more information.
	*
	*  @author PrestaShop SA <contact@prestashop.com>
	*  @copyright  2007-2012 PrestaShop SA
	*  @version  Release: $Revision: 6594 $
	*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
	*  International Registered Trademark & Property of PrestaShop SA
	*}

	<!DOCTYPE html>
	{* Stop conditional comments blocking downloads (Ref: http://bit.ly/LXcukK) *}
	<!--[if IE]><![endif]-->
	<html lang="{$meta_language}">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		{* Title set in Back Office > Preferences > SEO & URLs. *}
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>

		{* Meta description for SERPs. *}
		{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
		{/if}

		{* Keywords are nearly useless these days, but PrestaShop has the functionality and some clients may require them. (Ref: http://bit.ly/P4FuYL) *}
		{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
		{/if}

		{* Set robots based upon Back Office config. Don't forget to generate a robots.txt too. *}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		
		{* Favicon is displayed in address bar and bookmark bars in visitor's browser. (Ref: http://bit.ly/P4F7xg) *}
		<link rel="icon" href="{$favicon_url}?{$img_update_time}">

		{* Include all CSS files from page controller's SetMedia() *}
		{if isset($css_files)}
		{foreach from=$css_files key=css_uri item=media}
		<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
		{/foreach}
		{/if}

		{* Required Prestashop JavaScript configuration. *}
		<script type="text/javascript">
		var baseDir = '{$content_dir}';
		var static_token = '{$static_token}';
		var token = '{$token}';
		var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
		var priceDisplayMethod = {$priceDisplay};
		var roundMode = {$roundMode};
		</script>

		{* Include all JavaScript files from page controller's SetMedia(). *}
		{if isset($js_files)}
		{foreach from=$js_files item=js_uri}
		<script type="text/javascript" src="{$js_uri}"></script>
		{/foreach}
		{/if}

		{* IE9.js makes older versions of Internet Explorer behave like a standards-compliant browser. (Ref: http://bit.ly/LX9ox0) *}
		<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->

		{* HTML5Shiv enables HTML5 elements in older versions of Internet Explorer (Ref: http://bit.ly/LX9S6f) *}
		<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

		{* Header modules hook *}
		{$HOOK_HEADER}
	</head>
	
	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
		{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="page" class="container_9 clearfix">

			<!-- Header -->
			<div id="header" class="grid_9 alpha omega">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>
				<div id="header_right" class="grid_6 omega">
					{$HOOK_TOP}
				</div>
			</div>

			<div id="columns" class="grid_9 alpha omega clearfix">
				<!-- Left -->
				<div id="left_column" class="column grid_2 alpha">
					{$HOOK_LEFT_COLUMN}
				</div>

				<!-- Center -->
				<div id="center_column" class=" grid_5">
					{/if}
