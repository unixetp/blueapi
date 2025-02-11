local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local noclipEnabled = false
local connection

-- Function to enable noclip
local function EnableNoclip()
    if noclipEnabled then return end
    noclipEnabled = true

    connection = RunService.Stepped:Connect(function()
        for _, part in ipairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end

-- Function to disable noclip
local function DisableNoclip()
    if not noclipEnabled then return end
    noclipEnabled = false

    if connection then
        connection:Disconnect()
        connection = nil
    end

    for _, part in ipairs(character:GetChildren()) do
        if part:IsA("BasePart") then
            part.CanCollide = true
        end
    end
end

-- API Integration: Function to set noclip state
function SetNoclip(noclipState)
    if noclipState then
        EnableNoclip()
    else
        DisableNoclip()
    end
end
