<?php /* Smarty version 3.1.27, created on 2021-06-23 19:30:26
         compiled from "/home/u355647698/domains/crypto-scoot.com/public_html/tmpl/login.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:16809716560d38bd2e20873_22621926%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '72b980be438d2e3f94f1c4f44a63e85567315a62' => 
    array (
      0 => '/home/u355647698/domains/crypto-scoot.com/public_html/tmpl/login.tpl',
      1 => 1609542521,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16809716560d38bd2e20873_22621926',
  'variables' => 
  array (
    'frm' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_60d38bd2e785b5_43657324',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_60d38bd2e785b5_43657324')) {
function content_60d38bd2e785b5_43657324 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_myescape')) require_once '/home/u355647698/domains/crypto-scoot.com/public_html/inc/libs/smarty3/plugins/modifier.myescape.php';

$_smarty_tpl->properties['nocache_hash'] = '16809716560d38bd2e20873_22621926';
echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<title>Login | Crypto Scoot</title>

 <div class="bannerContainer insider">
    <div class="bannerInner">
      <div class="ctn-banner fadeInRight wow">
<body class="loginarea">


<?php echo '<script'; ?>
 language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
<?php echo '</script'; ?>
>

<div class="loginpage">
  <div class="inside_inner">
    <div class="loginwrappers">
      <div class="login_left">
        <div class="form-container login">
          <h3>user Login</h3>
<?php if ($_smarty_tpl->tpl_vars['frm']->value['say'] == 'invalid_login') {?>
<h3>Login error:</h3><br><br>

Your login or password or turing image code is wrong. Please check this information.
<?php }?>

<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value='<?php echo smarty_modifier_myescape($_smarty_tpl->tpl_vars['frm']->value['follow']);?>
'>
<input type=hidden name=follow_id value='<?php echo smarty_modifier_myescape($_smarty_tpl->tpl_vars['frm']->value['follow_id']);?>
'>
<table width="100%" cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Username:</td>
 <td><input type=text name=username value='<?php echo smarty_modifier_myescape(htmlspecialchars($_smarty_tpl->tpl_vars['frm']->value['username'], ENT_QUOTES, 'UTF-8', true));?>
' class=inpts size=30 autofocus="autofocus"></td>
</tr><tr>
 <td>Password:</td>
 <td><input type=password name=password value='' class=inpts size=30></td>
</tr>
<?php echo $_smarty_tpl->getSubTemplate ("captcha.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('action'=>"login"), 0);
?>

<tr>
 <td height="40" valign="middle"><span class="bunicon"><input type=submit value="Login" class=sbmt></span></td>
 <td align="right" valign="middle"><a href="?a=forgot_password" class="small_text">Retrieve Password</a></td>
</tr></table>
</form>
<br><br>
or <a href="<?php echo smarty_modifier_myescape(encurl("?a=forgot_password"));?>
">remember your login information</a>.
</div>
      </div>
            <div class="login_right"><img src="styles/images/about-btt5.png"></div>
    </div>
  </div>
</div>
<div class="loginyellowbottom">
<div class="inside_inner"><a href="?a=signup" class="loginnewuser">New User? <span>SignUp!</span></a></div>
</div>
</div>
</div>
<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<?php }
}
?>