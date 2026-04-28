
const products = [
    {
        "nombre": "Marcador para pizzarra",
        "descripcion": "Marcador al agua caja de 12 unds.",
        "imagen": "imgprod/marcadorAg.jpeg",
        "precio_bs": 50.00
    },
    {
        "nombre": "Calculadoras Científicas CASIO",
        "descripcion": "Calculadoras en español, panel solar y pila, con 553 funciones.",
        "imagen": "imgprod/calculadoraCie.jpeg",
        "precio_bs": 210.00
    },
    {
        "nombre": "Toma todo",
        "descripcion": "Toma todo de 500 ml.",
        "imagen": "imgprod/tomaTodo.jpeg",
        "precio_bs": 90.00
    },
    {
        "nombre": "Papel fotografico",
        "descripcion": "Tamaño A4 con 20 hojas.",
        "imagen": "imgprod/papelFoto.jpeg",
        "precio_bs": 45.00
    },
    {
        "nombre": "Tinta universal para impresora",
        "descripcion": "Tinta universal para impresora de 1 Lt.",
        "imagen": "imgprod/tintaGene.jpeg",
        "precio_bs": 150.00
    },
    {
        "nombre": "Mouse BT",
        "descripcion": "Mouse inalambrico a bluetooth.",
        "imagen": "imgprod/mouseBt.jpeg",
        "precio_bs": 120.00
    },
    {
        "nombre": "Tintas EPSON",
        "descripcion": "Tintas 544 y 664 todos los colores.",
        "imagen": "imgprod/tintasEp.jpeg",
        "precio_bs": 90.00
    },
    {
        "nombre": "Libro de actas y asistencia",
        "descripcion": "Libro tamaño oficio de 100 hojas.",
        "imagen": "imgprod/libroActa.jpeg",
        "precio_bs": 30.00
    },
    {
        "nombre": "Anillado de papel bond",
        "descripcion": "Anillado bond tamaño carta de 100 hojas.",
        "imagen": "imgprod/anilladoBond.jpeg",
        "precio_bs": 20.00
    },
    {
        "nombre": "Cuaderno Anillado",
        "descripcion": "Cuaderno con diseño tamaño carta de 200 hojas.",
        "imagen": "imgprod/cuadAnillado.jpeg",
        "precio_bs": 60.00
    },
    {
        "nombre": "Cuaderno Empastado",
        "descripcion": "Tamaños: oficio, carta y medio oficio de 100 hojas.",
        "imagen": "imgprod/cuaderEmp.jpeg",
        "precio_bs": 30.00
    }
];

$(document).ready(function () {
    listaProducts();
    //inicializarChatbot();
});

function inicializarChatbot() {
    $.ajax({
        type: "POST",
        url: "Inicio.aspx/CargarModelo",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (!response.d.includes("error")) {
                console.log(response.d);
                //console.log("Modelo listo: " + uriGlobalPdf);
            }
        }
    });
}

// Función para armar el diseño de los productos 
function listaProducts() {
    const contenedor = $('#contenedor-productos');
    contenedor.empty();

    products.forEach((item, index) => {
        // Truco para la animación WOW: incrementamos el retraso (0.1s, 0.3s, 0.5s...)
        let delay = 0.1 + ((index % 4) * 0.2);

        let htmlCard = `
        <div class="col-lg-3 col-md-6 wow slideInUp" data-wow-delay="${delay}s">
            <div class="product-card rounded overflow-hidden h-100 d-flex flex-column">
                <div class="product-img-wrapper">
                    <img class="img-fluid" src="${item.imagen}" alt="${item.nombre}">
                </div>
                <div class="p-4 d-flex flex-column flex-grow-1">
                    <h6 class="mb-2 flex-grow-1 lh-base">${item.nombre}</h6>
                    <h6 class="text-primary mb-3 fw-bold">Bs. ${item.precio_bs.toFixed(2)}</h6>
                    
                    <button type="button" class="btn btn-whatsapp w-100 rounded-pill btn-sm" onclick="enviarWhatsApp('${item.nombre}')">
                        <i class="fab fa-whatsapp me-2"></i>Pedir ahora
                    </button>
                </div>
            </div>
        </div>`;

        contenedor.append(htmlCard);
    });
}

// Función para abrir WhatsApp en una nueva pestaña
function enviarWhatsApp(nombreProducto) {
    // encodeURIComponent convierte los espacios en %20 para que la URL sea válida
    const textoSms = encodeURIComponent(`Hola estoy interesado sobre: ${nombreProducto}.`);
    const link = `https://wa.me/59177464847?text=${textoSms}`;

    // Abrimos en una nueva pestaña
    window.open(link, '_blank');
}

// fin