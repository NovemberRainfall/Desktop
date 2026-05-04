local DesktopApp = {}


local ScreenGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "App"

local CanvasGroup = Instance.new("CanvasGroup", ScreenGui)
CanvasGroup.BorderSizePixel = 0
CanvasGroup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CanvasGroup.Size = UDim2.new(0, 386, 0, 338)
CanvasGroup.Position = UDim2.new(0, 190, 0, 90)

local UICorner = Instance.new("UICorner", CanvasGroup)
UICorner.CornerRadius = UDim.new(0, 6)

local MainUI = Instance.new("Frame", CanvasGroup)
MainUI.BorderSizePixel = 0
MainUI.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
MainUI.Size = UDim2.new(1, 0, 1, -30)
MainUI.Position = UDim2.new(0, 0, 0, 30)
MainUI.Name = [[MainUI]]

local DropShadow1 = Instance.new("UIStroke", CanvasGroup)
DropShadow1.Transparency = 0.9
DropShadow1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DropShadow1.Name = [[DropShadow1]]
DropShadow1.Thickness = 1.5
DropShadow1.Color = Color3.fromRGB(43, 43, 43)

local DropShadow2 = Instance.new("UIStroke", CanvasGroup)
DropShadow2.Transparency = 0.95
DropShadow2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DropShadow2.Name = [[DropShadow2]]
DropShadow2.Thickness = 2.5
DropShadow2.Color = Color3.fromRGB(82, 82, 82)

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

local UIDragDetector = Instance.new("UIDragDetector", CanvasGroup)

local ImageButton = Instance.new("ImageButton", ScreenGui)
ImageButton.BorderSizePixel = 0
ImageButton.AutoButtonColor = false
ImageButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ImageButton.Size = UDim2.new(0, 60, 0, 60)
ImageButton.Position = UDim2.new(0, 72, 0, 28)
ImageButton.Visible = false

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

--[[=================================================]]


function DesktopApp.Name(text)
    AppName.Text = text or "App"
end

function DesktopApp.Icon(id)
    AppImageIcon = id or nil
    ImageButton = id or nil
end

function DesktopApp.Button(prop)
    local Button = Instance.new("TextButton")
    Button.TextWrapped = prop.TextWrapped or true
    Button.BorderSizePixel = 0
    Button.TextSize = prop.TextSize or 14
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    Button.FontFace = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Button.Size = prop.Size or UDim2.new(0, 32, 0, 32)
    Button.Text = prop.Text or "Button"
    Button.Name = prop.Name or "Button"
    Button.Position = prop.Position or UDim2.new(0,0,0,0)
    Button.Parent = prop.Parent or nil

    local UICorner2 = Instance.new("UICorner", Button)
    UICorner2.CornerRadius = UDim.new(0, 4)
    UICorner2.Enabled = prop.UICorner or true

    local UIStroke2 = Instance.new("UIStroke", Button)
    UIStroke2.Transparency = 0.7
    UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke2.Enabled = prop.UIStroke or true
    return {Button}
end

function DesktopApp.Textbox(prop)
    local Textbox = Instance.new("TextBox")
    Textbox.Name = prop.Name or "Textbox"
    Textbox.TextXAlignment = Enum.TextXAlignment.Left
    Textbox.BorderSizePixel = 0
    Textbox.TextWrapped = prop.TextWrapped or true
    Textbox.TextSize = prop.TextSize or 14
    Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    Textbox.TextYAlignment = Enum.TextYAlignment.Top
    Textbox.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    Textbox.Font = prop.Font or "BuilderSans"
    Textbox.MultiLine = prop.MultiLine or true
    Textbox.ClearTextOnFocus = prop.ClearTextOnFocus or false
    Textbox.PlaceholderText = prop.Placeholder or ""
    Textbox.Size = prop.Size or UDim2.new(0, 202, 0, 58)
    Textbox.Position = prop.Position or UDim2.new(0, 0, 0, 0)
    Textbox.Text = prop.Text or ""
    Textbox.Parent = prop.Parent or nil

    local UIStroke3 = Instance.new("UIStroke", Textbox)
    UIStroke3.Transparency = 0.7
    UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke3.Color = Color3.fromRGB(61, 61, 61)
    UIStroke3.Enabled = prop.UIStroke or true

    local UICorner3 = Instance.new("UICorner", Textbox)
    UICorner3.CornerRadius = UDim.new(0, 4)
    UICorner3.Enabled = prop.UICorner or true
    return {Textbox}
end

return {DesktopApp, MainUI}
