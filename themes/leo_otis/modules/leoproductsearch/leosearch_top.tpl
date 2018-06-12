{*
 *  Leo Theme for Prestashop 1.6.x
 *
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
*}

<!-- Block search module -->
<div id="leo_search_block_top" class="block exclusive">
	<a class="pull-right" href="#" id="click_show_search" title="{l s='Search' mod='blocksearch'}"><i class="fa fa-search"></i></a>
	<h4 class="title_block">{l s='Search' mod='leoproductsearch'}</h4>
	<form method="get" class="clearfix" action="{$link->getPageLink('productsearch', true)|escape:'html':'UTF-8'}" id="leosearchtopbox">
		<input type="hidden" name="fc" value="module" />
		<input type="hidden" name="module" value="leoproductsearch" />
		<input type="hidden" name="controller" value="productsearch" />
		<input type="hidden" name="orderby" value="position" />
		<input type="hidden" name="orderway" value="desc" />
    	<label class="title-search">{l s='Search products:' mod='leoproductsearch'}</label>
		<div class="block_content clearfix">
			<div class="box-select">
				<input class="search_query form-control grey" type="text" placeholder="{l s='Search here...' mod='leoproductsearch'}" id="leo_search_query_top" name="search_query" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
				<select class="form-control" name="cate" id="cate">
					<option value="">{l s='All Categories' mod='leoproductsearch'}</option>
				     {foreach $cates item = cate key= "key"}
				     <option value="{$cate.id_category|escape:'htmlall':'UTF-8'|stripslashes}" {if isset($selectedCate) && $cate.id_category eq $selectedCate}selected{/if} >{$cate.name}</option>
				     {/foreach}
	            </select>
			</div>
			<button type="submit" id="leo_search_top_button" class="btn btn-default button button-small"><i class="lm lm-icon-search"></i></button>
		</div>
	</form>
</div>
<!-- /Block search module -->
