using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;
using System.Linq.Expressions;

namespace Sconnect.Factory.Data
{
    /// <summary>
    /// declaramos nuetsra clase generica que tiene por nombre DcContext
    /// </summary>
    /// <typeparam name="C">referencia a un contexto</typeparam>
    /// <typeparam name="T">referencia a una clase</typeparam>
    public class DcContext<C,T>: IGenericContext<T> where T:class where C: DataContext, new() 
    {
        //creamos la referencia del contexto creando un objeto
        private C _contexto = new C();

        /// <summary>
        /// declaramos la propiedad del contexto dentro de la clase
        /// </summary>
        public C Contexto
        {
            get { return _contexto; }
            set { _contexto = value; }
        }

        public List<T> ObtenerEntidades()
        {
            List<T> query = _contexto.GetTable<T>().ToList<T>();
            return query;
            
        }
        public List<T> BuscarPor(Expression<Func<T, bool>> predicado)
        {
            List<T> query = _contexto.GetTable<T>().Where(predicado.Compile()).ToList<T>();
            return query;
        }
        public void Agregar(T entidad)
        {
            _contexto.GetTable<T>().InsertOnSubmit(entidad);
        }
        public void Borrar(T entidad)
        {
            _contexto.GetTable<T>().DeleteOnSubmit(entidad);
        }
        public void Actualizar(T entidad)
        {
            _contexto.SubmitChanges();
        }
        public void Guardar()
        {
            _contexto.SubmitChanges();
            _contexto.Refresh(RefreshMode.KeepCurrentValues);
        }


    }
}
