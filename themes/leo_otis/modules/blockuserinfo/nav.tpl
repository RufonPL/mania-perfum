{* <script type="text/javascript">
/* Blockusreinfo */
	
$(document).ready( function(){
	if( $(window).width() < 992 ){
		$(".header_user_info .links").addClass('popup-content');
	}else{
		$(".header_user_info .links").removeClass('popup-content');
	}
});
	$(window).resize(function() {
		if( $(window).width() < 992 ){
			$(".header_user_info .links").addClass('popup-content');
		}else{
			$(".header_user_info .links").removeClass('popup-content');
		}
	});
</script> *}
<!-- Block user information module NAV  -->
<div class="header_user_info pull-right popup-over e-scale">
	<div data-toggle="dropdown" class="popup-title">
        {if $is_logged}
			<a href="#" title="{l s='Account' mod='blockuserinfo'}">
				<i class="lm lm-icon-user"></i>
					<span>{l s='Account' mod='blockuserinfo'}</span>
			</a>
        {else}
			<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='Login' mod='blockuserinfo'}">
				<i class="lm lm-icon-user"></i>
				<span>{l s='Login' mod='blockuserinfo'}</span>
			</a>
        {/if}
	</div>	
	<ul class="links popup-content">
		{if $is_logged}
			<li>
				<a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
					<i class="fa fa-unlock-alt"></i><span>{l s='Sign out' mod='blockuserinfo'}</span>
				</a>
			</li>
		{else}
			<li>
				<a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Login to your customer account' mod='blockuserinfo'}">
					<i class="fa fa-unlock-alt"></i><span>{l s='Sign in' mod='blockuserinfo'}</span>
				</a>
			</li>
		{/if}

		<li>
			<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='My account' mod='blockuserinfo'}">
				<i class="fa fa-user"></i><span>{l s='Account' mod='blockuserinfo'}</span>
			</a>
		</li>
		<li>
			<a class="ap-btn-wishlist" id="wishlist-total" href="{$link->getModuleLink('blockwishlist', 'mywishlist', array(), true)|addslashes}" title="{l s='My wishlists' mod='blockuserinfo'}">
				<i class="fa fa-heart"></i><span>{l s='Wishlist' mod='blockuserinfo'}</span><span class="ap-total-wishlist ap-total"></span>
			</a>
		</li>
		<li>
			<a class="ap-btn-compare" href="{$link->getPageLink('products-comparison')|escape:'html':'UTF-8'}" title="{l s='Compare' mod='blockuserinfo'}" rel="nofollow">
				<i class="fa fa-compress"></i><span>{l s='Compare' mod='blockuserinfo'}</span><span class="ap-total-compare ap-total"></span>
			</a>
		</li>

		{if $is_logged}
			<li>
				<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
					<i class="fa fa-user"></i>
					<span>{l s='Hello' mod='blockuserinfo'}, {$cookie->customer_firstname} {$cookie->customer_lastname}</span>
				</a>
			</li>
		{/if}		
	</ul>	
</div>	