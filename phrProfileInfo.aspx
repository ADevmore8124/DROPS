<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phrProfileInfo.aspx.cs" Inherits="Dist_Cloud.phrProfileInfo" %>

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
        height: 47px;
        text-align: center;
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
.style47 {
        color: #CCCCCC;
        text-align: left;
    }
    .style48
    {
        text-align: left;
        font-size: 15px;
        color: #FFFFFF;
        font-weight: bold;
        font-family: Georgia, "Times New Roman", Times, serif;
    }
    .style49
    {
        text-align: left;
    }
    .style50
    {
        width: 1200px;
        margin: 0px auto;
        height: 616px;
    }
    .style51
    {
        height: 490px;
    }
    .style52
    {
        height: 634px;
    }
    .style53
    {
        height: 575px;
    }
    .style54
    {
        font-size: 12pt;
    }
    .style56
    {
        font-size: 12pt;
        color: #3399FF;
        font-family: Georgia;
    }
    .style57
    {
        font-size: 12pt;
        color: #CC0000;
        font-family: Georgia;
    }
    .style58
    {
        color: #FFFFFF;
        font-family: Georgia;
        font-size: 13pt;
        text-align: center;
        background-color: #3399FF;
    }
    .style59
    {
        width: 312px;
        height: 125px;
    }
    .style60
    {
        text-align: center;
        font-family: Georgia;
        background-color: #3399FF;
    }
    .style61
    {
        background-color: #00CCFF;
    }
    -->
</style>
</head>
<body style="height: 1164px">
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
<div id="page" class="style50">
	<div id="sidebar1" class="style53">
		<div id="box1">
			<h3 align="left" class="style32">User Login</h3><br />
            <table border="1" align="center" bordercolor="#FFFFFF" bgcolor="#0E72D4" 
                class="style59" >
                <tr>
                  <td colspan="2" class="style60">
			    <strong>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style55" 
                    ForeColor="White" NavigateUrl="~/index.aspx" 
                          style="font-size: 15pt; color: #FFFFFF; font-family: Georgia;" 
                          Font-Names="Georgia">Sign In</asp:HyperLink>
                </strong>
                    </td>
                  
                </tr>
                <tr>
                  <td colspan="2" class="style58"><strong>Sign In for existing User</strong></td>
                  
                </tr>
				
                <tr>
                  <td colspan="2" class="style61">
                      &nbsp;</td>
                </tr>
              </table>
			<br />
			<ul class="style1">
                    <li class="first">
			  <br />
                        <strong>
                        <asp:Label ID="err0" runat="server" ForeColor="#FF3300" 
                    CssClass="style57"></asp:Label>
                        </strong>
                <li class="first">
			        <strong>
                    <asp:Label ID="err1" runat="server" ForeColor="#FF0066" 
                    CssClass="style56"></asp:Label>
                    </strong>
                    <li class="first">
			        <li class="first style29">
			      <div align="center">
                      <img src="images/ht.jpg" alt="" style="height: 242px; width: 307px" /> </div>
			    </li>
			</ul>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content" class="style52">
			<h3 align="left" class="style32">New User registration</h3>
            <h3 class="style32">&nbsp;<asp:Label ID="err" runat="server" ForeColor="#FF3300" 
                    CssClass="style54"></asp:Label>
            </h3>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                ForeColor="#FF0066" />
            <table width="525" border="1" align="center" cellpadding="1" cellspacing="1" 
                bordercolor="#FFFFFF" class="style51">
              <tr>
                <td width="184" bgcolor="#3399FF" class="style48">First Name </td>
                <td width="309" bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="fname" ErrorMessage="First Name Required" 
                        ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Middle Name </td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="mName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="mName" ErrorMessage="Middle Name Required" 
                        ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Last Name </td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="lName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="lName" ErrorMessage="Last Name Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Gender</td>
                <td bgcolor="#CCCCCC" class="style49">
                    <asp:DropDownList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>                </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">DOB</td>
                <td bgcolor="#CCCCCC" class="style49">
                    <asp:TextBox ID="dob" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Address Line1</td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="addr1" runat="server" MaxLength="100" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="addr1" ErrorMessage="Address Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Address Line2</td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="addr2" runat="server" Width="200px"></asp:TextBox>
                  </td>
              </tr>
              ...

              <tr>
                <td bgcolor="#3399FF" class="style48">Email Id </td>
                <td bgcolor="#CCCCCC" class="style47">
                  <asp:TextBox ID="email" runat="server"></asp:TextBox>




                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="email" ErrorMessage="Email Id Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="Verify Email Id" ForeColor="#FF0066" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>




                  </td>
              </tr>
              <tr>
                <td bgcolor="#3399FF" class="style48">Mob. Number </td>
                <td bgcolor="#CCCCCC" class="style47">
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Black" Text="+"></asp:Label>
&nbsp;
                    <asp:TextBox ID="cntcode" runat="server" MaxLength="2" Width="37px">91</asp:TextBox>
&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Black" Text="-"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="mob" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="mob" ErrorMessage="Mob. No. Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="mob" ErrorMessage="Verify Mob. No." ForeColor="#FF0066" 
                        ValidationExpression="\d{10}(-\d{4})?">*</asp:RegularExpressionValidator>
                    </td>
              </tr>
              
              <tr>
                <td colspan="2" bgcolor="#00CCFF" class="style28">
                    <asp:Button ID="Button2" runat="server" BackColor="#0E72D4" Font-Bold="True" 
                        Font-Names="Georgia" Font-Size="12pt" ForeColor="White" Height="35px" 
                        Text="Clear" Width="89px" onclick="Button2_Click" 
                        UseSubmitBehavior="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#0E72D4" Font-Bold="True" 
                        Font-Names="Georgia" Font-Size="12pt" ForeColor="White" Height="35px" 
                        Text="Submit" Width="93px" onclick="Button3_Click" />                </td>
              </tr>
      </table>
	</div>
</div>

    </form>

</body>
</html>

