using System;
using System.Collections.Generic;
using System.Linq;
using System.Web; using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_LoginError(object sender, EventArgs e)
        {
            Label LoginErrorDetails;
            var login1 = this.Login1;
            LoginErrorDetails = (Label)login1.FindControl("LoginErrorDetails");

            //See if this user exists in the database
            MembershipUser userInfo = Membership.GetUser(login1.UserName);

            if (userInfo == null)
            {
                //The user entered an invalid username...
                LoginErrorDetails.Text = "Incorrect User Name or Password!";
            }
            else
            {
                //See if the user is locked out or not approved
                if (!userInfo.IsApproved)
                {
                    LoginErrorDetails.Text = "Your account has been disabled or has not yet been approved by the administrators. Please try again later...";
                }
                else if (userInfo.IsLockedOut)
                {
                    LoginErrorDetails.Text = "Your account has been locked out because of a maximum number of incorrect login attempts. You will NOT be able to login until you contact a administrator and have your account unlocked.";
                }
                else
                {
                    //The password was incorrect (don't show anything, the Login control already describes the problem)
                    LoginErrorDetails.Text = "Incorrect User Name or Password!";
                }
            }
        }
    }
}