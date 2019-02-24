using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NaikWebProject2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtLength.Text = "";
            txtWidth.Text = "";
            Label2.Text = "";
            Label4.Text = "";
        }
        protected void Calculate_Click(object sender, EventArgs e)
        {
            string name;
            name = txtName.Text;
            int length = 0;
            int width = 0;
            try
            {
                int one = Convert.ToInt32(txtLength.Text);

                if (one > 9999)
                {
                    throw new OverflowException();
                }
                length = one;
            }
            catch (FormatException)
            {
                Response.Write(@"<script language='javascript'>alert('Format Exception has occured enter values for length in numbers only')</script>");
                Label2.Text = "";
                txtLength.Text = "";
            }
            catch (OverflowException)
            {
                Response.Write(@"<script language='javascript'>alert('OUT OF RANGE exception has occured enter Length less then 10000')</script>");
                Label2.Text = "";
                txtLength.Text="";
            }

            try
            {
                int two = Convert.ToInt32(txtWidth.Text);

                if (two > 9999)
                {
                    throw new OverflowException();
                }
                width = two;
            }
            catch (FormatException)
            {
                Response.Write(@"<script language='javascript'>alert('Format Exception has occured enter values for width in numbers only')</script>");
                Label2.Text = "";
                txtWidth.Text = "";
            }
            catch (OverflowException)
            {
                Response.Write(@"<script language='javascript'>alert('OUT OF RANGE exception has occured enter Width less then 10000')</script>");
                Label2.Text = "";
                txtWidth.Text = "";
            }
            if (length == 0 | width == 0)
            {
            }
            else
            {
                int area;

                area = length * width;

                Label2.Text = "Hi " + name + " your answer is: " + area;
                string history = "<br />" + "Length:- " + txtLength.Text + " " + "Width:- " + txtWidth.Text + " " + "Area:- " + area + " ";
                Label4.Text = Label4.Text + history;
            }
        }

        
    }


}
