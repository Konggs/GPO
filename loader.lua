
if game.PlaceId == 5094651510 or game.PlaceId == 3978370137 or game.PlaceId == 7465136166 then
    local UserInputService = game:GetService("UserInputService")
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local mouse = player:GetMouse()
    
    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    local button = Instance.new("ImageButton")
    
    button.Size = UDim2.new(0, 60, 0, 60)
    button.Position = UDim2.new(0, 10, 0, 10)
    button.BackgroundTransparency = 1
    button.Image = "rbxassetid://18371096401"
    button.Parent = screenGui
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        local newPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        button.Position = newPosition
    end
    
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = button.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    button.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    button.MouseButton1Click:Connect(function()
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, nil)
        wait(0.1)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, nil)
    end)
    
    local function adjustButtonSize()
        local screenSize = workspace.CurrentCamera.ViewportSize
        button.Size = UDim2.new(0, 60, 0, 60)
    end
    
    adjustButtonSize()
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(adjustButtonSize)
    
    end
    
    
    if game.PlaceId == 5094651510 then
        local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
        
        local plr = game.Players.LocalPlayer
        
        local Window = Fluent:CreateWindow({
            Title = "Yuuki Hub",
            SubTitle = "Paid Version",
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
    
    
    
    
    
    if game.PlaceId == 1730877806 then
        repeat wait() until game:GetService("Players").LocalPlayer:GetAttribute("inventoryVerified")
        repeat wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("LocalScript")
        local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Konggs/A/main/FluentModifient"))()
        local SaveManager =
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        local InterfaceManager =
            loadstring(
            game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
        )()
        local Window =
            Fluent:CreateWindow(
            {
                Title = "YuukiHub ",
                SubTitle = "Paid Version",
                TabWidth = 120,
                Size = UDim2.fromOffset(400, 320),
                Acrylic = true,
                Theme = "YuukiHubOnTop",
                MinimizeKey = Enum.KeyCode.LeftControl
            }
    )
    
    local Tabs = {
        Main = Window:AddTab({ Title = "Private Server", Icon = "globe" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }
    
    
    local Input = Tabs.Main:AddInput("Input", {
        Title = "PS Code",
        Default = "YuukiHub",
        Placeholder = "Only PS Code",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            getgenv().privatecode = Value
        end
    })
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Join PS", Default = getgenv().autojoinps })
    
    Toggle:OnChanged(function(Value)
        getgenv().autojoinps = Value
    end)
    spawn(function()
        while wait(3) do
            if getgenv().autojoinps then
                local args = {
                    [1] = getgenv().privatecode
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("reserved"):InvokeServer(unpack(args))
                task.wait(1.5)
                local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local chooseTypeFrame = playerGui:WaitForChild("chooseType"):WaitForChild("Frame")
                local regularButton = chooseTypeFrame:WaitForChild("regular")
                local connections = getconnections(regularButton.MouseButton1Click)
                for _, connection in pairs(connections) do
                    connection:Fire()
                end
            end
            wait(1)
        end
    end)
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Save", Default = true})
    Toggle:OnChanged(
        function(Value)
            getgenv().autosave = Value
        end
    )
    
    local HttpService = game:GetService("HttpService")
    
    function createDirectoryIfNotExists(path)
        if not isfolder(path) then
            makefolder(path)
        end
    end
    
    function saveConfig()
        local path = "YuukiHubMainServer"
        createDirectoryIfNotExists(path)
        local playername = game.Players.LocalPlayer.Name
        local config = {
            autojoinps = getgenv().autojoinps,
            privatecode = getgenv().privatecode
        }
        local configPath = path .. "/" .. playername .. ".json"
        local json = HttpService:JSONEncode(config)
        writefile(configPath, json)
    end
    
    function loadConfig()
        local path = "YuukiHubMainServer"
        local playername = game.Players.LocalPlayer.Name
        local configPath = path .. "/" .. playername .. ".json"
        if isfile(configPath) then
            local json = readfile(configPath)
            local config = HttpService:JSONDecode(json)
            getgenv().autojoinps = config.autojoinps
            getgenv().privatecode = config.privatecode
        end
    end
    
    getgenv().autojoinps = getgenv().autojoinps or false
    getgenv().privatecode = getgenv().privatecode or "YuukiHub"
    
    loadConfig()
    spawn(function()
        while wait(1) do
            saveConfig()
        end
    end)
    
    end
    
    
    
    
    
    
    
    
    
    
    
    if game.PlaceId == 3978370137 then
    repeat wait()until game:IsLoaded()
    repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Stats"..game.Players.LocalPlayer.Name)
    repeat wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("LocalScript") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Konggs/A/main/FluentModifient"))()
    local SaveManager =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager =
        loadstring(
        game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
    )()
    local Window =
        Fluent:CreateWindow(
        {
            Title = "YuukiHub ",
            SubTitle = "Paid Version",
            TabWidth = 120,
            Size = UDim2.fromOffset(400, 320),
            Acrylic = true,
            Theme = "YuukiHubOnTop",
            MinimizeKey = Enum.KeyCode.LeftControl
        }
    )
    local Tabs = {
        Level = Window:AddTab({Title = "Level Farm", Icon = "person-standing"}),
        Main = Window:AddTab({Title = "Ship Farm", Icon = "ship"}),
        Travel = Window:AddTab({Title = "Travel", Icon = "map"}),
        Settings = Window:AddTab({Title = "Settings", Icon = "settings"})
    }
    
    
    
    local Toggle = Tabs.Level:AddToggle("MyToggle", {Title = "Level Farm", Default = getgenv().level })
    
    Toggle:OnChanged(function(Value)
        getgenv().level = Value
        getgenv().rifle = false
        local LocalPlayer = game:GetService("Players").LocalPlayer
        spawn(function()
            while wait() do
            if getgenv().level then
                pcall(function()
                    local character = workspace.PlayerCharacters[LocalPlayer.Name]
                    if character:FindFirstChild("Rifle") or LocalPlayer.Backpack:FindFirstChild("Rifle") then
                        getgenv().rifle = true
                    else
                        getgenv().rifle = false
                    end
                end)
            end
        end
        end)
        
        
        local function getPeliValue()
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local peliTextLabel = LocalPlayer.PlayerGui.HUD.Main.Peli.TextLabel
            local peliText = peliTextLabel.Text
            return tonumber(peliText:match("(%d+)")) or 0
        end   
    
        spawn(function()
            while getgenv().level do
                if getPeliValue() < 300 and not getgenv().rifle then
                    pcall(function()
                        local chestPosition = workspace.Env.Chest.TopBase.CFrame.Position
                        tween(getgenv().speed, chestPosition)
                        task.wait(1)
                        local VirtualInputManager = game:GetService("VirtualInputManager")
                        VirtualInputManager:SendKeyEvent(true, "E", false, game)
                        task.wait(1)
                        VirtualInputManager:SendKeyEvent(false, "E", false, game)
                    end)
                elseif getPeliValue() >= 300 and not getgenv().rifle then
                    pcall(function()
                        task.wait(1)
                        tween(getgenv().speed, Vector3.new(979, 6, 1133))
                        task.wait(5)
                        local args = {
                            [1] = workspace:WaitForChild("BuyableItems"):WaitForChild("Rifle"),
                            [2] = 1
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shop"):InvokeServer(unpack(args))
                        task.wait(2.5)
                        local equipArgs = {
                            [1] = "equip",
                            [2] = "Rifle"
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack(equipArgs))
                    end)
                end
                task.wait()
            end
        end)
        spawn(function()
            while wait() do
                if getgenv().level and getgenv().rifle then
                    pcall(function()
                        local players = game:GetService("Players")
                        local currentPlayer = players.LocalPlayer
                        local character = currentPlayer.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local humanoidRootPart = character.HumanoidRootPart
                            local targetPosition = Vector3.new(7826, -2160, -17127)
                            local currentPosition = humanoidRootPart.Position
                            local distanceToTeleportTarget = (currentPosition - targetPosition).magnitude
                            if distanceToTeleportTarget > 2500 then
                                wait(3)
                                instant(true)
                                humanoidRootPart.CFrame = CFrame.new(targetPosition)
                                task.wait(6.5)
                                instant(false)
                                task.wait(0.1)
                                local args = { [1] = "self" }
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("KnockedOut"):FireServer(unpack(args))
                            end
                        end
                    end)
                    Fluent:Notify({
                        Title = "Waiting 22 Second For Next TP",
                        Duration = 22
                    })
                    task.wait(22)
                else
                    task.wait(1)
                end
            end
        end)
        spawn(function()
            while wait(0.1) do
            if getgenv().level and getgenv().rifle then
                pcall(function()
                    local player = game:GetService("Players").LocalPlayer
                    local playerPosition = player.Character.HumanoidRootPart.Position
                    local targetPosition = Vector3.new(7826, -2160, -17127)
                    local distance = (playerPosition - targetPosition).Magnitude
                    if distance <= 2000 then
                        pcall(function()
                            local level = tonumber(player.PlayerGui.HUD.Main.Bars.Experience.Detail.Level.Text:match("%d+"))
                            if level < 190 then
                                tween(getgenv().speed, Vector3.new(7826, -2160, -17127))
                            elseif level >= 190 and level < 575 then
                                while getgenv().level do
                                    tween(getgenv().speed, Vector3.new(7826, -2160, -17127))
                                    if game:GetService("ReplicatedStorage")["Stats"..player.Name].Quest.CurrentQuest.Value == "None" then
                                        local questp = Vector3.new(7735.568, -2175.832, -17221.785)
                                        tween(getgenv().speed, questp)
                                        local args = {
                                            [1] = { [1] = "takequest", [2] = "Help becky" }
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer(unpack(args))
                                    end
                                    task.wait(0.1)
                                end
                            elseif level >= 575 then
                             
                            end
                        end)
                    end
                end)
                task.wait(1)
            end
        end
        end)
        spawn(function()
    local sent = false
    while not sent do
        wait(5)
        local level = tonumber(player.PlayerGui.HUD.Main.Bars.Experience.Detail.Level.Text:match("%d+"))
        if getgenv().level and level == 575 then
            local Headers = {
                ['Content-Type'] = 'application/json',
            }
            local data = {
                ["embeds"] = {
                    {
                        ["title"] = "You Have Max Level !",
                        ["description"] = "UserName: "..  game.Players.LocalPlayer.Name,
                        ["type"] = "rich",
                        ["color"] = tonumber(0xffffff),
                        ["fields"] = {
                            {
                                ["name"] = "FeedBack On Yuuki Hub",
                                ["value"] = "Discord.gg/YuukiHubCommunity",
                                ["inline"] = true,
                            },
                        },
                    },
                },
            }
            local PlayerData = game:GetService('HttpService'):JSONEncode(data)
            local Request = http_request or request or HttpPost or syn.request
            Request({Url = getgenv().Webhook_URL, Body = PlayerData, Method = "POST", Headers = Headers})
            sent = true
        end
    end
end)


        spawn(function()
            local player = game.Players.LocalPlayer
            local targetPosition = Vector3.new(7826, -2160, -17127)
            while wait(0.8) do
                if getgenv().level then
                pcall(function()
                    local playerPosition = player.Character.HumanoidRootPart.Position
                    if playerPosition then
                        local distance = (playerPosition - targetPosition).magnitude
                        if distance <= 2000 then
                            pcall(function()
                                local ohString1 = "fire"
                                local ohTable2 = {
                                    ["Start"] = CFrame.new(game:GetService("Workspace").NPCs["Fishman Karate User"].Head.Position),
                                    ["joe"] = "true",
                                    ["Gun"] = "Rifle",
                                    ["Position"] = game:GetService("Workspace").NPCs["Fishman Karate User"].Head.Position
                                }
                                game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer(ohString1, ohTable2)
            
                                local ohString2 = "reload"
                                local ohTable3 = {
                                    ["Gun"] = "Rifle"
                                }
                                game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer(ohString2, ohTable3)
                            end)
                        end
                    end
                    end)
                end
            end
        end)
        spawn(function()
            while wait(0.1) do
            if getgenv().level then
                local ohString1 = "GunMastery"
                local ohNil2 = nil
                local ohNumber3 = 1
                game:GetService("ReplicatedStorage").Events.stats:FireServer(ohString1, ohNil2, ohNumber3)
                task.wait(0.1)
            end
        end
        end)
        spawn(function()
            while wait(5) do
                if getgenv().level then
                    pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle"))
                    end)
                end
            end
        end)
    end)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    getgenv().setpos = getgenv().setpos or Vector3.new(0, 50, 0)
    Tabs.Main:AddButton(
        {
            Title = "Set Position For Ship Farm",
            Callback = function()
                local player = game.Players.LocalPlayer
                local position = player.Character.HumanoidRootPart.Position
                getgenv().setpos = position
                Fluent:Notify(
                    {
                        Title = "Your Ship Position",
                        Content = tostring(getgenv().setpos),
                        Duration = 5
                    }
                )
            end
        }
    )
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Ship", Default = getgenv().autoship})
    
    Toggle:OnChanged(
        function(Value)
            getgenv().autoship = Value
            if getgenv().autoship then
                moveToPosition(getgenv().speed, getgenv().setpos)
                spawnShip()
            end
            spawn(
                function()
                    while getgenv().autoship do
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("BlackLeg")
                                )
                            end
                        )
                        wait(5)
                    end
                end
            )
            spawn(
                function()
                    if getgenv().autoship then
                        pcall(
                            function()
                                while getgenv().autoship do
                                    pcall(
                                        function()
                                            local mob =
                                                workspace.NPCs:FindFirstChild("Marine Captain") or
                                                workspace.NPCs:FindFirstChild("Pirate Captain")
                                            local mob2 =
                                                workspace.NPCs:FindFirstChild("Marine Cannoneer") or
                                                workspace.NPCs:FindFirstChild("Pirate Cannoneer")
                                            if mob then
                                                local mobPosition = mob.Head.Position
                                                tween(
                                                    getgenv().speed,
                                                    Vector3.new(mobPosition.X, mobPosition.Y, mobPosition.Z)
                                                )
                                            end
                                            if getgenv().killcannon and not mob and mob2 then
                                                local mob2Position = mob2.Head.Position
                                                tween(
                                                    getgenv().speed,
                                                    Vector3.new(mob2Position.X, mob2Position.Y, mob2Position.Z)
                                                )
                                            end
                                            local ship = workspace.Ships
                                            if not ship:FindFirstChild(game.Players.LocalPlayer.Name .. "Ship") then
                                                spawnShip()
                                            end
                                        end
                                    )
                                    wait()
                                end
                            end
                        )
                    end
                end
            )
            spawn(
                function()
                    while getgenv().autoship do
                        local player = game.Players.LocalPlayer
                        local character = player.Character or player.CharacterAdded:Wait()
                        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
                        local mob =
                            workspace.NPCs:FindFirstChild("Marine Captain") or
                            workspace.NPCs:FindFirstChild("Pirate Captain") or
                            workspace.NPCs:FindFirstChild("Marine Cannoneer") or
                            workspace.NPCs:FindFirstChild("Pirate Cannoneer") or
                            workspace.NPCs:FindFirstChild("Shark")
    
                        if mob and mob:IsA("Model") then
                            local mobRootPart = mob:FindFirstChild("HumanoidRootPart")
                            if mobRootPart and (humanoidRootPart.Position - mobRootPart.Position).Magnitude <= 50 then
                                local args = {"Party Table Kick Course"}
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(
                                    unpack(args)
                                )
                            end
                        end
                        wait(0.5)
                    end
                end
            )
        end
    )
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Kill Cannon", Default = getgenv().killcannon})
    
    Toggle:OnChanged(
        function(Value)
            getgenv().killcannon = Value
        end
    )
    
    local islands = {}
    local islandObjects = {}
    for _, island in pairs(workspace.Islands:GetChildren()) do
        table.insert(islands, island.Name)
        islandObjects[island.Name] = island
    end
    
    local Dropdown =
        Tabs.Travel:AddDropdown(
        "Dropdown",
        {
            Title = "Islands",
            Values = islands,
            Multi = false,
            Default = ""
        }
    )
    
    Dropdown:OnChanged(
        function(Value)
            getgenv().selectedisland = Value
        end
    )
    
    Tabs.Travel:AddButton(
        {
            Title = "Start Travel",
            Description = "Instant TP",
            Callback = function()
                instant(true)
                local player = game.Players.LocalPlayer
                local character = player.Character
                local selectedIsland = islandObjects[getgenv().selectedisland]
                local targetPosition = selectedIsland.WorldPivot.Position
                character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                wait(5)
                local island = workspace.Islands[getgenv().selectedisland]
                if island and island:FindFirstChild("SpawnPoint") then
                    local spawnPoint = island.SpawnPoint.CFrame
                    character.HumanoidRootPart.CFrame = spawnPoint
                else
                    character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 55, 0)
                end
                task.wait(3.5)
                instant(false)
                task.wait(0.1)
                local args = {[1] = "self"}
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("KnockedOut"):FireServer(
                    unpack(args)
                )
            end
        }
    )
    
    local Slider =
        Tabs.Settings:AddSlider(
        "Slider",
        {
            Title = "Speed",
            Description = "",
            Default = 60,
            Min = 0,
            Max = 200,
            Rounding = 0,
            Callback = function(Value)
                getgenv().speed = Value
            end
        }
    )
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove Effect ( Avoid Lag )", Default = false})
    Toggle:OnChanged(
        function(Value)
            getgenv().effect = Value
        end
    )
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Noclip+Anti Afk", Default = true})
    
    Toggle:OnChanged(
        function(Value)
            getgenv().noclip = Value
        end
    )
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Save", Default = true})
    Toggle:OnChanged(
        function(Value)
            getgenv().autosave = Value
        end
    )
    
    --spawnfunctions
    
    spawn(function()
        while wait() do
            if getgenv().effect then
                pcall(function()
                    DeleteEffect()
                end)
            else 
                task.wait(0.1)
            end
        end
    end)
    
    
    
    
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        local name = "Yuuki Hub"
                        game.Players.LocalPlayer.Character.Name = name
                        game.Players.LocalPlayer.Character.Parent = game.Workspace
                        game.Players.LocalPlayer.Character.Parent = workspace.PlayerCharacters
                        game.Players.LocalPlayer.Character.Name = game.Players.LocalPlayer.Name
                    end
                )
                wait(120)
            end
        end
    )
    
    spawn(
        function()
            if getgenv().noclipsetup ~= true then
                spawn(
                    function()
                        game:GetService("RunService").Heartbeat:Connect(
                            function()
                                if getgenv().noclip then
                                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                                        local LOL = Instance.new("Part")
                                        LOL.Name = "LOL"
                                        LOL.Parent = game.Workspace
                                        LOL.Anchored = true
                                        LOL.Transparency = 1
                                        LOL.Size = Vector3.new(50, -0.5, 50)
                                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                                        game.Workspace["LOL"].CFrame =
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                            CFrame.new(0, -3.2, 0)
                                    end
                                else
                                    if game:GetService("Workspace"):FindFirstChild("LOL") then
                                        game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                                    end
                                end
                            end
                        )
                    end
                )
                getgenv().noclipsetup = true
            end
        end
    )
    spawn(
        function()
            while getgenv().noclip do
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(
                    function()
                        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    end
                )
                task.wait(0.1)
            end
        end
    )
    
    
    --functions
    local HttpService = game:GetService("HttpService")
    
    function createDirectoryIfNotExists(path)
        if not isfolder(path) then
            makefolder(path)
        end
    end
    
    function saveConfig()
        local path = "YuukiHub"
        createDirectoryIfNotExists(path)
        local playername = game.Players.LocalPlayer.Name
        local config = {
            levelfarm = getgenv().level,
            shipfarm = getgenv().autoship,
            killcannon = getgenv().killcannon,
            noclipandantiafk = getgenv().noclip
        }
        local configPath = path .. "/" .. playername .. ".json"
        local json = HttpService:JSONEncode(config)
        writefile(configPath, json)
    end
    
    function loadConfig()
        local path = "YuukiHub"
        local playername = game.Players.LocalPlayer.Name
        local configPath = path .. "/" .. playername .. ".json"
        if isfile(configPath) then
            local json = readfile(configPath)
            local config = HttpService:JSONDecode(json)
            getgenv().level = config.levelfarm
            getgenv().autoship = config.shipfarm
            getgenv().killcannon = config.killcannon
            getgenv().noclip = config.noclipandantiafk
        end
    end
    getgenv().level = getgenv().level or false
    getgenv().autoship = getgenv().autoship or false
    getgenv().killcannon = getgenv().killcannon or false
    getgenv().noclip = getgenv().noclip or false
    loadConfig()
    spawn(function()
        while wait() do
            saveConfig()
            wait(1)
        end
    end)
    
    function instant(et)
        for i, x in next, game.Players.LocalPlayer.Character:GetDescendants() do
            if x:IsA("BasePart") and not x.Anchored then
                x.Anchored = et
            end
        end
        for i, x in next, game.Players.LocalPlayer.Character:GetDescendants() do
            if x.Name ~= floatName and x:IsA("BasePart") and x.Anchored then
                x.Anchored = et
            end
        end
    end
    local TweenService = game:GetService("TweenService")
    function tween(speed, destination)
        local player = game.Players.LocalPlayer
        local character = player.Character
        if not character then
            return
        end
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if not rootPart then
            return
        end
    
        local distance = (rootPart.Position - destination).Magnitude
        local time = distance / speed
    
        local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = CFrame.new(destination)})
    
        tween:Play()
        return tween
    end
    
    local hasRun = false
    function DeleteEffect()
        if hasRun then
            return
        end
        hasRun = true
        if game:GetService("ReplicatedStorage").Effects then
            game:GetService("ReplicatedStorage").Effects:Destroy()
        end
        if workspace.Effects.DeadNPCs then
            workspace.Effects.DeadNPCs:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Notifications then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications:Destroy()
        end
        if workspace.Effects then
            workspace.Effects:Destroy()
        end
        if game:GetService("ReplicatedStorage").ClientImpacts then
            game:GetService("ReplicatedStorage").ClientImpacts:Destroy()
        end
        if game:GetService("Players").LocalPlayer.Backpack.Movements then
            game:GetService("Players").LocalPlayer.Backpack.Movements:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain then
            game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc:Destroy()
        end
    end
    function rotateToDirection(direction)
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local lookAt = CFrame.lookAt(humanoidRootPart.Position, humanoidRootPart.Position + direction)
        humanoidRootPart.CFrame = lookAt
    end
    
    function moveToPosition(speed, targetPosition)
        local humanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local startPosition = humanoidRootPart.Position
        local distance = (targetPosition - startPosition).Magnitude
    
        while (humanoidRootPart.Position - targetPosition).Magnitude > 0.1 do
            local direction = (targetPosition - humanoidRootPart.Position).Unit
            humanoidRootPart.Velocity = direction * speed
            wait(0.01)
        end
    
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
    function spawnShip()
        local ohString1 = "true"
        game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn:InvokeServer(ohString1)
    end
    
    
    function DeleteEffect()
        if game:GetService("ReplicatedStorage").Effects then
            game:GetService("ReplicatedStorage").Effects:Destroy()
        end
        if workspace.Effects.DeadNPCs then
            workspace.Effects.DeadNPCs:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Notifications then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications:Destroy()
        end
        if workspace.Effects then
            workspace.Effects:Destroy()
        end
        if game:GetService("ReplicatedStorage").ClientImpacts then
            game:GetService("ReplicatedStorage").ClientImpacts:Destroy()
        end
        if game:GetService("Players").LocalPlayer.Backpack.Movements then
            game:GetService("Players").LocalPlayer.Backpack.Movements:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain then
            game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc:Destroy()
        end
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    if game.PlaceId == 7465136166 then
    repeat wait()until game:IsLoaded()
    repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Stats"..game.Players.LocalPlayer.Name)
    repeat wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("LocalScript") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Konggs/A/main/FluentModifient"))()
    local SaveManager =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager =
        loadstring(
        game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
    )()
    local Window =
        Fluent:CreateWindow(
        {
            Title = "YuukiHub ",
            SubTitle = "Paid Version",
            TabWidth = 120,
            Size = UDim2.fromOffset(400, 320),
            Acrylic = true,
            Theme = "YuukiHubOnTop",
            MinimizeKey = Enum.KeyCode.LeftControl
        }
    )
    local Tabs = {
        Boss = Window:AddTab({Title = "Boss", Icon = "home"}),
        Travel = Window:AddTab({Title = "Travel", Icon = "map"}),
        Settings = Window:AddTab({Title = "Settings", Icon = "settings"})
    }
    local Toggle = Tabs.Boss:AddToggle("MyToggle", {Title = "Auto Roger/HawkEye", Default = false })
    
    Toggle:OnChanged(function(Value)
        getgenv().boss = Value
spawn(function()
    while wait() do
        if getgenv().boss and not getgenv().incooking then
            pcall(function()
                local players = game:GetService("Players")
                local currentPlayer = players.LocalPlayer
                local character = currentPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local currentPosition = character.HumanoidRootPart.Position
                    local targetPosition = Vector3.new(12785, 20, 2767)
                    local distance = (currentPosition - targetPosition).Magnitude
                    
                    if distance > 2000 then
                        wait(3)
                        instant(true)
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                        task.wait(6.5)
                        instant(false)
                        task.wait(0.1)
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("KnockedOut"):FireServer("self")
                    elseif distance < 2000 then
                        local roger = workspace.NPCs:FindFirstChild("Roger")
                        local hawkEye = workspace.NPCs:FindFirstChild("Hawk Eye")
                        local waitPosition1 = Vector3.new(12653, 143, 2910)

                        if not roger and not hawkEye then
                         
                            tween(getgenv().speed, waitPosition1)
                        end
                        if roger then
                           
                            tween(getgenv().speed, Vector3.new(roger.Head.Position.X, roger.Head.Position.Y - 3, roger.Head.Position.Z))
                        end
                        if hawkEye then
                          
                            tween(getgenv().speed, Vector3.new(hawkEye.Head.Position.X, hawkEye.Head.Position.Y - 3, hawkEye.Head.Position.Z))
                        end
                    end
                end
            end)
        end
    end
end)




        
        spawn(function()
            while wait() do
                if getgenv().boss then
                    local roger = workspace.NPCs:FindFirstChild("Roger")
                    local hawkeye = workspace.NPCs:FindFirstChild("Hawk Eye")
                    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    if roger and (playerPosition - roger.Head.Position).magnitude <= 15 then
                        local args = {"Party Table Kick Course"}
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(unpack(args))
                    elseif hawkeye and (playerPosition - hawkeye.Head.Position).magnitude <= 15 then
                        local args = {"Party Table Kick Course"}
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(unpack(args))
                    end
                end
            end
        end)
    
    
    end)
    
    local Toggle = Tabs.Boss:AddToggle("MyToggle", {Title = "Auto Buy And Drinks", Default = false})
    
    Toggle:OnChanged(function(Value)
        getgenv().AutoDrinks = Value
        if getgenv().AutoDrinks then
            spawn(function()
                while wait() do
                    pcall(function()
                        if not getgenv().boss then return end
                        if not getgenv().AutoDrinks then return end
                        local getdrink = {
                            "Health Drink",
                            "Stamina Drink"
                        }
                        local plr = game.Players.LocalPlayer
                        function getnumber(key)
                            return string.match(game:GetService("ReplicatedStorage")["Stats"..game.Players.LocalPlayer.Name].Inventory.Inventory.Value,'"' .. key .. '"%s*:%s*([^,}]+)')
                        end
                        
                        function equipdrink(buyorget)
                                                if buyorget == "Buy" then
                                                    spawn(function()
                                                        wait(0.1)
                                                        if getnumber("Health Drink") ~= nil then
                                                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shop"):InvokeServer(workspace.BuyableItems["Health Drink"],20 - getnumber("Health Drink"))
                                                        else
                                                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shop"):InvokeServer(workspace.BuyableItems["Health Drink"],20)
                                                            end
                                                    end)
                                                    spawn(function()
                                                        wait(0.1)
                                                        if getnumber("Stamina Drink") ~= nil then
                                                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shop"):InvokeServer(workspace.BuyableItems["Stamina Drink"],20 - getnumber("Stamina Drink"))
                                                        else
                                                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shop"):InvokeServer(workspace.BuyableItems["Stamina Drink"],20)
                                                            end
                                                    end)
                                end
                            for i,v in pairs(getdrink) do
                                if buyorget == "Equip" then
                                    wait(1)
                                local args = {
                                    [1] = "equip",
                                    [2] = v
                                }
                                
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack(args))
                            end
                        end
                    end
                        
                        function calculatePercentage(number, percentage)
                            local result = number + (number * percentage / 100)
                            return result
                        end
                        local MaxStamina = game:GetService("ReplicatedStorage")["Stats"..plr.Name].Stamina.MaxValue
                            if string.find(game:GetService("ReplicatedStorage")["Stats"..plr.Name].Inventory.Inventory.Value,"Stamina") and
                        string.find(game:GetService("ReplicatedStorage")["Stats"..plr.Name].Inventory.Inventory.Value,"Health") then
                                if string.find(game:GetService("ReplicatedStorage")["Stats"..plr.Name].Inventory.Equiped.Value,"Stamina") and
                            string.find(game:GetService("ReplicatedStorage")["Stats"..plr.Name].Inventory.Equiped.Value,"Health") then
                        
                                if plr.Character.Humanoid.Health <= calculatePercentage(plr.Character.Humanoid.MaxHealth, -20) and not plr.Character:FindFirstChild("Stun") then
                                    if workspace.Ragdolls:FindFirstChild(plr.Name) then return end
                                        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Health Drink"))
                                        plr.Character:FindFirstChildOfClass("Tool"):Activate()
                                elseif game:GetService("ReplicatedStorage")["Stats"..plr.Name].Stamina.Value <= calculatePercentage(MaxStamina, -50) and not plr.Character:FindFirstChild("Stun") then
                                    if workspace.Ragdolls:FindFirstChild(plr.Name) then return end
                                        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Stamina Drink"))
                                        plr.Character:FindFirstChildOfClass("Tool"):Activate() 
                                end
                            else
                                getgenv().incooking = false
                                equipdrink("Equip")
                            end
                            else
                                getgenv().incooking = true
                                wait(1)
                                instant(true)
                                wait(0.1)
                                plr.Character.HumanoidRootPart.CFrame = CFrame.new(8310, 73, 10523)
                                instant(false)
                                wait(0.1)
                                instant(true)
                                repeat wait()
                                until workspace:FindFirstChild("BuyableItems"):FindFirstChild("Stamina Drink") or workspace:FindFirstChild("BuyableItems"):FindFirstChild("Health Drink")
                                repeat wait(5)
                                until not game:GetService("Players").LocalPlayer.GameplayPaused
                                instant(false)
                                wait(0.1)
                                equipdrink("Buy")
                                wait(0.1)
                                equipdrink("Buy")
                                wait(0.1)
                                equipdrink("Buy")
                                wait(0.1)
                                equipdrink("Buy")
                                wait(0.1)
                                equipdrink("Buy")
                                wait(2)
                        end
                    end)
                end
            end)
            end
    end)
    
    
    
    local islands = {}
    local islandObjects = {}
    for _, island in pairs(workspace.Islands:GetChildren()) do
        table.insert(islands, island.Name)
        islandObjects[island.Name] = island
    end
    
    local Dropdown =
        Tabs.Travel:AddDropdown(
        "Dropdown",
        {
            Title = "Islands",
            Values = islands,
            Multi = false,
            Default = "Umi Island"
        }
    )
    
    Dropdown:OnChanged(
        function(Value)
            getgenv().selectedisland = Value
        end
    )
    
    Tabs.Travel:AddButton(
        {
            Title = "Start Travel",
            Description = "Instant TP",
            Callback = function()
                instant(true)
                local player = game.Players.LocalPlayer
                local character = player.Character
                local selectedIsland = islandObjects[getgenv().selectedisland]
                local targetPosition = selectedIsland.WorldPivot.Position
                character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                wait(5)
                local island = workspace.Islands[getgenv().selectedisland]
                if island and island:FindFirstChild("SpawnPoint") then
                    local spawnPoint = island.SpawnPoint.CFrame
                    character.HumanoidRootPart.CFrame = spawnPoint
                else
                    character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 55, 0)
                end
                task.wait(3.5)
                instant(false)
                task.wait(0.1)
                local args = {[1] = "self"}
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("KnockedOut"):FireServer(
                    unpack(args)
                )
            end
        }
    )
    
    
    
    
    
    
    local Slider =
        Tabs.Settings:AddSlider(
        "Slider",
        {
            Title = "Speed",
            Description = "",
            Default = 60,
            Min = 0,
            Max = 200,
            Rounding = 0,
            Callback = function(Value)
                getgenv().speed = Value
            end
        }
    )
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove Effect ( Avoid Lag )", Default = false})
    Toggle:OnChanged(
        function(Value)
            getgenv().effect = Value
        end
    )
    
    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Noclip+Anti Afk", Default = true})
    
    Toggle:OnChanged(
        function(Value)
            getgenv().noclip = Value
        end
    )
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    --spawnfunctions
    
    spawn(function()
        while wait() do
            if getgenv().effect then
                pcall(function()
                    DeleteEffect()
                end)
            else 
                task.wait(0.1)
            end
        end
    end)
    
    
    
    
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        local name = "Yuuki Hub"
                        game.Players.LocalPlayer.Character.Name = name
                        game.Players.LocalPlayer.Character.Parent = game.Workspace
                        game.Players.LocalPlayer.Character.Parent = workspace.PlayerCharacters
                        game.Players.LocalPlayer.Character.Name = game.Players.LocalPlayer.Name
                    end
                )
                wait(120)
            end
        end
    )
    
    spawn(
        function()
            if getgenv().noclipsetup ~= true then
                spawn(
                    function()
                        game:GetService("RunService").Heartbeat:Connect(
                            function()
                                if getgenv().noclip then
                                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                                        local LOL = Instance.new("Part")
                                        LOL.Name = "LOL"
                                        LOL.Parent = game.Workspace
                                        LOL.Anchored = true
                                        LOL.Transparency = 1
                                        LOL.Size = Vector3.new(50, -0.5, 50)
                                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                                        game.Workspace["LOL"].CFrame =
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                            CFrame.new(0, -3.2, 0)
                                    end
                                else
                                    if game:GetService("Workspace"):FindFirstChild("LOL") then
                                        game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                                    end
                                end
                            end
                        )
                    end
                )
                getgenv().noclipsetup = true
            end
        end
    )
    spawn(
        function()
            while getgenv().noclip do
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(
                    function()
                        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    end
                )
                task.wait(0.1)
            end
        end
    )
    
    
    
    
    
    
    --functions
    
    function instant(et)
        for i, x in next, game.Players.LocalPlayer.Character:GetDescendants() do
            if x:IsA("BasePart") and not x.Anchored then
                x.Anchored = et
            end
        end
        for i, x in next, game.Players.LocalPlayer.Character:GetDescendants() do
            if x.Name ~= floatName and x:IsA("BasePart") and x.Anchored then
                x.Anchored = et
            end
        end
    end
    local TweenService = game:GetService("TweenService")
    function tween(speed, destination)
        local player = game.Players.LocalPlayer
        local character = player.Character
        if not character then
            return
        end
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if not rootPart then
            return
        end
    
        local distance = (rootPart.Position - destination).Magnitude
        local time = distance / speed
    
        local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = CFrame.new(destination)})
    
        tween:Play()
        return tween
    end
    
    local hasRun = false
    function DeleteEffect()
        if hasRun then
            return
        end
        hasRun = true
        if game:GetService("ReplicatedStorage").Effects then
            game:GetService("ReplicatedStorage").Effects:Destroy()
        end
        if workspace.Effects.DeadNPCs then
            workspace.Effects.DeadNPCs:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Notifications then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications:Destroy()
        end
        if workspace.Effects then
            workspace.Effects:Destroy()
        end
        if game:GetService("ReplicatedStorage").ClientImpacts then
            game:GetService("ReplicatedStorage").ClientImpacts:Destroy()
        end
        if game:GetService("Players").LocalPlayer.Backpack.Movements then
            game:GetService("Players").LocalPlayer.Backpack.Movements:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain then
            game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc:Destroy()
        end
    end
    function rotateToDirection(direction)
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local lookAt = CFrame.lookAt(humanoidRootPart.Position, humanoidRootPart.Position + direction)
        humanoidRootPart.CFrame = lookAt
    end
    
    function moveToPosition(speed, targetPosition)
        local humanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local startPosition = humanoidRootPart.Position
        local distance = (targetPosition - startPosition).Magnitude
    
        while (humanoidRootPart.Position - targetPosition).Magnitude > 0.1 do
            local direction = (targetPosition - humanoidRootPart.Position).Unit
            humanoidRootPart.Velocity = direction * speed
            wait(0.01)
        end
    
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
    function spawnShip()
        local ohString1 = "true"
        game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn:InvokeServer(ohString1)
    end
    
    
    function DeleteEffect()
        if game:GetService("ReplicatedStorage").Effects then
            game:GetService("ReplicatedStorage").Effects:Destroy()
        end
        if workspace.Effects.DeadNPCs then
            workspace.Effects.DeadNPCs:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Notifications then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications:Destroy()
        end
        if workspace.Effects then
            workspace.Effects:Destroy()
        end
        if game:GetService("ReplicatedStorage").ClientImpacts then
            game:GetService("ReplicatedStorage").ClientImpacts:Destroy()
        end
        if game:GetService("Players").LocalPlayer.Backpack.Movements then
            game:GetService("Players").LocalPlayer.Backpack.Movements:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain then
            game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Misc:Destroy()
        end
    end
    
    function calculatePercentage(number, percentage)
        local result = number + (number * percentage / 100)
        return result
    end
    
    
    end
