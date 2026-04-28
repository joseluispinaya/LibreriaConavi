using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaPresentacion
{
    public class PromptDatoz
    {
        public LibreriaIrbeDb libreria_conavi_db { get; set; }
    }

    public class LibreriaIrbeDb
    {
        //public List<CategoriaJSON> categorias { get; set; }
        public List<ProductoJSON> productos { get; set; }
    }

    //public class CategoriaJSON
    //{
    //    public int id_categoria { get; set; }
    //    public string nombre { get; set; }
    //}

    public class ProductoJSON
    {
        //public int id_producto { get; set; }
        //public int id_categoria { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public decimal precio_bs { get; set; }
        //public int stock { get; set; }
        //public string marca { get; set; }
        //public bool en_oferta { get; set; }
        //public List<string> tags { get; set; }
    }
}