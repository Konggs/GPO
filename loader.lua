getgenv().code = "drQ7kAgFKo"







local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Yuuki Hub",
    SubTitle = "by Yuuki Hub",
    TabWidth = 120,
    Size = UDim2.fromOffset(400, 320),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "repeat" }),
}

local Toggle = Tabs.Main:AddToggle("autofarm", {Title = "Auto Farm", Default = false })

Toggle:OnChanged(function(Value)
    _G.farmlvl = Value
    while _G.farmlvl == true do
        local args = {
            [1] = {
                [1] = "takequest",
                [2] = "Help becky"
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer(unpack(args))        
    wait(5)
    local speed = 7
local x = 7724.93603515625
local y = -2162.831787109375
local z = -17308.427734375

local players = game:GetService("Players")
local lp = players.LocalPlayer
local char = lp.Character
local hrp = char:WaitForChild("HumanoidRootPart")

local tweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
local tween = tweenService:Create(hrp, tweenInfo, {Position = Vector3.new(x, y, z)})
tween:Play()
    end
end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Melee Stack ( Must Enable )", Default = false })
Toggle:OnChanged(function(Value)
    _G.meleestack = Value
    while wait(0.3) do
    local args = {
        [1] = {
            [1] = "damage",
            [2] = {
                [1] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [2] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [3] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [4] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [5] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [6] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [7] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [8] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [9] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [10] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [11] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [12] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [13] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [14] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [15] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [16] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [17] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [18] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [19] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [20] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [21] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [22] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [23] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [24] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [25] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [26] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [27] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [28] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [29] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [30] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [31] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [32] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [33] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [34] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [35] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [36] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [37] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [38] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [39] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [40] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [41] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [42] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [43] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [44] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [45] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [46] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [47] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [48] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [49] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [50] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [51] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [52] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [53] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [54] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [55] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [56] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [57] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [58] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [59] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [60] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [61] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [62] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [63] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [64] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [65] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [66] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [67] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [68] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [69] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [70] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [71] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [72] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [73] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [74] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [75] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [76] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [77] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [78] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [79] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [80] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [81] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [82] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [83] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [84] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [85] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [86] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [87] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [88] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [89] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [90] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [91] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [92] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [93] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [94] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [95] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [96] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [97] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [98] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [99] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [100] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [101] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [102] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [103] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [104] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [105] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [106] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [107] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [108] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [109] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [110] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [111] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [112] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [113] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [114] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [115] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [116] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [117] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [118] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [119] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [120] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [121] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [122] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [123] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [124] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [125] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [126] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [127] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [128] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [129] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [130] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [131] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [132] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [133] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [134] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [135] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [136] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [137] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [138] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [139] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [140] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [141] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [142] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [143] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [144] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [145] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [146] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [147] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [148] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [149] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [150] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [151] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [152] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [153] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [154] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [155] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [156] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [157] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [158] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [159] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [160] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [161] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [162] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [163] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [164] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [165] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [166] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [167] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [168] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [169] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [170] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [171] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [172] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [173] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [174] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [175] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [176] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [177] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [178] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [179] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [180] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [181] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [182] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [183] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [184] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [185] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [186] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [187] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [188] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [189] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [190] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [191] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [192] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [193] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [194] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [195] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [196] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [197] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [198] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [199] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [200] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart"),
                [201] = workspace:WaitForChild("NPCs"):WaitForChild("Fishman Karate User"):WaitForChild("HumanoidRootPart")
                
            },
            [3] = "Melee",
            [4] = {
                [1] = 1,
                [2] = "Ground",
                [3] = "Melee"
            },
            [5] = true,
            [6] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            ["aircombo"] = "Ground"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CombatRegister"):InvokeServer(unpack(args))
end
end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Equip Melee", Default = false })

Toggle:OnChanged(function(Value)
    _G.autoequip = Value
end)
spawn(function()
    while wait() do
    if _G.autoequip then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Melee))
    end)
    end
    end
    end)


    local Tabs = {
        Main = Window:AddTab({ Title = "Travel", Icon = "globe" }),
    }
    
    Tabs.Main:AddButton({
        Title = "Tp To Fishman Island",
        Description = "Instant TP ( Must Reset Before Use )",
        Callback = function()
            Window:Dialog({
                Title = "Are you sure?",
                Content = "Your Risk!",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            local speed = 0
local x = 8054.00048828125
local y = -2193.13720703125
local z = -16797.099609375

local players = game:GetService("Players")
local lp = players.LocalPlayer
local char = lp.Character
local hrp = char:WaitForChild("HumanoidRootPart")

local tweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
local tween = tweenService:Create(hrp, tweenInfo, {Position = Vector3.new(x, y, z)})
tween:Play()

                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            
                        end
                    }
                }
            })
        end
    })
    

    local Tabs = {
    Main = Window:AddTab({ Title = "PrivateServer", Icon = "chevrons-right-left" }),
}
local Input = Tabs.Main:AddInput("Input", {
    Title = "PS Here",
    Default = code,
    Placeholder = "Code here",
    Numeric = true,
    Finished = true, 
    Callback = function(Value)
    end
})
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Join Ps", Default = true })

Toggle:OnChanged(function(Value)
    _G.autojoinps = Value
    while _G.autojoinps == true do
    task.wait(5)
    local ohString1 = code

    game:GetService("ReplicatedStorage").Events.reserved:InvokeServer(ohString1)
    task.wait(3)
        local regularButton = game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.regular
        local connections = getconnections(regularButton.MouseButton1Click)
        for _, connection in pairs(connections) do
                connection:Fire()
        end
    end
end)
















