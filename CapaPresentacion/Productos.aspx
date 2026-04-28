<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="CapaPresentacion.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/miestilo.css" rel="stylesheet">
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
    
    <div class="container-fluid wow fadeInUp" data-wow-delay="0.1s" style="padding-top: 0rem; padding-bottom: 3rem;">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Novedades</h5>
                <h1 class="mb-0">Descubre nuestros productos destacados</h1>
            </div>

            <div class="row g-4" id="contenedor-productos">
            </div>

        </div>
    </div>

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
    <script src="js/Productos.js?v=<%= DateTime.Now.ToString("yyyyMMddHHmmss") %>" type="text/javascript"></script>
</asp:Content>
