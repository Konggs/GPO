local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Yuuki Hub" .. Fluent.Version,
    SubTitle = "by Yuuki Hub",
    TabWidth = 120,
    Size = UDim2.fromOffset(400, 320),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
local Tabs = {
    Main = Window:AddTab({ Title = "PrivateServer", Icon = "chevrons-right-left" }),
}
local Input = Tabs.Main:AddInput("Input", {
    Title = "PS Here",
    Default = code,
    Placeholder = "Code here",
    Numeric = true, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
    end
})
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "AutoJoinPs", Default = false })

Toggle:OnChanged(function(Value)
    _G.autojoinps = Value
    while _G.autojoinps == true do
    task.wait(15)
    local args = {
        [1] = code
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("reserved"):InvokeServer(unpack(args))    
    end
end)
