using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Mlangeni NF 37743856

namespace Assessment2_Mlangeni_37743856
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string date = lblDate.Text = Calendar1.SelectedDate.ToLongDateString().ToString();
            HttpCookie userInfoCookies = Request.Cookies["Details"];
            HttpCookie AddUserCookies = Request.Cookies["details"];
            if (userInfoCookies != null && AddUserCookies != null)
            {
                lblThankYou.Text = "We'd like to thank " + userInfoCookies["Surname"] + " and " + AddUserCookies["Surname"] + " for your application submission";
                lblContacted.Text = "An SMS will be sent to you 7 days prior your selected date: " + date + "to:";
                lblContacts.Text = userInfoCookies["Number"] + "\\" + AddUserCookies["Number"];
            }

            lblInquiries.Text = "For any inquiries contact:";
            lblNum.Text = "(011)-2345-678";

            Calendar1.SelectedDate = DateTime.Today;
        }

        protected void btnEnd_Click(object sender, EventArgs e)
        {
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate.DayOfWeek.ToString() == "Saturday")
            {
                lblDate.Text = Calendar1.SelectedDate.AddDays(2).ToLongDateString().ToString();
            }
            else if(Calendar1.SelectedDate.DayOfWeek.ToString() == "Sunday")
            {
                lblDate.Text = Calendar1.SelectedDate.AddDays(1).ToLongDateString().ToString();
            }
        }
    }
}