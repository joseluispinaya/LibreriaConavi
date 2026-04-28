using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Web;

namespace CapaPresentacion
{
    public class GeminiFileService
    {
        private static readonly string _apiKey = ConfigurationManager.AppSettings["GeminiApiKey"];
        private readonly HttpClient _client;

        public GeminiFileService()
        {
            _client = new HttpClient();

            // ¡VITAL EN .NET 4.7! Fuerza la conexión a usar TLS 1.2 (Requerido por Google)
            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
        }

        // MÉTODO SÍNCRONO: Ya no dice "async Task<string>"
        public string SubirPdf(string rutaFisicaPdf)
        {
            string url = $"https://generativelanguage.googleapis.com/upload/v1beta/files?key={_apiKey}";
            byte[] fileBytes = File.ReadAllBytes(rutaFisicaPdf);

            // TRUCO ANTI-CONGELAMIENTO: Obligamos a ejecutar esto fuera del hilo principal de ASP.NET
            return Task.Run(async () =>
            {
                using (var request = new HttpRequestMessage(HttpMethod.Post, url))
                {
                    // Cabecera especial que pide Google para subidas
                    request.Headers.Add("X-Goog-Upload-Protocol", "multipart");

                    // Creamos el contenedor "Multipart"
                    var multipartContent = new MultipartContent("related", "gemini_boundary");

                    // 1. Parte de Metadatos (Para que Gemini sepa cómo se llama el archivo)
                    var metadataJson = "{\"file\": {\"display_name\": \"Catalogo_Libreria_Conavi_Abril\"}}";
                    var metadataContent = new StringContent(metadataJson, Encoding.UTF8, "application/json");
                    multipartContent.Add(metadataContent);

                    var fileContent = new ByteArrayContent(fileBytes);
                    fileContent.Headers.ContentType = new MediaTypeHeaderValue("application/pdf");
                    multipartContent.Add(fileContent);

                    request.Content = multipartContent;

                    // Enviamos la petición a Google
                    var response = await _client.SendAsync(request);
                    var responseString = await response.Content.ReadAsStringAsync();

                    if (!response.IsSuccessStatusCode)
                    {
                        throw new Exception($"Error subiendo archivo: {responseString}");
                    }

                    // Extraemos la URI del archivo usando System.Text.Json
                    using (var doc = JsonDocument.Parse(responseString))
                    {
                        return doc.RootElement.GetProperty("file").GetProperty("uri").GetString();
                    }
                }
            }).GetAwaiter().GetResult(); // Esperamos el resultado de forma segura
        }

        public string PreguntarAlPdfNew(string pregunta, string fileUri)
        {
            // Solo cambiamos '1.5' por '2.5' en la URL
            string url = $"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key={_apiKey}";

            // ... parte inicial del método ...

            var requestBody = new
            {
                system_instruction = new
                {
                    parts = new[]
                    {
                        new
                        {
                            text = @"Eres el Asistente Virtual oficial de la Librería CONAVI, ubicada en Riberalta. 
                                    Tu trabajo es atender a los clientes de forma amable, natural y como un excelente vendedor.
                            
                                    REGLAS ESTRICTAS:
                                    1. CONOCIMIENTO: Utiliza exclusivamente la información de tu base de datos (productos, precios, servicios, ubicación y contacto) para responder.
                                    2. IDENTIDAD: NUNCA menciones las palabras 'documento', 'PDF', 'archivo', 'texto' ni 'base de datos'. Actúa como si conocieras toda la tienda de memoria.
                                    3. PRODUCTOS Y SERVICIOS: Recuerda que además de vender artículos de papelería, arte y oficina, la librería ofrece servicios importantes (fotocopias, anillados, maquetas, trabajos en goma Eva, etc.). Ofrécelos cuando sea oportuno.
                                    4. SALUDOS: Si el cliente te saluda, devuélvele el saludo cordialmente, preséntate y ofrécele ayuda.
                                    5. SIN STOCK: Si el cliente pregunta por algo que no ofreces, discúlpate amablemente diciendo que por el momento no cuentan con ese artículo o servicio, y pregúntale si puedes ayudarle con otra cosa.
                                    6. PREGUNTAS GENERALES: Si hacen una pregunta amplia ('¿Qué venden?', 'Muéstrame todo'), NUNCA listes todo el inventario. Menciona 3 o 4 categorías (ej: material escolar, artículos de arte, tecnología, servicios de imprenta), da un par de ejemplos rápidos y pregúntale qué busca exactamente.
                                    7. FORMATO VISUAL: Usa emojis para ser amigable (📚, 🎨, 🖨️). Resalta en **negrita** los nombres de los productos y los precios para que el mensaje sea fácil de leer en la pantalla."
                        }
                    }
                },
                contents = new[]
                {
                    new
                    {
                        parts = new object[]
                        {
                            new { text = pregunta },
                            new { file_data = new { mime_type = "application/pdf", file_uri = fileUri } }
                        }
                    }
                },
                // ¡LA SOLUCIÓN ESTÁ AQUÍ! Metemos los parámetros de generación en generationConfig
                generationConfig = new
                {
                    temperature = 0.2
                }
            };

            // TRUCO ANTI-CONGELAMIENTO
            return Task.Run(async () =>
            {
                var content = new StringContent(JsonSerializer.Serialize(requestBody), Encoding.UTF8, "application/json");
                var response = await _client.PostAsync(url, content);
                var responseString = await response.Content.ReadAsStringAsync();

                if (!response.IsSuccessStatusCode)
                {
                    // ¡AQUÍ ESTÁ LA CLAVE! Devolvemos el mensaje exacto que nos manda Google
                    return $"Error de Google (HTTP {response.StatusCode}): {responseString}";
                }

                using (var doc = JsonDocument.Parse(responseString))
                {
                    string respuestaFinal = doc.RootElement
                                               .GetProperty("candidates")[0]
                                               .GetProperty("content")
                                               .GetProperty("parts")[0]
                                               .GetProperty("text")
                                               .GetString();

                    return respuestaFinal;
                    // Quítale el .Replace("\n", "<br>");
                }
            }).GetAwaiter().GetResult();
        }

        public string PreguntarAlPdf(string pregunta, string fileUri)
        {
            // Solo cambiamos '1.5' por '2.5' en la URL
            string url = $"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key={_apiKey}";

            // ... parte inicial del método ...

            var requestBody = new
            {
                system_instruction = new
                {
                    parts = new[]
                    {
                        new
                        {
                            text = @"Eres el Asistente Virtual oficial de la Librería CONAVI. 
                                    Tu trabajo es responder las dudas de los clientes de forma amable, natural y conversacional.
                            
                                    REGLAS ESTRICTAS:
                                    1. Utiliza la información de tu base de datos para responder.
                                    2. NUNCA menciones las palabras 'documento', 'PDF', 'archivo' ni 'texto'. Actúa como si conocieras todo el inventario de la librería de memoria.
                                    3. Si el cliente pregunta por algo que no está en tu conocimiento, simplemente dile que por el momento no cuentan con ese producto en la tienda.
                                    4. Usa emojis para ser más amigable."
                        }
                    }
                },
                contents = new[]
                {
                    new
                    {
                        parts = new object[]
                        {
                            new { text = pregunta },
                            new { file_data = new { mime_type = "application/pdf", file_uri = fileUri } }
                        }
                    }
                },
                // ¡LA SOLUCIÓN ESTÁ AQUÍ! Metemos los parámetros de generación en generationConfig
                generationConfig = new
                {
                    temperature = 0.2
                }
            };

            // TRUCO ANTI-CONGELAMIENTO
            return Task.Run(async () =>
            {
                var content = new StringContent(JsonSerializer.Serialize(requestBody), Encoding.UTF8, "application/json");
                var response = await _client.PostAsync(url, content);
                var responseString = await response.Content.ReadAsStringAsync();

                if (!response.IsSuccessStatusCode)
                {
                    // ¡AQUÍ ESTÁ LA CLAVE! Devolvemos el mensaje exacto que nos manda Google
                    return $"Error de Google (HTTP {response.StatusCode}): {responseString}";
                }

                using (var doc = JsonDocument.Parse(responseString))
                {
                    string respuestaFinal = doc.RootElement
                                               .GetProperty("candidates")[0]
                                               .GetProperty("content")
                                               .GetProperty("parts")[0]
                                               .GetProperty("text")
                                               .GetString();

                    return respuestaFinal.Replace("\n", "<br>");
                }
            }).GetAwaiter().GetResult();
        }

    }
}