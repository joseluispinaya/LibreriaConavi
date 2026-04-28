<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CapaPresentacion.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="w-100" src="img/carousel-1.jpg" alt="Librería CONAVI - Materiales Escolares">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 900px;">
                        <h5 class="text-white text-uppercase mb-3 animated slideInDown" style="letter-spacing: 3px;">Librería CONAVI</h5>
                        <h1 class="display-1 text-white mb-md-4 animated zoomIn">Todo lo que necesitas para aprender y crear</h1>
                        <a href="Productos.aspx" class="btn btn-secondary py-md-3 px-md-5 me-3 animated slideInLeft">Ver Productos</a>
                        <a href="Contactos.aspx" class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contáctanos</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="w-100" src="img/carousel-2.jpg" alt="Librería CONAVI - Libros y Materiales">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 900px;">
                        <h5 class="text-white text-uppercase mb-3 animated slideInDown" style="letter-spacing: 3px;">Tu librería de confianza</h5>
                        <h1 class="display-1 text-white mb-md-4 animated zoomIn">Materiales, libros y servicios en un solo lugar</h1>
                        <a href="Productos.aspx" class="btn btn-secondary py-md-3 px-md-5 me-3 animated slideInLeft" aria-label="Ver servicios">Nuestros Servicios</a>
                        <a href="Contactos.aspx" class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight" aria-label="Visítanos">Visítanos</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev" aria-label="Anterior">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next" aria-label="Siguiente">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
        </button>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- About Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-7">
                    <div class="section-title position-relative pb-3 mb-5">
                        <h5 class="fw-bold text-primary text-uppercase">Sobre Nosotros</h5>
                        <h1 class="mb-0">Tu Aliada en Educación, Trabajo y Creatividad en Riberalta</h1>
                    </div>
                    <p class="mb-4">La Librería CONAVI es un negocio integral ubicado en la ciudad de Riberalta, dedicado a satisfacer las necesidades educativas, laborales, personales y creativas de nuestros clientes. Contamos con una amplia oferta de productos y servicios que nos posicionan como la librería más completa de la región.</p>
                    <div class="row g-0 mb-3">
                        <div class="col-sm-6 wow zoomIn" data-wow-delay="0.2s">
                            <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i>Variedad de Productos</h5>
                            <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i>Precios Competitivos</h5>
                        </div>
                        <div class="col-sm-6 wow zoomIn" data-wow-delay="0.4s">
                            <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i>Atención Personalizada</h5>
                            <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i>Productos Personalizados</h5>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4 wow fadeIn" data-wow-delay="0.6s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <img src="img/logo_whatsapp.png" alt="WhatsApp" style="width: 35px; height: 35px;">
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Haz tu pedido por WhatsApp</h5>
                            <h4 class="text-primary mb-0">+591 77464847</h4>
                        </div>
                    </div>
                    <a href="Contactos.aspx" class="btn btn-primary py-3 px-5 mt-3 wow zoomIn" data-wow-delay="0.9s">Conócenos Más</a>
                </div>
                <div class="col-lg-5" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.9s" src="img/pruebalod.png" style="object-fit: cover;" alt="Librería CONAVI - Nuestra tienda" loading="lazy" decoding="async">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Novedades Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Novedades Escolares</h5>
                <h1 class="mb-0">Lo más nuevo para este regreso a clases</h1>
            </div>
            <div class="owl-carousel product-carousel wow fadeInUp" data-wow-delay="0.6s">
                <!-- Item 1 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/blog-1.jpg" style="object-fit:cover; height: 235px;" alt="Novedad 1">
                        </div>
                        <div class="product-info p-4">
                            <span class="text-primary text-uppercase small bg-white px-2 py-1 rounded position-absolute top-0 start-0 m-3 shadow-sm">Nuevo</span>
                            <h5 class="product-title mt-2 mb-1">Mochila Escolar Premium</h5>
                            <span class="product-category text-muted small">Accesorios</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20la%20Mochila%20Escolar%20Premium" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/blog-2.jpg" style="object-fit:cover; height: 235px;" alt="Novedad 2">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Set de Colores Múltiples</h5>
                            <span class="product-category text-muted small">Material de Arte</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20el%20Set%20de%20Colores%20Múltiples" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/blog-3.jpg" style="object-fit:cover; height: 235px;" alt="Novedad 3">
                        </div>
                        <div class="product-info p-4">
                            <span class="text-primary text-uppercase small bg-white px-2 py-1 rounded position-absolute top-0 start-0 m-3 shadow-sm">Destacado</span>
                            <h5 class="product-title mt-2 mb-1">Cuaderno Tapa Dura Universitario</h5>
                            <span class="product-category text-muted small">Material Escolar</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20el%20Cuaderno%20Universitario%20Tapa%20Dura" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 4 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/team-1.jpg" style="object-fit:cover; height: 235px;" alt="Novedad 4">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Agenda Ejecutiva 2024</h5>
                            <span class="product-category text-muted small">Oficina</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20la%20Agenda%20Ejecutiva%202024" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Novedades End -->

    <!-- Más Vendidos Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Más Vendidos</h5>
                <h1 class="mb-0">Lo que otros maestros y estudiantes prefieren</h1>
            </div>
            <div class="owl-carousel product-carousel wow fadeInUp" data-wow-delay="0.6s">
                <!-- Item 1 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/resmapapel.jpg" style="object-fit:cover; height: 235px;" alt="Top 1">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Resma de Papel Bond Oficio</h5>
                            <span class="product-category text-muted small">Oficina</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20la%20Resma%20de%20Papel%20Bond%20Oficio" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/archivadorlomo.jpg" style="object-fit:cover; height: 235px;" alt="Top 2">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Archivadores Lomo Ancho</h5>
                            <span class="product-category text-muted small">Material Escolar y Oficina</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20Archivadores%20Lomo%20Ancho" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/cartulinacolor.jpg" style="object-fit:cover; height: 235px;" alt="Top 3">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Cartulina de Colores Pqte.</h5>
                            <span class="product-category text-muted small">Material Creativo</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20el%20Paquete%20de%20Cartulina%20de%20Colores" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item 4 -->
                <div class="product-item">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/borradormag.jpg" style="object-fit:cover; height: 235px;" alt="Top 4">
                        </div>
                        <div class="product-info p-4">
                            <h5 class="product-title mt-2 mb-1">Borradores Mágicos</h5>
                            <span class="product-category text-muted small">Material Escolar</span>
                            <div class="product-action mt-4">
                                <a href="https://wa.me/59177464847?text=Hola,%20quiero%20pedir%20Borradores%20Mágicos" target="_blank" class="btn btn-secondary w-100 fw-bold">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Más Vendidos End -->

    <!-- Product Categories Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" style="background: var(--light);">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Nuestros Productos</h5>
                <h1 class="mb-0">Descubre Nuestra Amplia Variedad de Productos y Servicios</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.2s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-pencil-alt"></i>
                        </div>
                        <h5>Materiales Escolares</h5>
                        <ul>
                            <li>Cuadernos universitarios y escolares</li>
                            <li>Lápices, bolígrafos y colores</li>
                            <li>Reglas, borradores y tajadores</li>
                            <li>Carpetas, folders y archivadores</li>
                            <li>Cartulinas y papel bond</li>
                            <li>Material didáctico</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.4s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-briefcase"></i>
                        </div>
                        <h5>Materiales de Oficina</h5>
                        <ul>
                            <li>Resmas de papel</li>
                            <li>Carpetas colgantes y archivadores</li>
                            <li>Sobres y folders</li>
                            <li>Clips, grapas y engrapadoras</li>
                            <li>Marcadores y resaltadores</li>
                            <li>Artículos de escritorio</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-shopping-bag"></i>
                        </div>
                        <h5>Accesorios y Complementos</h5>
                        <ul>
                            <li>Mochilas escolares</li>
                            <li>Carteras</li>
                            <li>Estucheras</li>
                            <li>Billeteras</li>
                            <li>Tomas todo (botellas)</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.2s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-paint-brush"></i>
                        </div>
                        <h5>Material Creativo y Manualidades</h5>
                        <ul>
                            <li>Goma Eva de todos los colores</li>
                            <li>Silicona líquida y en barra</li>
                            <li>Tijeras escolares y profesionales</li>
                            <li>Pegamentos variados</li>
                            <li>Material decorativo</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.4s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-magic"></i>
                        </div>
                        <h5>Productos Personalizados</h5>
                        <ul>
                            <li>Maquetas personalizadas escolares</li>
                            <li>Maquetas técnicas a medida</li>
                            <li>Trabajos en Goma Eva</li>
                            <li>Letreros y figuras decorativas</li>
                            <li>Decoraciones a pedido</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="category-card">
                        <div class="category-icon">
                            <i class="fas fa-book"></i>
                        </div>
                        <h5>Material Bibliográfico</h5>
                        <ul>
                            <li>Biblias</li>
                            <li>Novelas literarias</li>
                            <li>Libros educativos</li>
                            <li>Libros de consulta</li>
                            <li>Material de lectura variado</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Categories End -->

    <!-- Services Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Nuestros Servicios</h5>
                <h1 class="mb-0">Servicios Complementarios para Estudiantes y Profesionales</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-print text-white"></i>
                        </div>
                        <h4 class="mb-3">Impresiones</h4>
                        <p class="m-0">Impresiones a color y blanco/negro en diversos formatos para tus trabajos académicos y profesionales.</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-copy text-white"></i>
                        </div>
                        <h4 class="mb-3">Fotocopias</h4>
                        <p class="m-0">Servicio de fotocopiado rápido y de calidad. Copias individuales o por volumen a precios accesibles.</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.9s">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-ring text-white"></i>
                        </div>
                        <h4 class="mb-3">Anillado</h4>
                        <p class="m-0">Presentación profesional para tus documentos con nuestro servicio de anillado en diferentes tamaños y colores.</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-shield-alt text-white"></i>
                        </div>
                        <h4 class="mb-3">Plastificado</h4>
                        <p class="m-0">Protege tus documentos importantes con nuestro servicio de plastificado en diferentes grosores.</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-cube text-white"></i>
                        </div>
                        <h4 class="mb-3">Maquetas Personalizadas</h4>
                        <p class="m-0">Elaboramos maquetas escolares y técnicas según tu requerimiento con materiales de calidad.</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.9s">
                    <div class="position-relative bg-primary rounded h-100 d-flex flex-column align-items-center justify-content-center text-center p-5">
                        <h3 class="text-white mb-3">¿Necesitas algo especial?</h3>
                        <p class="text-white mb-3">Contáctanos por WhatsApp y te ayudaremos con tu pedido personalizado</p>
                        <h2 class="text-white mb-0"><i class="fab fa-whatsapp me-2"></i>+591 77464847</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->

    <!-- Promo Banner Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="promo-banner text-center text-white">
                <h2 class="mb-3 position-relative" style="z-index: 1;">📚 ¡Prepárate para el nuevo año escolar!</h2>
                <p class="mb-4 fs-5 position-relative" style="z-index: 1;">Encuentra todos los materiales que necesitas en Librería CONAVI. ¡Lista de útiles completa al mejor precio!</p>
                <a href="https://wa.me/59177464847?text=Hola%20CONAVI,%20quiero%20consultar%20sobre%20la%20lista%20de%20útiles%20escolares" class="btn btn-light btn-lg px-5 py-3 position-relative" style="z-index: 1; color: var(--primary); font-weight: 700;">
                    <i class="fab fa-whatsapp me-2"></i>Consultar por WhatsApp
                </a>
            </div>
        </div>
    </div>
    <!-- Promo Banner End -->

    <!-- Quote Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-7">
                    <div class="section-title position-relative pb-3 mb-5">
                        <h5 class="fw-bold text-primary text-uppercase">Solicita tu Pedido</h5>
                        <h1 class="mb-0">¿Necesitas materiales? ¡Estamos para ayudarte!</h1>
                    </div>
                    <div class="row gx-3">
                        <div class="col-sm-6 wow zoomIn" data-wow-delay="0.2s">
                            <h5 class="mb-4"><i class="fa fa-reply text-primary me-3"></i>Respuesta rápida</h5>
                        </div>
                        <div class="col-sm-6 wow zoomIn" data-wow-delay="0.4s">
                            <h5 class="mb-4"><i class="fa fa-phone-alt text-primary me-3"></i>Atención personalizada</h5>
                        </div>
                    </div>
                    <p class="mb-4">En Librería CONAVI nos preocupamos por brindarte la mejor atención. Puedes visitarnos en nuestra tienda en Riberalta, contactarnos por teléfono o enviarnos un mensaje por WhatsApp con tu lista de materiales y te la preparamos.</p>
                    <div class="d-flex align-items-center mt-2 wow zoomIn" data-wow-delay="0.6s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <img src="img/logo_whatsapp.png" alt="WhatsApp" style="width: 35px; height: 35px;">
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Escríbenos a WhatsApp</h5>
                            <h4 class="text-primary mb-0">+591 77464847</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="bg-primary rounded h-100 d-flex align-items-center p-5 wow zoomIn" data-wow-delay="0.9s">
                        <div class="row g-3">
                                <div class="col-xl-12">
                                    <input type="text" class="form-control bg-light border-0" placeholder="Tu Nombre" style="height: 55px;">
                                </div>
                                <div class="col-12">
                                    <input type="tel" class="form-control bg-light border-0" placeholder="Tu Teléfono / WhatsApp" style="height: 55px;">
                                </div>
                                <div class="col-12">
                                    <select class="form-select bg-light border-0" style="height: 55px;">
                                        <option selected>¿Qué necesitas?</option>
                                        <option value="1">Materiales Escolares</option>
                                        <option value="2">Materiales de Oficina</option>
                                        <option value="3">Accesorios</option>
                                        <option value="4">Material Creativo</option>
                                        <option value="5">Productos Personalizados</option>
                                        <option value="6">Libros</option>
                                        <option value="7">Servicios (Impresiones, Copias, etc.)</option>
                                    </select>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control bg-light border-0" rows="3" placeholder="Describe tu pedido o lista de materiales..."></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-dark w-100 py-3" type="button">Enviar Solicitud</button>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote End -->

    <!-- Vendor Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5 mb-5">
            <div class="bg-white">
                <div class="owl-carousel vendor-carousel">
                    <img src="img/vendor-1.jpg" alt="Marca 1">
                    <img src="img/vendor-2.jpg" alt="Marca 2">
                    <img src="img/vendor-3.jpg" alt="Marca 3">
                    <img src="img/vendor-4.jpg" alt="Marca 4">
                    <img src="img/vendor-5.jpg" alt="Marca 5">
                    <img src="img/vendor-6.jpg" alt="Marca 6">
                    <img src="img/vendor-7.jpg" alt="Marca 7">
                    <img src="img/vendor-8.jpg" alt="Marca 8">
                    <img src="img/vendor-9.jpg" alt="Marca 9">
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
