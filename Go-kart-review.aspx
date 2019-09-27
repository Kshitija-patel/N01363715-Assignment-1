<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Go-kart-review.aspx.cs" Inherits="N01363715___Assignment_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Go Kart Review</title>
        <style>
            form {
                width: 70%;
                margin:auto;
                }
            section{
                padding:12px;
                border: 1px solid lightgrey;
                }
            input[type=text],
            input[type=email],
            input[type=number],
            textarea,
            select{
                width:100%;
            }
            .submit-btn{
                padding: 10px;
                right:0;
            }
        </style>
    </head>
    <body>
        <form id="go_kart_review" method="post" runat="server">

        <h1>Go Kart Review</h1>
        <section>
            <label>Name:</label>
            <asp:TextBox runat="server" ID="reviewer_name" ></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your name" ControlToValidate="reviewer_name"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter your valid name" ControlToValidate="reviewer_name" ValidationExpression="^[a-zA-Z'.\s]{1,50}">
            </asp:RegularExpressionValidator>
            <!-- link:http://www.java2s.com/Tutorial/ASP.NET/0160__Validation/ValidateName.htm
                  Date:26-09-2019
                  Purpose: To check exact validation for name-->
        </section>
        <section>
            <label>E-mail-ID:</label>
            <asp:TextBox runat="server" ID="reviewer_mail" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your email" ControlToValidate="reviewer_mail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter valid email-id" ControlToValidate="reviewer_mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <!-- link:https://www.codeproject.com/Tips/472728/RegularExpressionValidator-In-ASP-NET
                  Date:26-09-2019
                  Purpose: To check exact validation for email-->
        </section>
        <section>
             <label>Ratings:</label>
             <asp:TextBox runat="server" ID="reviewer_rating" TextMode="Number"></asp:TextBox>
             <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide the ratings" ControlToValidate="reviewer_rating"></asp:RequiredFieldValidator>
             <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_rating" ErrorMessage="Rating should be between 0 and 5." MinimumValue="0" MaximumValue="5" ></asp:RangeValidator>
        </section>
        <section>
            <label>Title of the review:</label>
            <asp:TextBox runat="server" ID="review_title"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the title of your review" ControlToValidate="review_title"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Your review:</label>
            <asp:TextBox runat="server" id="review" TextMode="multiline"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your review" ControlToValidate="review"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>What type of visit was this? </label>
            <asp:CheckBoxList ID="visit_type" runat="server">
                <asp:ListItem Text="Couple" Value="Couple"></asp:ListItem>
                <asp:ListItem Text="Family" Value="Family"></asp:ListItem>
                <asp:ListItem Text="Cousins" Value="Cousins"></asp:ListItem>
                <asp:ListItem Text="Friends" Value="Friends"></asp:ListItem>
                <asp:ListItem Text="Buisness" Value="Buisness"></asp:ListItem>
                <asp:ListItem Text="Solo" Value="Solo"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <label>When did you visit ?</label>
                 <asp:DropDownList runat="server" ID="visit_time">
                     <asp:ListItem Text="Select" Value=""></asp:ListItem>
                     <asp:ListItem Text="January" Value="January"></asp:ListItem>
                     <asp:ListItem Text="February" Value="February"></asp:ListItem>
                     <asp:ListItem Text="March" Value="March"></asp:ListItem>
                     <asp:ListItem Text="April" Value="April"></asp:ListItem>
                     <asp:ListItem Text="May" Value="May"></asp:ListItem>
                     <asp:ListItem Text="June" Value="June"></asp:ListItem>
                     <asp:ListItem Text="July" Value="July"></asp:ListItem>
                     <asp:ListItem Text="August" Value="August"></asp:ListItem>
                     <asp:ListItem Text="September" Value="September"></asp:ListItem>
                     <asp:ListItem Text="October" Value="October"></asp:ListItem>
                     <asp:ListItem Text="November" Value="November"></asp:ListItem>
                     <asp:ListItem Text="December" Value="December"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the time of your visit" ControlToValidate="visit_time"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Which part of this place attracted you more ?</label>
            <asp:CheckBoxList ID="place_attracted" runat="server">
                <asp:ListItem Text="Activities" Value="Activities"></asp:ListItem>
                <asp:ListItem Text="Food" Value="Food"></asp:ListItem>
                <asp:ListItem Text="Staff Members" Value="Staff Members"></asp:ListItem>
                <asp:ListItem Text="Ambience" Value="Ambience"></asp:ListItem>
            </asp:CheckBoxList>
         </section>
     
        <section>
            <label>Length of your visit ?</label>
            <asp:RadioButtonList runat="server" ID="visit_length">
                <asp:ListItem Text="Less than 1 hour" Value="Less than 1 hour"></asp:ListItem>
                <asp:ListItem Text="1-2 hours" Value="1-2 hours"></asp:ListItem>
                <asp:ListItem Text="2-3 hours" Value="2-3 hours"></asp:ListItem>
                <asp:ListItem Text="more than 3 hour" Value="more than 3 hour"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the length of your visit" ControlToValidate="visit_length"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Is this a place or activity you would suggest the families with kids ?</label>
            <asp:RadioButtonList runat="server" ID="suggest">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                <asp:ListItem Text="Not sure" Value="not sure"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide your suggestion for families with kids" ControlToValidate="suggest"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Is there food available at this place ?</label>
            <asp:RadioButtonList runat="server" ID="food_available">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                <asp:ListItem Text="Not sure" Value="not sure"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide information regarding food availability" ControlToValidate="food_available"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Is this attraction available using public transportation ?</label>
            <asp:RadioButtonList runat="server" ID="public_trans">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                <asp:ListItem Text="Not sure" Value="not sure"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide information regarding public transportation availability" ControlToValidate="public_trans"></asp:RequiredFieldValidator>
        </section>
   
        <section>
            <asp:Button runat="server" Text="Submit" />
        </section>
        <section id="submitbox" runat="server">
        </section>
        <section>
            <asp:ValidationSummary runat="server" DisplayMode = "BulletList" ShowSummary = "true" />
        </section>
    </form>
    </body>
</html>
