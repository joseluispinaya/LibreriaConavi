<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="CapaPresentacion.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
        <div class="row py-5">
            <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                <h1 class="display-4 text-white animated zoomIn">Productos y Servicios</h1>
                <a href="Inicio.aspx" class="h5 text-white">Inicio</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="Productos.aspx" class="h5 text-white">Productos</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- Product Grid Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Catálogo Completo</h5>
                <h1 class="mb-0">Todo el material escolar y de oficina en un solo lugar</h1>
            </div>
            
            <div class="row g-4 portfolio-container">
                <!-- Producto 1 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item first wow zoomIn" data-wow-delay="0.1s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <span class="text-white small bg-danger px-2 py-1 rounded position-absolute top-0 start-0 m-3 shadow-sm" style="z-index:1;">DESTACADO</span>
                            <img class="img-fluid w-100" src="img/blog-3.jpg" style="object-fit:cover; height: 235px !important;" alt="Cuaderno Tapa Dura Universitario">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Cuaderno Tapa Dura Universitario</h5>
                            <span class="product-category text-muted small">Material Escolar</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20el%20Cuaderno%20Tapa%20Dura%20Universitario" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 2 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item second wow zoomIn" data-wow-delay="0.3s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/team-1.jpg" style="object-fit:cover; height: 235px !important;" alt="Agenda Ejecutiva 2024">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Agenda Ejecutiva 2024</h5>
                            <span class="product-category text-muted small">Oficina</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20la%20Agenda%20Ejecutiva%202024" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 3 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item first wow zoomIn" data-wow-delay="0.5s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <span class="text-white small bg-primary px-2 py-1 rounded position-absolute top-0 start-0 m-3 shadow-sm" style="z-index:1;">NUEVO</span>
                            <img class="img-fluid w-100" src="img/blog-1.jpg" style="object-fit:cover; height: 235px !important;" alt="Mochila Escolar Premium">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Mochila Escolar Premium</h5>
                            <span class="product-category text-muted small">Accesorios</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20la%20Mochila%20Escolar%20Premium" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 4 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item third wow zoomIn" data-wow-delay="0.7s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/blog-2.jpg" style="object-fit:cover; height: 235px !important;" alt="Set de Colores Múltiples">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Set de Colores Múltiples</h5>
                            <span class="product-category text-muted small">Material de Arte</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20el%20Set%20de%20Colores" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 5 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item second wow zoomIn" data-wow-delay="0.1s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/calculadora.jpg" style="object-fit:cover; height: 235px !important;" alt="Calculadora Científica Casio">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Calculadora Científica</h5>
                            <span class="product-category text-muted small">Oficina y Universidad</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20la%20Calculadora" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 6 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item first wow zoomIn" data-wow-delay="0.3s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <span class="text-white small bg-primary px-2 py-1 rounded position-absolute top-0 start-0 m-3 shadow-sm" style="z-index:1;">OFERTA</span>
                            <img class="img-fluid w-100" src="img/estuches.jpg" style="object-fit:cover; height: 235px !important;" alt="Estuche Organizador de Lápices">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Estuche Organizador</h5>
                            <span class="product-category text-muted small">Material Escolar</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20el%20Estuche" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 7 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item third wow zoomIn" data-wow-delay="0.5s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/acuarela.jpg" style="object-fit:cover; height: 235px !important;" alt="Acuarelas Profesionales">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Acuarelas Profesionales</h5>
                            <span class="product-category text-muted small">Material de Arte</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20las%20Acuarelas" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Producto 8 -->
                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item second wow zoomIn" data-wow-delay="0.7s">
                    <div class="product-card bg-light rounded overflow-hidden shadow-sm h-100 d-flex flex-column">
                        <div class="product-img-wrap position-relative">
                            <img class="img-fluid w-100" src="img/resmapapel.jpg" style="object-fit:cover; height: 235px !important;" alt="Resma de Papel Tamaño Carta">
                        </div>
                        <div class="product-info p-4 bg-white flex-grow-1 d-flex flex-column">
                            <h5 class="product-title mt-2 mb-1">Resma Papel Carta</h5>
                            <span class="product-category text-muted small">Oficina</span>
                            <div class="product-action mt-auto pt-4">
                                <a href="https://wa.me/59174779841?text=Hola,%20quiero%20pedir%20la%20Resma" class="btn btn-secondary w-100 fw-bold" target="_blank">Pedir por WhatsApp <i class="fab fa-whatsapp ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row mt-5">
                <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                    <a href="https://wa.me/59174779841?text=Hola,%20quisiera%20el%20catálogo%20completo%20en%20PDF" class="btn btn-primary py-3 px-5 mb-3" target="_blank">Pedir Catálogo en PDF <i class="fab fa-whatsapp ms-2"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Grid End -->

    <!-- Services Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" style="background: var(--light);">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Servicios Complementarios</h5>
                <h1 class="mb-0">Servicios de Apoyo para Estudiantes y Profesionales</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-3 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                    <div class="service-item bg-white rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-print text-white"></i>
                        </div>
                        <h4 class="mb-3">Impresiones</h4>
                        <p class="m-0">Color y blanco/negro en diversos formatos</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="service-item bg-white rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-copy text-white"></i>
                        </div>
                        <h4 class="mb-3">Fotocopias</h4>
                        <p class="m-0">Copias rápidas individuales o por volumen</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow zoomIn" data-wow-delay="0.9s">
                    <div class="service-item bg-white rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-ring text-white"></i>
                        </div>
                        <h4 class="mb-3">Anillado</h4>
                        <p class="m-0">Presentación profesional para tus documentos</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow zoomIn" data-wow-delay="1.2s">
                    <div class="service-item bg-white rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon">
                            <i class="fa fa-shield-alt text-white"></i>
                        </div>
                        <h4 class="mb-3">Plastificado</h4>
                        <p class="m-0">Protege tus documentos importantes</p>
                        <a class="btn btn-lg btn-primary rounded" href="Contactos.aspx">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
