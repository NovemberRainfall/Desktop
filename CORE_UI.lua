local DesktopApp = {}
local RGB = Color3.fromRGB; local _D2 = UDim2.new
--[[
    [1] = DesktopApp
    [2] = UI
]]


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; ScreenGui.Name = "App"; ScreenGui.Parent = game.CoreGui

local CanvasGroup = Instance.new("CanvasGroup", ScreenGui)
CanvasGroup.BorderSizePixel = 0
CanvasGroup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CanvasGroup.Size = UDim2.new(0, 386, 0, 338)
CanvasGroup.Position = UDim2.new(0, 190, 0, 90)
local CUI = CanvasGroup

local UICorner = Instance.new("UICorner", CanvasGroup)
UICorner.CornerRadius = UDim.new(0, 6)

local MainUI = Instance.new("Frame", CanvasGroup)
MainUI.BorderSizePixel = 0
MainUI.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
MainUI.Size = UDim2.new(1, 0, 1, -30)
MainUI.Position = UDim2.new(0, 0, 0, 30)
MainUI.Name = [[MainUI]]
local UI = MainUI

local DropShadow1 = Instance.new("UIStroke", CanvasGroup)
DropShadow1.Transparency = 0.8
DropShadow1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DropShadow1.Name = [[DropShadow1]]
DropShadow1.Thickness = 2.5
DropShadow1.Color = Color3.fromRGB(30,30,30)

local DropShadow2 = Instance.new("UIStroke", CanvasGroup)
DropShadow2.Transparency = 0.9
DropShadow2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DropShadow2.Name = [[DropShadow2]]
DropShadow2.Thickness =3.8
DropShadow2.Color = Color3.fromRGB(23,23,23)

local Topbar = Instance.new("Frame", CanvasGroup)
Topbar.BorderSizePixel = 0
Topbar.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Topbar.Size = UDim2.new(1, 0, 0, 30)
Topbar.Name = [[Topbar]]

local MinimizeUI = Instance.new("TextButton", Topbar)
MinimizeUI.TextWrapped = true
MinimizeUI.RichText = true
MinimizeUI.BorderSizePixel = 0
MinimizeUI.TextSize = 14
MinimizeUI.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MinimizeUI.FontFace = Font.new([[rbxasset://fonts/families/RobotoCondensed.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
MinimizeUI.BackgroundTransparency = 1
MinimizeUI.Size = UDim2.new(0, 26, 0, 18)
MinimizeUI.Text = [[─]]
MinimizeUI.Name = [[MinimizeUI]]
MinimizeUI.Position = UDim2.new(1, -88, 0, 6)

local CloseUI = Instance.new("TextButton", Topbar)
CloseUI.TextWrapped = true
CloseUI.RichText = true
CloseUI.BorderSizePixel = 0
CloseUI.TextSize = 14
CloseUI.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseUI.FontFace = Font.new([[rbxasset://fonts/families/RobotoCondensed.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CloseUI.BackgroundTransparency = 1
CloseUI.Size = UDim2.new(0, 22, 0, 18)
CloseUI.Text = [[<b>╳</b>]]
CloseUI.Name = [[CloseUI]]
CloseUI.Position = UDim2.new(1, -26, 0, 6)

-- currently does nothing
local MaxUI = Instance.new("TextButton", Topbar)
MaxUI.TextWrapped = true
MaxUI.RichText = true
MaxUI.BorderSizePixel = 0
MaxUI.TextSize = 14
MaxUI.TextColor3 = Color3.fromRGB(255, 255, 255)
MaxUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaxUI.FontFace = Font.new([[rbxasset://fonts/families/RobotoCondensed.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
MaxUI.BackgroundTransparency = 1
MaxUI.Size = UDim2.new(0, 26, 0, 18)
MaxUI.Text = [[<b>▢</b>]]
MaxUI.Name = [[MaxUI]]
MaxUI.Position = UDim2.new(1, -58, 0, 6)

local AppImageIcon = Instance.new("ImageLabel", Topbar)
AppImageIcon.BorderSizePixel = 0
AppImageIcon.ScaleType = Enum.ScaleType.Fit
AppImageIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AppImageIcon.Size = UDim2.new(0, 22, 0, 22)
AppImageIcon.BackgroundTransparency = 1
AppImageIcon.Name = [[AppImageIcon]]
AppImageIcon.Position = UDim2.new(0, 4, 0, 4)
AppImageIcon.Draggable = true
AppImageIcon.Image = "rbxassetid://79168781763218"

local AppName = Instance.new("TextLabel", Topbar)
AppName.BorderSizePixel = 0
AppName.TextSize = 14
AppName.TextXAlignment = Enum.TextXAlignment.Left
AppName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AppName.FontFace = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AppName.TextColor3 = Color3.fromRGB(255, 255, 255)
AppName.BackgroundTransparency = 1
AppName.Size = UDim2.new(1, -120, 0, 24)
AppName.Text = [[Windows Library]]
AppName.Name = [[AppName]]
AppName.Position = UDim2.new(0, 34, 0, 2)
AppName.RichText = true

local UIDragDetector = Instance.new("UIDragDetector", CanvasGroup)

local ImageButton = Instance.new("ImageButton", ScreenGui)
ImageButton.BorderSizePixel = 0
ImageButton.AutoButtonColor = false
ImageButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ImageButton.Size = UDim2.new(0, 60, 0, 60)
ImageButton.Position = UDim2.new(0, 72, 0, 28)
ImageButton.Visible = false
ImageButton.Draggable = true -- UIDragDetector will broke mousebutton1click
ImageButton.Image = "rbxassetid://79168781763218"

local UICorner4 = Instance.new("UICorner", ImageButton)

local UIStroke4 = Instance.new("UIStroke", ImageButton)
UIStroke4.Transparency = 0.85
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Thickness = 1.5
UIStroke4.Color = Color3.fromRGB(53, 53, 53)

local UIStroke5 = Instance.new("UIStroke", ImageButton)
UIStroke5.Transparency = 0.95
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Thickness = 2.5
UIStroke5.Color = Color3.fromRGB(72, 72, 72)


MinimizeUI.MouseButton1Click:Connect(function()
    CanvasGroup.Visible = false; ImageButton.Visible = true; end)

ImageButton.MouseButton1Click:Connect(function()
    CanvasGroup.Visible = true; ImageButton.Visible = false; end)

CloseUI.MouseButton1Click:Connect(function()
    ScreenGui:Destroy(); end)

function DesktopApp.Interface(Properties)
    CUI.Size = Properties.Size or _D2(0, 386, 0, 338)
    CUI.Position = Properties.Position or _D2(0,190,0,90)
end

function DesktopApp.NoShadow(bool)
    local disable = bool or false
    if disable then
        DropShadow1.Enabled = false
        DropShadow2.Enabled = false
    end
end

function DesktopApp.UICorner(T)
    UICorner.CornerRadius = T or _D2(0,6)
end

function DesktopApp.Color(color)
    Topbar.BackgroundColor3 = color.Topbar or RGB(51,51,51)
    AppName.TextColor3 = color.Name or RGB(255,255,255)
    UI.BackgroundColor3 = color.Background or RGB(37,37,37)
    MaxUI.TextColor3 = color.MaxButton or RGB(255,255,255);
    MinimizeUI.TextColor3 = color.MinButton or RGB(255,255,255);
    CloseUI.TextColor3 = color.CloseButton or RGB(255,255,255)
    ImageButton.BackgroundColor3 = color.FloatingButton or RGB(29,29,29)
end

function DesktopApp.DisableMaxmize(Bool)
    local _Bool = Bool or false
    if _Bool then
        MaxUI.Visible = false
        MinimizeUI.Position = _D2(1, -58, 0, 6)
    end
end

function DesktopApp.Name(text)
    AppName.Text = text or "Windows Apps"
end

function DesktopApp.Icon(id)
    local image = id or "79168781763218"
    AppImageIcon.Image = "rbxassetid://".. image
    ImageButton.Image = "rbxassetid://".. image
end

function DesktopApp.FButton(FT)
    ImageButton.Size = FT.Size or _D2(0,60,0,60)
    ImageButton.Position = FT.Position or _D2(0,78,0,28)
    UICorner4.CornerRadius = FT.CornerRadius or D2(0,8)
end

return {DesktopApp, MainUI}
