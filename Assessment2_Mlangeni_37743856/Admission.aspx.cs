using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

//Mlangeni NF 37743856

namespace Assessment2_Mlangeni_37743856
{
    public partial class Admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Visible = false;
            txtName.Visible = false;
            lblSurname.Visible = false;
            txtSurname.Visible = false;
            lblNumber.Visible = false;
            txtNumber.Visible = false;
            lblEmail.Visible = false;
            txtEmail.Visible = false;
            lblStatus.Visible = false;
            btnInsert.Visible = false;
            btnDelete.Visible = false;

            all();
            //addItems();

            HttpCookie userInfoCookies = Request.Cookies["Details"];
            if (userInfoCookies != null && Session["activity"] != null)
            {
                lblDear.Text = "Dear applicant (" + userInfoCookies["Name"] + " " + userInfoCookies["Surname"] + "), your application for " + Session["activity"] + " was successful.";
            }
        }
        string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nomfu\Desktop\Assessment2_Mlangeni_37743856\Assessment2_Mlangeni_37743856\App_Data\Festival.mdf;Integrated Security=True";

        public SqlConnection connection;
        public DataSet dataSet;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;

        Default getDefault = new Default();

        public void all()
        {
            try
            {
                SqlCommand command;
                connection = new SqlConnection(conn);
                adapter = new SqlDataAdapter();
                dataSet = new DataSet();

                connection.Open();

                string sql = "SELECT * FROM Participants";

                command = new SqlCommand(sql, connection);
                adapter.SelectCommand = command;
                adapter.Fill(dataSet);

                GridView1.DataSource = dataSet;
                GridView1.DataBind();

                connection.Close();
            }
            catch (SqlException)
            {
                lblError.Text = "INVALID COLUMN NAME";
            }
        }

        public void addItems()
        {
            try
            {
                SqlCommand command;
                connection = new SqlConnection(conn);
                adapter = new SqlDataAdapter();
                dataSet = new DataSet();
                

                connection.Open();

                string sql = "SELECT * FROM Participants";

                command = new SqlCommand(sql, connection);
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    ListBox1.Items.Add(reader.GetValue(0) + "\t\t" + ". " + reader.GetValue(1) + "\t\t" + reader.GetValue(2) + "\t\t" + "---" + reader.GetValue(3));
                }

                connection.Close();
            }
            catch (SqlException)
            {
                lblError.Text = "INVALID COLUMN NAME";
            }
        }

        public void visible()
        {
            lblName.Visible = true;
            txtName.Visible = true;
            lblSurname.Visible = true;
            txtSurname.Visible = true;
            lblNumber.Visible = true;
            txtNumber.Visible = true;
            lblEmail.Visible = true;
            txtEmail.Visible = true;
            btnInsert.Visible = true;
            btnDelete.Visible = true;
            radNo.Visible = false;
        }

        protected void radYes_CheckedChanged(object sender, EventArgs e)
        {
            if (radYes.Checked)
            {
                visible();
            }
        }

        protected void radNo_CheckedChanged(object sender, EventArgs e)
        {
            if (radNo.Checked)
            {
                lblStatus.Visible = true;
                radYes.Visible = false;

                addItems();
                lblStatus.Text = "No participant has been added or removed!";
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            HttpCookie AddUserCookies = new HttpCookie("details");
            AddUserCookies["Name"] = txtName.Text;
            AddUserCookies["Surname"] = txtSurname.Text;
            AddUserCookies["Number"] = txtNumber.Text;
            AddUserCookies["Email"] = txtEmail.Text;

            Response.Cookies.Add(AddUserCookies);

            try
            {
                SqlCommand command;
                connection = new SqlConnection(conn);
                adapter = new SqlDataAdapter();
                dataSet = new DataSet();

                connection.Open();

                string sql = "INSERT INTO Participants(Name, Surname, PhoneNumber, EmailAddress) VALUES(@Name, @Surname, @Number, @Email)";

                command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@Name", txtName.Text);
                command.Parameters.AddWithValue("@Surname", txtSurname.Text);
                command.Parameters.AddWithValue("@Number", txtNumber.Text);
                command.Parameters.AddWithValue("@Email", txtEmail.Text);

                command.ExecuteNonQuery();

                connection.Close();
            }
            catch (SqlException)
            {
                lblError.Text = "INVALID FORMAT OF INFO";
            }

            all();
            addItems();
            visible();

            lblStatus.Visible = true;
            lblStatus.Text = "Participant with the name " + AddUserCookies["Name"] + " " + AddUserCookies["Surname"] + " has been successfully added!";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            HttpCookie AddUserCookies = new HttpCookie("details");
            AddUserCookies["Name"] = txtName.Text;
            AddUserCookies["Surname"] = txtSurname.Text;
            AddUserCookies["Number"] = txtNumber.Text;
            AddUserCookies["Email"] = txtEmail.Text;

            Response.Cookies.Add(AddUserCookies);
            
            try
            {
                SqlCommand command;
                connection = new SqlConnection(conn);
                adapter = new SqlDataAdapter();
                dataSet = new DataSet();

                connection.Open();

                string sql = "DELETE FROM Participants WHERE Name = '" + txtName.Text + "' AND PhoneNumber = '" + txtNumber.Text + "'";

                command = new SqlCommand(sql, connection);
                adapter.DeleteCommand = command;
                adapter.DeleteCommand.ExecuteNonQuery();

                connection.Close();
            }
            catch (SqlException)
            {
                lblError.Text = "INVALID FORMAT OF INFO";
            }

            //addItems();

            lblStatus.Visible = true;
            lblStatus.Text = "Participant with the name " + AddUserCookies["Name"] + " " + AddUserCookies["Surname"] + " has been successfully removed!";
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            HttpCookie AddUserCookies = new HttpCookie("details");
            AddUserCookies["Name"] = txtName.Text;
            AddUserCookies["Surname"] = txtSurname.Text;
            AddUserCookies["Number"] = txtNumber.Text;
            AddUserCookies["Email"] = txtEmail.Text;

            Response.Cookies.Add(AddUserCookies);

            Response.Redirect("Confirmation.aspx");
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command;
                connection = new SqlConnection(conn);
                adapter = new SqlDataAdapter();
                dataSet = new DataSet();

                connection.Open();

                string sql = "SELECT * FROM Participants WHERE Name = '" + txtSearch.Text + "'";

                command = new SqlCommand(sql, connection);
                adapter.SelectCommand = command;
                adapter.Fill(dataSet);

                GridView1.DataSource = dataSet;
                GridView1.DataBind();

                connection.Close();
            }
            catch (SqlException)
            {
                lblError.Text = "INVALID COLUMN NAME";
            }
        }
    }
}