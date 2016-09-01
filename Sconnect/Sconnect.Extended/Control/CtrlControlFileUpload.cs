using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI.WebControls;

namespace Sconnect.Extended.Control
{
  public  class CtrlControlFileUpload
    {
        ///<summary>
        /// este metodo valida que exista almenos un elemento para subir
        ///</summary>
        /// <param name = "_control"></param>
        /// <returns></returns>

        private bool validarArchivoContenido(FileUpload _control)
        {
            bool respuesta = false;

            try
            {
                if (_control.HasFile)
                {
                    respuesta = true;
                    return respuesta;

                }
                else
                {
                    Mensaje = Recursos.MES_NINGUN_ARCHIVO_SELECCIONADO;
                    return respuesta;
                }
            }
            catch (Exception ex)
            {
                string mensajeErr = ex.Message;
                return respuesta;
            }
        }

        /// <summary>
        /// verificamos si la ruta del archivo se encuentra en el servidor
        /// </summary>
        /// <returns></returns>

        public bool verificarRutaDeArchivo()
        {
            //ruta virtual del server
            string rutaVirtual = HttpContext.Current.Server.MapPath(Recursos.RUTA_DIRECTORIO);
            bool respuesta = false;
            try
            {
                if (Directory.Exists(rutaVirtual)) //directory biene de system.io
                {
                    respuesta = true;
                    Mensaje = rutaVirtual;
                }
                return respuesta;
            }
            catch (System.IO.IOException ex)
            {
                //cambiar por resource
                string mensajeErr = ex.Message;
                mensajeErr = Recursos.MES_ERROR_CREAR_ARCHIVO;
                return respuesta;
            }
        }

        public bool UploadArchivo(FileUpload _control)
        {
            bool respuesta = false;

            try
            {
                if (this.validarArchivoContenido(_control))
                {
                    if (this.verificarRutaDeArchivo())
                    {
                        string rutaCompleta = crearRutaDeArchivo(_control.FileName);
                        if (!File.Exists(rutaCompleta))
                        {
                            _control.SaveAs(rutaCompleta);
                            this.Path = rutaCompleta;
                            respuesta = true;
                        }
                    }

                }
            }
            catch (FileLoadException Fexception)
            {
                string mensajeErr = Fexception.Message;
            }
            return respuesta;
        }

        private string crearRutaDeArchivo(string _ruta)
        {
            try
            {
                string servidorPath = HttpContext.Current.Server.MapPath(Recursos.RUTA_DIRECTORIO);
                return servidorPath + "/" + _ruta;
            }
            catch (Exception)
            {

                throw;
            }
        }

        #region Propiedades

        public string Mensaje { get; set; }
        public string Path { get; set; }

        #endregion


    }
}
