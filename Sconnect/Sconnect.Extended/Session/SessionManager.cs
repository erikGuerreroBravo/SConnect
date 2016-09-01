using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sconnect.Extended.Session
{
    public class SessionManager
    {
        private Hashtable parametros;
        public int IdUsiario { set; get; }

        public Hashtable Parametros
        {
            get
            {
                if (parametros == null )
                {
                    parametros = new Hashtable();
                }
                return parametros;
            }
            set { parametros = value; }
        }
    }
}
