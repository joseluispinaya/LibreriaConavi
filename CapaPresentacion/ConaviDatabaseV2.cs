using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaPresentacion
{
    public class ConaviDatabaseV2
    {
        public LibreriaDatos libreria_conavi_v2 { get; set; }
    }

    public class LibreriaDatos
    {
        public InfoGeneral informacion_general { get; set; }
        public List<string> servicios { get; set; }
        public List<ProductoV2> productos { get; set; }
    }

    public class InfoGeneral
    {
        public string nombre { get; set; }
        public string ubicacion { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }
    }

    public class ProductoV2
    {
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public decimal precio_bs { get; set; }
    }
}