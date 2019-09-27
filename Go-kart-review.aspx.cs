using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01363715___Assignment_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                //Re-validates the code on the server side. can never be too careful!
                Page.Validate();

                //If everything seems okay, we can proceed.
                if (Page.IsValid)
                {
                    string Reviewer_Name = reviewer_name.Text.ToString();
                    string Reviewer_Mail = reviewer_mail.Text.ToString();
                    string Reviewer_Rating = reviewer_rating.Text.ToString();
                    string Review_Title = review_title.Text.ToString();
                    string Review = review.Text.ToString();
                    string Visit_Time = visit_time.SelectedValue.ToString();
                    string Visit_Length = visit_length.SelectedValue.ToString();
                    string Suggest = suggest.SelectedValue.ToString();
                    string Food_Available = food_available.SelectedValue.ToString();
                    string Public_Trans = public_trans.SelectedValue.ToString();

                    submitbox.InnerHtml = "Thank you for RSVPing! Your Summary is as follows: <br>";

                    submitbox.InnerHtml += "Name: " + Reviewer_Name + "<br>";
                    submitbox.InnerHtml += "Email-ID: " +Reviewer_Mail + "<br>";
                    submitbox.InnerHtml += "Rating " +Reviewer_Rating + "<br>";
                    submitbox.InnerHtml += "Title: " + Review_Title + "<br>";
                    submitbox.InnerHtml += "Review: " + Review + "<br>";
                    submitbox.InnerHtml += "When did you visit ? " + Visit_Time + "<br>";
                    submitbox.InnerHtml += "Length of your visit ? " + Visit_Length + "<br>";
                    submitbox.InnerHtml += "Is this a place or activity you would suggest the families with kids ?  " + Suggest + "<br>";
                    submitbox.InnerHtml += "Is there food available at this place ? " + Food_Available + "<br>";
                    submitbox.InnerHtml += "Is this attraction available using public transportation ? " + Public_Trans + "<br>";
                    Double rating = 0;

                    if(Visit_Length == "Less than 1 hour")
                    {
                        rating = 0.50;
                    }
                    else if(Visit_Length == "1-2 hours")
                    {
                        rating = 1;
                    }
                    else if (Visit_Length == "2-3 hours")
                    {
                        rating = 1.50;
                    }
                    else if (Visit_Length == "more than 3 hour")
                    {
                        rating = 2;
                    }
                    else
                    {

                    }

                    if(Suggest == "yes")
                    {
                        rating += 1;
                    }

                    if (Food_Available == "yes")
                    {
                        rating += 1;
                    }

                    if (Public_Trans == "yes")
                    {
                        rating += 1;
                    }

                    /*
                     value taken from rating that reviewer gave 
                     */
                    rating += Convert.ToInt32(Reviewer_Rating);

                    submitbox.InnerHtml += "Overall Rating: " +Convert.ToInt32(rating)/2;
                }
            }

        }
    }
}