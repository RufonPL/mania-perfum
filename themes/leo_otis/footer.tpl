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
{if !isset($content_only) || !$content_only}
								
						</section>
						{if isset($right_column_size) && !empty($right_column_size)}
						<!-- Right -->
						<section id="right_column" class="column sidebar col-md-{$right_column_size|intval}">
								{$HOOK_RIGHT_COLUMN}
						</section>
						{/if} 
				{if isset($fullwidth_hook.displayHome) AND $fullwidth_hook.displayHome == 0}
					</div>
					</div>
				{else}
					</div>
				{/if}
            </section>
			<!-- Footer -->
			<footer id="footer" class="footer-container">       
				{if isset($fullwidth_hook.displayFooter) AND $fullwidth_hook.displayFooter == 0}
				<div class="container">

				
				{/if}
						{$HOOK_FOOTER}							
				{if isset($fullwidth_hook.displayFooter) AND $fullwidth_hook.displayFooter == 0}
				 
				</div>
				{/if}
            </footer>
		</section><!-- #page -->
		
{/if}
<div id="back-top"><a href="#" class="fa fa-angle-up"></a></div>
{include file="$tpl_dir./global.tpl"}
{if isset($LEO_PANELTOOL) && $LEO_PANELTOOL}
    {include file="$tpl_dir./info/paneltool.tpl"}
{/if}

<script type="text/javascript" src="{$content_dir}themes/{$LEO_THEMENAME}/livemarket/js/main.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>


<div class="overlay"></div>
<script type="text/javascript">
	$(document).ready(function()
	{
        window.form_busy = false;

        $('#cms #formularz').on('submit', function(e) {

            e.preventDefault();

            if (window.form_busy)
                return;

            window.form_busy = true;

            $(this).find('.error-val').removeClass('error-val');

            var name 	= $(this).find('[name=nick]'),
                phone 	= $(this).find('#tel'),
                email	= $(this).find('[name=mail]'),
                tresc   = $(this).find('#tresc'),
                alerts	= {};
            if (!name.val().length)
                alerts.name = true;

            if (!phone.val().length)
                alerts.phone = true;

            if (!email.val().length)
                alerts.email = true;

            if (!tresc.val().length)
                alerts.name = true;

            if (!$.isEmptyObject(alerts)) {
                Object.keys(alerts).forEach(function(key) {
                    var elem = eval(key);

                    elem.addClass('error-val');
                    $('.error-form').addClass('visible');
                });
                window.form_busy = false;
            } else {
 
                var _this = $(this);
                $.ajax({
                    url: '{$base_dir}ajax-call.php',
                    method: 'POST',
                    data: {
                        method: 'sendMail',
                        data: {
                            name: name.val(),
                            phone: phone.val(),
                            email: email.val(),
                            tresc: tresc.val()
                        }
                    }
                }).success(function(res) {
                    if (res == "0") {
                        window.form_busy = false;
                        return;
                    }


                    console.log(res);

                    var formWidth = _this.width();

                    _this.append('<div class="form-success">Wiadomość została wysłana!</div>');

                    var alertWidth = _this.find('.form-success').width(),
                        offset = (formWidth - alertWidth) / 2;
                    _this.find('.form-success').css('left', offset);
                    _this.find('.form-success').css('right', offset);

                    setTimeout(function() {

                        _this.find('.form-success').fadeOut(400, function() {
                            $(this).remove();
                        });

                    }, 600000);

                    name.val('');
                    phone.val('');
                    email.val('');
                    tresc.val('');
                    window.form_busy = false;

                });

            }


        });







        $('#index #formularz').on('submit', function(e) {

            e.preventDefault();

            if (window.form_busy)
                return;

            window.form_busy = true;

            $(this).find('.error-val').removeClass('error-val');

            var name 	= $(this).find('[name=nick]'),
                    email	= $(this).find('[name=mail]'),
                    alerts	= {};

            if (!name.val().length)
                alerts.name = true;

            if (!email.val().length)
                alerts.email = true;


            if (!$.isEmptyObject(alerts)) {
                Object.keys(alerts).forEach(function(key) {
                    var elem = eval(key);

                    elem.addClass('error-val');
                    $('.error-form').addClass('visible');
                });
                window.form_busy = false;
            } else {

                var _this = $(this);
                $.ajax({
                    url: '{$base_dir}ajax-call.php',
                    method: 'POST',
                    data: {
                        method: 'sendMail',
                        data: {
                            name: name.val(),
                            email: email.val()
                        }
                    }
                }).success(function(res) {
                    if (res == "0") {
                        window.form_busy = false;
                        return;
                    }


                    console.log(res);

                    var formWidth = _this.width();

                    _this.append('<div class="form-success">Wiadomość została wysłana!</div>');

                    var alertWidth = _this.find('.form-success').width(),
                            offset = (formWidth - alertWidth) / 2;
                    _this.find('.form-success').css('left', offset);
                    _this.find('.form-success').css('right', offset);

                    setTimeout(function() {

                        _this.find('.form-success').fadeOut(400, function() {
                            $(this).remove();
                        });

                    }, 600000);

                    name.val('');
                    email.val('');
                    window.form_busy = false;

                });

            }


        });










    });

</script>
{addJsDef hasDeliveryAddress=(isset($cart->id_address_delivery) && $cart->id_address_delivery)}
{addJsDefL name=freeShippingTranslation}{l s='Free shipping!' js=1}{/addJsDefL}
 {hook h='displayPdDrAfterBoodyTag'}
	<script>
	setTimeout(function(){
		window._ssrm = window._ssrm || [];
			(function() {
			var ssrm = document.createElement('script'); ssrm.type = 'text/javascript'; ssrm.async = true;
			ssrm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'remarketing.serwersms.pl/ssrm.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ssrm, s);
			})();
		window._ssrm.push(['setClient', 'qdLyZhK-3knduPGGVml2HP925h4UcBDwNKsoVtErJNw,', '1fa65c2da7']);
		window._ssrm.push(['trackPageview']);
		}, 50);
	</script>
</body>
</html>