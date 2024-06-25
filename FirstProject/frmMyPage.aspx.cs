using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FirstProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        readonly SqlConnection con =
            new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString());

        protected void Page_Init(object sender, EventArgs e)
        {
            ClientScriptManager cs = Page.ClientScript;
            foreach (GridViewRow row in GridView1.Rows) {
                Button btnEdit = (Button)row.FindControl("BtnEdit");
                Button btnDelete = (Button)row.FindControl("BtnDelete");
                if (btnEdit != null) {
                    cs.RegisterForEventValidation(btnEdit.UniqueID, btnEdit.CommandArgument);
                }
                if (btnDelete != null) {
                    cs.RegisterForEventValidation(btnDelete.UniqueID, btnDelete.CommandArgument);
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e) {
            this.LoadDataIntoGridView1();
        }

        protected void LoadDataIntoGridView1() {
            try {
                this.con.Open();
                SqlCommand sc = new SqlCommand("select * from student", this.con);
                GridView1.DataSource = sc.ExecuteReader();
                GridView1.DataBind();
            } catch(Exception e) {
                Console.WriteLine(e.Message);
            } finally {
                this.con.Close();
            }
        }
       
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string studentId = ((Button)GridView1.Rows[e.RowIndex].FindControl("BtnDelete")).CommandArgument;
            try
            {
                this.con.Open();
                SqlCommand sc = new SqlCommand("delete from student where id = " + studentId, this.con);
                GridView1.DataSource = sc.ExecuteReader();
                GridView1.DataBind();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }
            finally
            {
                this.con.Close();
                this.LoadDataIntoGridView1();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}