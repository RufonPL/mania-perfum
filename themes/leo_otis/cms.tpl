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
{if isset($cms) && !isset($cms_category)}
	{if !$cms->active}
		<br />
		<div id="admin-action-cms">
			<p>
				<span>{l s='This CMS page is not visible to your customers.'}</span>
				<input type="hidden" id="admin-action-cms-id" value="{$cms->id}" />
				<input type="submit" value="{l s='Publish'}" name="publish_button" class="button btn btn-outline"/>
				<input type="submit" value="{l s='Back'}" name="lnk_view" class="button btn btn-outline"/>
			</p>
			<div class="clear" ></div>
			<p id="admin-action-result"></p>
		</div>
	{/if}
	<h1 class="page-heading">{$cms->meta_title}</h1>
	<div class="rte{if $content_only} content_only{/if}">
		{$cms->content}
	</div>

{if $smarty.get.id_cms == 10}
	<form class="form-form" method="post" id="formularz">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<div class="form-group">
					<label for="nick">Imię i Nazwisko</label>
					<input type="text" class="form-control" id="nick" name="nick" placeholder="Wpisz swoje Imię i Nazwisko">
				</div>
				<div class="form-group">
					<label for="mail">Adres e-mail</label>
					<input type="email" class="form-control" id="mail" name="mail" placeholder="Wpisz swój e-mail">
				</div>
				<div class="form-group">
					<label for="tel">Telefon</label>
					<input type="text" class="form-control" id="tel" placeholder="np. +48 123 456 789">
				</div>
                <div class="error-form">Wypełnij wszystkie pola!</div>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
				<div class="form-group">
					<label for="tel">Treść wiadomości</label>
					<textarea id="tresc" placeholder="Twoje zapytanie..."></textarea>
				</div>
				<div class="form-group">
					<button type="submit"  class="btn btn-default send">Wyślij <i class="fa fa-angle-right" aria-hidden="true"></i></button>
				</div>
			</div>
		</div>
	</form>
{/if}
{if $smarty.get.id_cms == 9}
    <form class="form-form" method="post" id="formularz">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="nick">Imię i Nazwisko</label>
                    <input type="text" class="form-control" id="nick" name="nick" placeholder="Wpisz swoje Imię i Nazwisko">
                </div>
                <div class="form-group">
                    <label for="mail">Adres e-mail</label>
                    <input type="email" class="form-control" id="mail" name="mail" placeholder="Wpisz swój e-mail">
                </div>
                <div class="form-group">
                    <label for="tel">Telefon</label>
                    <input type="text" class="form-control" id="tel" placeholder="np. +48 123 456 789">
                </div>
                <div class="error-form">Wypełnij wszystkie pola!</div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="tel">Treść wiadomości</label>
                    <textarea id="tresc" placeholder="Twoje zapytanie..."></textarea>
                </div>
                <div class="form-group">
                    <button type="submit"  class="btn btn-default send">Wyślij <i class="fa fa-angle-right" aria-hidden="true"></i></button>
                </div>
            </div>
        </div>
    </form>
{/if}









{elseif isset($cms_category)}
	<div class="block-cms">
		<h1><a href="{if $cms_category->id eq 1}{$base_dir}{else}{$link->getCMSCategoryLink($cms_category->id, $cms_category->link_rewrite)}{/if}">{$cms_category->name|escape:'html':'UTF-8'}</a></h1>
		{if $cms_category->description}
			<p>{$cms_category->description|escape:'html':'UTF-8'}</p>
		{/if}
		{if isset($sub_category) && !empty($sub_category)}	
			<p class="title_block">{l s='List of sub categories in %s:' sprintf=$cms_category->name}</p>
			<ul class="bullet list-group">
				{foreach from=$sub_category item=subcategory}
					<li>
						<a class="list-group-item" href="{$link->getCMSCategoryLink($subcategory.id_cms_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|escape:'html':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
		{if isset($cms_pages) && !empty($cms_pages)}
		<p class="title_block">{l s='List of pages in %s:' sprintf=$cms_category->name}</p>
			<ul class="bullet list-group">
				{foreach from=$cms_pages item=cmspages}
					<li>
						<a class="list-group-item" href="{$link->getCMSLink($cmspages.id_cms, $cmspages.link_rewrite)|escape:'html':'UTF-8'}">{$cmspages.meta_title|escape:'html':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
	</div>
{else}
	<div class="alert alert-danger">
		{l s='This page does not exist.'}
	</div>
{/if}
<br />
{strip}
{if isset($smarty.get.ad) && $smarty.get.ad}
{addJsDefL name=ad}{$base_dir|cat:$smarty.get.ad|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{if isset($smarty.get.adtoken) && $smarty.get.adtoken}
{addJsDefL name=adtoken}{$smarty.get.adtoken|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{/strip}
