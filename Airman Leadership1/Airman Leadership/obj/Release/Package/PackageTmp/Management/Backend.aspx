<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Backend.aspx.cs" Inherits="Airman_Leadership.Management.Backend" %>

<%@ Register Src="~/Controls/Management.ascx" TagPrefix="uc1" TagName="Management" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to the Fitness Scheduler</title>

        <link href="CSS/site.css" rel="stylesheet" />
        <style>
            body {
                    background-image: url(../CSS/Airman.jpg);
                    background-attachment: fixed;
                    background-repeat: no-repeat;
                    background-position: center top;
           }

            #Content {
                margin-top: 180px;
                margin-left: auto;
                margin-right: auto;
            }
            #Main {
                width: 1000px;
                height:auto;
                margin-left: 425px;
                background-color: #ffffff;
                padding-left: 10px;
            }
            #Image1{
                width: 745px;
            }
            

        </style>
    
</head>
<body>
    <form id="form1" runat="server">    
        <div id="Content">
            <div id="navbar">
                <div id="holder">
                                                
                </div>    
            </div>
        <div id="Main">
            <uc1:Management runat="server" ID="Management" />
            <asp:Image ID="Image1" runat="server" src="../Images/footer.jpg" /> 
            <asp:Literal ID="Copyright" runat="server" Text="<%$ AppSettings:Copyright %>" />
        </div>            
    </div>
    </form>
</body>
</html>
