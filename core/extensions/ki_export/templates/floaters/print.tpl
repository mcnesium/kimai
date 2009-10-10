{literal}    
    <script type="text/javascript"> 
        
        $(document).ready(function() {
            $('#help').hide();
            $('#floater input#timeformat').attr('value',$('#xp_ext_timeformat').attr('value'));
            $('#floater input#dateformat').attr('value',$('#xp_ext_dateformat').attr('value'));
            $('#floater input#default_location').attr('value',$('#default_location').attr('value'));
            $('#floater input#axValue').attr('value',filterUsr.join(":")+'|'+filterKnd.join(":")+'|'+filterPct.join(":"));

            columns = new Array('date','from','to','time','dec_time','rate','wage','knd','pct','action','comment','location','trackingnr','user','cleared');
            axColumnsString = '';
            firstColumn = true;
            $(columns).each(function () {
              if (!$('#xp_head td.'+this).hasClass('disabled')) {
              axColumnsString += (firstColumn?'':'|') + this;
              firstColumn = false;
              }
            });
            $('#floater input#axColumns').attr('value',axColumnsString);
        }); 
        
    </script>
{/literal}

<div id="floater_innerwrap">

    <div id="floater_handle">
        <span id="floater_title">{$print}</span>
        <div class="right">
            <a href="#" class="close" onClick="floaterClose();">{$kga.lang.close}</a>
            <a href="#" class="help" onClick="$(this).blur(); $('#help').slideToggle();">{$kga.lang.help}</a>
			<a href="#" class="options down" onClick="floaterOptions();">{$kga.lang.options}</a>
        </div>  
    </div>

    <div id="help">
        <div class="content">        
        </div>
    </div>


    <div id="floater_content"><div id="floater_dimensions">
        
        <form id="xp_ext_form_print" action="../extensions/ki_export/processor.php" method="post" target="_blank"> 
            <fieldset>                  


{* -------------------------------------------------------------------- *} 

                <!-- <input name="id" type="hidden" value="" /> -->
                <input name="axAction" type="hidden" value="export_html" />
                <input name="axValue" id="axValue" type="hidden" value="" />
                <input name="axColumns"  id="axColumns" type="hidden" value=""/>
                <input name="timeformat" id="timeformat" type="hidden" value="asd"/>
                <input name="dateformat" id="dateformat" type="hidden" value=""/>
                <input name="default_location" id="default_location" type="hidden" value=""/>

                <div id="formbuttons">
                    <input class='btn_norm' type='button' value='{$kga.lang.cancel}' onClick='floaterClose(); return false;' />
                    <input class='btn_ok' type='submit' value='{$kga.lang.submit}' onClick="floaterClose();"/>
                </div>

{* -------------------------------------------------------------------- *} 

            </fieldset>
        </form>

    </div></div>
</div>