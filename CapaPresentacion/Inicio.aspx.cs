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
        public static string ChatBotPrueba(string pregunta)
        {

            try
            {
                if (string.IsNullOrEmpty(pregunta))
                {
                    return "Debe ingresar una pregunta.";
                }
                var respChatbot = Utilidadesj.GetInstance().RespuestaChatBot(pregunta);

                return respChatbot;


            }
            catch (Exception)
            {
                return "Tu pregunta está fuera de nuestro modelo. Intentá con otra o reformulá tu consulta.";
            }
        }

    }
}