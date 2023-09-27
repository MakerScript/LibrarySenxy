-- Gui to Lua
-- Version: 3.6

-- Instances:

local Notify = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Panel = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local notificationOn = Instance.new("ImageLabel")
local notificationOn2 = Instance.new("ImageLabel")
local TextTitle = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextTitle_2 = Instance.new("TextLabel")

-- Properties:

Notify.Name = "Notify"
Notify.Parent = game.Players.LocalPlayer.PlayerGui
Notify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Notify
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.775561094, 0)
Main.Size = UDim2.new(0, 297, 0, 112)

Panel.Name = "Panel"
Panel.Parent = Main
Panel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Panel.BorderSizePixel = 0
Panel.Size = UDim2.new(0, 297, 0, 30)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Panel

notificationOn.Name = "notificationOn"
notificationOn.Parent = Panel
notificationOn.BackgroundTransparency = 1.000
notificationOn.Position = UDim2.new(0.0269360263, 0, 0, 0)
notificationOn.Size = UDim2.new(0, 32, 0, 30)
notificationOn.Image = "rbxassetid://14550341879"
notificationOn.ImageRectOffset = Vector2.new(152, 304)
notificationOn.ImageRectSize = Vector2.new(36, 36)

notificationOn2.Name = "notificationOn2"
notificationOn2.Parent = Panel
notificationOn2.BackgroundTransparency = 1.000
notificationOn2.Position = UDim2.new(0.865319848, 0, 0, 0)
notificationOn2.Size = UDim2.new(0, 32, 0, 30)
notificationOn2.Image = "rbxassetid://14550341879"
notificationOn2.ImageRectOffset = Vector2.new(152, 304)
notificationOn2.ImageRectSize = Vector2.new(36, 36)

TextTitle.Name = "TextTitle"
TextTitle.Parent = Panel
TextTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextTitle.BackgroundTransparency = 1.000
TextTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextTitle.BorderSizePixel = 0
TextTitle.Position = UDim2.new(0.134680137, 0, 0, 0)
TextTitle.Size = UDim2.new(0, 217, 0, 30)
TextTitle.Font = Enum.Font.GothamMedium
TextTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TextTitle.TextScaled = true
TextTitle.TextSize = 14.000
TextTitle.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 7)
UICorner_2.Parent = Main

TextTitle_2.Name = "TextNotif"
TextTitle_2.Parent = Main
TextTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextTitle_2.BackgroundTransparency = 1.000
TextTitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextTitle_2.BorderSizePixel = 0
TextTitle_2.Position = UDim2.new(0, 0, 0.267857134, 0)
TextTitle_2.Size = UDim2.new(0, 297, 0, 82)
TextTitle_2.Font = Enum.Font.Gotham
TextTitle_2.Text = "Im a text!"
TextTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextTitle_2.TextScaled = true
TextTitle_2.TextSize = 14.000
TextTitle_2.TextWrapped = true

Main.Transparency = 1
Panel.Transparency = 1
notificationOn.ImageTransparency = 1
notificationOn2.ImageTransparency = 1
TextTitle.TextTransparency = 1
TextTitle_2.TextTransparency = 1


function Show()
game.TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Transparency = 0
}):Play()
game.TweenService:Create(Panel, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Transparency = 0
}):Play()
game.TweenService:Create(notificationOn, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	ImageTransparency = 0
}):Play()
game.TweenService:Create(notificationOn2, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	ImageTransparency = 0
}):Play()
game.TweenService:Create(TextTitle, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 0
}):Play()
game.TweenService:Create(TextTitle_2, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 0
}):Play()
end

function Hide()
game.TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Transparency = 1
}):Play()
game.TweenService:Create(Panel, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Transparency = 1
}):Play()
game.TweenService:Create(notificationOn, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	ImageTransparency = 1
}):Play()
game.TweenService:Create(notificationOn2, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	ImageTransparency = 1
}):Play()
game.TweenService:Create(TextTitle, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 1
}):Play()
game.TweenService:Create(TextTitle_2, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 1
}):Play()
end


function Notify(text, title, time)
	Show()
	TextTitle_2.Text = title
	TextTitle.Text = text
	wait(time)
	Hide()
end


local lib = {}
function lib.Notify(text, title, time)
    Notify(text, title, time, true)
end

return lib
