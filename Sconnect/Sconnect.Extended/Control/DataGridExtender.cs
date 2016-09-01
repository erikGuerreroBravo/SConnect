using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Collections;

namespace Sconnect.Extended.Control
{
  public static class DataGridExtender
    {
        public static void getTable(this GridView _control,IList lista)
        {
            _control.DataSource = lista;
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
