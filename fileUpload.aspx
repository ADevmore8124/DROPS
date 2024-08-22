<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileUpload.aspx.cs" Inherits="Dist_Cloud.fileUpload" %>

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
    .style28
    {
        height: 24px;
        text-align: center;
        width: 264px;
    }
.style29 {
	font-size: 16px;
	font-weight: bold;
}
    .style32 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 16pt;
}
    .style41 {font-family: Georgia, "Times New Roman", Times, serif}
.style44 {color: #FFFFFF}
    .style47
    {
	height: 35px;
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF0000;
	font-size: 18px;
	font-weight: bold;
    }
    .style48
    {
        height: 26px;
    }
    .style55 {
	color: #FFFFFF;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
}
    .style64
    {
        height: 1px;
        width: 181px;
    }
    .style65
    {
        height: 1px;
        width: 240px;
    }
    .style66
    {
        height: 2px;
        width: 181px;
        color: #FFFFFF;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
    }
    .style67
    {
        height: 2px;
        width: 240px;
    }
    .style69
    {
        width: 264px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        color: #FFFFFF;
        height: 31px;
    }
    .style70
    {
        width: 264px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        color: #FFFFFF;
        height: 34px;
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
		<li ><a href="homepage.aspx" accesskey="1" title=""> Homepage </a></li>
		<li class="current_page_item"><a href="#" accesskey="3" title="">Upload Record</a></li>
        <li><a href="viewRequests_Share.aspx" accesskey="5" title="">Shared Files</a></li>
        <li><asp:Label ID="Label7" runat="server" Text="Welcome " Font-Bold="True" 
                Font-Size="Medium" ForeColor="White"></asp:Label>
             <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White"></asp:Label>
             </li>
           <li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>  
	</ul>
</div>
<div id="page" class="container">
	<div id="sidebar1">
		<div id="box1">
			<h3 align="left" class="style32">User Profile</h3><br />
			<ul class="style1"><li class="first">
            
            <table border="1" align="center" bordercolor="#FFFFFF" bgcolor="#0E72D4" 
                    style="width: 303px" >
                
                <tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style70">
                      <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" 
                          NavigateUrl="~/phrProfileInfo.aspx">User Profile Details</asp:HyperLink>
                    </td>
                  
                </tr>
				<tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style69">
                      <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                          NavigateUrl="~/change_pass.aspx">Change Password</asp:HyperLink>
                    </td>
                 
                </tr>
                <tr>
                  <td bordercolor="#999999" bgcolor="#CCCCCC" class="style28">&nbsp;
                      </td>
                </tr>
              </table>

			</li>
			  <br />
                <li class="first style29" style="color: #FF0000"> </li>
			    <li class="first style29"> </li>
			</ul>
			<p>
                      <img src="images/ht.jpg" alt="" style="height: 242px; width: 307px" /></p>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content">
			<h3 align="left" class="style32">Cloud owner&nbsp; file upload page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h3><br /><br/>
            <table width="482" border="1" align="center" cellpadding="1" cellspacing="1" 
                bordercolor="#CCCCCC" style="height: 183px">
              <tr>
                <td colspan="2" bgcolor="#00CCFF" class="style47">File Details ... </td>
              </tr>
              <tr>
                <td width="186" bgcolor="#4099F2" class="style64"><span class="style55">File ID </span></td>
                <td width="283" bgcolor="#CCCCCC" class="style65"><span class="style41"><span class="style44"></span>
                    <asp:TextBox ID="fileID" runat="server" Height="22px"></asp:TextBox>
                </span></td>
              </tr>
              
              <tr>
                <td bgcolor="#4099F2" class="style64"><span class="style55">Select File </span></td>
                <td bgcolor="#CCCCCC" class="style65"><span class="style41"><span class="style44"></span>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    </span></td>
              </tr>
              <tr>
                <td bgcolor="#00CCFF" colspan="2" class="style48" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" BackColor="#0E72D4" Font-Bold="True" 
                        Font-Names="Georgia" Font-Size="12pt" ForeColor="White" Height="35px" 
                        Text="Upload" Width="93px" onclick="Button1_Click" />                </td>
              </tr>
      </table>
            <p align="left" class="style32">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#FF0066"></asp:Label>
            </p>
            <p align="left" class="style32">
                <asp:Label ID="Label2" runat="server" Visible="False" ForeColor="White"></asp:Label>
            </p>
            <p align="left" class="style32">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                    ForeColor="White"></asp:Label>
            </p>
            <p align="left" class="style32">
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" 
                    ForeColor="White"></asp:Label>
            </p>
	</div>
</div>

    </form>

</body>
</html>