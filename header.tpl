{*
 * Theme Header
 * ===================================================================
 * <head> content and upper portion of the <body>. 
 * This tpl file is included on every page.
 * 
 * Use this file to modify your theme's header' and left sidebar.
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

  {* Meta description for SERPs *}
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
  * LESS extends CSS with dynamic behavior such as variables, mixins, operations and functions.
  * http://lesscss.org/
  *
  * Once finished, turn .less files into .css files using tools such as:
  * LESS.app (OSX) http://incident57.com/less/
  * SimpLESS (Win) http://wearekiss.com/simpless
  *
  * Remove the following 2 lines when finished developing
  *}
  <link rel="stylesheet/less" type="text/css" href="{$css_dir}global.less">
  <script src="{$js_dir}less-1.3.0.min.js"></script>

  {* Include all CSS files setMedia() *}
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

  {* 
  * Make HTML5 markup work correctly in older versions of IE
  * http://code.google.com/p/html5shiv/
  *}
  <!--[if lt IE 9]><script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

  {*
  * JavaScript library to make Microsoft Internet Explorer behave like a standards-compliant browser.
  * http://code.google.com/p/ie7-js/
  *}
  <!--[if lt IE 7]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE7.js"></script><![endif]-->
  {$HOOK_HEADER}
</head>

<body {if $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
  {if !$content_only}
  {if isset($restricted_country_mode) && $restricted_country_mode}
  <div id="restricted-country">
    <p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
  </div>
  {/if}
  <div id="container">

    <!-- Header -->
    <header>
      <a id="logo" href="{$link->getPageLink('index.php')}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
        <img src="{$img_ps_dir}logo.jpg?{$img_update_time}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
      </a>
      <div id="hook_top">
        {$HOOK_TOP}
      </div>
    </header>

    <div id="columns">
      <!-- Left -->
      <div id="left_column" class="column">
        {$HOOK_LEFT_COLUMN}
      </div>

      <!-- Center -->
      <div id="center_column">
        {/if}