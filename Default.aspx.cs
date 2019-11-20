using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarimexCars
{
    public partial class _Default : Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarimaxCarSalesConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            RegularExpressionValidator_SellerName.Visible = false;
        }

        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            _writeToDB();
        }

        private void _writeToDB()
        {
            myConnection.Open();
            string query = "INSERT INTO [dbo].[VehicleAndSellerDetails] ([sellerName] ,[address] ,[city] ,[phoneNumber] ,[emailAddress] ,[make] ,[model] ,[year]) VALUES (@sellerName, @address, @city, @phoneNumber, @emailAddress, @make, @model, @year)";// "Insert into [dbo].[ceasar] (cipher) Values (@cipher)";
            SqlCommand insertCommand = new SqlCommand(query, myConnection);
            insertCommand.Parameters.AddWithValue("@sellerName", SellerName_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@address", Address_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@city", City_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@phoneNumber", Ph_Number.Text);
            insertCommand.Parameters.AddWithValue("@emailAddress", Email_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@make", VehicleMake_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@model", VehicleModel_TextBox.Text);
            insertCommand.Parameters.AddWithValue("@year", VehicleYear_TextBox.Text);
            insertCommand.ExecuteNonQuery();
            myConnection.Close();
        }
    }
}
