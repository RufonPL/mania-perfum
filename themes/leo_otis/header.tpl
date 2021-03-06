{*
* 2007-2016 PrestaShop
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
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if} {if isset($IS_RTL) && $IS_RTL} dir="rtl" class="rtl{if isset($LEO_DEFAULT_SKIN)} {$LEO_DEFAULT_SKIN}{/if}" {else} class="{if isset($LEO_DEFAULT_SKIN)}{$LEO_DEFAULT_SKIN}{/if}" {/if}>
	{include file="$tpl_dir./layout/setting.tpl"}
	<head>
		<meta charset="utf-8" />
        {if $meta_title|strstr:' - Mania Perfum'}<title>{$meta_title|replace:' od mania-perfum.pl ':''}{if isset($smarty.get.p)} - strona: {$smarty.get.p}{assign var='no_canonical' value=true}{/if}</title>{else}
        <title>{$meta_title|replace:' od mania-perfum.pl ':''}{if isset($smarty.get.p)} - strona: {$smarty.get.p}{assign var='no_canonical' value=true}{/if} - Mania Perfum</title>
        {/if}
		
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
		{/if}
		{*if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
		{/if*}
		<meta name="generator" content="PrestaShop" />
        {if $smarty.server.REQUEST_URI|strstr:'/pl/logowanie' || $smarty.server.REQUEST_URI|strstr:'/pl/szybkie-zakupy' || $smarty.server.REQUEST_URI|strstr:'controller=productsearch' || $smarty.server.REQUEST_URI|strstr:'/en/'}
        <meta name="robots" content="noindex, follow" />
        {else}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
        {/if}
		{if $ENABLE_RESPONSIVE}
			<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
		{/if}
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				{if $css_uri == 'lteIE9'}
					<!--[if lte IE 9]>
					{foreach from=$css_files[$css_uri] key=css_uriie9 item=mediaie9}
					<link rel="stylesheet" href="{$css_uriie9|escape:'html':'UTF-8'}" type="text/css" media="{$mediaie9|escape:'html':'UTF-8'}" />
					{/foreach}
					<![endif]-->
				{else}
					<link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" type="text/css" media="{$media|escape:'html':'UTF-8'}" />
				{/if}
			{/foreach}
		{/if}
		{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
			{$js_def}
			{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
			{/foreach}
		{/if}
		{$HOOK_HEADER}
		{if !$LOAD_CSS_TYPE}
			{if $ENABLE_RESPONSIVE}
			<link rel="stylesheet" type="text/css" href="{$content_dir}themes/{$LEO_THEMENAME}/css/responsive.css"/>
			{else}
			<link rel="stylesheet" type="text/css" href="{$content_dir}themes/{$LEO_THEMENAME}/css/non-responsive.css"/>
			{/if}
			{if isset($LEO_CSS)}{foreach from=$LEO_CSS key=css_uri item=media}
			<link rel="stylesheet" href="{$css_uri}" type="text/css" media="{$media}" />
			{/foreach}{/if}
			
			{if isset($LEO_SKIN_CSS)}
				{foreach from=$LEO_SKIN_CSS item=linkCss}
					{$linkCss}
				{/foreach}
			{/if}
		{/if}
		{if isset($CUSTOM_FONT)}
                {$CUSTOM_FONT}
		{/if}
		{if isset($LAYOUT_WIDTH)}
                {$LAYOUT_WIDTH}
		{/if}
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
		{* <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,600&amp;subset=latin,latin-ext" type="text/css" media="all" /> *}
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css"/>
		<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900&amp;subset=latin-ext" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="{$content_dir}themes/{$LEO_THEMENAME}/livemarket/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="{$content_dir}themes/{$LEO_THEMENAME}/livemarket/css/rwd.css"/>
		<!--<link rel="stylesheet" type="text/css" href="css/fontello/fontello-9f19a689/fontello-9f19a689/css/fontello.css" />-->
    <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">
					{*<!-- BEGIN Google analytycs -->
		
			 <script type="text/javascript">
				(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
				ga('create', 'UA-51138047-1', 'auto');
				ga('send', 'pageview');
			</script>
			<!-- END BEGIN Google analytycs -->*}
			<meta name="google-site-verification" content="eadYvZGpmatRHnKUzaUnX1gWD-oLwMOZR7bOEkxoC3o" />
			
			<script type="application/ld+json">
				{
					"@context": "http://schema.org",
					"@type": "LocalBusiness",
					"address": {
						"@type": "PostalAddress",
						"addressLocality": "Karczew",
						"streetAddress": "Ks. Władysława Żaboklickiego 4/2",
						"postalCode": "05-480",
						"addressRegion": "mazowieckie"
					},
					"name": "Mania Perfum",
					"email": "biuro@mania-perfum.pl",
					"telephone": "519690615",
					"vatID": "5272653581",
					"image": "https://mania-perfum.pl/img/mania-perfum-logo-1490709213.jpg"
				}
				</script>
			
				<link rel="manifest" href="/manifest.json">
				<script charset="UTF-8" src="https://cdn.pushpushgo.com/js/59fc857262ea2c00116ec292.js" async="async"></script>
				
				<script type="text/javascript">
					window.smartlook||(function(d) {
					var o=smartlook=function(){ o.api.push(arguments)},h=d.getElementsByTagName('head')[0];
					var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';
					c.charset='utf-8';c.src='https://rec.smartlook.com/recorder.js';h.appendChild(c);
					})(document);
					smartlook('init', 'cfde7751df54aea0b1c12780cb5593efca6a9047');
				</script>
				
				{literal}
				<!-- Global site tag (gtag.js) - Google Analytics -->
				<script async src="https://www.googletagmanager.com/gtag/js?id=UA-114789653-1"></script>
				<script>
				  window.dataLayer = window.dataLayer || [];
				  function gtag(){dataLayer.push(arguments);}
				  gtag('js', new Date());

				  gtag('config', 'UA-114789653-1');
				</script>
				{/literal}
	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} show-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}  {if isset($LEO_LAYOUT_MODE)}{$LEO_LAYOUT_MODE}{/if}{if isset($USE_FHEADER) && $USE_FHEADER} keep-header{/if}{if isset($LEO_HEADER_STYLE)} {$LEO_HEADER_STYLE}{/if}{if $LEO_HEADER_STYLE!="header-hide-topmenu" && $LEO_SIDEBAR_MENU!="sidebar-hide"} double-menu{/if}">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<section id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
			</section>
		{/if}
		<section id="page" data-column="{$colValue}" data-type="{$LISTING_GRIG_MODE}">
			<!-- Header -->
			<header id="header" class="header-center">
				<section class="header-container">
					{capture name='displayBanner'}{hook h='displayBanner'}{/capture}
					{if $smarty.capture.displayBanner}
					<div class="banner">
						{if isset($fullwidth_hook.displayBanner) AND $fullwidth_hook.displayBanner == 0}
							<div class="container">							
						{/if}
						{$smarty.capture.displayBanner}
						{if isset($fullwidth_hook.displayBanner) AND $fullwidth_hook.displayBanner == 0}							
							</div>
						{/if}
					</div>
					{/if}
					<div id="header-main" class="header-left">
						<div id="header_content">
							<div class="inner">
								{capture name='displayNav'}{hook h='displayNav'}{/capture}
								{if $smarty.capture.displayNav}
								<div id="topbar">
									{if isset($fullwidth_hook.displayNav) AND $fullwidth_hook.displayNav == 0}
									<div class="container">
									{/if}
										{$smarty.capture.displayNav}
									{if isset($fullwidth_hook.displayNav) AND $fullwidth_hook.displayNav == 0}
									</div>
									{/if}
								</div>
								{/if}
								<div class="topnav">
									{if isset($fullwidth_hook.displayTop) AND $fullwidth_hook.displayTop == 0}
									<div class="container">
									{/if}
										{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
									{if isset($fullwidth_hook.displayTop) AND $fullwidth_hook.displayTop == 0}
									</div>
									{/if}
								</div>
							</div>
						</div>
					</div>
				</section>
			</header>
			
			{if in_array($page_name,array('index'))}
				{capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
				{if $smarty.capture.displayTopColumn}
				<div id="slideshow" class="clearfix">					
					{if isset($fullwidth_hook.displayTopColumn) AND $fullwidth_hook.displayTopColumn == 0}
						<div class="container">					 
					{/if}
					{$smarty.capture.displayTopColumn}
					{if isset($fullwidth_hook.displayTopColumn) AND $fullwidth_hook.displayTopColumn == 0}				 
						</div>
					{/if}					
				</div>
				{/if}
			{/if}
			{if $page_name !='index' && $page_name !='pagenotfound'}
				<div id="breadcrumb" class="clearfix">
					<div class="container"> 				
							{include file="$tpl_dir./breadcrumb.tpl"}	
					 
					</div>
				</div>
			{/if}
<!--             <div class="cat-prod-slider">
                <div class="container">
                    <ul>
                        <li><div class="s-1"></div></li>
                        <li><div class="s-2"></div></li>
                        <li><div class="s-3"></div></li>
                    </ul>
                </div>
            </div> -->



			<!-- Content -->
			<section id="columns" class="columns-container">
				{if isset($fullwidth_hook.displayHome) AND $fullwidth_hook.displayHome == 0}
					<div class="container">
					<div class="row">
				{else}         
					<div class="row">
				{/if}                               
                        {if isset($left_column_size) && !empty($left_column_size)}
						<!-- Left -->
						<section id="left_column" class="column sidebar col-md-{$left_column_size|intval}">
								{$HOOK_LEFT_COLUMN}
						</section>
						{/if}
						{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
						<!-- Center -->
						<section id="center_column" class="col-md-{$cols|intval}">
	{/if}
