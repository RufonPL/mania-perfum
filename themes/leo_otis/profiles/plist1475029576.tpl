<div class="product-container product-block" itemscope itemtype="http://schema.org/Product"><div class="left-block">
<!-- @file modules\appagebuilder\views\templates\front\products\image_container -->
<div class="product-image-container image">
	<div class="leo-more-info hidden-xs" data-idproduct="{$product.id_product|intval}"></div>
	<a class="product_img_link" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
		<img class="replace-2x img-responsive" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} itemprop="image" />
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
				<span class="product-label">{l s='New'}</span>
			</a>
		{/if}
		{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
			<a class="sale-box label label-sale" href="{$product.link|escape:'html':'UTF-8'}">
				<span class="product-label">{l s='Sale!'}</span>
			</a>
		{/if}
	</div>	
</div>



<!-- @file modules\appagebuilder\views\templates\front\products\quick_view -->
{if isset($quick_view) && $quick_view}
	<div class="quickview">
		<a class="quick-view btn-product" href="{$product.link|escape:'html':'UTF-8'}" data-link="{$product.link|escape:'html':'UTF-8'}" title="{l s='Quick View'}">
			<i class="fa fa-search"></i><span>{l s='Quick View'}</span>
		</a>
	</div>
{/if}



<!-- @file modules\appagebuilder\views\templates\front\products\add_to_cart -->
<div class="cart">
	{if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
		{if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
			{capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
			<a class="button ajax_add_to_cart_button btn-product btn btn-outline" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
				<i class="fa fa-shopping-cart"></i><span>{l s='Add to cart'}</span>
			</a>
		{else}
			<span class="button ajax_add_to_cart_button btn-product btn btn-outline disabled">
				<i class="fa fa-shopping-cart"></i><span>{l s='Out of stock'}</span>
			</span>
		{/if}
	{/if}
</div>

<div class="functional-buttons clearfix">
<!-- @file modules\appagebuilder\views\templates\front\products\compare -->
{if isset($comparator_max_item) && $comparator_max_item}
	<div class="compare">
		<a class="add_to_compare btn-product" href="{$product.link|escape:'html':'UTF-8'}" data-id-product="{$product.id_product}" title="{l s='Add to compare'}">
			<i class="fa fa-reply-all"></i> <span>{l s='Compare'}</span>
		</a>
	</div>
{/if}



<!-- @file modules\appagebuilder\views\templates\front\products\wishlist -->

{hook h='displayProductListFunctionalButtons' product=$product}

</div></div><div class="right-block"><div class="product-meta">
<!-- @file modules\appagebuilder\views\templates\front\products\name -->
<h5 itemprop="name" class="name">
	{if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
	<a class="product-name" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
		{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}
	</a>
</h5>



<!-- @file modules\appagebuilder\views\templates\front\products\reviews -->
{if $page_name  != "product"}
	{capture name='displayProductListReviews'}{hook h='displayProductListReviews' product=$product}{/capture}
	{if $smarty.capture.displayProductListReviews}
		<div class="hook-reviews">
		{hook h='displayProductListReviews' product=$product}
		</div>
	{/if}
{/if}


<!-- @file modules\appagebuilder\views\templates\front\products\price -->
{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
	<div class="content_price">
		{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
			{hook h="displayProductPriceBlock" product=$product type='before_price'}
			<span class="price product-price">
				{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
			</span>
			{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
				{hook h="displayProductPriceBlock" product=$product type="old_price"}
				<span class="old-price product-price">
					{displayWtPrice p=$product.price_without_reduction}
				</span>
				{hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
				{if $product.specific_prices.reduction_type == 'percentage'}
					<span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
				{/if}
			{/if}
			{hook h="displayProductPriceBlock" product=$product type="price"}
			{hook h="displayProductPriceBlock" product=$product type="unit_price"}
			{hook h="displayProductPriceBlock" product=$product type='after_price'}
		{/if}
	</div>
{/if}
<!-- @file modules\appagebuilder\views\templates\front\products\description -->
<div class="product-desc" itemprop="description">
	{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}
</div>


<div class="leo-more-cdown" data-idproduct="{$product.id_product}"></div></div></div></div>