using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.SessionState;
using System.Text;
using System.Threading.Tasks;

namespace Sconnect.Extended.Session
{
    public class CtrlSession
    {
        public void ValidaSession(System.Web.UI.Page _page)
        {
            HttpSessionState session = _page.Session;

            if (session == null)
            {
                _page.Response.Redirect("" ,true);
            }
            else
            {
                if (session["manager"] == null)
                {
                    _page.Response.Redirect("", true);
                }
            }

        }
    }
}
