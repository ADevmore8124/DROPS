<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change_pass.aspx.cs" Inherits="Dist_Cloud.change_pass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<style type="text/css">
<!--
.style1 {color: #0000FF}
    .style24
    {
        width: 96px;
        height: 34px;
        color: #FFFFFF;
        font-weight: bold;
        font-family: Georgia, "Times New Roman", Times, serif;
    }
    .style28
    {
        height: 47px;
        text-align: center;
        background-color: #99FFCC;
    }
.style29 {
	font-size: 16px;
	font-weight: bold;
}
    .style30
    {
        width: 96px;
        height: 41px;
        font-size: 14;
        color: #FFFFFF;
        font-weight: bold;
        font-family: Georgia, "Times New Roman", Times, serif;
    }
    .style32 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 16pt;
}
    .style70
    {
        width: 1200px;
        margin: 0px auto;
        height: 686px;
    }
    .style51
    {
        height: 165px;
        width: 475px;
    }
    .style48
    {
        text-align: left;
        font-size: 15px;
        color: #FFFFFF;
        font-weight: bold;
        font-family: Georgia, "Times New Roman", Times, serif;
    }
    .style47 {
        color: #CCCCCC;
        text-align: left;
        width: 233px;
    }
    -->
</style>
</head>
<body style="height: 1120px">
    <form id="form1" runat="server">
<div id="header" class="container">
	
</div>
<div id="menu" class="container">
	<ul>
		<li ><a href="index.aspx" accesskey="1" title="">Homepage</a></li>
		<li class="current_page_item"><a href="#" accesskey="2" title="">Registration</a></li>
		<li><a href="#" accesskey="3" title="">Our Services</a></li>
		<li><a href="#" accesskey="4" title="">About Us</a></li>
		<li><a href="#" accesskey="5" title="">Contact Us</a></li>
	</ul>
</div>
<div id="page" class="style70">
	<div id="sidebar1">
		<div id="box1">
			<h3 align="left" class="style32">User Login details</h3><br />
			<ul class="style1"><li class="first"><table border="1" align="center" 
                    cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#0E72D4" 
                    style="width: 315px; height: 118px">
                <tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style24" colspan=2>Welcome<asp:Label 
                          ID="Label1" runat="server" ForeColor="Yellow" Text="Label"></asp:Label>
                    </td>
                  
                </tr>
                <tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style30" colspan=2>LoginName=<asp:Label 
                          ID="Label3" runat="server" ForeColor="Yellow" Text="Label"></asp:Label>
                    </td>
                  
                </tr>
				
                <tr>
                  <td colspan="2" bordercolor="#999999" bgcolor="#CCCCCC" class="style28">
                      &nbsp;</td>
                </tr>
              </table>
			</li>
			    <li class="first">
			  <br />
                <li class="first style29">
			      <div align="center">
                      <img src="images/ht.jpg" alt="" style="height: 242px; width: 307px" /> </div>
			    </li>
			</ul>
			<p>&nbsp;</p>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content">
			<h3 align="left" class="style32">Change Password</h3>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                ForeColor="#FF3399" />
            <h3>
            <table border="1" align="center" cellpadding="1" cellspacing="1" 
                bordercolor="#FFFFFF" class="style51">
              <tr>
                <td width="184" bgcolor="#3399FF" class="style48">old Password</td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="OPASS" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">new password&nbsp;</td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="NPASS" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="NPASS" ErrorMessage="New Password Required" 
                        ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">conf.password</td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="CFPASS" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="NPASS" ControlToValidate="CFPASS" 
                        ErrorMessage="Both Password Not Same" ForeColor="#FF0066">*</asp:CompareValidator>
                  </td>
              </tr>
                 
             
              <tr>
                <td colspan="2" bgcolor="#00CCFF" class="style28">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3399" Font-Bold="True" 
                        Font-Names="Georgia" Font-Size="12pt" ForeColor="White" Height="34px" 
                        Text="Change Password" Width="216px" onclick="Button3_Click" />                </td>
              </tr>
      </table>
      <p>&nbsp;</p>
            &nbsp;</h3>
	</div>
</div>

    </form>

</body>
</html>