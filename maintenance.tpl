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
 <!--[if IE]><![endif]-->
 <html lang="{$meta_language}">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		{* Title set in Back Office > SEO & Titles. *}
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>

		{* Meta description for SERPs. *}
		{if isset($meta_description) AND $meta_description}
				<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
		{/if}

		{* Keywords are nearly useless these days, but PrestaShop has the functionality and some clients may require them (Ref: http://bit.ly/P4FuYL). *}
		{if isset($meta_keywords) AND $meta_keywords}
				<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
		{/if}

		{* Set robots based upon Back Office config. Don't forget to generate a robots.txt too. *}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		
		{* Favicon is displayed in address bar and bookmark bars in visitor's browser (Ref: http://bit.ly/P4F7xg). *}
  		<link rel="icon" href="{$favicon_url}?{$img_update_time}">

  		{* Include all CSS files from page controller's SetMedia() *}
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
			<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
			{/foreach}
		{/if}
	</head>
	<body>
		<div id="maintenance">
			 <p><img src="{$content_dir}img/logo.jpg" alt="logo" /><br /><br /></p>
			 <p id="message">
				{l s='In order to perform site maintenance, our online shop has shut down temporarily.'}<br /><br />
				{l s='We apologize for the inconvenience and ask that you please try again later.'}
			 </p>
			 <span style="clear:both;">&nbsp;</span>
		</div>
	</body>
</html>
