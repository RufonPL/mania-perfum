{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2015 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\hook\ProductCarousel -->
{if count($products)>$itemsperpage}
    <div class="carousel-buttons">
        <a class="carousel-control left" href="#{$carouselName|escape:'html':'UTF-8'}" data-slide="prev"></a>
        <a class="carousel-control right" href="#{$carouselName|escape:'html':'UTF-8'}" data-slide="next"></a>
    </div>
{/if}
<div class="carousel slide" id="{$carouselName|escape:'html':'UTF-8'}">
    {($apLiveEdit)?$apLiveEdit:''}{* HTML form , no escape necessary *}
    <div class="carousel-inner">
        {$mproducts=array_chunk($products,$itemsperpage)}
        {foreach from=$mproducts item=products name=mypLoop}
            <div class="item {if $smarty.foreach.mypLoop.first}active{/if} clearfix">
                <ul class="product_list grid {if isset($productClassWidget)}{$productClassWidget|escape:'html':'UTF-8'}{/if}">
                    {if $products|@count > 0 }
                        <li class="ajax_block_product product_block {$scolumn} col-sp-12 small-item first_item">
                            {foreach from=$products item=product name=products}
                                {if ($smarty.foreach.products.index + 1) < 4}
                                    {if isset($profile) && $profile}
                                        {assign var="tplPath" value="$tpl_dir./profiles/$profile.tpl"}
                                        {include file="$tplPath"}
                                    {else}
                                        {include file='./ProductItem.tpl'}
                                    {/if}
                                {/if} 
                            {/foreach}
                        </li>
                    {/if}
                    {if $products|@count > 3 }
                        <li class="ajax_block_product product_block {$scolumn} col-sp-12 big-item">
                            {foreach from=$products item=product name=products}
                                {if ($smarty.foreach.products.index + 1) == 4}
                                    {if isset($profile) && $profile}
                                        {assign var="tplPath" value="$tpl_dir./profiles/$profile.tpl"}
                                        {include file="$tplPath"}
                                    {else}
                                        {include file='./ProductItem.tpl'}
                                    {/if}
                                {/if} 
                            {/foreach}
                        </li>
                    {/if}
                    {if $products|@count > 4 }
                        <li class="ajax_block_product product_block {$scolumn} col-sp-12 small-item last_item">
                            {foreach from=$products item=product name=products}
                                {if ($smarty.foreach.products.index + 1) > 4}
                                    {if isset($profile) && $profile}
                                        {assign var="tplPath" value="$tpl_dir./profiles/$profile.tpl"}
                                        {include file="$tplPath"}
                                    {else}
                                        {include file='./ProductItem.tpl'}
                                    {/if}
                                {/if} 
                            {/foreach}
                        </li>
                    {/if}
                </ul>
            </div>		
        {/foreach}
    </div>
	{($apLiveEditEnd)?$apLiveEditEnd:''}{* HTML form , no escape necessary *}
{addJsDefL name=min_item}{l s='Please select at least one product' mod='appagebuilder' js=1}{/addJsDefL}
{addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' mod='appagebuilder' sprintf=$comparator_max_item js=1}{/addJsDefL}
{addJsDef comparator_max_item=$comparator_max_item}
{addJsDef comparedProductsIds=$compared_products}
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#{$carouselName|escape:'html':'UTF-8'}').each(function(){
        $(this).carousel({
            pause: 'hover',
            interval: {$formAtts.interval|intval}
        });
    });
});
</script>