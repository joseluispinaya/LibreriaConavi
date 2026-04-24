
document.addEventListener("DOMContentLoaded", function () {
    // 1. Capturamos los elementos
    const btnOpenChat = document.getElementById("btnOpenChat");
    const btnCloseChat = document.getElementById("btnCloseChat");
    const chatbotWindow = document.getElementById("chatbotWindow");
    const btnSendChat = document.getElementById("btnSendChat");
    const txtChatInput = document.getElementById("txtChatInput");
    const chatbotBody = document.getElementById("chatbotBody");

    // 2. Abrir / Cerrar la ventana
    btnOpenChat.addEventListener("click", function (e) {
        e.preventDefault();
        chatbotWindow.classList.toggle("show");
        if (chatbotWindow.classList.contains("show")) {
            txtChatInput.focus(); // Autoselecciona el input al abrir
        }
    });

    btnCloseChat.addEventListener("click", function () {
        chatbotWindow.classList.remove("show");
    });

    function sendMessage() {
        const message = txtChatInput.value.trim();
        if (message === "") return;

        // A. Imprimir mensaje del usuario
        appendMessage(message, "user");
        txtChatInput.value = "";

        // B. Mostrar indicador "Escribiendo..."
        const typingId = showTypingIndicator();

        // C. Llamada AJAX a tu WebMethod en C#
        $.ajax({
            type: "POST",
            url: "Inicio.aspx/ChatBotPrueba", // Asegúrate de apuntar al aspx correcto
            data: JSON.stringify({ pregunta: message }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                removeTypingIndicator(typingId);
                // Imprimimos la respuesta genial que armó OpenAI
                appendMessage(response.d, "bot");
            },
            error: function () {
                removeTypingIndicator(typingId);
                appendMessage("Hubo un error de conexión con mi servidor. Intenta de nuevo.", "bot");
            }
        });
    }

    //function sendMessageoriginal() {
    //    const message = txtChatInput.value.trim();
    //    if (message === "") return;

    //    appendMessage(message, "user");
    //    txtChatInput.value = "";

    //    const typingId = showTypingIndicator();

    //    setTimeout(function () {
    //        removeTypingIndicator(typingId);
    //        const botReply = getBotResponse(message);
    //        appendMessage(botReply, "bot");
    //    }, 1500);
    //}

    // 4. Eventos para enviar (Click en botón o presionar Enter)
    btnSendChat.addEventListener("click", sendMessage);

    txtChatInput.addEventListener("keypress", function (e) {
        if (e.key === "Enter") {
            e.preventDefault();
            sendMessage();
        }
    });

    // --- FUNCIONES DE APOYO (UI/UX) ---

    // Función que inyecta el HTML del mensaje en el cuerpo del chat
    function appendMessage(text, sender) {
        const isUser = sender === "user";

        const messageDiv = document.createElement("div");
        messageDiv.className = `chat-message mb-3 ${isUser ? 'user-message' : 'bot-message'}`;

        const contentDiv = document.createElement("div");
        contentDiv.className = `message-content p-2 shadow-sm border ${isUser ? 'bg-primary text-white border-primary' : 'bg-white text-dark'}`;
        contentDiv.textContent = text; // textContent evita inyección de código malicioso

        messageDiv.appendChild(contentDiv);
        chatbotBody.appendChild(messageDiv);

        // Auto-Scroll automático hacia abajo
        chatbotBody.scrollTop = chatbotBody.scrollHeight;
    }

    // Simulador del "Cerebro" del Bot (Puedes agregar más palabras clave aquí)
    function getBotResponse(input) {
        const text = input.toLowerCase();

        if (text.includes("hola") || text.includes("buen")) {
            return "¡Hola de nuevo! Qué gusto saludarte. ¿Buscas información sobre algún producto?";
        } else if (text.includes("precio") || text.includes("costo") || text.includes("cuanto")) {
            return "Nuestros precios varían según el requerimiento exacto. ¿Podrías darme más detalles?";
        } else if (text.includes("gracias")) {
            return "¡Es un placer! Si tienes otra duda, aquí estaré.";
        } else {
            return "Entiendo. Sin embargo, soy un bot en entrenamiento. ¿Podrías intentar formular tu pregunta de otra forma?";
        }
    }

    function showTypingIndicator() {
        const id = "typing-" + Date.now();
        const typingDiv = document.createElement("div");
        typingDiv.id = id;
        typingDiv.className = "chat-message bot-message mb-3";
        typingDiv.innerHTML = `<div class="message-content bg-transparent text-muted p-2 fst-italic" style="font-size: 0.8rem;">Escribiendo...</div>`;
        chatbotBody.appendChild(typingDiv);
        chatbotBody.scrollTop = chatbotBody.scrollHeight;
        return id;
    }

    function removeTypingIndicator(id) {
        const el = document.getElementById(id);
        if (el) el.remove();
    }
});

// fin