if game.PlaceId == 5094651510 then
    demonfall = true
end
if game.PlaceId == 3978370137 then
    sea1 = true
end
if game.PlaceId == 7465136166 then
    sea2 = true
end



if demonfall then
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local plr = game.Players.LocalPlayer

local Window = Fluent:CreateWindow({
    Title = "Yuuki Hub",
    SubTitle = "Dev By Kon",
    TabWidth = 120,
    Size = UDim2.fromOffset(400, 320),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local Tabs = {
    Main = Window:AddTab({ Title = "Player", Icon = "home" }),
}
local Players = game:GetService("Players")
local speed = 0

local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Speed",
    Description = "Fly",
    Default = 5,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Callback = function(Value)
        speed = Value
    end
})

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Fly", Default = false })

Toggle:OnChanged(function(Value)
    _G.fly = Value
    if _G.fly then
        sFLY(false)
    else
        FLYING = false
    end
end)

FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1

local function getRoot(character)
    return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
end

function sFLY(vfly)
    repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local IYMouse = Players.LocalPlayer:GetMouse()

    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

    local T = getRoot(Players.LocalPlayer.Character)
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local SPEED = 0

    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro')
        local BV = Instance.new('BodyVelocity')
        BG.P = 9e4
        BG.Parent = T
        BV.Parent = T
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            repeat wait()
                if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                end
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                    SPEED = speed * 10 
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.LookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.LookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.velocity = Vector3.new(0, 0, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
            until not FLYING
            CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            SPEED = 0
            BG:Destroy()
            BV:Destroy()
            if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end
        end)
    end
    flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 's' then
            CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 'a' then
            CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 'd' then 
            CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
        elseif QEfly and KEY:lower() == 'e' then
            CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed) * 2
        elseif QEfly and KEY:lower() == 'q' then
            CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed) * 2
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
    end)
    flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        elseif KEY:lower() == 'e' then
            CONTROL.Q = 0
        elseif KEY:lower() == 'q' then
            CONTROL.E = 0
        end
    end)
    FLY()
end

local Tabs = {
    Main = Window:AddTab({ Title = "Trinkets", Icon = "book-open" }),
}






local Toggle = Tabs.Main:AddToggle("AutoTrinkets", {Title = "Auto Farm Trinkets", Default = false, Callback = function(Value)
    getgenv().AutoTrinkets = Value
end })

local Toggle = Tabs.Main:AddToggle("AutoSellTrinkets", {Title = "Auto Sell Trinkets", Default = false, Callback = function(Value)
    getgenv().AutoSell = Value
end })
Tabs.Main:AddButton({
    Title = "Tp To Black Merchant",
    Description = "Buying Potion",
    Callback = function()
        local merchant = workspace.Npcs["Black Merchant"]
        if merchant and merchant:FindFirstChild("HumanoidRootPart") then
            local merchantHRP = merchant.HumanoidRootPart
            local frontPosition = merchantHRP.CFrame * CFrame.new(0, 0, -5) 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = frontPosition
        else
            warn("Black Merchant not spawned")
        end
    end
})



    function collect()
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Spawn") and v:FindFirstChild("Part") and
                    (v.Part.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                    local args = {
                        [1] = "Character",
                        [2] = "Interaction",
                        [3] = v:FindFirstChild("Part")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Async"):FireServer(unpack(args))
                end
            end
    end

    function sellitem()
        if getgenv().AutoSell then
        if not plr.Character:FindFirstChild("Answers") then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3636.229736328125, 707.517822265625, -1476.9595947265625)
            wait(0.2)
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Sync"):InvokeServer("Dialogue","Prompt",workspace.Npcs:GetChildren()[12])
            return
        end
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Async"):FireServer("Dialogue","Answer",game.Players.LocalPlayer.Character:WaitForChild("Answers"):GetChildren()[2],"Merchant")
    end
end
    spawn(function()
        while wait() do
          if getgenv().AutoTrinkets then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("Model") and v:FindFirstChild("Spawn") and v:FindFirstChild("Part") and (v.Part.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                        sellitem()
                        plr.character.HumanoidRootPart.CFrame = v.Part.CFrame
                            plr.GameplayPaused = false
                            collect()
                            break
                        elseif v:IsA("Model") and v:FindFirstChild("Spawn") and v:FindFirstChild("Part") then
                            sellitem()
                            plr.character.HumanoidRootPart.CFrame = v.Part.CFrame
                                plr.GameplayPaused = false
                                collect()
                                break
                    end
                end
                end)
              end
            end
       end)
















end
