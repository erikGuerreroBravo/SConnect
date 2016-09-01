using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Data.Linq;
namespace Sconnect.Handler
{
    /// <summary>
    /// Summary description for vizualizarFoto
    /// </summary>
    public class vizualizarFoto : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Int32 id;
            if (context.Request.QueryString["id"] != null)
                id = Convert.ToInt32(context.Request.QueryString["id"]);

            else
                throw new ArgumentException("No parameter specified");

            context.Response.ContentType = "image/jpeg";
            Stream strm = MostrarImagen(id);

            byte[] buffer = new byte[6096];
            int byteSeq = strm.Read(buffer, 0, 4096);

            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }


        }

        public Stream MostrarImagen(int _idUsuario)
        {
            try
            {

                //IRepositorioSegUsuario isegUsuario = new RepositorySegUsuario();
                //SegUsuario segUsuario = isegUsuario.GetUsaurioById(_idUsuario);
                System.Data.Linq.Binary fotoData = null;
                //fotoData = (Binary)segUsuario.foto;
               byte[] arreglo = fotoData.ToArray();
                return new MemoryStream(arreglo);
            }
            catch (Exception)
            {
                return null;
            }
        }



        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}