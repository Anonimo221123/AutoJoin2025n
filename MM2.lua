getgenv().EjecutarsePrimero = true

local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

-- Esperar que el canal RBXGeneral esté listo
repeat task.wait() until TextChatService.TextChannels and TextChatService.TextChannels:FindFirstChild("RBXGeneral")

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "✅ Chat automatizado",
        Text = "Chat automatizado encendido",
        Duration = 5
    })
end)

local canal = TextChatService.TextChannels.RBXGeneral

local mensajes = {
    "Hola chicos como están 😎❤️",
    "Estoy feliz de estar aquí 👀🔥",
    "Me alegro de conocerlos a ustedes ❤️",
    "Estaré afk unos minutos chicos 😳",
    "No me maten porfa 🙏😂",
    "Juguemos con respeto 😇✨",
    "Me encanta este juego 😍🎮",
    "No soy el asesino... o sí? 😏🔪",
    "Cuidado con el que no habla 👀",
    "Volví y traje galletas 🍪",
    "Final inesperado: mi gato tocó el teclado",
    "Ahora si me ire Afk mas tiempo chicos ❤️👀",
    "Volveré pronto fue divertido conocerlos ❤️😍"
}

task.spawn(function()
    task.wait(1)
    for _, msg in ipairs(mensajes) do
        pcall(function()
            canal:SendAsync(msg)
        end)
        task.wait(4)
    end
end)
