<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCustomers.aspx.cs" Inherits="RegisterCustomers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td align="center" colspan="2">Sign Up for Your New Account</td>
            </tr>
            <!--Last Name-->
            <tr>
                <td align="right">
                    <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName">Last Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>*
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" ErrorMessage="Last Name is required." ToolTip="Last Name is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <!--First Name-->
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName">First Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>*
                   <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" ErrorMessage="First Name is required." ToolTip="First Name is required." ></asp:RequiredFieldValidator>
                </td>
            </tr>
            

            <!--Password-->

            <tr>
                <td align="right">
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>*
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <!--Confirm Password-->
            <tr>
                <td align="right">
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>*
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ></asp:RequiredFieldValidator>
                </td>
            </tr>
            

            <!-- Street NO -->
            <tr>
                <td align="right">
                    <asp:Label ID="StreetNoLabel" runat="server" AssociatedControlID="StreetNo">Street No:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="StreetNo" runat="server"></asp:TextBox>
                </td>
            </tr>
           
            <!-- Street Name -->
            <tr>
                <td align="right">
                    <asp:Label ID="StreetNameLabel" runat="server" AssociatedControlID="StreetName">Street Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="StreetName" runat="server"></asp:TextBox>
                </td>
            </tr>

            <!-- City -->
            <tr>
                <td align="right">
                    <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City">City:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="City" runat="server"></asp:TextBox>
                </td>
            </tr>

            <!-- Province -->
            <tr>
                <td align="right">
                    <asp:Label ID="ProvinceLabel" runat="server" >Province:</asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>British Columbia</asp:ListItem>
                        <asp:ListItem>Ontario</asp:ListItem>
                        <asp:ListItem>Saskatchewan</asp:ListItem>
                        <asp:ListItem>Alberta</asp:ListItem>
                        <asp:ListItem>Yukon</asp:ListItem>
                        <asp:ListItem>Manitoba</asp:ListItem>
                        <asp:ListItem>New Brunswick</asp:ListItem>
                        <asp:ListItem>Newfoundland</asp:ListItem>
                        <asp:ListItem>Prince Edward Island</asp:ListItem>
                        <asp:ListItem>Nova Scotia</asp:ListItem>
                        <asp:ListItem>Quebec</asp:ListItem>
                        <asp:ListItem>Nunavut</asp:ListItem>
                        <asp:ListItem>Northwest Territories</asp:ListItem>
                    </asp:DropDownList>                                                                              
                </td>
            </tr>
           
             <!-- postal code -->
            <tr>
                <td align="right">
                    <asp:Label ID="PostCodeLabel" runat="server" AssociatedControlID="PostCode">Postal Code:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PostCode" runat="server"></asp:TextBox>*
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a correct postal code!" ValidationExpression="^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-z]{1} *\d{1}[A-z]{1}\d{1}$" ControlToValidate="PostCode" Enabled="True"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="PostCodeRequired" runat="server" ControlToValidate="PostCode" ErrorMessage="Postal Code Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <!-- Phone -->
            <tr>
                <td align="right">
                    <asp:Label ID="PhoneLabel" runat="server" AssociatedControlID="Phone">Phone Number:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox> Format: 999-999-9999
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a correct phone number!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="Phone"> </asp:RegularExpressionValidator>
                </td>
            </tr>

            <!--Email-->
            <tr>
                <td align="right">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>*                    
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a correct format email address!" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ></asp:RequiredFieldValidator>              
                </td>
            </tr>
           
           <tr>
                <td align="center" colspan="2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Password and Confirm Password must be the same!"></asp:CompareValidator>
                </td>
            </tr>      
                               
            
            <tr>
                <td align="center" colspan="2" style="color:Red;">
                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                </td>
            </tr>
        </table>
        <table border="0" cellspacing="5" style="width:300px";">
            <tr align="right">
                <td align="right" colspan="0">
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Sign Up" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
