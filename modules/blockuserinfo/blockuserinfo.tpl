{*
* =|= BLOCK USER INFO ==========================================
* Customer info and cart in header
* ==============================================================
*}

{* Welcome customer - Account links *}
<section class="blockuserinfo">
	<p>
		{l s='Welcome' mod='blockuserinfo'},
		{if $logged}
			<a href="{$link->getPageLink('my-account', true)}" class="account"><span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
			(<a href="{$link->getPageLink('index', true, NULL, "mylogout")}" title="{l s='Log me out' mod='blockuserinfo'}" class="logout">{l s='Log out' mod='blockuserinfo'}</a>)
		{else}
			<a href="{$link->getPageLink('my-account', true)}" class="login">{l s='Log in' mod='blockuserinfo'}</a> or <a href="{$link->getPageLink('my-account', true)}" class="login">{l s='Register' mod='blockuserinfo'}</a>
		{/if}
	</p>
</section>


{* Cart summary in header *}
<section class="blockuserinfo-cart">
	<a href="{$link->getPageLink("$order_process", true)}" title="{l s='Your Shopping Cart' mod='blockuserinfo'}">
		<span class="ajax_cart_quantity{if $cart_qties == 0} hidden{/if}">{$cart_qties}</span>
		<span class="ajax_cart_product_txt{if $cart_qties != 1} hidden{/if}">{l s='product' mod='blockuserinfo'}</span>
		<span class="ajax_cart_product_txt_s{if $cart_qties < 2} hidden{/if}">{l s='products' mod='blockuserinfo'}</span>
		{if $cart_qties >= 0}
			<span class="price ajax_cart_total{if $cart_qties == 0} hidden{/if}">
				{if $priceDisplay == 1}
					{assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
					{convertPrice price=$cart->getOrderTotal(false, $blockuser_cart_flag)}
				{else}
					{assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
					{convertPrice price=$cart->getOrderTotal(true, $blockuser_cart_flag)}
				{/if}
			</span>
		{/if}
		<span class="ajax_cart_no_product{if $cart_qties > 0} hidden{/if}">{l s='Your cart is empty' mod='blockuserinfo'}</span>
	</a>
</section>
<script type="text/javascript">
	$(function() {
		$('.blockuserinfo-cart a,header .blockcart').hover(function(){
			$('header .blockcart').stop().slideDown('fast');
		}, function(){
			$('header .blockcart').stop().slideUp('fast');
		});

	});
</script>