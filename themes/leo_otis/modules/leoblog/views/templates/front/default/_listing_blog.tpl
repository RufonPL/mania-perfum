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
  
<article class="blog-item">
	{if $blog.image && $config->get('listing_show_image',1)}
	<div class="blog-image">
		{if $config->get('listing_show_title','1')}
			<a href="{$blog.link|escape:'html':'UTF-8'}" title="{$blog.title|escape:'html':'UTF-8'}">
		{/if}
			<img src="{$blog.preview_url|escape:'html':'UTF-8'}" title="{$blog.title|escape:'html':'UTF-8'}" alt="" class="img-responsive" />
		{if $config->get('listing_show_title','1')}
			</a>
		{/if}
	</div>
	{/if} 
	<div class="blog-content clearfix">
		{if $config->get('listing_show_created','1')}
		<span class="blog-created">
			<time class="date" datetime="{strtotime($blog.date_add)|date_format:"%Y"|escape:'html':'UTF-8'}">
				<span class="day">{l s=strtotime($blog.date_add)|date_format:"%d"|escape:'html':'UTF-8' mod='leoblog'}</span>
				<span class="month">{l s=strtotime($blog.date_add)|date_format:"%b"|escape:'html':'UTF-8' mod='leoblog'},</span>	
				<span class="year">{l s=strtotime($blog.date_add)|date_format:"%Y"|escape:'html':'UTF-8' mod='leoblog'}</span>
			</time>
		</span>
		{/if}
		
		<div class="blog-meta">
			{if $config->get('listing_show_title','1')}
				<h4 class="title">
					<a href="{$blog.link|escape:'html':'UTF-8'}" title="{$blog.title|escape:'html':'UTF-8'}">{$blog.title|escape:'html':'UTF-8'|truncate:80:'...'}</a>
				</h4>
			{/if}
			{if $config->get('listing_show_author','1')&&!empty($blog.author)}
				<span class="blog-author">
					<span class="fa fa-user"></span> {l s='Post by' mod='leoblog'}: 
					<a href="{$blog.author_link|escape:'html':'UTF-8'}" class="meta-value" title="{$blog.author|escape:'html':'UTF-8'}">{$blog.author|escape:'html':'UTF-8'}</a> 
				</span>
			{/if}
			{if $config->get('listing_show_category','1')}
			<span class="blog-cat"> 
				<span class="fa fa-list"></span> {l s='Category' mod='leoblog'}: 
				<a href="{$blog.category_link|escape:'html':'UTF-8'}" class="meta-value" title="{$blog.category_title|escape:'html':'UTF-8'}">{$blog.category_title|escape:'html':'UTF-8'}</a>
			</span>
			{/if}

			{if isset($blog.comment_count)&&$config->get('listing_show_counter','1')}	
			<span class="blog-ctncomment">
				<span class="fa fa-comments-o"></span> {l s='View' mod='leoblog'}: <span class="meta-value">{$blog.comment_count|intval}</span>
			</span>
			{/if}

			{if $config->get('listing_show_hit','1')}	
			<span class="blog-hit">
				<span class="fa fa-heart"></span> {l s='Hit' mod='leoblog'}: <span class="meta-value">{$blog.hits|intval}</span>
			</span>
			{/if}
		</div>

		<div class="blog-shortinfo">
			{if $config->get('listing_show_description','1')}
			{$blog.description|strip_tags:'UTF-8'|truncate:260:'...'}{* HTML form , no escape necessary *}
			{/if}
		</div>

		{if $config->get('listing_show_readmore',1)}
			<p class="btn-more">
				<a href="{$blog.link|escape:'html':'UTF-8'}" title="{$blog.title|escape:'html':'UTF-8'}" class="more btn btn-default">{l s='Read more' mod='leoblog'}</a>
			</p>
		{/if}
	</div>
</article>
	
<!---
	Translation Day of Week - NOT REMOVE
	{l s='Sunday' mod='leoblog'}
	{l s='Monday' mod='leoblog'}
	{l s='Tuesday' mod='leoblog'}
	{l s='Wednesday' mod='leoblog'}
	{l s='Thursday' mod='leoblog'}
	{l s='Friday' mod='leoblog'}
	{l s='Saturday' mod='leoblog'}
-->
<!---
	Translation Month - NOT REMOVE
		{l s='January' mod='leoblog'}
		{l s='February' mod='leoblog'}
		{l s='March' mod='leoblog'}
		{l s='April' mod='leoblog'}
		{l s='May' mod='leoblog'}
		{l s='June' mod='leoblog'}
		{l s='July' mod='leoblog'}
		{l s='August' mod='leoblog'}
		{l s='September' mod='leoblog'}
		{l s='October' mod='leoblog'}
		{l s='November' mod='leoblog'}
		{l s='December' mod='leoblog'}
-->