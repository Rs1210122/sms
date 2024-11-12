using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Teacher : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Student.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
       protected void Button2_Click(object sender, EventArgs e)
       {    
        //save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into teacher values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record save')</script>");
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
               cmd.CommandText = "Update teacher set fname='" + TextBox2.Text + "',lname='" + TextBox3.Text + "',dob='" + TextBox4.Text + "',phone='" + TextBox5.Text + "',mobile='" + TextBox6.Text + "',status='" + TextBox7.Text + "',address='" + TextBox8.Text + "' where teacher_id='" + TextBox1.Text + "'";
               cmd.ExecuteNonQuery();
               Response.Write("<script> alert('Record update')</script>");
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
               cmd.CommandText = "Delete from teacher where teacher_id='" + TextBox1.Text + "'";
               cmd.ExecuteNonQuery();
               Response.Write("<script> alert('Record delete')</script>");
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
           SqlDataSource1.SelectCommand = "select * from teacher";
           GridView1.DataSourceID = "SqlDataSource1";
       }
       protected void Button6_Click(object sender, EventArgs e)
       {
           //particular search
           try
           {
               conn.Close();
               conn.Open();
               SqlCommand cmd = conn.CreateCommand();
               cmd.CommandText = "select * from teacher where teacher_id='" + TextBox1.Text + "'";
               SqlDataReader dr = cmd.ExecuteReader();
               while (dr.Read())
               {
                   TextBox1.Text = dr.GetValue(0).ToString();
                   TextBox2.Text = dr.GetValue(1).ToString();
                   TextBox3.Text = dr.GetValue(2).ToString();
                   TextBox4.Text = dr.GetValue(3).ToString();
                   TextBox5.Text = dr.GetValue(4).ToString();
                   TextBox6.Text = dr.GetValue(5).ToString();
                   TextBox7.Text = dr.GetValue(6).ToString();
                   TextBox8.Text = dr.GetValue(6).ToString();

               }
               SqlDataSource1.SelectCommand = "select * from teacher where teacher_id='" + TextBox1.Text + "'";
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
           TextBox5.Text = "";
           TextBox6.Text = "";
           TextBox7.Text = "";
           TextBox8.Text = "";
       }
}