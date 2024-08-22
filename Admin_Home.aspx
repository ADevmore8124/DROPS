<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="Dist_Cloud.Admin_Home" %>

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
    .style32 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 16pt;
        text-align: left;
    }
    .style71
    {
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
		<li class="current_page_item"><a href="#" accesskey="1" title=""> Homepage </a></li>
		<li><a href="fileUpload.aspx" accesskey="3" title="">Upload Record</a></li>
        <li><a href="viewRequests_Share.aspx" accesskey="5" title="">File Storage</a></li>
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
			<h3 align="left" class="style71">User Profile</h3><br />
			<ul class="style1"><li class="first">
            
			</li>
			  <br />
                </ul>
			<p>
                      <img src="images/ht.jpg" alt="" style="height: 242px; width: 187px" /></p>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content">
			<h3 align="left" class="style32">Cloud User&#39;s details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </h3>
            <p align="left" class="style32">
                <asp:GridView ID="GridView1" runat="server" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" CellSpacing="1" Width="732px" AutoGenerateColumns="False" 
                    DataSourceID="USERLIST" GridLines="None" Height="152px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="text-align: center" Font-Names="Georgia" Font-Size="13pt" 
                    AutoGenerateSelectButton="True">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" 
                            SortExpression="FIRST_NAME" />
                        <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" 
                            SortExpression="LAST_NAME" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="White" 
                    BorderStyle="Solid" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#97FF97" Font-Bold="True" ForeColor="#CC0066" 
                    BorderColor="#CC0066" BorderStyle="Solid" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="USERLIST" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [ID], [FIRST_NAME], [LAST_NAME], [EMAIL] FROM [regTABLE] ORDER BY [ID]">
                </asp:SqlDataSource>
            </p>
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" 
                ForeColor="White"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" 
                ForeColor="White"></asp:Label>
            <asp:Label ID="err" runat="server" Font-Bold="True" Font-Names="Georgia" 
                Font-Size="12pt" ForeColor="#CC0000"></asp:Label>
            <br /><br />
            <p align="left" class="style32">
                <asp:Label ID="Label1" runat="server" Text="null" Visible="False" 
                    ForeColor="White"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Label" Visible="False" 
                    ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </p>
            <p align="left" class="style32">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Button" 
                    Visible="False" />
            </p>
	</div>
</div>

    </form>

</body>
</html>
