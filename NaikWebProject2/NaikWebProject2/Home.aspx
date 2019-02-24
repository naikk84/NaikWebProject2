<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NaikWebProject2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Home.css" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    
   
    <title>Custom Calculator</title>
    <link rel="shortcut icon" href="Images/fe1680d9e81708fd79fc27b791401673-flat-calculator-icon-by-vexels.png" type="png" />
    
     
</head>
<body>
    <form id="form1" runat="server">
        <header>
        <div id="top">
            <img src="Images/fe1680d9e81708fd79fc27b791401673-flat-calculator-icon-by-vexels.png" height="80" width="120" alt="header image" id="headerimage"/>
            <h2>Custom Calculator</h2>
            <h3>For calculating Area of Rectangle</h3>
           </div>
        </header>
        <div class="content">
            <div class="image">
            <figure>
                <img src="Images/RECTANGLE_Area_image.png" alt="Area of Rectangle" height="170" />
            </figure>
                </div>
            <div class="calculation">
                <asp:Table ID="Table1" runat="server"></asp:Table>
                <table>
                         <tr>
                             <td colspan="2" id="firstrow">Enter Values Here</td>
                         </tr>
                         <tr>
                             <td>
                                 Your Name
                             </td>
                             <td class="auto-style1">
                                 <asp:TextBox ID="txtName" runat="server" Width="154px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>Enter Length</td>
                             <td class="auto-style1">
                                 <asp:TextBox ID="txtLength" runat="server" Width="155px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>Enter Width</td>
                             <td class="auto-style1">
                                 <asp:TextBox ID="txtWidth" runat="server" Width="155px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>

                                 <asp:Button ID="Calculate" runat="server" Text="Calculate" Width="150px" OnClick="Calculate_Click" />

                             </td>
                             <td class="auto-style1">

                                 <asp:Button ID="Clear" runat="server" Text="Clear" Width="163px" OnClick="Clear_Click" />

                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:Label ID="Label1" runat="server" Text="Your Answer:"></asp:Label>
                             </td>
                             <td class="auto-style1">
                                 <asp:Label ID="Label2" runat="server" ></asp:Label>
                             </td>
                         </tr>
                         
                </table> 
                    
                </div>
            <div class="history">
                
                <asp:Label ID="Label3" runat="server" Text="Calculation History:-"></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Height="21px" Width="600px"></asp:Label>
            </div>
        </div>
        
    </form>
   <footer>
            <p>Developed By:-Kunal Naik </p>
        </footer>
</body>
</html>
