using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace CapaPresentacion
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string CargarModelo()
        {
            try
            {
                // Instanciamos el servicio
                var geminiSrv = new GeminiFileService();
                // 1. Ruta de tu PDF en el servidor
                string rutaPdf = HttpContext.Current.Server.MapPath("/ConaviDoc.pdf");
                // 1. Subimos el PDF
                string uriDelPdf = geminiSrv.SubirPdf(rutaPdf);
                if (string.IsNullOrEmpty(uriDelPdf))
                {
                    return "Ocurrio un error al obtener uri.";
                }

                return uriDelPdf;
            }
            catch (Exception ex)
            {
                return $"Ocurrió un error: {ex.Message}";
            }
        }

        [WebMethod]
        public static string ChatBotPruebaPDF(string pregunta)
        {
            try
            {
                if (string.IsNullOrEmpty(pregunta)) return "Debe ingresar una pregunta.";

                // Instanciamos el servicio
                var geminiSrv = new GeminiFileService();

                var url = "sss";

                string respuesta = geminiSrv.PreguntarAlPdfNew(pregunta, url);
                return respuesta;
            }
            catch (Exception ex)
            {
                return $"Ocurrió un error en la prueba: {ex.Message}";
            }
        }

        [WebMethod]
        public static string ChatBotPrueba(string pregunta)
        {

            try
            {
                if (string.IsNullOrEmpty(pregunta))
                {
                    return "Debe ingresar una pregunta.";
                }
                var respChatbot = Utilidadesj.GetInstance().RespuestaChatBotNew(pregunta);

                return respChatbot;


            }
            catch (Exception)
            {
                return "Tu pregunta está fuera de nuestro modelo. Intentá con otra o reformulá tu consulta.";
            }
        }

    }
}