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
        <form id="go_kart_review" method="POST" action="https://postman-echo.com/post" runat="server">

        <h1>Go Kart Review</h1>
        <section>
            Name:
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
        </section>
        <section>
            E-mail:
            <asp:TextBox runat="server" ID="mail" TextMode="Email"></asp:TextBox>
        </section>
        <section>
            Overall Ratings:
             <asp:TextBox runat="server" ID="rating" TextMode="Number"></asp:TextBox>
        </section>
        <section>
            Title of the review:
            <asp:TextBox runat="server" ID="title"></asp:TextBox>
        </section>
        <section>
            Your review:
            <asp:TextBox runat="server" id="review" TextMode="multiline"></asp:TextBox>
        </section>
        <section>
            <label>What type of visit was this? </label>
            <asp:CheckBoxList ID="visit_type" runat="server">
                <asp:ListItem Text="Couple" Value="visit_option1"></asp:ListItem>
                <asp:ListItem Text="Family" Value="visit_option2"></asp:ListItem>
                <asp:ListItem Text="Cousins" Value="visit_option3"></asp:ListItem>
                <asp:ListItem Text="Friends" Value="visit_option4"></asp:ListItem>
                <asp:ListItem Text="Buisness" Value="visit_option5"></asp:ListItem>
                <asp:ListItem Text="Solo" Value="visit_option6"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <label>When did you visit ?</label>
            <asp:DropDownList runat="server" ID="visit_time">
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
        <fieldset>
            <legend>Optional</legend>
            <section>
                Length of visit
                <asp:RadioButtonList runat="server" ID="length_of_visit">
                    <asp:ListItem Text="Less than 1 hour" Value="Length_option1"></asp:ListItem>
                    <asp:ListItem Text="1-2 hours" Value="Length_option2"></asp:ListItem>
                    <asp:ListItem Text="2-3 hours" Value="Length_option3"></asp:ListItem>
                    <asp:ListItem Text="more than 3 hour" Value="Length_option4"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                Is this a place or activity you would suggest the families with kids ?
                <asp:RadioButtonList runat="server" ID="Suggest">
                    <asp:ListItem Text="Yes" Value="suggest_yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="suggest_no"></asp:ListItem>
                    <asp:ListItem Text="Not sure" Value="suggest_not sure"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                Is there food available at this place ?
                <asp:RadioButtonList runat="server" ID="food_available">
                    <asp:ListItem Text="Yes" Value="available_yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="available_no"></asp:ListItem>
                    <asp:ListItem Text="Not sure" Value="available_not sure"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                Is this attraction available using public transportation ?
                <asp:RadioButtonList runat="server" ID="public_trans">
                    <asp:ListItem Text="Yes" Value="public_trans_yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="public_trans_no"></asp:ListItem>
                    <asp:ListItem Text="Not sure" Value="public_trans_not sure"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
        </fieldset>
        <section>
            <asp:Button runat="server" Text="Submit" />
        </section>

        
    </form>
</body>
</html>
