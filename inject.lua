-- BlueAPI
-- Notification
-- Version 1.0.0
print('[BlueAPI] Thanks for using BlueAPI! 🎉')

-- Instances

local ScreenGui = Instance.new("ScreenGui")
local NotificationFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TweenService = game:GetService("TweenService")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = ScreenGui
NotificationFrame.BackgroundColor3 = Color3.new(0.082, 0.082, 0.082)
NotificationFrame.BackgroundTransparency = 0.15
NotificationFrame.BorderColor3 = Color3.new(1, 0, 0)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(0.423, 0, -0.2, 0)
NotificationFrame.Size = UDim2.new(0.152, 0, 0.083, 0)
NotificationFrame.ZIndex = 999999999

UICorner.Parent = NotificationFrame
UICorner.CornerRadius = UDim.new(0, 5)

TextLabel.Parent = NotificationFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.01, 0, 0, 0)
TextLabel.Size = UDim2.new(0.95, 0, 0.66, 0)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "BlueAPI"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 20

TextLabel_2.Parent = NotificationFrame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.01, 0, 0.37, 0)
TextLabel_2.Size = UDim2.new(0.95, 0, 0.62, 0)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Injected / v1.0"
TextLabel_2.TextColor3 = Color3.new(0, 1, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 18

local function showNotification()
	local appearTween = TweenService:Create(NotificationFrame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.423, 0, 0.05, 0)
	})
	appearTween:Play()

	task.wait(3)

	local disappearTween = TweenService:Create(NotificationFrame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = UDim2.new(0.423, 0, -0.2, 0)
	})
	disappearTween:Play()
end

showNotification()
