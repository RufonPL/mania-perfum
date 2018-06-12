{*
 *  Leo Prestashop SliderShow for Prestashop 1.6.x
 *
 * @package   leosliderlayer
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
*}

{if isset($category) && $category->id_leoblogcat && $category->active}
{if isset($no_follow) AND $no_follow}
    {assign var='no_follow_text' value='rel="nofollow"'}
{else}
    {assign var='no_follow_text' value=''}
{/if}
<div id="blog-category" class="blogs-container">
        {if $category->show_title}
			<h1>{$category->title|escape:'html':'UTF-8'}</h1>
        {/if}
	<div class="inner">
		
		{if $config->get('listing_show_categoryinfo',1)}
			<div class="panel panel-default">
				<div class="panel-body">
					{if $category->image}
						<div class="row">
							<div class="category-image col-sp-12 col-xs-6 col-sm-4 col-lg-4 col-md-4 text-center">
								<img src="{$category->image|escape:'html':'UTF-8'}" class="img-responsive" alt="" />
							</div>
							<div class="col-sp-12 col-xs-6 col-sm-8 col-md-8 col-lg-8 category-info caption">
								{$category->content_text}{* HTML form , no escape necessary *}
							</div>	
						</div>	
					{else}
						<div class="category-info caption">
							{$category->content_text}{* HTML form , no escape necessary *}
						</div>
					{/if}					 
				</div>
			</div> 
		{/if}

		{if $childrens&&$config->get('listing_show_subcategories',1)}
		<div class="childrens">
			<h3>{l s='Childrens' mod='leoblog'}</h3>
			<div class="row">
				{foreach $childrens item=children name=children}
					<div class="col-lg-4">
						<div class="sub-blog">
							<div class="image">
								{if $children.thumb}
								<img src="{$children.thumb|escape:'html':'UTF-8'}" class="img-responsive"/>
								{/if}
								<h4 class="sub-blog-name"><a href="{$children.category_link|escape:'html':'UTF-8'}" title="{$children.title|escape:'html':'UTF-8'}">{$children.title|escape:'html':'UTF-8'}</a></h4>
							</div>
							<div class="sub-blog-desc">{$children.content_text}</div>{* HTML form , no escape necessary *}
						</div>
					</div>
				{/foreach}
		 	</div>
		</div>
		{/if}

		<div class="clearfix"></div>
	 
		{if count($leading_blogs)+count($secondary_blogs)}
			<h3 class="title_block">{l s='Recent blog posts' mod='leoblog'}</h3>
			{if count($leading_blogs)}
				<div class="leading-blog">  
					<div class="row">
						{foreach from=$leading_blogs item=blog name=leading_blog}
							<div class="{if $listing_leading_column<=1}no{/if}col-lg-{floor(12/$listing_leading_column|escape:'html':'UTF-8')} col-md-12 col-sm-12 col-xs-12 col-sp-12">
								{include file="./_listing_blog.tpl"}
							</div>	
						{/foreach}
					</div>
				</div>
			{/if}


			{if count($secondary_blogs)}
			<div class="secondary-blog">
				<div class="row">
					{foreach from=$secondary_blogs item=blog name=secondary_blog}
						<div class="{if $listing_secondary_column<=1}no{/if}col-lg-{floor(12/$listing_secondary_column|escape:'html':'UTF-8')} col-sm-6 col-xs-6 col-sp-12">
							{include file="./_listing_blog.tpl"}
						</div>	
					{/foreach}
				</div>
			</div>
			{/if}
	 	
			<div class="top-pagination-content clearfix bottom-line row">
				{include file="./_pagination.tpl"}
	        </div>
	    {elseif empty($childrens)}
	    	<div class="alert alert-warning">{l s='Sorry, We are updating data, please come back later!!!!' mod='leoblog'}</div>
	    {/if}  
	      
	</div>
</div>
{else}
<div class="alert alert-warning">{l s='Sorry, We are updating data, please come back later!!!!' mod='leoblog'}</div>
{/if}