using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = obj.calldata("select * from login where user_name='"+Unametxt.Text+"' and password='"+passtxt.Text+"'");
        if (ds.Tables[0].Rows.Count >= 1)
        {
            Session["uname"] = Unametxt.Text;
            if (ds.Tables[0].Rows[0].ItemArray[4].ToString() == "Admin")
            {
                Response.Redirect("Admin/Admin_home.aspx");


            }
            else
            {
                Session["rid"] = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                Response.Redirect("User/User_home.aspx");
            }
          
        }
        else
        {
            Response.Write("<script>alert('UserName OR Password is Incorrect')</script>");
        }

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("f_pass.aspx");
    }
}
