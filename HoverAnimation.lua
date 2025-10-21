
-- // Adds a hover scaling animation and sound effect to buttons in your UI

-- // Configuration
local soundId = "rbxassetid://119354387183704" -- Hover sound ID
local hoverScale = 1.1 -- Scale when hovered
local tweenTime = 0.2 -- Tween animation time (seconds)

-- // Main GUI (place this script inside your ScreenGui)
local mainMenu = script.Parent
local buttons = {"ClickShop", "ClickMenu", "ClickSetting"} -- Button names to animate

-- // Services
local TweenService = game:GetService("TweenService")

-- // Loop through each button and apply animation
for _, buttonName in ipairs(buttons) do
	local button = mainMenu:WaitForChild(buttonName)

	-- Create hover sound
	local hoverSound = Instance.new("Sound")
	hoverSound.SoundId = soundId
	hoverSound.Volume = 1
	hoverSound.Parent = button

	-- Tween setup
	local tweenIn = TweenService:Create(button, TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = button.Size * hoverScale})
	local tweenOut = TweenService:Create(button, TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = button.Size})

	-- Hover events
	button.MouseEnter:Connect(function()
		hoverSound:Play()
		tweenIn:Play()
	end)

	button.MouseLeave:Connect(function()
		tweenOut:Play()
	end)
end
