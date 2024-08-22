<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Dist_Cloud.services" %>

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
.style29 {
	font-size: 16px;
	font-weight: bold;
}
    .style32 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 16pt;
        text-align: left;
        height: 26px;
    }
    .style33
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        font-size: small;
        text-align: justify;
        height: 43px;
        color: #003366;
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
		<li ><a href="index.aspx" accesskey="1" title="">Homepage</a></li>
		<li><a href="registration.aspx" accesskey="2" title="">Registration</a></li>
		<li><a href="services.aspx" accesskey="3" title="">Our Services</a></li>
		<li><a href="About_us.aspx" accesskey="4" title="">About Us</a></li>
		<li><a href="contact_us.aspx" accesskey="5" title="">Contact Us</a></li>
	</ul>
</div>
<div id="page" class="container">
	<div id="sidebar1">
		<div id="box1">
			<h3 align="left" class="style32">User Login</h3>
			<ul class="style1">
                   <li class="first style29" style="color: #FF0000">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF0066" 
                        NavigateUrl="~/index.aspx">Sign In</asp:HyperLink>
               </li>
			           <br />
			<h3 align="left" class="style32">User Registration</h3>
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
            <p align="left" class="style32">&nbsp;</p>
			<h3 align="left" class="style32">Servicess</h3>
            <p align="left" class="style32">&nbsp;</p>
            <ul>
                <li>
                    <p align="left" class="style33">
                        We proposed the DROPS methodology, a cloud storage security scheme that 
                        collectively deals with the security and performance in terms of retrieval time.</p>
                </li>
                <li>
                    <p align="left" class="style33">
                        The data file was fragmented and the fragments are dispersed over multiple 
                        nodes.</p>
                </li>
                <li>
                    <p align="left" class="style33">
                        The fragmentation and dispersal ensured that no significant information was 
                        obtainable by an adversary in case of a successful attack.</p>
                </li>
                <li>
                    <p align="left" class="style33">
                        No node in the cloud, stored more than a single fragment of the same file. The 
                        performance of the DROPS methodology was compared with full-scale replication 
                        techniques.</p>
                </li>
            </ul>
	</div>
</div>

    </form>

</body>
</html>
