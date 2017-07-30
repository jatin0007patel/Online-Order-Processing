using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class f_pass : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        drpsec.DataSource = obj.calldata("select * from Question");
        drpsec.DataTextField = "que_name";
        drpsec.DataValueField = "que_id";
        drpsec.DataBind();
    }
    protected void getpwd_Click(object sender, EventArgs e)
    {
        // Dim ds As New DataSet
        //ds = obj.calldata("select password from login l,Question s where l.user_name='" + txtuname.Text + "' and s.que_name='" + drpsecque.SelectedItem.Text + "' and l.seq_ans='" + txtans.Text + "'")
        //If (ds.Tables(0).Rows.Count < 1) Then
        //    Response.Write("<script>alert('username or question or answer is not match')</script>")
        //Else
        //    Response.Write("<script>alert('" + ds.Tables(0).Rows(0).ItemArray(0).ToString() + "')</script>")
        //End If
        DataSet ds = new DataSet();
        ds = obj.calldata("select password from login a,Question b where a.user_name='"+txtunm.Text +"' and b.que_name='"+drpsec.SelectedItem.Text +"' and a.seq_ans='"+txtsecans.Text +"'");
        if (ds.Tables[0].Rows.Count < 1)
        {
            Response.Write("<script>alert('username or question or answer is not match')</script>");
        }
        else
        {
            Response.Write("<script>alert('" + ds.Tables[0].Rows[0].ItemArray[0].ToString() + "')</script>");
        }
    }
}