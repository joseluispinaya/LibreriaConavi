<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="CapaPresentacion.Contactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
        <div class="row py-5">
            <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                <h1 class="display-4 text-white animated zoomIn">Contáctanos</h1>
                <a href="Inicio.aspx" class="h5 text-white">Inicio</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="Contactos.aspx" class="h5 text-white">Contacto</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- Contact Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Contáctanos</h5>
                <h1 class="mb-0">¿Tienes alguna consulta? ¡Estamos para ayudarte!</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.1s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <img src="img/logo_whatsapp.png" alt="WhatsApp" style="width: 35px; height: 35px;">
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">WhatsApp</h5>
                            <h4 class="text-primary mb-0">+591 77464847</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.4s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <i class="fa fa-envelope-open text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Escríbenos</h5>
                            <h4 class="text-primary mb-0">libreriaconavi@gmail.com</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.8s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <i class="fa fa-map-marker-alt text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Visítanos</h5>
                            <h4 class="text-primary mb-0">Riberalta, Beni, Bolivia</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.3s">
                    <!-- <form action="https://formspree.io/f/mqazkngw" method="POST">
                    </form> -->

                    <div class="row g-3">
                        <div class="col-md-6">
                            <input type="text" name="nombre" class="form-control border-0 bg-light px-4" placeholder="Tu Nombre" style="height: 55px;" required>
                        </div>
                        <div class="col-md-6">
                            <input type="tel" name="telefono" class="form-control border-0 bg-light px-4" placeholder="Tu Teléfono" style="height: 55px;" required>
                        </div>
                        <div class="col-12">
                            <input type="email" name="email" class="form-control border-0 bg-light px-4" placeholder="Tu Correo Electrónico (Opcional)" style="height: 55px;">
                        </div>
                        <div class="col-12">
                            <input type="text" name="asunto" class="form-control border-0 bg-light px-4" placeholder="Asunto" style="height: 55px;" required>
                        </div>
                        <div class="col-12">
                            <textarea name="mensaje" class="form-control border-0 bg-light px-4 py-3" rows="4" placeholder="Tu mensaje o lista de materiales escolares/oficina que necesitas..." required></textarea>
                        </div>
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="button">Enviar Cotización a CONAVI</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.6s">
                    <iframe class="position-relative rounded w-100 h-100"
                        src="https://maps.google.com/maps?q=Libreria%20Conavi,%20Riberalta,%20Bolivia&t=&z=17&ie=UTF8&iwloc=&output=embed"
                        frameborder="0" style="min-height: 350px; border: 0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
