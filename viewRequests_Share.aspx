<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewRequests_Share.aspx.cs" Inherits="Dist_Cloud.viewRequests_Share" %>

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
    .style70
    {
        width: 264px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        color: #FFFFFF;
        height: 35px;
    }
    .style71
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        font-size: 16pt;
    }
    .style75
    {
        text-align: center;
    }
    .style76
    {
        height: 4px;
        text-align: center;
        width: 264px;
    }
    .style77
    {
        width: 203px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        color: #FFFFFF;
        height: 35px;
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
		<li><a href="fileUpload.aspx" accesskey="3" title="">Upload Record</a></li>
        <li class="current_page_item"><a href="#" accesskey="5" title="">Shared File</a></li>
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
			<h3 align="left" class="style71">share cLOUD record</h3><br />
			<ul class="style1"><li class="first">
            
            <table border="1" align="center" bordercolor="#FFFFFF" bgcolor="#0E72D4" 
                    style="width: 303px" >
                
                <tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style77">
                        Select User ID</td>
                  <td bordercolor="#999999" bgcolor="#0E72D4" class="style70">
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sharedID" 
                          DataTextField="EMAIL" DataValueField="EMAIL">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="sharedID" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                          SelectCommand="SELECT [EMAIL] FROM [regTABLE] WHERE ([EMAIL] &lt;&gt; @EMAIL) ORDER BY [ID]">
                          <SelectParameters>
                              <asp:SessionParameter Name="EMAIL" SessionField="UID" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    </td>
                </tr>
				<tr>
                  <td bordercolor="#999999" bgcolor="#0E72D4"  class="style77">
                      Select Report</td>
                 <td bordercolor="#999999" bgcolor="#0E72D4" class="style70">
                      <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="fileDATA" 
                          DataTextField="FILE_NAME" DataValueField="ID">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="fileDATA" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                          
                          SelectCommand="SELECT [FILE_NAME], [ID] FROM [dataMASTER] WHERE ([EMAIL] = @EMAIL) ORDER BY [FILE_NAME]">
                          <SelectParameters>
                              <asp:SessionParameter Name="EMAIL" SessionField="UID" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                  <td colspan="2" bordercolor="#999999" bgcolor="#CCCCCC" class="style76">&nbsp;
                      <br />
                        <asp:Button ID="Button4" runat="server" BackColor="#FF0066" BorderColor="White" 
                            Font-Bold="True" Font-Names="Georgia" ForeColor="White" Height="35px" 
                            onclick="Button4_Click" Text="Share" Width="109px" BorderStyle="Solid" />
                      <br />
                      <br />
                      </td>
                </tr>
               
              </table>

			</li>
			  <br />
                <li class="first style29"> 
                    <div class="style75">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </div>
                </li>
			</ul>
			<p>
                      <img src="images/ht.jpg" alt="" style="height: 242px; width: 307px" /></p>
		</div>
		<div id="box1">
	  </div>
	</div>
	<div id="content">
			<h3 align="left" class="style32">cLOUD FILE SHARE request details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h3>
            <p align="left" class="style32">
                <asp:GridView ID="GridView1" runat="server" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" CellSpacing="1" Width="732px" AutoGenerateColumns="False" 
                    GridLines="None" Height="152px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="text-align: center" Font-Names="Georgia" Font-Size="13pt" 
                    DataSourceID="shdatafiles">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="OEMAIL" HeaderText="OEMAIL" 
                            SortExpression="OEMAIL" />
                        <asp:BoundField DataField="FID" HeaderText="FID" SortExpression="FID" />
                        <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
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
                <asp:SqlDataSource ID="shdatafiles" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    
                    
                    SelectCommand="SELECT [ID], [OEMAIL], [FID], [FNAME] FROM [shareTABLE] WHERE ([SEMAIL] = @SEMAIL) ORDER BY [ID]">
                    <SelectParameters>
                        <asp:SessionParameter Name="SEMAIL" SessionField="UID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <asp:Label ID="err" runat="server" Font-Bold="True" Font-Names="Georgia" 
                Font-Size="12pt" ForeColor="#CC0000"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="#660033"></asp:Label>
            &nbsp;<asp:Label ID="Label10" runat="server" Text="Label" ForeColor="#660033"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            <br />
                <asp:Button ID="Button1" runat="server" BackColor="#0E72D4" BorderColor="White" 
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Georgia" Font-Size="15pt" 
                    ForeColor="White" Height="39px" Text="Download" Width="129px" 
                    onclick="Button1_Click" />
            <br /><br />
            <p align="left" class="style32">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </p>
	</div>
</div>

    </form>

</body>
</html>