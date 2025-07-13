getgenv().EjecutarsePrimero = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Esperar a que el personaje cargue completamente
repeat task.wait() until LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

-- Mostrar notificación
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "✅ Chat automatizado",
        Text = "Chat automatizado encendido",
        Duration = 5
    })
end)

-- Función para enviar mensajes al chat global
local function EnviarMensaje(texto)
    pcall(function()
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(texto, "All")
    end)
end

-- Lista de mensajes (seguros y graciosos)
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
    "Final inesperado: mi gato tocó el teclado 😼😂"
}

-- Enviar los mensajes cada 4 segundos
task.spawn(function()
    for _, msg in ipairs(mensajes) do
        EnviarMensaje(msg)
        task.wait(4)
    end
end)
