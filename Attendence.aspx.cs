using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Attendence : System.Web.UI.Page
{

    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn=new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Student.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
            conn.Open();
            if (!Page.IsPostBack == true)
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from student";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                }
                conn.Close();     
        }
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
       //save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into attendence values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record save')</script>");
            GridView1.DataSourceID = "SqlDataSource1";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //delete the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Delete from attendence where student_id='"+TextBox2.Text+"'";
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record delete')</script>");
            GridView1.DataSourceID = "SqlDataSource1";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
    
        //update the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update attendence set student_id='"+TextBox2.Text+"',status='"+TextBox3.Text+"',remarks='"+TextBox4.Text+"' where date='"+TextBox1.Text+"'";
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record update')</script>");
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from attendence";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        // Particular search
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from attendence where date='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
            }
            SqlDataSource1.SelectCommand = "select * from attendence where date='" + TextBox1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList1.SelectedValue.ToString();

    }
}