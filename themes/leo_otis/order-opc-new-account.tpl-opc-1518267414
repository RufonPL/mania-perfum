<div id="opc_new_account" class="opc-main-block">
	<div id="opc_new_account-overlay" class="opc-overlay" style="display: none;"></div>
	<h1 class="page-heading step-num"><span>1</span> {l s='Account'}</h1>
	<form action="{$link->getPageLink('authentication', true, NULL, "back=order-opc")|escape:'html':'UTF-8'}" method="post" id="login_form" class="box">
		<fieldset>
			<h3 class="page-subheading">{l s='Already registered?'} <a href="{$link->getPageLink('authentication', true)|escape:'html'}" id="openLoginFormBlock" class="login_form_action">&raquo; {if $lang_iso=="pl"}{l s='(zaloguj się)'}{else}{l s='(click here)'}{/if}</a><a href="#" id="closeLoginFormBlock" style="display: none" class="login_form_action">{if $lang_iso=="pl"}{l s='(ukryj)'}{else}{l s='(hidden)'}{/if}</a></h3>
			<div id="login_form_content" style="display:none;">
				<!-- Error return block -->
				<div id="opc_login_errors" class="alert alert-danger" style="display:none;"></div>
				<!-- END Error return block -->
				<p class="form-group">
					<label for="login_email">{l s='Email address'}</label>
					<input type="text" class="form-control" id="login_email" name="email"  />
				</p>
				<p class="form-group">
					<label for="login_passwd">{l s='Password'}</label>
					<input class="form-control" type="password" id="login_passwd" name="login_passwd"  />
				</p>
                <a href="{$link->getPageLink('password', true)|escape:'html':'UTF-8'}" class="lost_password">{l s='Forgot your password?'}</a>
				<p class="submit">
					{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
                    <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium"><span><i class="icon-lock left"></i>{l s='Sign in'}</span></button>
				</p>
			</div>
		</fieldset>
	</form>
	<form action="{$link->getPageLink('authentication', true)|escape:'html'}" method="post" id="new_account_form" class="std" autocomplete="on" autofill="on">
		<fieldset>
        	<div class="box">
                <h3 id="new_account_title" class="page-subheading">{l s='Delivery address'}</h3>
				<div id="opc_account_form">
				{$HOOK_CREATE_ACCOUNT_TOP}
				<!-- Error return block -->
				<div id="opc_account_errors" class="alert alert-danger" style="display:none;"></div>
				<!-- END Error return block -->
				<!-- Account -->
				<input type="hidden" id="is_new_customer" name="is_new_customer" value="0" />
				<input type="hidden" id="opc_id_customer" name="opc_id_customer" value="{if isset($guestInformations) && isset($guestInformations.id_customer) && $guestInformations.id_customer}{$guestInformations.id_customer}{else}0{/if}" />
				<input type="hidden" id="opc_id_address_delivery" name="opc_id_address_delivery" value="{if isset($guestInformations) && isset($guestInformations.id_address_delivery) && $guestInformations.id_address_delivery}{$guestInformations.id_address_delivery}{else}0{/if}" />
				<input type="hidden" id="opc_id_address_invoice" name="opc_id_address_invoice" value="{if isset($guestInformations) && isset($guestInformations.id_address_delivery) && $guestInformations.id_address_delivery}{$guestInformations.id_address_delivery}{else}0{/if}" />
				<div class="required text form-group">
					<label for="email">{l s='Email'} <sup>*</sup></label>
					<input type="text" class="text form-control" id="email" name="email" value="{if isset($guestInformations) && isset($guestInformations.email) && $guestInformations.email}{$guestInformations.email}{/if}" placeholder="(np. jan@kowalski.pl)"/><span class="validation-state"></span>
					<p class="message_field" id="email_orledy_register" style="display: none;">{if $lang_iso=="pl"}{l s='Z podanym adresem email konto jest już aktywne'}{else}{l s='This e-mial is used'}{/if}</p>
				</div>
				{if !$isLogged || $is_guest}
				<div class="checkbox">
                	<label for="create_account">
					<input type="checkbox" name="create_account" id="create_account" value="1" {if isset($smarty.post.create_account) && $smarty.post.create_account}checked="checked"{/if} autocomplete="off"/>
					{if $lang_iso=="pl"}{l s='Utwórz konto'}{else}{l s='Create an account'}{/if}</label>
				</div>
				{/if}

				{if isset($newsletter) && $newsletter}
				<div class="checkbox">
                	<label for="newsletter">
					<input type="checkbox" name="newsletter" id="newsletter" value="1" {if isset($guestInformations) && isset($guestInformations.newsletter) && $guestInformations.newsletter}checked="checked"{/if} autocomplete="off"/>
					{l s='Sign up for our newsletter!'}</label>
				</div>
				{*<div class="checkbox" >
                	<label for="optin">
					<input type="checkbox"name="optin" id="optin" value="1" {if isset($guestInformations) && isset($guestInformations.optin) && $guestInformations.optin}checked="checked"{/if} autocomplete="off"/>
					{l s='Receive special offers from our partners!'}</label>
				</div>*}
				{/if}			
				{if !$isLogged || $is_guest}
				<div class="required password is_customer_param form-group">
					<label for="passwd">{l s='Password'} <sup>*</sup></label>
					<input type="password" class="text form-control" name="passwd" id="passwd" placeholder="{l s='(five characters min.)'}"/>
				</div>
				{/if}
				<div class="required form-group">
					<label for="firstname">{l s='First name'} <sup>*</sup></label>
					<input type="text" class="text form-control" id="firstname" name="firstname" onblur="$('#firstname').val($(this).val());" value="{if isset($guestInformations) && isset($guestInformations.firstname) && $guestInformations.firstname}{$guestInformations.firstname}{/if}" placeholder="{l s='np. Jan'}" />
				</div>
				<div class="required form-group">
					<label for="lastname">{l s='Last name'} <sup>*</sup></label>
					<input type="text" class="form-control" id="lastname" name="lastname" onblur="$('#lastname').val($(this).val());" value="{if isset($guestInformations) && isset($guestInformations.lastname) && $guestInformations.lastname}{$guestInformations.lastname}{/if}" placeholder="{l s='np. Kowalski'}" />
				</div>
				{$stateExist = false}
				{$postCodeExist = false}
				{$dniExist = false}
				{foreach from=$dlv_all_fields item=field_name}
				{if $field_name eq "company"}
					<div class="text form-group">
						<label for="company">{l s='Company'}</label>
						<input type="text" class="text form-control" id="company" name="company" value="{if isset($guestInformations) && isset($guestInformations.company) && $guestInformations.company}{$guestInformations.company}{/if}" placeholder="{l s='np. P.W. Nazwa'}" />
					</div>
				{elseif $field_name eq "vat_number"}	
				<div id="vat_number_block" style="display:none;">
					<div class="form-group">
						<label for="vat_number">{l s='VAT number'}</label>
						<input type="text" class="text form-control" name="vat_number" id="vat_number" value="{if isset($guestInformations) && isset($guestInformations.vat_number) && $guestInformations.vat_number}{$guestInformations.vat_number}{/if}" placeholder="{l s='np. 777-444-22-22'}" />
					</div>
				</div>
				{elseif $field_name eq "dni"}
				{assign var='dniExist' value=true}
				<div class="required dni form-group">
					<label for="dni">{l s='Identification number'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="dni" id="dni" value="{if isset($guestInformations) && isset($guestInformations.dni) && $guestInformations.dni}{$guestInformations.dni}{/if}" placeholder="{l s='np. 777-444-22-22'}" />
				</div>
				{elseif $field_name eq "address1"}
				<div class="required text form-group">
					<label for="address1">{l s='Address'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="address1" id="address1" value="{if isset($guestInformations) && isset($guestInformations.address1) && $guestInformations.address1}{$guestInformations.address1}{/if}" placeholder="{l s='np. Dworcowa 11/2'}" />
				</div>
				{elseif $field_name eq "postcode"}
				{$postCodeExist = true}
				<div class="required text form-group">
					<label for="postcode">{l s='Zip/Postal code'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="postcode" id="postcode" value="{if isset($guestInformations) && isset($guestInformations.postcode) && $guestInformations.postcode}{$guestInformations.postcode}{/if}" placeholder="{l s='np. 22-000'}" />
				</div>
				{elseif $field_name eq "city"}
				<div class="required text form-group">
					<label for="city">{l s='City'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="city" id="city" value="{if isset($guestInformations) && isset($guestInformations.city) && $guestInformations.city}{$guestInformations.city}{/if}" placeholder="{l s='np. Warszawa'}" />
				</div>
				{elseif $field_name eq "country" || $field_name eq "Country:name"}
				<div class="required select form-group">
					<label for="id_country">{l s='Country'} <sup>*</sup></label>
					<select name="id_country" id="id_country" class="form-control">
						{foreach from=$countries item=v}
						<option value="{$v.id_country}"{if (isset($guestInformations) && isset($guestInformations.id_country) && $guestInformations.id_country == $v.id_country) || (!isset($guestInformations) && $sl_country == $v.id_country)} selected="selected"{/if}>{$v.name|escape:'html':'UTF-8'}</option>
						{/foreach}
					</select>
				</div>
				{elseif $field_name eq "state" || $field_name eq 'State:name'}
				{$stateExist = true}
				<div class="required id_state form-group" style="display:none;">
					<label for="id_state">{l s='State'} <sup>*</sup></label>
					<select name="id_state" id="id_state" class="form-control">
						<option value="">-</option>
					</select>
				</div>
				{/if}
				{/foreach}
				{if !$postCodeExist}
				<div class="required form-group unvisible">
					<label for="postcode">{l s='Zip/Postal code'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="postcode" id="postcode" value="{if isset($guestInformations) && isset($guestInformations.postcode) && $guestInformations.postcode}{$guestInformations.postcode}{/if}" placeholder="{l s='np. 22-00'}" />
				</div>
				{/if}				
				{if !$stateExist}
				<div class="required id_state form-group unvisible">
					<label for="id_state">{l s='State'} <sup>*</sup></label>
					<select name="id_state" id="id_state" class="form-control">
						<option value="">-</option>
					</select>
				</div>
				{/if}
				{if !$dniExist}
				<div class="required dni form-group">
					<label for="dni">{l s='Identification number'} <sup>*</sup></label>
					<input type="text" class="text form-control" name="dni" id="dni" placeholde="{l s='DNI / NIF / NIE'}" />
				</div>
				{/if}			
				<div class="{if isset($one_phone_at_least) && $one_phone_at_least}required {/if}form-group">
					<label for="phone_mobile">{l s='Mobile phone'}{if isset($one_phone_at_least) && $one_phone_at_least} <sup>*</sup>{/if}</label>
					<input type="text" class="text form-control" name="phone_mobile" id="phone_mobile" value="{if isset($guestInformations) && isset($guestInformations.phone) && $guestInformations.phone}{$guestInformations.phone}{/if}" placeholder="{l s='np. 600 700 800'}" />
				</div>
				<input type="hidden" name="alias" id="alias" value="{l s='My address'}"/>

				<div class="checkbox">
                	<label for="invoice_address">
					<input type="checkbox" name="invoice_address" id="invoice_address"{if (isset($smarty.post.invoice_address) && $smarty.post.invoice_address) || (isset($guestInformations) && isset($guestInformations.invoice_address) && $guestInformations.invoice_address)} checked="checked"{/if} autocomplete="off"/>
					{l s='Please use another address for invoice'}</label>
				</div>

				<div id="opc_invoice_address" class="is_customer_param">
					{assign var=stateExist value=false}
					{assign var=postCodeExist value=false}
					{assign var='dniExist' value=false}
					<h3 class="page-subheading top-indent">{l s='Invoice address'}</h3>					
					<div id="opc_account_errors_invoice" class="alert alert-danger" style="display:none;"></div>
					<div class="form-group">
						<button type="button" class="btn" id="copy-address"><span>{if $lang_iso=="pl"}{l s='Kopiuj dane'}{else}{l s='Copy adress'}{/if}</span></button>
					</div>
					<div class="required clearfix gender-line">
						<label>{if $lang_iso=="pl"}{l s='Typ'}{else}{l s='Type'}{/if}</label>
						<div class="radio-inline">
							<label for="type_invoice_1" class="top"><input type="radio" name="type_invoice" id="type_invoice_1" value="1"{if !isset($guestInformations) || (empty($guestInformations.firstname_invoice) && empty($guestInformations.lastname_invoice))} checked="checked"{/if} />{if $lang_iso=="pl"}{l s='Na firmę'}{else}{l s='Company'}{/if}</label>
						</div>
						<div class="radio-inline">
							<label for="type_invoice_2" class="top"><input type="radio" name="type_invoice" id="type_invoice_2" value="2"{if isset($guestInformations) && (!empty($guestInformations.firstname_invoice) || !empty($guestInformations.lastname_invoice))} checked="checked"{/if} />{if $lang_iso=="pl"}{l s='Osobę prywatną'}{else}{l s='Private person'}{/if}</label>
						</div>
					</div>
					{foreach from=$inv_all_fields item=field_name}
					{if $field_name eq "company"}
					<div class="form-group invoice_field_company">
						<label for="company_invoice">{l s='Company'}</label>
						<input type="text" class="text form-control" id="company_invoice" name="company_invoice" value="{if isset($guestInformations) && isset($guestInformations.company_invoice) && $guestInformations.company_invoice}{$guestInformations.company_invoice}{/if}" placeholder="{l s='np. P.W. Nazwa'}" />
					</div>
					{elseif $field_name eq "vat_number"}
						<div class="form-group">
							<label for="vat_number_invoice">{l s='VAT number'}</label>
							<input type="text" class="form-control" id="vat_number_invoice" name="vat_number_invoice" value="{if isset($guestInformations) && isset($guestInformations.vat_number_invoice) && $guestInformations.vat_number_invoice}{$guestInformations.vat_number_invoice}{/if}" placeholder="{l s='np. 777-444-22-22'}" />
						</div>
					{elseif $field_name eq "dni"}
					{assign var='dniExist' value=true}
					<div class="required form-group">
						<label for="dni">{l s='Identification number'} <sup>*</sup></label>
						<input type="text" class="text form-control" name="dni_invoice" id="dni_invoice" name="vat_number_invoice" value="{if isset($guestInformations) && isset($guestInformations.dni_invoice) && $guestInformations.dni_invoice}{$guestInformations.dni_invoice}{/if}" placeholder="{l s='np. 777-444-22-22'}" />
					</div>
					{elseif $field_name eq "firstname"}
					<div class="required form-group invoice_field_firstname">
						<label for="firstname_invoice">{l s='First name'} <sup>*</sup></label>
						<input type="text" class="form-control" id="firstname_invoice" name="firstname_invoice" value="{if isset($guestInformations) && isset($guestInformations.firstname_invoice) && $guestInformations.firstname_invoice}{$guestInformations.firstname_invoice}{/if}" placeholder="{l s='np. Jan'}" />
					</div>
					{elseif $field_name eq "lastname"}
					<div class="required form-group invoice_field_lastname">
						<label for="lastname_invoice">{l s='Last name'} <sup>*</sup></label>
						<input type="text" class="form-control" id="lastname_invoice" name="lastname_invoice" value="{if isset($guestInformations) && isset($guestInformations.lastname_invoice) && $guestInformations.lastname_invoice}{$guestInformations.lastname_invoice}{/if}" placeholder="{l s='np. Kowalski'}" />
					</div>
					{elseif $field_name eq "address1"}
					<div class="required form-group">
						<label for="address1_invoice">{l s='Address'} <sup>*</sup></label>
						<input type="text" class="form-control" name="address1_invoice" id="address1_invoice" value="{if isset($guestInformations) && isset($guestInformations.address1_invoice) && $guestInformations.address1_invoice}{$guestInformations.address1_invoice}{/if}" placeholder="{l s='np. Dworcowa 11/2'}" />
					</div>
					{elseif $field_name eq "postcode"}
					{$postCodeExist = true}
					<div class="required form-group">
						<label for="postcode_invoice">{l s='Zip/Postal Code'} <sup>*</sup></label>
						<input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="{if isset($guestInformations) && isset($guestInformations.postcode_invoice) && $guestInformations.postcode_invoice}{$guestInformations.postcode_invoice}{/if}" placeholder="{l s='np. 22-000'}" />
					</div>
					{elseif $field_name eq "city"}
					<div class="required form-group">
						<label for="city_invoice">{l s='City'} <sup>*</sup></label>
						<input type="text" class="form-control" name="city_invoice" id="city_invoice" value="{if isset($guestInformations) && isset($guestInformations.city_invoice) && $guestInformations.city_invoice}{$guestInformations.city_invoice}{/if}" placeholder="{l s='np. Warszawa'}" />
					</div>
					{elseif $field_name eq "country" || $field_name eq "Country:name"}
					<div class="required form-group">
						<label for="id_country_invoice">{l s='Country'} <sup>*</sup></label>
						<select name="id_country_invoice" id="id_country_invoice" class="form-control">
							<option value="">-</option>
							{foreach from=$countries item=v}
							<option value="{$v.id_country}"{if (isset($guestInformations) && isset($guestInformations.id_country_invoice) && $guestInformations.id_country_invoice == $v.id_country) || (!isset($guestInformations) && $sl_country == $v.id_country)} selected="selected"{/if}>{$v.name|escape:'html':'UTF-8'}</option>
							{/foreach}
						</select>
					</div>
					{elseif $field_name eq "state" || $field_name eq 'State:name'}
					{$stateExist = true}
					<div class="required id_state_invoice form-group" style="display:none;">
						<label for="id_state_invoice">{l s='State'} <sup>*</sup></label>
						<select name="id_state_invoice" id="id_state_invoice" class="form-control">
							<option value="">-</option>
						</select>
					</div>
					{/if}
					{/foreach}
					{if !$postCodeExist}
					<div class="required form-group unvisible">
						<label for="postcode_invoice">{l s='Zip/Postal Code'} <sup>*</sup></label>
						<input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="{if isset($guestInformations) && isset($guestInformations.postcode_invoice) && $guestInformations.postcode_invoice}{$guestInformations.postcode_invoice}{/if}" placeholder="{l s='np. 22-000'}" />
					</div>
					{/if}					
					{if !$stateExist}
					<div class="required id_state_invoice form-group unvisible">
						<label for="id_state_invoice">{l s='State'} <sup>*</sup></label>
						<select name="id_state_invoice" id="id_state_invoice" class="form-control">
							<option value="">-</option>
						</select>
					</div>
					{/if}
					{if !$dniExist}
					<div class="required form-group dni_invoice">
						<label for="dni">{l s='Identification number'} <sup>*</sup></label>
						<input type="text" class="text form-control" name="dni_invoice" id="dni_invoice" placeholder="{l s='DNI / NIF / NIE'}" />
					</div>
					{/if}		
					<div class="{if isset($one_phone_at_least) && $one_phone_at_least}required {/if}form-group">
						<label for="phone_mobile_invoice">{l s='Mobile phone'}{if isset($one_phone_at_least) && $one_phone_at_least} <sup>*</sup>{/if}</label>
						<input type="text" class="form-control" name="phone_mobile_invoice" id="phone_mobile_invoice" value="{if isset($guestInformations) && isset($guestInformations.phone) && $guestInformations.phone}{$guestInformations.phone}{/if}" placeholder="{l s='np. 600 700 800'}" />
					</div>
					<input type="hidden" name="alias_invoice" id="alias_invoice" value="{l s='My Invoice address'}" />
				</div>
				{$HOOK_CREATE_ACCOUNT_FORM}
				<div class="submit opc-add-save clearfix">
                		<p class="required opc-required pull-right">
                            <sup>*</sup>{l s='Required field'}
                        </p>                    
				</div>
				<!-- END Account -->
			</div>
            </div>
		</fieldset>
	</form>
</div>
{strip}
{if isset($guestInformations) && isset($guestInformations.id_state) && $guestInformations.id_state}
	{addJsDef idSelectedState=$guestInformations.id_state|intval}
{else}
	{addJsDef idSelectedState=false}
{/if}
{if isset($guestInformations) && isset($guestInformations.id_state_invoice) && $guestInformations.id_state_invoice}
	{addJsDef idSelectedStateInvoice=$guestInformations.id_state_invoice|intval}
{else}
	{addJsDef idSelectedStateInvoice=false}
{/if}
{if isset($guestInformations) && isset($guestInformations.id_country) && $guestInformations.id_country}
	{addJsDef idSelectedCountry=$guestInformations.id_country|intval}
{else}
	{addJsDef idSelectedCountry=false}
{/if}
{if isset($guestInformations) && isset($guestInformations.id_country_invoice) && $guestInformations.id_country_invoice}
	{addJsDef idSelectedCountryInvoice=$guestInformations.id_country_invoice|intval}
{else}
	{addJsDef idSelectedCountryInvoice=false}
{/if}
{if isset($countries)}
	{addJsDef countries=$countries}
{/if}
{if isset($vatnumber_ajax_call) && $vatnumber_ajax_call}
	{addJsDef vatnumber_ajax_call=$vatnumber_ajax_call}
{/if}
{/strip}
