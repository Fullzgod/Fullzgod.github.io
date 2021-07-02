{include file="header.tpl"}
<title>Security</title>
<div class="bannerContainer insider2">
    <div class="bannerInner">
      <div class="ctn-banner fadeInRight wow">
                  <h3>My <span>Dashboard</span></h3>
        <div class="reflinkbox"><a href="{$settings.site_url}/?ref={$userinfo.username}" class="ref-link">{$settings.site_url}/?ref={$userinfo.username}</a><a class="getban" href="?a=referals">Get Banners</a></div>
      </div>
    </div>
     </div>
</div>
<div class="clearfix"></div>

<div class="inside_wrap">
<div class="membersidebar">

  <div class="inside_inner">
  <ul class="nav">
              <li class="active"><a href="?a=account">Overview</a></li>
              <li><a href="?a=deposit">Deposit</a></li>
              <li><a href="?a=deposit_list">Your Deposits</a></li>
              <li><a href="?a=deposit_history">Deposits History</a></li>
              <li><a href="?a=earnings">Earnings History</a></li>
              <li><a href="?a=withdraw">Withdraw</a></li>
              
              <li><a href="?a=referals">Referrals</a></li>
              <li><a href="?a=edit_account">Settings</a></li>
              <li><a href="?a=security">Security</a></li>
              
            </ul>
            <div class="memtopwrap">
    <div class="memtop"> <span><img src="styles/images/uruser.png" alt="" /></span>
      <h2>{$userinfo.username}</h2>
      <p>Welcome</p>
    </div>
    <div class="memtop"> <span><img src="styles/images/urregdate.png" alt="" /></span>
      <h2>{$userinfo.create_account_date}</h2>
      <p>Registration Date</p>
    </div>
    <div class="memtop"> <span><img src="styles/images/urinfo.png" alt="" /></span>
      <h2></h2>
      <p>User IP</p>
    </div>
    <div class="memtop"> <span><img src="styles/images/urrun.png" alt="" /></span>
      <h2>{$settings.site_days_online_generated}</h2>
      <p>Running Days</p>
    </div>
    </div>
  </div>
</div>


<div class="myaccount">
<div class="inside_inner">
<div class="member_right">
<div class="my_accont">


<h3>Advanced login security settings:</h3><br><br>

<form method=post>
<input type=hidden name=a value="security">
<input type=hidden name=action value="save">
Detect IP Address Change Sensitivity<br>
<input type=radio name=ip value=disabled {if $security.detect_ip == 'disabled'}checked{/if}>Disabled<br>
<input type=radio name=ip value=medium {if $security.detect_ip == 'medium'}checked{/if}>Medium<br>
<input type=radio name=ip value=high {if $security.detect_ip == 'high'}checked{/if}>High<br>
<input type=radio name=ip value=always {if $security.detect_ip == 'always'}checked{/if}>Paranoic<br><br>

Detect Browser Change<br>
<input type=radio name=browser value=disabled {if $security.detect_browser == 'disabled'}checked{/if}>Disabled<br>
<input type=radio name=browser value=enabled {if $security.detect_browser == 'enabled'}checked{/if}>Enabled<br><br>
<input type=submit value="Set" class=sbmt>
</form>

{if $settings.use_tfa}
<h3>Two Factor Authentication</h3>
<form method=post name=mainform>
<input type=hidden name=a value="security">
<input type=hidden name=action value="tfa_save">
<input type=hidden name=time>
{if $errors.invalid_tfa_code}
<b style=color:red>Invalid code.</b><br>
{/if}
{if $errors.invalid_tfa_secret}
<b style=color:red>Invalid Secret.</b><br>
{/if}

{if $tfa_enabled}
<input type="checkbox" name="tfa_on_login" value=1 {if $tfa_settings.login}checked{/if}> on Login<br>
<input type="checkbox" name="tfa_on_edit_account" value=1 {if $tfa_settings.edit_account}checked{/if}> on Edit Account<br>
<input type="checkbox" name="tfa_on_withdraw" value=1 {if $tfa_settings.withdraw}checked{/if}> on Withdraw<br>
<input type="checkbox" name="tfa_disable" value=1> <b style=color:red>Disable Two Factor Authentication (not recommended)</b><br>
<br>
Confirm by typing code: <input type=text name="code" class=inpts> <input type=submit value="Update" class=sbmt>
{else}
1. Install <a href="http://m.google.com/authenticator" targe=_blank>Google Authenticator</a> on your mobile device.<br>
2. Your Secret Code is: <b>{$tfa_secret}</b> <input type=hidden name="tfa_secret" value="{$tfa_secret}"><br>
<img src="{$tfa_secret_url}"><br>
3. Please enter two factor token from Google Authenticator to verify correct setup:<br> 
<input type=text name="code" class=inpts> <input type=submit value="Enable" class=sbmt>
{/if}
</form>


{literal}
<script language=javascript>
document.mainform.time.value = (new Date()).getTime();

function checkform() {
  if (!document.mainform.code.value.match(/^[0-9]{6}$/)) {
    alert("Please type code!");
    document.mainform.code.focus();
    return false;
  }
  return true;
}
</script>
{/literal}
{/if} {* use_tfa *}
</div></div></div></div>
{include file="footer.tpl"}
