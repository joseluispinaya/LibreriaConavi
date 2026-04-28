using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Text.Json;

namespace CapaPresentacion
{
    public class Utilidadesj
    {
        private static readonly string OpenAIApiKey = ConfigurationManager.AppSettings["OpenAIApiKey"];

        #region "PATRON SINGLETON"
        private static Utilidadesj _instancia = null;

        private Utilidadesj()
        {

        }

        public object JsonConvert { get; private set; }

        public static Utilidadesj GetInstance()
        {
            if (_instancia == null)
            {
                _instancia = new Utilidadesj();
            }
            return _instancia;
        }
        #endregion

        public string RespuestaChatBotNew(string pregunta)
        {
            var url = "https://api.openai.com/v1/chat/completions";
            try
            {
                if (string.IsNullOrWhiteSpace(OpenAIApiKey)) return "Modelo no disponible.";

                // 1. Leer el nuevo archivo JSON
                string ruta = HttpContext.Current.Server.MapPath("/conavis.json");
                if (!File.Exists(ruta)) return "Problema al acceder al catálogo.";

                string jsonx = File.ReadAllText(ruta);
                ConaviDatabaseV2 data = JsonSerializer.Deserialize<ConaviDatabaseV2>(jsonx);

                // 2. Construir el contexto inyectando todo (Info, Servicios y Productos)
                StringBuilder contextoBuilder = new StringBuilder();

                // Agregar Info General
                var info = data.libreria_conavi_v2.informacion_general;
                contextoBuilder.AppendLine($"[DATOS DE LA LIBRERÍA]");
                contextoBuilder.AppendLine($"- Nombre: {info.nombre} | Ubicación: {info.ubicacion} | Contacto: {info.telefono}");

                // Agregar Servicios
                contextoBuilder.AppendLine($"\n[SERVICIOS QUE OFRECEMOS]");
                foreach (var serv in data.libreria_conavi_v2.servicios)
                {
                    contextoBuilder.AppendLine($"- {serv}");
                }

                // Agregar Productos
                contextoBuilder.AppendLine($"\n[PRODUCTOS DISPONIBLES]");
                foreach (var prod in data.libreria_conavi_v2.productos)
                {
                    contextoBuilder.AppendLine($"- {prod.nombre} | Bs. {prod.precio_bs} | {prod.descripcion}");
                }

                // 3. El Súper Prompt con las reglas que definimos
                var systemInstruction = $@"Eres el Asistente Virtual oficial de la {info.nombre}, ubicada en Riberalta. 
                    Tu trabajo es atender a los clientes de forma amable, natural y como un excelente vendedor.
            
                    REGLAS ESTRICTAS:
                    1. Utiliza ÚNICAMENTE la información proporcionada abajo (productos, precios, servicios, ubicación) para responder.
                    2. NUNCA menciones las palabras 'documento', 'JSON', 'archivo' ni 'base de datos'. Actúa como si conocieras toda la tienda de memoria.
                    3. Si el cliente te saluda, devuélvele el saludo cordialmente y ofrécele ayuda.
                    4. Si el cliente pregunta por algo que no ofreces, discúlpate amablemente diciendo que por el momento no cuentan con ese artículo o servicio.
                    5. EVITA EL VACIADO DE DATOS: Si hacen una pregunta general ('¿Qué venden?', 'Muéstrame tu catálogo'), NUNCA listes todos los productos. Menciona que ofrecen papelería, tecnología y servicios de imprenta, da un par de ejemplos rápidos y pregúntale qué busca exactamente.
                    6. Usa emojis (📚, 🎨, 🖨️). Resalta en **negrita** los nombres de los productos y los precios.

                    INFORMACIÓN DE LA TIENDA Y CATÁLOGO:
                    {contextoBuilder}";

                // 4. Armar el request para OpenAI
                var requestBody = new
                {
                    model = "gpt-4o-mini",
                    messages = new[]
                    {
                        new { role = "system", content = systemInstruction },
                        new { role = "user", content = pregunta }
                    },
                    temperature = 0.3 // Baja temperatura para que sea preciso con los precios
                };

                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("Authorization", $"Bearer {OpenAIApiKey}");
                    var content = new StringContent(JsonSerializer.Serialize(requestBody), Encoding.UTF8, "application/json");

                    var response = client.PostAsync(url, content).GetAwaiter().GetResult();

                    if (!response.IsSuccessStatusCode)
                    {
                        return "Tuve un pequeño problema técnico al consultar el inventario. ¿Podrías intentar de nuevo?";
                    }

                    var responseString = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();

                    using (JsonDocument doc = JsonDocument.Parse(responseString))
                    {
                        string respuestaChatbot = doc.RootElement
                                                   .GetProperty("choices")[0]
                                                   .GetProperty("message")
                                                   .GetProperty("content")
                                                   .GetString()
                                                   .Trim();

                        // Devolvemos el string puro. Tu JavaScript con el Regex y CSS se encargará de las negritas y saltos de línea.
                        return respuestaChatbot;
                    }
                }
            }
            catch (Exception)
            {
                return "Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
            }
        }

        public string RespuestaChatBot(string pregunta)
        {
            var url = "https://api.openai.com/v1/chat/completions";
            try
            {
                if (string.IsNullOrWhiteSpace(OpenAIApiKey))
                {
                    return "Modelo inteligente no disponible. Verifique la configuración.";
                }

                // Leer archivo
                string ruta = HttpContext.Current.Server.MapPath("/libreria.json");

                if (!File.Exists(ruta))
                {
                    return "Tuvimos un problema al acceder al catálogo. Por favor, intentá nuevamente más tarde.";
                }

                string jsonx = File.ReadAllText(ruta);

                // 1. CAMBIO AQUÍ: Usamos JsonSerializer nativo
                PromptDatoz data = JsonSerializer.Deserialize<PromptDatoz>(jsonx);

                // Construir catálogo en texto
                StringBuilder catalogoTexto = new StringBuilder();
                foreach (var prod in data.libreria_conavi_db.productos)
                {
                    catalogoTexto.AppendLine($"- {prod.nombre} | Precio: Bs. {prod.precio_bs} | Descripción: {prod.descripcion}");
                }

                var contexto = $@"Eres el Asistente Virtual oficial de 'Librería CONAVI'. Tu trabajo es ayudar a los clientes a encontrar productos, darles precios y sugerirles materiales.
        
                    REGLAS ESTRICTAS:
                    1. Sé muy amable, profesional y usa emojis (👋, 📚, 🎨, ✏️).
                    2. Basa tus respuestas ÚNICA Y EXCLUSIVAMENTE en el siguiente catálogo de productos. Si te piden algo que no está en la lista, pide disculpas y diles que no lo tenemos por el momento.
                    3. Nunca inventes precios ni productos.
                    4. Si te saludan, devuelve el saludo cordialmente antes de ofrecer ayuda.
                    5. Mantén tus respuestas concisas (máximo 3 párrafos cortos).

                    CATÁLOGO DE PRODUCTOS ACTUAL:
                    {catalogoTexto}";

                var requestBody = new
                {
                    model = "gpt-4o-mini",
                    messages = new[]
                    {
                        new { role = "system", content = contexto },
                        new { role = "user", content = pregunta }
                    },
                    temperature = 0.3
                };

                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("Authorization", $"Bearer {OpenAIApiKey}");

                    // 2. CAMBIO AQUÍ: Usamos JsonSerializer.Serialize
                    var content = new StringContent(JsonSerializer.Serialize(requestBody), Encoding.UTF8, "application/json");

                    var response = client.PostAsync(url, content).GetAwaiter().GetResult();

                    if (!response.IsSuccessStatusCode)
                    {
                        return "Tuve un pequeño problema técnico al consultar el inventario. ¿Podrías intentar de nuevo?";
                    }

                    var responseString = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();

                    // 3. CAMBIO AQUÍ: Navegamos por el JSON de forma segura usando JsonDocument en lugar de 'dynamic'
                    using (JsonDocument doc = JsonDocument.Parse(responseString))
                    {
                        // Entramos a: json.choices[0].message.content
                        string respuestaChatbot = doc.RootElement
                                                   .GetProperty("choices")[0]
                                                   .GetProperty("message")
                                                   .GetProperty("content")
                                                   .GetString()
                                                   .Trim();

                        //return respuestaChatbot.Replace("\n", "<br>");
                        return respuestaChatbot;
                    }
                }
            }
            catch (Exception)
            {
                // Opcional: Imprimir el ex.Message en consola o log para debuggear si algo falla
                return "Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
            }
        }

    }
}