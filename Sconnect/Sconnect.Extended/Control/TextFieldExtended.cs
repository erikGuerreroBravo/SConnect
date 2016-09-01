using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace Sconnect.Extended.Control
{
    public static class TextFieldExtended
    {
        //obtiene el valor de un textfield y lo convierte en un valod double
        public static double getTextFieldDouble(this TextBox _control)
        {
            return double.Parse(_control.Text);
        }

        public static DateTime getTextFieldDataTime(this TextBox _control)
        {
            return DateTime.Parse( _control.Text);
        }

        public static int getTextFieldInt(this TextBox _control)
        {
            return int.Parse(_control.Text);
        }


    }
}
