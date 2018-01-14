  <!--Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"-->
  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

  <!DOCTYPE html>
  
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
      <title></title>
  </head>
  <body>
    <form id="form1" runat="server">

      <div>

      <p style="text-align: center">
          Server you are on:&nbsp;
          <asp:Label ID="lblHostname" runat="server"></asp:Label>
      </p>  

        <p style="text-align: center">
            *This is not multi threaded, so test against 1 core or modify source for your needs.</p>
        <p>
        </p>
        <p style="margin-left: 160px">
            How long to generate CPU load in seconds
            <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 160px">

            <br />

            <asp:Button ID="btnMaxCPU" runat="server" OnClick="btnMaxCPU_Click" Text="Generate workload" />
        </p>
	<p style="margin-left: 160px">
	     <br />

            <asp:button id="btnTestDb" onclick="btnTestDb_Click" runat="server" text="Test Database Connection"/>
        </p>

      </div>

    </form>
 </body>
 </html>