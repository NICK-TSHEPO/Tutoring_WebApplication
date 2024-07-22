using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MogotlaneNick_43230350_Assessment_2_Practical
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            
            Response.Redirect("Operations.aspx");   //Redirecting to the operation web form to show the user that student was added
        }
    }
}