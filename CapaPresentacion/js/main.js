(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.navbar').addClass('sticky-top shadow-sm');
        } else {
            $('.navbar').removeClass('sticky-top shadow-sm');
        }
    });
    
    // Dropdown on mouse hover
    const $dropdown = $(".dropdown");
    const $dropdownToggle = $(".dropdown-toggle");
    const $dropdownMenu = $(".dropdown-menu");
    const showClass = "show";
    
    $(window).on("load resize", function() {
        if (this.matchMedia("(min-width: 992px)").matches) {
            $dropdown.hover(
            function() {
                const $this = $(this);
                $this.addClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "true");
                $this.find($dropdownMenu).addClass(showClass);
            },
            function() {
                const $this = $(this);
                $this.removeClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "false");
                $this.find($dropdownMenu).removeClass(showClass);
            }
            );
        } else {
            $dropdown.off("mouseenter mouseleave");
        }
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        dots: true,
        loop: true,
        center: true,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });

    // Product carousel
    $(".product-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        margin: 25,
        dots: false,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-arrow-left"></i>',
            '<i class="bi bi-arrow-right"></i>'
        ],
        responsive: {
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            },
            1200:{
                items:4
            }
        }
    });


    // Vendor carousel
    $('.vendor-carousel').owlCarousel({
        loop: true,
        margin: 45,
        dots: false,
        loop: true,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:2
            },
            576:{
                items:4
            },
            768:{
                items:6
            },
            992:{
                items:8
            }
        }
    });
    
    //$('.whatsapp-float, #chatbot-close').click(function(e) {
    //    if ($(this).hasClass('whatsapp-float')) {
    //        e.preventDefault();
    //        $('#chatbot-window').fadeToggle(300);
    //    } else {
    //        $('#chatbot-window').fadeOut(300);
    //    }
    //});

    //const products = [
    //    {name: "Mochila Escolar Premium", category: "Accesorios", whatsapp: "Hola,%20quiero%20pedir%20la%20Mochila%20Escolar%20Premium"},
    //    {name: "Set de Colores Múltiples", category: "Material de Arte", whatsapp: "Hola,%20quiero%20pedir%20el%20Set%20de%20Colores%20Múltiples"},
    //    {name: "Cuaderno Tapa Dura Universitario", category: "Material Escolar", whatsapp: "Hola,%20quiero%20pedir%20el%20Cuaderno%20Universitario%20Tapa%20Dura"},
    //    {name: "Agenda Ejecutiva 2024", category: "Oficina", whatsapp: "Hola,%20quiero%20pedir%20la%20Agenda%20Ejecutiva%202024"},
    //    {name: "Resma de Papel Bond Oficio", category: "Oficina", whatsapp: "Hola,%20quiero%20pedir%20la%20Resma%20de%20Papel%20Bond%20Oficio"},
    //    {name: "Archivadores Lomo Ancho", category: "Material Escolar y Oficina", whatsapp: "Hola,%20quiero%20pedir%20Archivadores%20Lomo%20Ancho"},
    //    {name: "Cartulina de Colores Pqte.", category: "Material Creativo", whatsapp: "Hola,%20quiero%20pedir%20el%20Paquete%20de%20Cartulina%20de%20Colores"},
    //    {name: "Borradores Mágicos", category: "Material Escolar", whatsapp: "Hola,%20quiero%20pedir%20Borradores%20Mágicos"},
    //    {name: "Cuadernos Universitarios", category: "Material Escolar", whatsapp: "Hola,%20quiero%20pedir%20Cuadernos%20Universitarios"},
    //    {name: "Lápices y Bolígrafos", category: "Material Escolar", whatsapp: "Hola,%20quiero%20pedir%20Lápices%20y%20Bolígrafos"},
    //    {name: "Resmas de Papel Bond", category: "Material de Oficina", whatsapp: "Hola,%20quiero%20pedir%20Resmas%20de%20Papel%20Bond"},
    //    {name: "Carpetas y Archivadores", category: "Material de Oficina", whatsapp: "Hola,%20quiero%20pedir%20Carpetas%20y%20Archivadores"},
    //    {name: "Mochilas Escolares", category: "Accesorios", whatsapp: "Hola,%20quiero%20pedir%20Mochilas%20Escolares"},
    //    {name: "Goma Eva", category: "Material Creativo", whatsapp: "Hola,%20quiero%20pedir%20Goma%20Eva"},
    //    {name: "Biblias", category: "Material Bibliográfico", whatsapp: "Hola,%20quiero%20pedir%20Biblias"},
    //    {name: "Novelas Literarias", category: "Material Bibliográfico", whatsapp: "Hola,%20quiero%20pedir%20Novelas%20Literarias"}
    //];

    //$('#searchBtn, #searchInput').on('click keyup', function(e) {
    //    if (e.type === 'keyup' && e.keyCode !== 13) return;
    //    performSearch();
    //});

    //function performSearch() {
    //    const searchTerm = $('#searchInput').val().toLowerCase().trim();
    //    const resultsContainer = $('#searchResults');
        
    //    if (searchTerm.length < 2) {
    //        resultsContainer.html('<div class="text-white text-center">Escribe al menos 2 caracteres para buscar</div>');
    //        return;
    //    }

    //    const results = products.filter(product => 
    //        product.name.toLowerCase().includes(searchTerm) || 
    //        product.category.toLowerCase().includes(searchTerm)
    //    );

    //    if (results.length === 0) {
    //        resultsContainer.html('<div class="text-white text-center">No se encontraron resultados para "' + searchTerm + '"</div>');
    //    } else {
    //        let html = '<div class="search-results-list">';
    //        results.forEach(product => {
    //            html += `
    //                <div class="search-result-item bg-white bg-opacity-10 rounded p-3 mb-2 text-white">
    //                    <h6 class="mb-1">${product.name}</h6>
    //                    <small class="text-white-50">${product.category}</small>
    //                    <div class="mt-2">
    //                        <a href="https://wa.me/59174779841?text=${product.whatsapp}" target="_blank" class="btn btn-sm btn-warning">
    //                            <i class="fab fa-whatsapp me-1"></i>Pedir por WhatsApp
    //                        </a>
    //                    </div>
    //                </div>
    //            `;
    //        });
    //        html += '</div>';
    //        resultsContainer.html(html);
    //    }
    //}

    //$('#searchModal').on('hidden.bs.modal', function() {
    //    $('#searchInput').val('');
    //    $('#searchResults').html('');
    //});
    
})(jQuery);

