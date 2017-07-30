using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class reg : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CityDrop.DataSource = obj.calldata("select * from city");
            CityDrop.DataTextField = "city_name";
            CityDrop.DataValueField = "city_id";
            CityDrop.DataBind();
            CityDrop.Items.Insert(0, "");

            
        
            SecQuesDropDown.DataSource = obj.calldata("select * from Question");
            SecQuesDropDown.DataTextField = "que_name";
            SecQuesDropDown.DataValueField = "que_id";
            SecQuesDropDown.DataBind();
            SecQuesDropDown.Items.Insert(0, "");
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds=new DataSet();
        ds=obj.calldata("Select * from login where user_name='"+uname.Text+"'");
        if(ds.Tables[0].Rows.Count>=1)
        {
        Response.Write("<script>alert('User Name Is Alerady Exits!,Try Again.')</script>");
        }
        else
        {
        obj.savedata("insert into reg(f_name,m_name,l_name,address,city_name,pin_code,phone_no,email,user_name) values('" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + Addresstxt.Text + "'," + CityDrop.SelectedValue + "," + txtpin.Text + "," + txtphone.Text + ",'" + emailtxt.Text + "','"+uname.Text +"')");
        ds = obj.calldata("select max(user_id) from reg");
        obj.savedata("insert into login(user_id,user_name,password,type,que_id,seq_ans) values("+ds.Tables[0].Rows[0].ItemArray[0]+",'" + uname.Text + "','" + passwordtxt.Text + "','User',"+SecQuesDropDown.SelectedValue +" , '"+ Anstxt.Text +"')");
        Response.Write("<script>alert('Register Successfuly')</script>");
            

        }
        fname.Text = "";
        mname.Text = "";
        lname.Text = "";
        Addresstxt.Text = "";
        txtpin.Text = "";
        txtphone.Text = "";
        emailtxt.Text = "";
        uname.Text = "";
        passwordtxt.Text = "";
        cpasstxt.Text = "";
        Anstxt.Text = "";
        
    }
}
