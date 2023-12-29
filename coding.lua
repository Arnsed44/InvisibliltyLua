local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function setInvisibility(isInvisible)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = isInvisible and 1 or 0
        end
    end
end

local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local button = Instance.new("TextButton")
button.Text = "Toggle Invisibility"
button.Parent = gui

local isVisible = true
button.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    setInvisibility(not isVisible)
end)
