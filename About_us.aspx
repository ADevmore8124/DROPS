<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_us.aspx.cs" Inherits="Dist_Cloud.About_us" %>

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
        height: 33px;
    }
    .style33
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        font-size: small;
        text-align: justify;
        height: 33px;
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
			<h3 align="left" class="style32">About Us</h3>
            <p align="left" class="style33">Abstract—Outsourcing data to a third-party 
                administrative control, as is done in cloud computing, gives rise to security 
                concerns. The data compromise may occur due to attacks by other users and nodes 
                within the cloud. Therefore, high security measures are required to protect data 
                within the cloud. However, the employed security strategy must also take into 
                account the optimization of the data retrieval time. In this paper, we propose 
                Division and Replication of Data in the Cloud for Optimal Performance and 
                Security (DROPS) that collectively approaches the security and performance 
                issues. In the DROPS methodology, we divide a file into fragments, and replicate 
                the fragmented data over the cloud nodes. Each of the nodes stores only a single 
                fragment of a particular data file that ensures that even in case of a 
                successful attack, no meaningful information is revealed to the attacker. 
                Moreover, the nodes storing the fragments, are separated with certain distance 
                by means of graph T-coloring to prohibit an attacker of guessing the locations 
                of the fragments. Furthermore, the DROPS methodology does not rely on the 
                traditional cryptographic techniques for the data security; thereby relieving 
                the system of computationally expensive methodologies. We show that the 
                probability to locate and compromise all of the nodes storing the fragments of a 
                single file is extremely low. We also compare the performance of the DROPS 
                methodology with ten other schemes. The higher level of security with slight 
                performance overhead was observed.</p>
	</div>
</div>

    </form>

</body>
</html>
