using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Mlangeni NF 37743856

namespace Assessment2_Mlangeni_37743856
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radSinging.Checked)
            {
                Session["activity"] = "Singing";
            }
            else if (radDancing.Checked)
            {
                Session["activity"] = "Dancing";
            }
            else if (radDrawing.Checked)
            {
                Session["activity"] = "Drawing";
            }
            else if (radPainting.Checked)
            {
                Session["activity"] = "Painting";
            }
            else if (radSculpting.Checked)
            {
                Session["activity"] = "Sculpting";
            }
            else if (radDrama.Checked)
            {
                Session["activity"] = "Drama";
            }
            else if (radPoetry.Checked)
            {
                Session["activity"] = "Poetry";
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookies = new HttpCookie("Details");
            userInfoCookies["Name"] = txtName.Text;
            userInfoCookies["Surname"] = txtSurname.Text;
            userInfoCookies["Number"] = txtNumber.Text;
            userInfoCookies["Email"] = txtEmail.Text;

            Response.Cookies.Add(userInfoCookies);

            Response.Redirect("Admission.aspx");
        }
    }
}