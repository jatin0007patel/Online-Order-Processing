using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class logout : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        obj.savedata("delete from cart where sess_id='" + Session.SessionID + "'");

        Response.Redirect("Login.aspx");
    }
}
