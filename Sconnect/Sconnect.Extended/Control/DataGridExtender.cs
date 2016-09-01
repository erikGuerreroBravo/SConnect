using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace Sconnect.Extended.Control
{
  public class DataGridExtender
    {
        public static void(this GridView _contral, IList _lista)
        {
            _control.DataSource = _lista;
            _control.DataBind();
            _control.EmptyDataText = "No Existen Registros de Esta Consulta";
        }

    public static void getTable<T>(this GridView _control, List<T> _lista) where T : class
    {
        _control.DataSource = _lista;
        _control.DataBind();
        _control.EmptyDataText = "No Existen Registros de Esta Consulta";
    }

}
}
