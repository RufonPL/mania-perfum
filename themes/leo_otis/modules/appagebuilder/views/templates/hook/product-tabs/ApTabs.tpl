{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2015 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
 <!-- @file modules\appagebuilder\views\templates\hook\ApTabs -->
{if !isset($isSubTab)}
<div{if isset($formAtts.id)} id="{$formAtts.id|escape:'html':'UTF-8'}"{/if}{if isset($formAtts.class)} class="{$formAtts.class|escape:'html':'UTF-8'}"{/if}>

	{($apLiveEdit)?$apLiveEdit:''}{* HTML form , no escape necessary *}
    <div class="block_content">
        {if isset($formAtts.title) && $formAtts.title}
            <h4 class="title_block">{$formAtts.title}</h4>
        {/if}
        <!-- toggle tab -->
        <label class="box-select">
            <select class="product-tab-option">
                {foreach from=$subTabContent item=subTab name=tab_option}
                    <option  value="{$subTab.id|escape:'html':'UTF-8'}" {if $smarty.foreach.tab_option.index == 0}selected="selected"{/if}>{$subTab.title|escape:'html':'UTF-8'}</option>
                {/foreach}
            </select>
        </label>
        <!-- end toggle tab -->
        {if $formAtts.tab_type =='tabs-left'}
            <ul class="nav nav-tabs col-md-3" role="tablist">
                {foreach from=$subTabContent item=subTab}
                    <li class="{$subTab.css_class|escape:'html':'UTF-8'}">
                        <a href="#{$subTab.id|escape:'html':'UTF-8'}" class="{$subTab.form_id|escape:'html':'UTF-8'}" role="tab" data-toggle="tab">
                            <span>{$subTab.title|escape:'html':'UTF-8'}</span>
                        </a>
                    </li>
                {/foreach}
            </ul>
            <div class="tab-content col-md-9">
                {$apContent}{* HTML form , no escape necessary *}
            </div>
        {/if}
        {if $formAtts.tab_type =='tabs-right'}
            <div class="tab-content col-md-9">
                {$apContent}{* HTML form , no escape necessary *}
            </div>
            <ul class="nav nav-tabs col-md-3" role="tablist">
                {foreach from=$subTabContent item=subTab}
                    <li class="{$subTab.css_class|escape:'html':'UTF-8'}">
                        <a href="#{$subTab.id|escape:'html':'UTF-8'}" class="{$subTab.form_id|escape:'html':'UTF-8'}" role="tab" data-toggle="tab">
                            <span>{$subTab.title|escape:'html':'UTF-8'}</span>
                        </a>
                    </li>
                {/foreach}
            </ul>
        {/if}
        {if $formAtts.tab_type =='tabs-below'}
            <div class="tab-content">
                {$apContent}{* HTML form , no escape necessary *}
            </div>
    		
            <ul class="nav nav-tabs" role="tablist">
                {foreach from=$subTabContent item=subTab}
                    <li class="{$subTab.css_class|escape:'html':'UTF-8'}">
                        <a href="#{$subTab.id|escape:'html':'UTF-8'}" class="{$subTab.form_id|escape:'html':'UTF-8'}" role="tab" data-toggle="tab">
                            <span>{$subTab.title|escape:'html':'UTF-8'}</span>
                        </a>
                    </li>
                {/foreach}
            </ul>
        {/if}
        {if $formAtts.tab_type =='tabs-top'}
            <ul class="nav nav-tabs" role="tablist">
                {foreach from=$subTabContent item=subTab}
                    <li class="{$subTab.css_class|escape:'html':'UTF-8'}">
                        <a href="#{$subTab.id|escape:'html':'UTF-8'}" class="{$subTab.form_id|escape:'html':'UTF-8'}" data-tab="{$subTab.id|escape:'html':'UTF-8'}" role="tab" data-toggle="tab">
                            <span>{$subTab.title|escape:'html':'UTF-8'}</span>
                        </a>
                    </li>
                {/foreach}
            </ul>
            <div class="tab-content">
                {$apContent}{* HTML form , no escape necessary *}
            </div>
        {/if}
    </div>
	{($apLiveEditEnd)?$apLiveEditEnd:''}{* HTML form , no escape necessary *}
</div>
<script type="text/javascript">
    $(document).ready(function() {
        {if isset($formAtts.is_toggle) && $formAtts.is_toggle}
        $("#{$formAtts.id|escape:'html':'UTF-8'} .nav a").click(function (e) {
            e.preventDefault();
            if(!$(this).hasClass("active")) {
                $("#{$formAtts.id|escape:'html':'UTF-8'} .nav-tabs li a").removeClass("active");
            }
            $(this).toggleClass("active");
            if($(this).hasClass("active")) {
                $("#{$formAtts.id|escape:'html':'UTF-8'} .tab-pane").addClass("in");
                $($(this).attr("href")).addClass("in active");
            } else {
                $($(this).attr("href")).removeClass("in active");
            }
        });
        {else if}
        $('#{$formAtts.id|escape:'html':'UTF-8'} .nav a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
        {/if}

        {if $formAtts.active_tab >= 0}
            apTabHref = $('#{$formAtts.id|escape:'html':'UTF-8'} .nav a:eq({$formAtts.active_tab|escape:'html':'UTF-8'})').tab('show');
        {/if}
        {if isset($formAtts.fade_effect) && $formAtts.fade_effect}
            $("#{$formAtts.id|escape:'html':'UTF-8'} .tab-pane").addClass("fade");
            $($(apTabHref).attr("href")).addClass("in");
        {/if}

        
        ////js toggle tabs
        $('#{$formAtts.id|escape:'html':'UTF-8'} ul.nav-tabs li').click(function(){
            if($(this).hasClass('active'))
            {
                $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option option').removeAttr('selected');
                $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option option.' + $(this).find('a').attr('class')).attr('selected','selected');
            }
        });
        
        $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option').change(function(){
            var option_checked = $(this).attr('value');
            $('#{$formAtts.id|escape:'html':'UTF-8'} ul.nav-tabs li a[data-tab="' + option_checked + '"]').trigger('click');
        });
        ///

        //show tab when first load mobile
        $('#{$formAtts.id|escape:'html':'UTF-8'} ul.nav-tabs li').each(function(){
            if($(this).hasClass('active')){
                $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option option.' + $(this).find('a').attr('value')).attr('selected','selected');
            }
        });

        //show option select when click tabs
        $('#{$formAtts.id|escape:'html':'UTF-8'}').on('show.bs.tab', function (e) {
            var tab_active = $(e.target).data('tab');
            $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option option').removeAttr('selected');
            $('#{$formAtts.id|escape:'html':'UTF-8'} .product-tab-option option[value="' + tab_active + '"]').attr('selected','selected');

        });

    });
</script>
{else}
    <div id="{$tabID|escape:'html':'UTF-8'}" class="tab-pane">
        {$apContent}{* HTML form , no escape necessary *}
    </div>
{/if}
