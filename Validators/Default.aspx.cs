using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators
{

    public partial class Default : System.Web.UI.Page
    {
        protected void ageCheck_ServerValidate(object source, ServerValidateEventArgs args) {
            try {
                DateTime birthdate = DateTime.Parse(birthDateTxt.Text);
                int age = int.Parse(ageTxt.Text);

                if (birthdate.AddYears(age).Year.CompareTo(DateTime.Today.Year) == 0)
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }catch(Exception e) {
                args.IsValid = false;
            }
        }
    }
}
