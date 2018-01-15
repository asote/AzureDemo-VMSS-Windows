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

       <asp:button id="btnTestDb" onclick="btnTestDb_Click" runat="server" text="Test Database Connection"/>

      </div>

    </form>
 </body>
 </html>