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
<div class="pagenotfound">
	<h1>{l s='This page is not available'}</h1>

	<p>
		{l s='We\'re sorry, but the Web address you\'ve entered is no longer available.'}
	</p>

	<h3>{l s='To find a product, please type its name in the field below.'}</h3>
	<form action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="post" class="std">
		<fieldset>
			<div>
			
				<input id="search_query" placeholder="{l s='Search our product catalog:'}" name="search_query" type="text" class="form-control grey" />
	            <button type="submit" name="Submit" value="OK" class="btn btn-outline button button-small btn-sm"><span>{l s='Ok'}</span></button>
			</div>
		</fieldset>
	</form>

	<div class="buttons"><a class="button-medium" href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{l s='BACK TO HOME'}"><span>{l s='BACK TO HOME'}</span><i class="fa fa-arrow-circle-right"></i></a></div>
</div>
