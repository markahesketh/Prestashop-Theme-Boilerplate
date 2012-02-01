{*
* 2007-2011 PrestaShop 
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
*  @copyright  2007-2011 PrestaShop SA
*  @version  Release: $Revision: 9140 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!doctype html>
<!--[if lt IE 7 ]><html class="ie6" lang="{$lang_iso}"><![endif]-->
<!--[if IE 7 ]><html class="ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8 ]><html class="ie8" lang="{$lang_iso}"><![endif]-->
<!--[if IE 9 ]><html class="ie9" lang="{$lang_iso}"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="" lang="{$lang_iso}"><!--<![endif]-->
<!--[if IE]><![endif]-->
<html >
	<head>
		<meta charset="utf-8">
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
		{/if}
		{if isset($meta_keywords) AND $meta_keywords}
				<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
		{/if}
		<link rel="icon" href="{$img_ps_dir}favicon.ico?{$img_update_time}">
		<link rel="apple-touch-icon" href="{$img_ps_dir}apple-touch-icon.png?{$img_update_time}">
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				<link href="{$css_uri}" rel="stylesheet" media="{$media}" />
			{/foreach}
		{/if}
		{if isset($js_files)}
			{foreach from=$js_files item=js_uri}
				<script src="{$js_uri}"></script>
			{/foreach}
		{/if}
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
