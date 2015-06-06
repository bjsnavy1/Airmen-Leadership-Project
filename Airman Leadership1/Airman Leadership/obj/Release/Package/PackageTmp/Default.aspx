<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Airman_Leadership.Default" %>

<%@ Register Src="~/Controls/Home.ascx" TagPrefix="uc1" TagName="Home" %>
<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



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
                width: 745px;
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
                    <ul>
                        <li><a id="onlink" href="Default.aspx">Home</a></li>
                        <li><a href="Registration.aspx">Registration</a></li>
                        <li><a href="Materials.aspx">Materials</a></li>
                        <li><a href="Graduation.aspx">Graduation</a></li>
                        <li><a href="Contact.aspx">Contact Us</a></li>

                    </ul>                              
                </div>    
            </div>
        <div id="Main">
            
            <uc1:Home runat="server" ID="Home" />
            <uc1:Footer runat="server" id="Footer" />
            <asp:Literal ID="Copyright" runat="server" Text="<%$ AppSettings:Copyright %>" />
        </div>            
    </div>
    </form>
</body>
</html>
