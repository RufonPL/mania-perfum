{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2016 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\front\products\quick_view -->
{if isset($quick_view) && $quick_view}
	<div class="quickview">
		<a class="quick-view btn-product" href="{$product.link|escape:'html':'UTF-8'}" data-link="{$product.link|escape:'html':'UTF-8'}" title="{l s='Quick View' mod='appagebuilder'}">
			<i class="fa fa-search"></i><span>{l s='Quick View' mod='appagebuilder'}</span>
		</a>
	</div>
{/if}


