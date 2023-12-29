-- Define a function to toggle invisibility
local function toggleInvisibility(character)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = part.Transparency == 0 and 1 or 0
        end
    end
end

-- Create a GUI for toggling invisibility
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local button = Instance.new("TextButton")
button.Text = "Toggle Invisibility"
button.Parent = gui

local isVisible = true
button.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    toggleInvisibility(character)
end)
