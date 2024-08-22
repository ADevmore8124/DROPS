<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Dist_Cloud.index" %>

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
.style22 {
        color: #FFFFFF;
        font-weight: bold;
        width: 177px;
        text-align: center;
    }
    .style24
    {
        width: 96px;
        height: 34px;
        font-size: 13px;
        color: #FFFFFF;
        font-weight: bold;
        background-color: #3399FF;
        font-family: Georgia;
    }
    .style27
    {
        height: 34px;
        width: 144px;
        text-align: center;
        background-color: #3399FF;
    }
    .style28
    {
        height: 47px;
        text-align: center;
        color: #99FF99;
        background-color: #D5D5D5;
    }
.style29 {
	font-size: 16px;
	font-weight: bold;
}
    .style30
    {
        width: 96px;
        height: 41px;
        font-size: 13px;
        color: #FFFFFF;
        font-weight: bold;
        background-color: #3399FF;
        font-family: Georgia;
    }
    .style31
    {
        height: 41px;
        width: 144px;
        text-align: center;
        background-color: #3399FF;
    }
.style32 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 16pt;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
<div id="header" class="container">
	
</div>
<div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
		<li><a href="registration.aspx" accesskey="2" title="">Registration</a></li>
		<li><a href="#" accesskey="3" title="">Our Services</a></li>
		<li><a href="#" accesskey="4" title="">About Us</a></li>
		<li><a href="#" accesskey="5" title="">Contact Us</a></li>
	</ul>
</div>
<div id="page" class="container">
	<div id="sidebar1">
		<div id="box1">
			<h3 align="left" class="style32">User Login</h3><br />
			<ul class="style1"><li class="first"><table border="1" align="center" 
                    cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#0E72D4" 
                    style="width: 315px; height: 118px">
                <tr>
                  <td bordercolor="#999999" class="style24">User Name </td>
                  <td bordercolor="#999999" class="style27"><div align="center" class="style22">
                      <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                      </div></td>
                </tr>
                <tr>
                  <td bordercolor="#999999" class="style30">Password</td>
                  <td bordercolor="#999999" class="style31"><div align="center" class="style22">
                      <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                      </div></td>
                </tr>
				  <tr>
                  <td colspan="2" bordercolor="#999999" bgcolor="#CCCCCC" class="style28">
                      <asp:Button ID="Button1" runat="server" BackColor="#0E72D4" Font-Bold="True" 
                          Font-Names="Georgia" Font-Size="Medium" ForeColor="White" Height="39px" 
                          Text="Login" Width="89px" onclick="Button1_Click" />                  </td>
                </tr>
              </table>
			</li>
			  <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
                <li class="first">
                <li class="first style29" style="color: #FF0000">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0066" 
                        NavigateUrl="~/registration.aspx">New User Registration </asp:HyperLink>
                </li>
			</ul>
			<p><img src="images/ht.jpg" alt="" style="width: 310px; height: 208px" /></p>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content">
			<h3 align="left" class="style32">DROPS: Division and Replication of Data in Cloud 
                for Optimal Performance and Security</h3>
            <p align="left" class="style32"><img src="images/drops.png" alt="" width="751" 
                    height="483" /></p>
	</div>
</div>

    </form>

</body>
</html>
