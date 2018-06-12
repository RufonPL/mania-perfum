{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2016 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\front\products\image_container -->
<div class="product-image-container image">
	<div class="leo-more-info hidden-xs" data-idproduct="{$product.id_product|intval}"></div>
	<a class="product_img_link" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
		<img class="replace-2x img-responsive" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'small_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} itemprop="image" />
		<span class="product-additional" data-idproduct="{$product.id_product|intval}"></span>
	</a>
	<div class="group-label">
		{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
			{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
				{hook h="displayProductPriceBlock" product=$product type='before_price'}
				{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
					{hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
					{if $product.specific_prices.reduction_type == 'percentage'}
						<div class="price-percent-reduction-box label-price-percent-reduction label">
							<span class="price-percent-reduction product-label">-{$product.specific_prices.reduction * 100}%</span>
						</div>
					{/if}
				{/if}
			{/if}
		{/if}
		{if isset($product.new) && $product.new == 1}
			<a class="new-box label label-new" href="{$product.link|escape:'html':'UTF-8'}">
				<span class="product-label">{l s='New' mod='appagebuilder'}</span>
			</a>
		{/if}
		{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
			<a class="sale-box label label-sale" href="{$product.link|escape:'html':'UTF-8'}">
				<span class="product-label">{l s='Sale!' mod='appagebuilder'}</span>
			</a>
		{/if}
	</div>	
</div>


