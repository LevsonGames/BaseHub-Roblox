local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local colors = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(255, 140, 0),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("LevsonGames_Hacks", colors)
local Tab1 = Window:NewTab("Character")
local Section1 = Tab1:NewSection("Character options")
Section1:NewTextBox("Speed", "Change speed", function(txt)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)
Section1:NewTextBox("Jump Power", "Change jump power", function(txt)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = txt
end)
Section1:NewButton("Fly", "Enable fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)
Section1:NewButton("Noclip", "Enable noclip", function()
    local Workspace = game:GetService("Workspace")
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    local Noclip = Instance.new("ScreenGui")
    local BG = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Toggle = Instance.new("TextButton")
    local StatusPF = Instance.new("TextLabel")
    local Status = Instance.new("TextLabel")
    local Plr = Players.LocalPlayer
    local Clipon = false

    Noclip.Name = "Noclip"
    Noclip.Parent = game.CoreGui

    BG.Name = "BG"
    BG.Parent = Noclip
    BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    BG.BorderSizePixel = 2
    BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
    BG.Size = UDim2.new(0, 210, 0, 127)
    BG.Active = true
    BG.Draggable = true

    Title.Name = "Title"
    Title.Parent = BG
    Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.BorderSizePixel = 2
    Title.Size = UDim2.new(0, 210, 0, 33)
    Title.Font = Enum.Font.Highway
    Title.Text = "Noclip"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.FontSize = Enum.FontSize.Size32
    Title.TextSize = 30
    Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.TextStrokeTransparency = 0

    Toggle.Parent = BG
    Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.BorderSizePixel = 2
    Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
    Toggle.Size = UDim2.new(0, 146, 0, 36)
    Toggle.Font = Enum.Font.Highway
    Toggle.FontSize = Enum.FontSize.Size28
    Toggle.Text = "Toggle"
    Toggle.TextColor3 = Color3.new(1, 1, 1)
    Toggle.TextSize = 25
    Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.TextStrokeTransparency = 0

    StatusPF.Name = "StatusPF"
    StatusPF.Parent = BG
    StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
    StatusPF.BackgroundTransparency = 1
    StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
    StatusPF.Size = UDim2.new(0, 56, 0, 20)
    StatusPF.Font = Enum.Font.Highway
    StatusPF.FontSize = Enum.FontSize.Size24
    StatusPF.Text = "Status:"
    StatusPF.TextColor3 = Color3.new(1, 1, 1)
    StatusPF.TextSize = 20
    StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
    StatusPF.TextStrokeTransparency = 0
    StatusPF.TextWrapped = true

    Status.Name = "Status"
    Status.Parent = BG
    Status.BackgroundColor3 = Color3.new(1, 1, 1)
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
    Status.Size = UDim2.new(0, 56, 0, 20)
    Status.Font = Enum.Font.Highway
    Status.FontSize = Enum.FontSize.Size14
    Status.Text = "off"
    Status.TextColor3 = Color3.new(0.666667, 0, 0)
    Status.TextScaled = true
    Status.TextSize = 14
    Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Status.TextWrapped = true
    Status.TextXAlignment = Enum.TextXAlignment.Left


    Toggle.MouseButton1Click:connect(function()
        if Status.Text == "off" then
            Clipon = true
            Status.Text = "on"
            Status.TextColor3 = Color3.new(0,185,0)
            Stepped = game:GetService("RunService").Stepped:Connect(function()
                if not Clipon == false then
                    for a, b in pairs(Workspace:GetChildren()) do
                    if b.Name == Plr.Name then
                    for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                    if v:IsA("BasePart") then
                    v.CanCollide = false
                    end end end end
                else
                    Stepped:Disconnect()
                end
            end)
        elseif Status.Text == "on" then
            Clipon = false
            Status.Text = "off"
            Status.TextColor3 = Color3.new(170,0,0)
        end
    end)
end)
local Tab2 = Window:NewTab("Tools")
local Section2 = Tab2:NewSection("Tools")
Section2:NewButton("Dex", "Enable Dex Explorer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/dex2.0", true))()
end)
Section2:NewButton("Remote Spy", "Enable Remote Spy", function()
    
    -- FrontEnd // UI

    -- Objects

    local RemoteSpy = Instance.new("ScreenGui")
    local BG = Instance.new("Frame")
    local Ribbon = Instance.new("ImageLabel")
    local Hide = Instance.new("TextButton")
    local Title = Instance.new("TextLabel")
    local Remotes = Instance.new("ScrollingFrame")
    local Source = Instance.new("ScrollingFrame")
    local ButtonsFrame = Instance.new("Frame")
    local ToClipboard = Instance.new("TextButton")
    local Decompile = Instance.new("TextButton")
    local GetReturn = Instance.new("TextButton")
    local ClearList = Instance.new("TextButton")
    local CryptStrings = Instance.new("TextButton")
    local EnableSpy = Instance.new("TextButton")
    local Last = Instance.new("TextLabel")
    local Total = Instance.new("TextLabel")
    local Settings = Instance.new("TextButton")
    local SetRemotes = Instance.new("ScrollingFrame")
    local Storage = Instance.new("Frame")
    local RBTN = Instance.new("TextButton")
    local Icon = Instance.new("ImageLabel")
    local RemoteName = Instance.new("TextLabel")
    local ID = Instance.new("TextLabel")
    local SBTN = Instance.new("TextButton")
    local Icon_2 = Instance.new("ImageLabel")
    local RemoteName_2 = Instance.new("TextLabel")
    local ID_2 = Instance.new("TextLabel")
    local ScriptLine = Instance.new("Frame")
    local Line = Instance.new("TextLabel")
    local SourceText = Instance.new("TextLabel")
    local Tokens = Instance.new("TextLabel")
    local Strings = Instance.new("TextLabel")
    local Comments = Instance.new("TextLabel")
    local Keywords = Instance.new("TextLabel")
    local Globals = Instance.new("TextLabel")
    local RemoteHighlight = Instance.new("TextLabel")
    local Enabled = Instance.new("TextLabel")
    local FullScreen = Instance.new("TextButton")
    local SetRemotesTab = Instance.new("Frame")
    local FilterF = Instance.new("TextButton")
    local FilterE = Instance.new("TextButton")
    local Search = Instance.new("TextBox")
    local remotes_fired = 0
    local encrypt_string = false
    local spy_enabled = true

    local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
    local global_env = {"game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

    -- Properties

    RemoteSpy.Name = "RemoteSpy"
    RemoteSpy.Parent = game.CoreGui

    BG.Name = "BG"
    BG.Parent = RemoteSpy
    BG.Active = true
    BG.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
    BG.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    BG.Draggable = true
    BG.Position = UDim2.new(0.5, -700, 0.5, -400)
    BG.Size = UDim2.new(1, -300, 1, -200)
    BG.ClipsDescendants = true

    Ribbon.Name = "Ribbon"
    Ribbon.Parent = BG
    Ribbon.BackgroundColor3 = Color3.new(0.760784, 0.0117647, 0.317647)
    Ribbon.BorderSizePixel = 0
    Ribbon.Size = UDim2.new(1, 0, 0, 20)
    Ribbon.ZIndex = 2

    Hide.Name = "Hide"
    Hide.Parent = Ribbon
    Hide.BackgroundColor3 = Color3.new(1, 0, 0)
    Hide.BorderSizePixel = 0
    Hide.Position = UDim2.new(1, -40, 0, 0)
    Hide.Size = UDim2.new(0, 40, 0, 20)
    Hide.ZIndex = 3
    Hide.Font = Enum.Font.SourceSansBold
    Hide.FontSize = Enum.FontSize.Size14
    Hide.Text = "_"
    Hide.TextColor3 = Color3.new(1, 1, 1)
    Hide.TextSize = 14

    Title.Name = "Title"
    Title.Parent = Ribbon
    Title.BackgroundColor3 = Color3.new(1, 0.0117647, 0.423529)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.5, -100, 0, 0)
    Title.Size = UDim2.new(0, 200, 0, 20)
    Title.ZIndex = 3
    Title.Font = Enum.Font.SourceSansBold
    Title.FontSize = Enum.FontSize.Size14
    Title.Text = "Remote2Script v2"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 14

    Remotes.Name = "Remotes"
    Remotes.Parent = BG
    Remotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Remotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    Remotes.Position = UDim2.new(0, 10, 0, 80)
    Remotes.CanvasSize = UDim2.new(0, 0, 40, 0)
    Remotes.Size = UDim2.new(0, 250, 1, -90)
    Remotes.ZIndex = 2
    Remotes.BottomImage = "rbxassetid://148970562"
    Remotes.MidImage = "rbxassetid://148970562"
    Remotes.ScrollBarThickness = 5
    Remotes.TopImage = "rbxassetid://148970562"

    Source.Name = "Source"
    Source.Parent = BG
    Source.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Source.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    Source.Position = UDim2.new(0, 270, 0, 80)
    Source.Size = UDim2.new(1, -280, 1, -90)
    Source.ZIndex = 2
    Source.BottomImage = "rbxassetid://148970562"
    Source.CanvasSize = UDim2.new(3, 0, 160, 0)
    Source.MidImage = "rbxassetid://148970562"
    Source.ScrollBarThickness = 5
    Source.TopImage = "rbxassetid://148970562"

    ButtonsFrame.Name = "ButtonsFrame"
    ButtonsFrame.Parent = BG
    ButtonsFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    ButtonsFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    ButtonsFrame.Position = UDim2.new(0, 10, 0, 30)
    ButtonsFrame.Size = UDim2.new(1, -20, 0, 40)
    ButtonsFrame.ZIndex = 2
    ButtonsFrame.ClipsDescendants = true

    ToClipboard.Name = "ToClipboard"
    ToClipboard.Parent = ButtonsFrame
    ToClipboard.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    ToClipboard.BorderColor3 = Color3.new(0.117647, 0.392157, 0.117647)
    ToClipboard.Position = UDim2.new(0, 10, 0.5, -10)
    ToClipboard.Size = UDim2.new(0, 100, 0, 20)
    ToClipboard.ZIndex = 3
    ToClipboard.Font = Enum.Font.SourceSansBold
    ToClipboard.FontSize = Enum.FontSize.Size14
    ToClipboard.Text = "COPY"
    ToClipboard.TextColor3 = Color3.new(0.235294, 0.784314, 0.235294)
    ToClipboard.TextSize = 14

    Decompile.Name = "Decompile"
    Decompile.Parent = ButtonsFrame
    Decompile.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Decompile.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
    Decompile.Position = UDim2.new(0, 120, 0.5, -10)
    Decompile.Size = UDim2.new(0, 100, 0, 20)
    Decompile.ZIndex = 3
    Decompile.Font = Enum.Font.SourceSansBold
    Decompile.FontSize = Enum.FontSize.Size14
    Decompile.Text = "DECOMPILE"
    Decompile.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Decompile.TextSize = 14

    GetReturn.Name = "GetReturn"
    GetReturn.Parent = ButtonsFrame
    GetReturn.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    GetReturn.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
    GetReturn.Position = UDim2.new(0, 230, 0.5, -10)
    GetReturn.Size = UDim2.new(0, 100, 0, 20)
    GetReturn.ZIndex = 3
    GetReturn.Font = Enum.Font.SourceSansBold
    GetReturn.FontSize = Enum.FontSize.Size14
    GetReturn.Text = "GET RETURN"
    GetReturn.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    GetReturn.TextSize = 14

    ClearList.Name = "ClearList"
    ClearList.Parent = ButtonsFrame
    ClearList.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    ClearList.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
    ClearList.Position = UDim2.new(0, 340, 0.5, -10)
    ClearList.Size = UDim2.new(0, 100, 0, 20)
    ClearList.ZIndex = 3
    ClearList.Font = Enum.Font.SourceSansBold
    ClearList.FontSize = Enum.FontSize.Size14
    ClearList.Text = "CLEAR LOGS"
    ClearList.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    ClearList.TextSize = 14

    CryptStrings.Name = "CryptStrings"
    CryptStrings.Parent = ButtonsFrame
    CryptStrings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    CryptStrings.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
    CryptStrings.Position = UDim2.new(0, 450, 0.5, -10)
    CryptStrings.Size = UDim2.new(0, 100, 0, 20)
    CryptStrings.ZIndex = 3
    CryptStrings.Font = Enum.Font.SourceSansBold
    CryptStrings.FontSize = Enum.FontSize.Size14
    CryptStrings.Text = "CRYPT STRINGS"
    CryptStrings.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
    CryptStrings.TextSize = 14

    EnableSpy.Name = "EnableSpy"
    EnableSpy.Parent = ButtonsFrame
    EnableSpy.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    EnableSpy.BorderColor3 = Color3.fromRGB(30, 100, 30)
    EnableSpy.Position = UDim2.new(0, 560, 0.5, -10)
    EnableSpy.Size = UDim2.new(0, 100, 0, 20)
    EnableSpy.ZIndex = 3
    EnableSpy.Font = Enum.Font.SourceSansBold
    EnableSpy.FontSize = Enum.FontSize.Size14
    EnableSpy.Text = "REMOTESPY"
    EnableSpy.TextColor3 = Color3.fromRGB(60, 200, 60)
    EnableSpy.TextSize = 14

    Last.Name = "Last"
    Last.Parent = ButtonsFrame
    Last.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Last.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
    Last.Position = UDim2.new(0, 670, 0.5, -10)
    Last.Size = UDim2.new(0, 200, 0, 20)
    Last.ZIndex = 3
    Last.Font = Enum.Font.SourceSansBold
    Last.FontSize = Enum.FontSize.Size14
    Last.Text = ""
    Last.TextColor3 = Color3.new(1, 1, 1)
    Last.TextSize = 14
    Last.TextWrapped = true

    Total.Name = "Total"
    Total.Parent = ButtonsFrame
    Total.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Total.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
    Total.Position = UDim2.new(0, 880, 0.5, -10)
    Total.Size = UDim2.new(0, 50, 0, 20)
    Total.ZIndex = 3
    Total.Font = Enum.Font.SourceSansBold
    Total.FontSize = Enum.FontSize.Size14
    Total.Text = "0"
    Total.TextColor3 = Color3.new(1, 1, 1)
    Total.TextSize = 14
    Total.TextWrapped = true

    Settings.Name = "Settings"
    Settings.Parent = ButtonsFrame
    Settings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Settings.BorderColor3 = Color3.new(0.117647, 0.392157, 0.392157)
    Settings.Position = UDim2.new(1, -110, 0.5, -10)
    Settings.Size = UDim2.new(0, 100, 0, 20)
    Settings.ZIndex = 3
    Settings.Font = Enum.Font.SourceSansBold
    Settings.FontSize = Enum.FontSize.Size14
    Settings.Text = "REMOTES"
    Settings.TextColor3 = Color3.new(0.235294, 0.784314, 0.784314)
    Settings.TextSize = 14

    SetRemotes.Name = "SetRemotes"
    SetRemotes.Parent = BG
    SetRemotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    SetRemotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    SetRemotes.Position = UDim2.new(0, 270, 0, 80)
    SetRemotes.Size = UDim2.new(1, -280, 1, -140)
    SetRemotes.Visible = false
    SetRemotes.ZIndex = 2
    SetRemotes.BottomImage = "rbxassetid://148970562"
    SetRemotes.CanvasSize = UDim2.new(0, 0, 25, 0)
    SetRemotes.MidImage = "rbxassetid://148970562"
    SetRemotes.ScrollBarThickness = 5
    SetRemotes.TopImage = "rbxassetid://148970562"

    Storage.Name = "Storage"
    Storage.Parent = RemoteSpy
    Storage.BackgroundColor3 = Color3.new(1, 1, 1)
    Storage.Size = UDim2.new(0, 100, 0, 100)
    Storage.Visible = false

    RBTN.Name = "RBTN"
    RBTN.Parent = Storage
    RBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    RBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    RBTN.Position = UDim2.new(0, 10, 0, 10)
    RBTN.Size = UDim2.new(1, -20, 0, 20)
    RBTN.ZIndex = 3
    RBTN.Font = Enum.Font.SourceSansBold
    RBTN.FontSize = Enum.FontSize.Size14
    RBTN.Text = ""
    RBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    RBTN.TextSize = 14
    RBTN.TextXAlignment = Enum.TextXAlignment.Left

    Icon.Name = "Icon"
    Icon.Parent = RBTN
    Icon.BackgroundColor3 = Color3.new(1, 1, 1)
    Icon.BackgroundTransparency = 1
    Icon.Size = UDim2.new(0, 20, 0, 20)
    Icon.ZIndex = 4
    Icon.Image = "rbxassetid://413369506"

    RemoteName.Name = "RemoteName"
    RemoteName.Parent = RBTN
    RemoteName.BackgroundColor3 = Color3.new(0.713726, 0.00392157, 0.298039)
    RemoteName.BorderSizePixel = 0
    RemoteName.Position = UDim2.new(0, 30, 0, 0)
    RemoteName.Size = UDim2.new(0, 140, 0, 20)
    RemoteName.ZIndex = 4
    RemoteName.Font = Enum.Font.SourceSansBold
    RemoteName.FontSize = Enum.FontSize.Size14
    RemoteName.Text = "10"
    RemoteName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    RemoteName.TextSize = 14

    ID.Name = "ID"
    ID.Parent = RBTN
    ID.BackgroundColor3 = Color3.new(0.458824, 0.00392157, 0.192157)
    ID.BorderSizePixel = 0
    ID.Position = UDim2.new(1, -50, 0, 0)
    ID.Size = UDim2.new(0, 50, 0, 20)
    ID.ZIndex = 4
    ID.Font = Enum.Font.SourceSansBold
    ID.FontSize = Enum.FontSize.Size14
    ID.Text = "10"
    ID.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    ID.TextSize = 14

    SBTN.Name = "SBTN"
    SBTN.Parent = Storage
    SBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    SBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    SBTN.Position = UDim2.new(0, 10, 0, 10)
    SBTN.Size = UDim2.new(1, -20, 0, 20)
    SBTN.ZIndex = 3
    SBTN.Font = Enum.Font.SourceSansBold
    SBTN.FontSize = Enum.FontSize.Size14
    SBTN.Text = ""
    SBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    SBTN.TextSize = 11
    SBTN.TextXAlignment = Enum.TextXAlignment.Left

    Icon_2.Name = "Icon"
    Icon_2.Parent = SBTN
    Icon_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Icon_2.BackgroundTransparency = 1
    Icon_2.Size = UDim2.new(0, 20, 0, 20)
    Icon_2.ZIndex = 4
    Icon_2.Image = "rbxassetid://413369506"

    RemoteName_2.Name = "RemoteName"
    RemoteName_2.Parent = SBTN
    RemoteName_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    RemoteName_2.BorderSizePixel = 1
    RemoteName_2.BorderColor3 = Color3.fromRGB(62, 62, 62)
    RemoteName_2.Position = UDim2.new(0, 30, 0, 0)
    RemoteName_2.Size = UDim2.new(0, 140, 0, 20)
    RemoteName_2.ZIndex = 4
    RemoteName_2.Font = Enum.Font.SourceSansBold
    RemoteName_2.FontSize = Enum.FontSize.Size14
    RemoteName_2.Text = "SayMessageRequest"
    RemoteName_2.TextColor3 = Color3.fromRGB(200, 200, 200)
    RemoteName_2.TextSize = 11

    ID_2.Name = "ID"
    ID_2.Parent = SBTN
    ID_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ID_2.BorderSizePixel = 1
    ID_2.BorderColor3 = Color3.fromRGB(62, 62, 62)
    ID_2.Position = UDim2.new(1, -700, 0, 0)
    ID_2.Size = UDim2.new(0, 700, 0, 20)
    ID_2.ZIndex = 3
    ID_2.Font = Enum.Font.SourceSansBold
    ID_2.FontSize = Enum.FontSize.Size14
    ID_2.Text = "10"
    ID_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    ID_2.TextSize = 14

    ScriptLine.Name = "ScriptLine"
    ScriptLine.Parent = Storage
    ScriptLine.BackgroundColor3 = Color3.new(1, 1, 1)
    ScriptLine.BackgroundTransparency = 1
    ScriptLine.Size = UDim2.new(1, 0, 0, 17)
    ScriptLine.ZIndex = 2

    Line.Name = "Line"
    Line.Parent = ScriptLine
    Line.BackgroundColor3 = Color3.new(0.329412, 0, 0)
    Line.BackgroundTransparency = 1
    Line.BorderSizePixel = 0
    Line.Size = UDim2.new(0, 40, 1, 0)
    Line.ZIndex = 3
    Line.Font = Enum.Font.SourceSansBold
    Line.FontSize = Enum.FontSize.Size18
    Line.Text = ""
    Line.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Line.TextSize = 17

    SourceText.Name = "SourceText"
    SourceText.Parent = ScriptLine
    SourceText.BackgroundColor3 = Color3.new(1, 1, 1)
    SourceText.BackgroundTransparency = 1
    SourceText.Position = UDim2.new(0, 40, 0, 0)
    SourceText.Size = UDim2.new(1, -40, 1, 0)
    SourceText.ZIndex = 3
    SourceText.Font = Enum.Font.Code
    SourceText.FontSize = Enum.FontSize.Size18
    SourceText.Text = ""
    SourceText.TextColor3 = Color3.new(1, 1, 1)
    SourceText.TextSize = 17
    SourceText.TextXAlignment = Enum.TextXAlignment.Left

    Tokens.Name = "Tokens"
    Tokens.Parent = ScriptLine
    Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
    Tokens.BackgroundTransparency = 1
    Tokens.Position = UDim2.new(0, 40, 0, 0)
    Tokens.Size = UDim2.new(1, -40, 1, 0)
    Tokens.ZIndex = 3
    Tokens.Font = Enum.Font.Code
    Tokens.FontSize = Enum.FontSize.Size18
    Tokens.Text = ""
    Tokens.TextColor3 = Color3.new(0.392157, 0.392157, 0.392157)
    Tokens.TextSize = 17
    Tokens.TextXAlignment = Enum.TextXAlignment.Left

    Strings.Name = "Strings"
    Strings.Parent = ScriptLine
    Strings.BackgroundColor3 = Color3.new(1, 1, 1)
    Strings.BackgroundTransparency = 1
    Strings.Position = UDim2.new(0, 40, 0, 0)
    Strings.Size = UDim2.new(1, -40, 1, 0)
    Strings.ZIndex = 5
    Strings.Font = Enum.Font.Code
    Strings.FontSize = Enum.FontSize.Size18
    Strings.Text = ""
    Strings.TextColor3 = Color3.new(1, 0.615686, 0)
    Strings.TextSize = 17
    Strings.TextXAlignment = Enum.TextXAlignment.Left

    Comments.Name = "Comments"
    Comments.Parent = ScriptLine
    Comments.BackgroundColor3 = Color3.new(1, 1, 1)
    Comments.BackgroundTransparency = 1
    Comments.Position = UDim2.new(0, 40, 0, 0)
    Comments.Size = UDim2.new(1, -40, 1, 0)
    Comments.ZIndex = 5
    Comments.Font = Enum.Font.Code
    Comments.FontSize = Enum.FontSize.Size18
    Comments.Text = ""
    Comments.TextColor3 = Color3.fromRGB(60, 200, 60)
    Comments.TextSize = 17
    Comments.TextXAlignment = Enum.TextXAlignment.Left

    RemoteHighlight.Name = "RemoteHighlight"
    RemoteHighlight.Parent = ScriptLine
    RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
    RemoteHighlight.BackgroundTransparency = 1
    RemoteHighlight.Position = UDim2.new(0, 40, 0, 0)
    RemoteHighlight.Size = UDim2.new(1, -40, 1, 0)
    RemoteHighlight.ZIndex = 3
    RemoteHighlight.Font = Enum.Font.Code
    RemoteHighlight.FontSize = Enum.FontSize.Size18
    RemoteHighlight.Text = ""
    RemoteHighlight.TextColor3 = Color3.fromRGB(0, 145, 255)
    RemoteHighlight.TextSize = 17
    RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left

    Keywords.Name = "Keywords"
    Keywords.Parent = ScriptLine
    Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
    Keywords.BackgroundTransparency = 1
    Keywords.Position = UDim2.new(0, 40, 0, 0)
    Keywords.Size = UDim2.new(1, -40, 1, 0)
    Keywords.ZIndex = 3
    Keywords.Font = Enum.Font.Code
    Keywords.FontSize = Enum.FontSize.Size18
    Keywords.Text = ""
    Keywords.TextColor3 = Color3.new(0.231373, 1, 0)
    Keywords.TextSize = 17
    Keywords.TextXAlignment = Enum.TextXAlignment.Left

    Globals.Name = "Globals"
    Globals.Parent = ScriptLine
    Globals.BackgroundColor3 = Color3.new(1, 1, 1)
    Globals.BackgroundTransparency = 1
    Globals.Position = UDim2.new(0, 40, 0, 0)
    Globals.Size = UDim2.new(1, -40, 1, 0)
    Globals.ZIndex = 3
    Globals.Font = Enum.Font.Code
    Globals.FontSize = Enum.FontSize.Size18
    Globals.Text = ""
    Globals.TextColor3 = Color3.new(1, 0, 0)
    Globals.TextSize = 17
    Globals.TextXAlignment = Enum.TextXAlignment.Left

    Enabled.Name = "Enabled"
    Enabled.Parent = SBTN
    Enabled.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Enabled.BorderSizePixel = 1
    Enabled.BorderColor3 = Color3.fromRGB(30, 100, 30)
    Enabled.Position = UDim2.new(0, 210, 0, 0)
    Enabled.Size = UDim2.new(0, 100, 1, 0)
    Enabled.ZIndex = 4
    Enabled.Font = Enum.Font.SourceSansBold
    Enabled.FontSize = Enum.FontSize.Size14
    Enabled.Text = "Enabled"
    Enabled.TextColor3 = Color3.fromRGB(60, 200, 60)
    Enabled.TextSize = 14

    FullScreen.Name = "FullScreen"
    FullScreen.Parent = Ribbon
    FullScreen.BackgroundColor3 = Color3.new(1, 0, 0)
    FullScreen.BorderSizePixel = 0
    FullScreen.Position = UDim2.new(1, -90, 0, 0)
    FullScreen.Size = UDim2.new(0, 40, 0, 20)
    FullScreen.ZIndex = 3
    FullScreen.Font = Enum.Font.SourceSansBold
    FullScreen.FontSize = Enum.FontSize.Size14
    FullScreen.Text = "[~]"
    FullScreen.TextColor3 = Color3.new(1, 1, 1)
    FullScreen.TextSize = 14

    SetRemotesTab.Name = "SetRemotesTab"
    SetRemotesTab.Parent = BG
    SetRemotesTab.Visible = false
    SetRemotesTab.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    SetRemotesTab.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    SetRemotesTab.ClipsDescendants = true
    SetRemotesTab.Position = UDim2.new(0, 270, 1, -50)
    SetRemotesTab.Size = UDim2.new(1, -280, 0, 40)
    SetRemotesTab.ZIndex = 2

    FilterF.Name = "FilterF"
    FilterF.Parent = SetRemotesTab
    FilterF.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    FilterF.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
    FilterF.Position = UDim2.new(0, 120, 0.5, -10)
    FilterF.Size = UDim2.new(0, 120, 0, 20)
    FilterF.ZIndex = 3
    FilterF.Font = Enum.Font.SourceSansBold
    FilterF.FontSize = Enum.FontSize.Size14
    FilterF.Text = "FILTER FUNCTIONS"
    FilterF.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
    FilterF.TextSize = 14

    FilterE.Name = "FilterE"
    FilterE.Parent = SetRemotesTab
    FilterE.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    FilterE.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
    FilterE.Position = UDim2.new(0, 10, 0.5, -10)
    FilterE.Size = UDim2.new(0, 100, 0, 20)
    FilterE.ZIndex = 3
    FilterE.Font = Enum.Font.SourceSansBold
    FilterE.FontSize = Enum.FontSize.Size14
    FilterE.Text = "FILTER EVENTS"
    FilterE.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
    FilterE.TextSize = 14

    Search.Name = "Search"
    Search.Parent = SetRemotesTab
    Search.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Search.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
    Search.Position = UDim2.new(0, 250, 0.5, -10)
    Search.Selectable = true
    Search.Size = UDim2.new(1, -260, 0, 20)
    Search.ZIndex = 3
    Search.Font = Enum.Font.SourceSansBold
    Search.FontSize = Enum.FontSize.Size14
    Search.Text = "[SEARCH]"
    Search.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Search.TextSize = 14

    -- FrontEnd-Backend // UI Functions

    local HasSpecial = function(string)
        return (string:match("%c") or string:match("%s") or string:match("%p")) ~= nil
    end

    local GetPath = function(Instance)
        local Obj = Instance
        local string = {}
        local temp = {}
        local error = false
        
        while Obj ~= game do
            if Obj == nil then
                error = true
                break
            end
            table.insert(temp, Obj.Parent == game and Obj.ClassName or tostring(Obj))
            Obj = Obj.Parent
        end
        
        table.insert(string, "game:GetService(\"" .. temp[#temp] .. "\")")
        
        for i = #temp - 1, 1, -1 do
            table.insert(string, HasSpecial(temp[i]) and "[\"" .. temp[i] .. "\"]" or "." .. temp[i])
        end

        return (error and "nil -- Path contained invalid instance" or table.concat(string, ""))
    end

    local GetType = function(Instance)
        local Types = 
        {
            EnumItem = function()
                return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
            end,
            Instance = function()
                return GetPath(Instance)
            end,
            CFrame = function()
                return "CFrame.new(" .. tostring(Instance) .. ")"
            end,
            Vector3 = function()
                return "Vector3.new(" .. tostring(Instance) .. ")"
            end,
            BrickColor = function()
                return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
            end,
            Color3 = function()
                return "Color3.new(" .. tostring(Instance) .. ")"
            end,
            string = function()
                local S = tostring(Instance)
                return "\"" .. (encrypt_string and S:gsub(".", function(c) return "\\" .. c:byte() end) or S) .. "\""
            end,
            Ray = function()
                return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
            end
        }

        return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
    end

    local size_frame = function(frame, UDim)
        frame:TweenSize(UDim, "Out", "Quint", 0.3)
    end

    local pos_frame = function(frame, UDim)
        frame:TweenPosition(UDim, "Out", "Quint", 0.3)
    end

    local size_pos_frame = function(frame, UDim, UDim2)
        frame:TweenSizeAndPosition(UDim, UDim2, "Out", "Quint", 0.3)
    end

    local hide = function()
        size_frame(BG, UDim2.new(0, 300, 0, 20))
        pos_frame(Title, UDim2.new(0, 0, 0, 0))
        pos_frame(Remotes, UDim2.new(0, 10, 0, 100))
        pos_frame(Source, UDim2.new(0, 270, 0, 100))
        BG.Draggable = true
        SetRemotes.Visible = false
        SetRemotesTab.Visible = false
        Source.Visible = true
        
        return "[]"
    end

    local show = function()
        size_frame(BG, UDim2.new(1, -300, 1, -200))
        pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
        pos_frame(Title, UDim2.new(0.5, -100, 0, 0))
        pos_frame(Remotes, UDim2.new(0, 10, 0, 80))
        pos_frame(Source, UDim2.new(0, 270, 0, 80))
        BG.Draggable = false
        
        return "_"
    end

    local onclick_hide = function()
        Hide.Text = Hide.Text == "_" and hide() or show()
    end

    local onclick_settings = function()
        Source.Visible = not Source.Visible
        SetRemotes.Visible = not Source.Visible
        SetRemotesTab.Visible = not Source.Visible
    end

    local onclick_remotespy = function()
        spy_enabled = not spy_enabled
        EnableSpy.TextColor3 = EnableSpy.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
        EnableSpy.BorderColor3 = EnableSpy.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
    end

    local onclick_cryptstring = function()
        encrypt_string = not encrypt_string
        CryptStrings.TextColor3 = CryptStrings.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
        CryptStrings.BorderColor3 = CryptStrings.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
    end

    local clear_logs = function()
        Remotes:ClearAllChildren()
        remotes_fired = 0
        Total.Text = "0"
    end

    local filter_events = function()
        local n = 0
        for i, v in pairs(SetRemotes:GetChildren()) do
            v.Visible = not (FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369623")
            if v.Visible == true then
                n = n + 1
                v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
            else
                v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
            end
        end
    end

    local filter_functions = function()
        local n = 0
        for i, v in pairs(SetRemotes:GetChildren()) do
            v.Visible = not (FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369506")
            if v.Visible == true then
                n = n + 1
                v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
            else
                v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
            end
        end
    end

    local onclick_fevents = function()
        FilterE.TextColor3 = FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
        FilterE.BorderColor3 = FilterE.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
        filter_events()
    end

    local onclick_ffunctions = function()
        FilterF.TextColor3 = FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
        FilterF.BorderColor3 = FilterF.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
        filter_functions()
    end

    local Highlight = function(string, keywords)
        local K = {}
        local S = string
        local Token =
        {
            ["="] = true,
            ["."] = true,
            [","] = true,
            ["("] = true,
            [")"] = true,
            ["["] = true,
            ["]"] = true,
            ["{"] = true,
            ["}"] = true,
            [":"] = true,
            ["*"] = true,
            ["/"] = true,
            ["+"] = true,
            ["-"] = true,
            ["%"] = true,
            [";"] = true,
            ["~"] = true
        }
        for i, v in pairs(keywords) do
            K[v] = true
        end
        S = S:gsub(".", function(c)
            if Token[c] ~= nil then
                return "\32"
            else
                return c
            end
        end)
        S = S:gsub("%S+", function(c)
            if K[c] ~= nil then
                return c
            else
                return (" "):rep(#c)
            end
        end)
    
        return S
    end

    local Tokens = function(string)
        local Token =
        {
            ["="] = true,
            ["."] = true,
            [","] = true,
            ["("] = true,
            [")"] = true,
            ["["] = true,
            ["]"] = true,
            ["{"] = true,
            ["}"] = true,
            [":"] = true,
            ["*"] = true,
            ["/"] = true,
            ["+"] = true,
            ["-"] = true,
            ["%"] = true,
            [";"] = true,
            ["~"] = true
        }
        local A = ""
        string:gsub(".", function(c)
            if Token[c] ~= nil then
                A = A .. c
            elseif c == "\n" then
                A = A .. "\n"
            elseif c == "\t" then
                A = A .. "\t"
            else
                A = A .. "\32"
            end
        end)
    
        return A
    end

    local strings = function(string)
        local highlight = ""
        local quote = false
        string:gsub(".", function(c)
            if quote == false and c == "\"" then
                quote = true
            elseif quote == true and c == "\"" then
                quote = false
            end
            if quote == false and c == "\"" then
                highlight = highlight .. "\""
            elseif c == "\n" then
                highlight = highlight .. "\n"
        elseif c == "\t" then
            highlight = highlight .. "\t"
            elseif quote == true then
                highlight = highlight .. c
            elseif quote == false then
                highlight = highlight .. "\32"
            end
        end)
    
        return highlight
    end

    local comments = function(string)
        local ret = ""
        string:gsub("[^\r\n]+", function(c)
            local comm = false
            local i = 0
            c:gsub(".", function(n)
                i = i + 1
                if c:sub(i, i + 1) == "--" then
                    comm = true
                end
                if comm == true then
                    ret = ret .. n
                else
                    ret = ret .. "\32"
                end
            end)
            ret = ret
        end)
        
        return ret
    end

    local copy_source = function()
        local script = ""
        local copy
        for i, v in pairs(Source:GetChildren()) do
            script = script .. v.SourceText.Text .. "\n"
        end
        if Clipboard ~= nil then
            copy = Clipboard.set
        elseif Synapse ~= nil then
            copy = function(str)
                Synapse:Copy(str)
            end
        elseif setclipboard ~= nil then	
            copy = setclipboard
        end
        copy(script)
    end

    local onclick_fullscreen = function()
        size_pos_frame(BG, UDim2.new(1, 0, 1, 40), UDim2.new(0, 0, 0, -40))
        BG.Draggable = false
    end

    local filter_remotes = function(type)
        local n = 0
        if type == "Text" then
            for i, v in pairs(SetRemotes:GetChildren()) do
                if v.Name:lower():match(Search.Text:lower()) and string ~= "" then
                    v.Visible = true
                    n = n + 1
                else
                    v.Visible = false
                end
                if v.Visible == true then
                    v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
                else
                    v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
                end
            end
        end
    end

    local fix = function(string)
        if string == "/e fix" then
            show()
            wait(0.3)
            pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
        end
    end

    -- FrontEnd-Connections // UI Events

    Hide.MouseButton1Down:Connect(onclick_hide)
    Settings.MouseButton1Down:Connect(onclick_settings)
    ClearList.MouseButton1Down:Connect(clear_logs)
    EnableSpy.MouseButton1Down:Connect(onclick_remotespy)
    ToClipboard.MouseButton1Down:Connect(copy_source)
    CryptStrings.MouseButton1Down:Connect(onclick_cryptstring)
    FullScreen.MouseButton1Down:Connect(onclick_fullscreen)
    FilterE.MouseButton1Down:Connect(onclick_fevents)
    FilterF.MouseButton1Down:Connect(onclick_ffunctions)
    Search.Changed:Connect(filter_remotes)
    game:GetService("Players").LocalPlayer.Chatted:Connect(fix)

    -- Recursive Remotefill // UI-Backend

    Table_TS = function(T)
        local M = {}
        for i, v in pairs(T) do
            local I = "\n\t" .. (type(i) == "number" and "[" .. i .. "] = " or "[\"" .. i .. "\"] = ")
            table.insert(M, I .. (type(v) == "table" and Table_TS(v) or GetType(v)))
        end
        
        return "\n{" .. table.concat(M, ", ") .. "\n}"
    end

    function fill(base)
        for i, v in pairs(base:GetChildren()) do
            if v.ClassName:match("Remote") and v.Name ~= "CharacterSoundEvent" then
                local B = SBTN:Clone()
                
                B.Parent = SetRemotes
                B.Icon.Image = (v.ClassName == "RemoteEvent" and "rbxassetid://413369506" or "rbxassetid://413369623")
                B.RemoteName.Text = v.Name
                B.ID.Text = GetPath(v)
                B.Name = v.Name
                B.Position = UDim2.new(0, 10, 0, -20 + #SetRemotes:GetChildren() * 30)
                B.MouseButton1Down:Connect(function()
                    B.Enabled.Text = B.Enabled.Text == "Enabled" and "Disabled" or "Enabled"
                    B.Enabled.TextColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(60, 200, 60) or Color3.fromRGB(200, 60, 60)
                    B.Enabled.BorderColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(30, 100, 30) or Color3.fromRGB(100, 30, 30)
                end)
            end
            fill(v)
        end
    end

    fill(game)

    -- Backend // Remotespy Backend

    local game_meta = getrawmetatable(game)
    local game_namecall = game_meta.__namecall
    local namecall_dump = {}
    local current_rmt = nil
    local g_caller = nil
    local f_return = nil
    local Step = game:GetService("RunService").Stepped

    local mwr

    if setreadonly ~= nil then
        mwr = function()
            setreadonly(game_meta, false)
        end
    elseif make_writeable ~= nil then	
        mwr = function()
            make_writeable(game_meta)
        end
    end

    mwr()

    local namecall_script = function(object, method, ...)
        local script = "-- Script generated by R2Sv2\n-- R2Sv2 developed by Luckyxero\n\32\n"
        local args = {}
        for i, v in pairs{...} do
            script = script .. "local A_" .. i .. " = " .. (type(v) == "table" and Table_TS(v) or GetType(v)) .. "\n"
            table.insert(args, "A_" .. i)
        end
        script = script .. "local Event = " .. GetPath(object) .. "\n\n"
        script = script .. "Event:" .. method .. "(" .. table.concat(args, ", ") .. ")"
        
        return script
    end

    local dump_script = function(script)
        Source:ClearAllChildren()
        local lines = 0
        script:gsub("[^\r\n]+", function(c)
            lines = lines + 1
            local tabs = 0
            c:gsub("%\t", function() tabs = tabs + 1 end)
            local line = ScriptLine:Clone()
            line.Parent = Source
            line.SourceText.Text = c 
            line.Line.Text = lines
            line.RemoteHighlight.Text = Highlight(c, {"FireServer", "InvokeServer", "invokeServer", "fireServer"})
            line.Position = UDim2.new(0, tabs * (17 * 2), 0, -17 + #Source:GetChildren() * 17)
            line.Globals.Text = Highlight(c, global_env)
            line.Line.Position = UDim2.new(0, 0 - tabs * (17 * 2), 0, 0)
            line.Strings.Text = strings(c)
            line.Keywords.Text = Highlight(c, lua_keywords)
            line.Tokens.Text = Tokens(c)
            line.Comments.Text = comments(c)
        end)
    end

    local log_remote = function(table)
        if SetRemotes[table.object.Name].Enabled.Text == "Disabled" then return end
        local B = RBTN:Clone()
        g_caller = table.caller
        remotes_fired = remotes_fired + 1
        Total.Text = remotes_fired

        B.Parent = Remotes
        B.Position = UDim2.new(0, 10, 0, -20 + #Remotes:GetChildren() * 30)
        B.Icon.Image = table.method == "FireServer" and "rbxassetid://413369506" or "rbxassetid://413369623"
        B.RemoteName.Text = table.object.Name
        B.ID.Text = tostring(remotes_fired)
        B.MouseButton1Down:Connect(function()
            dump_script(table.script)
            g_caller = table.caller
            f_return = table.freturn == nil and table.object.Name .. " is not RemoteFunction" or table.freturn
        end)
    end


    local get_namecall_dump = function(script, object, ...)
        local Ret = nil
        if object.ClassName == "RemoteFunction" then
            local freturn = {pcall(object.InvokeServer, object, ...)}
            freturn = {select(2, unpack(freturn))}
            
            if #freturn == 0 then
                Ret = object.Name .. " is a void type RemoteFunction."
            else
                Ret = Table_TS(freturn)
            end
        end
        namecall_dump[#namecall_dump + 1] = 
        {	
            script = namecall_script(object, object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer", ...),
            caller = script,
            object = object,
            method = object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer",
            freturn = Ret
        }
    end

    GetReturn.MouseButton1Down:Connect(function()
        dump_script(f_return)
    end)

    Decompile.MouseButton1Down:Connect(function()
        dump_script('Decompile currently broken with LuaU.')
    end)

    Step:Connect(function()
        while #namecall_dump > 0 do
            log_remote(table.remove(namecall_dump, 1))
        end
    end)

    local on_namecall = function(object, ...)
        local method = tostring(getnamecallmethod())
        local args = {...}
        if object.Name ~= "CharacterSoundEvent" and method:match("Server") and spy_enabled == true then get_namecall_dump(getfenv(2).script, object, unpack(args)) end

        return game_namecall(object, ...)
    end

    game_meta.__namecall = on_namecall
end)
local Tab3 = Window:NewTab("My scripts hub")
local Section3 = Tab3:NewSection("Scripts")
Section3:NewButton("Elevator of Fun", "", function()
    repeat
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Elevator.Walls.Part.CFrame
    until nil
end)
Section3:NewButton("Elevator of Fun coin farm", "Enable Coin autofarm", function()
    repeat
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Floor.Coins.Coin.CFrame
    until nil
end)
Section3:NewButton("Mega Miners", "Enable aurofarm", function()
    for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Diamond' then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end

    wait(1)

    for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Emerald' then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end

    wait(1)

    for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Crystal' then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end

end)
Section3:NewButton("Natural Disaster Survival", "Enable autofarm", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/fLATz9Sc')))()
end)
Section3:NewButton("Cursed islands", "Enable autofarm", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gjezEDXV"))()
end)
Section3:NewButton("Build a boat for treasure", "Enable autofarm", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/WADwbF6W"))()
end)
Section3:NewButton("Click to get bigger", "Enable autofarm", function()
    repeat
    wait(0.01)
    game:GetService("ReplicatedStorage").RemoteEvents.AddPoints:FireServer()
    game:GetService("ReplicatedStorage").RemoteEvents.Prestige:FireServer()
    until nil
end)

local Tab4 = Window:NewTab("Other")
local Section4 = Tab4:NewSection("Other")
Section4:NewButton("Cmds", "Enable Cmds", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section4:NewButton("Anti afk", "Enable Anti afk", function()
    local virtualUser = game:GetService('VirtualUser')
    print("Anti afk started!")
    virtualUser:CaptureController()
    while true do
    wait()
    virtualUser:SetKeyDown('0x1f')
    wait(2)
    virtualUser:SetKeyUp('0x1f')
    end
end)
