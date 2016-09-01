using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;

namespace Sconnect.Factory.Data
{
    public interface IGenericContext<T>
    {
        List<T> ObtenerEntidades();
        List<T> BuscarPor(Expression<Func<T, bool>> predicado);
        void Agregar(T entidad);
        void Borrar(T entidad);
        void Actualizar(T entidad);
        void Guardar();
    }
}
