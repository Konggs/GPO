

    getgenv().level = true
    
    getgenv().status = ""
    --Gui
    local HopGui = Instance.new("ScreenGui");
    local HopFrame = Instance.new("Frame");
    local NameHub = Instance.new("TextLabel");
    local UIStroke = Instance.new("UIStroke");
    local HopIn = Instance.new("TextLabel");
    local DropShadowHolder = Instance.new("Frame");
    local DropShadow = Instance.new("ImageLabel");
    local Reason = Instance.new("TextLabel");
    local ClickTo = Instance.new("TextLabel");
    local ButtonCall = Instance.new("TextButton");

    HopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    HopGui.Name = "Kaitun Level GPO"
    HopGui.Parent = game:GetService("CoreGui")
    HopGui.Enabled = false 

    HopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    HopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    HopFrame.BackgroundTransparency = 0.9990000128746033
    HopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HopFrame.BorderSizePixel = 0
    HopFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    HopFrame.Size = UDim2.new(1, 0, 1, 0)
    HopFrame.Name = "HopFrame"
    HopFrame.Parent = HopGui

    NameHub.Font = Enum.Font.Gotham
    NameHub.Text = "Yuuki Hub"
    NameHub.TextColor3 = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
    NameHub.TextSize = 85
    NameHub.AnchorPoint = Vector2.new(0.5, 0.5)
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 0.9990000128746033
    NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NameHub.BorderSizePixel = 0
    NameHub.Position = UDim2.new(0.5, 0, 0.5, -45)
    NameHub.Size = UDim2.new(0, 200, 0, 80)
    NameHub.Name = "Yuuki Hub"
    NameHub.Parent = HopFrame

    UIStroke.Color = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
    UIStroke.Thickness = 1.5
    UIStroke.Parent = NameHub

    HopIn.Font = Enum.Font.Gotham
    HopIn.Text = "GG"
    HopIn.TextColor3 = Color3.fromRGB(255, 255, 255)
    HopIn.TextSize = 20
    HopIn.AnchorPoint = Vector2.new(0.5, 0.5)
    HopIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HopIn.BackgroundTransparency = 0.9990000128746033
    HopIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HopIn.BorderSizePixel = 0
    HopIn.Position = UDim2.new(0.5, 0, 0.5, 0)
    HopIn.Size = UDim2.new(0, 200, 0, 30)
    HopIn.Name = "GGzzz"
    HopIn.Parent = HopFrame

    DropShadowHolder.BackgroundTransparency = 1
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
    DropShadowHolder.ZIndex = 0
    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = HopFrame

    DropShadow.Image = "rbxassetid://18274042189"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.999
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.BackgroundTransparency = 1
    DropShadow.BorderSizePixel = 0
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Name = "DropShadow"
    DropShadow.Parent = DropShadowHolder

    Reason.Font = Enum.Font.Gotham
    Reason.Text = "Status"
    Reason.TextColor3 = Color3.fromRGB(255, 255, 255)
    Reason.TextSize = 16
    Reason.AnchorPoint = Vector2.new(0.5, 0.5)
    Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Reason.BackgroundTransparency = 0.9990000128746033
    Reason.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Reason.BorderSizePixel = 0
    Reason.Position = UDim2.new(0.5, 0, 0.5, 32)
    Reason.Size = UDim2.new(0, 200, 0, 16)
    Reason.Name = "Grinding Level"
    Reason.Parent = HopFrame

    ClickTo.Font = Enum.Font.Gotham
    ClickTo.Text = "discord.gg/yuukihubcommunity"
    ClickTo.TextColor3 = Color3.fromRGB(255, 255, 255)
    ClickTo.TextSize = 16
    ClickTo.TextTransparency = 0.5
    ClickTo.AnchorPoint = Vector2.new(0.5, 0.5)
    ClickTo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ClickTo.BackgroundTransparency = 0.9990000128746033
    ClickTo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ClickTo.BorderSizePixel = 0
    ClickTo.Position = UDim2.new(0.5, 0, 0.5, 50)
    ClickTo.Size = UDim2.new(1, 0, 1, 0)
    ClickTo.Name = "ClickTo"
    ClickTo.Parent = HopFrame

    ButtonCall.Font = Enum.Font.SourceSans
    ButtonCall.Text = ""
    ButtonCall.TextColor3 = Color3.fromRGB(0, 0, 0)
    ButtonCall.TextSize = 14
    ButtonCall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonCall.BackgroundTransparency = 0.9990000128746033
    ButtonCall.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonCall.BorderSizePixel = 0
    ButtonCall.Size = UDim2.new(1, 0, 1, 0)
    ButtonCall.Name = "ButtonCall"
    ButtonCall.Parent = HopFrame

    local Blur = Instance.new("BlurEffect")
    Blur.Size = 50
    Blur.Parent = game.Lighting
    Blur.Enabled = false  
        SetNewReason = function(reasonreal, time)
            if not reasonreal then reasonreal = '' end 
            if reasonreal == '' then
                HopGui.Enabled = false  
                Blur.Enabled = false
                return 
            end   
            HopGui.Enabled = true   
            Blur.Enabled = true 
            Reason.Text = "Level: " .. tostring(getgenv().level)
            HopIn.Text = "Status: " .. getgenv().status
        end
        ButtonCall.MouseButton1Click:Connect(function()
            getgenv().level = false
            SetNewReason()
        end)
        SetNewReason('Yuuki Hub Level Farm !', 5)
        spawn(function()
            local player = game.Players.LocalPlayer
            local targetPosition = CFrame.new(981, 5, 1160)
            while getgenv().level do
                wait(0.1)
                getgenv().level = tonumber(game.Players.LocalPlayer.PlayerGui.HUD.Main.Bars.Experience.Detail.Level.Text:match("%d+"))
                local currentPosition = player.Character.HumanoidRootPart.CFrame
                if (currentPosition.Position - targetPosition.Position).magnitude < 200 then
                    getgenv().status = "Waiting To Go Fishman Islands"
                else
                    getgenv().status = "Killing Fishman Karate User"
                end
                SetNewReason('Yuuki Hub Level Farm !', 5)
            end
        end)
        






        spawn(function()
            if getgenv().level then
                local players = game:GetService("Players")
                local currentPlayer = players.LocalPlayer
                local character = currentPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    local targetPosition = Vector3.new(981, 5, 1160)
                    local currentPosition = humanoidRootPart.Position
                    local distance = (currentPosition - targetPosition).magnitude
        
                    if distance <= 2000 then
                        wait(5)
                        instant(true)
                        local teleportPosition = CFrame.new(8004.085, -2137.398, -17015.412)
                        humanoidRootPart.CFrame = teleportPosition
                        task.wait(6.5)
                        instant(false)
                        task.wait(0.1)
                        local args = { [1] = "self" }
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("KnockedOut"):FireServer(unpack(args))
                    end
                end
        end
        end)
    spawn(function()
        while getgenv().level do
            local player = game:GetService("Players").LocalPlayer
            local playerPosition = player.Character.HumanoidRootPart.Position
            local targetPosition = Vector3.new(8004.085, -2137.398, -17015.412)
            local distance = (playerPosition - targetPosition).Magnitude

            if distance <= 2000 then
                local level = tonumber(player.PlayerGui.HUD.Main.Bars.Experience.Detail.Level.Text:match("%d+"))
                if level < 190 then
                    local p = Vector3.new(7710, -2166, -17309)
                    moveToPosition(getgenv().speed, p)
                elseif level >= 190 then
                    while getgenv().level do
                        local p = Vector3.new(7710, -2166, -17309)
                        moveToPosition(getgenv().speed, p)

                        if game:GetService("ReplicatedStorage")["Stats"..player.Name].Quest.CurrentQuest.Value == "None" then
                            local questp = Vector3.new(7735.568, -2175.832, -17221.785)
                            moveToPosition(getgenv().speed, questp)
                            local args = {
                                [1] = { [1] = "takequest", [2] = "Help becky" }
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer(unpack(args))
                        end
                        task.wait(0.5)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
    spawn(function()
    while getgenv().level do
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Melee"))
    end)
    task.wait(1)
    end
    end)
    spawn(function()
        if getgenv().level then
            pcall(function()
                local ohTable1 = {
                    [1] = "swingsfx",
                    [2] = "Melee",
                    [3] = 1,
                    [4] = "Ground",
                    [5] = false,
                    [6] = game:GetService("ReplicatedStorage").CombatAnimations.Melee.Punch1,
                    [7] = 1.75,
                    [8] = 5
                }
                
                game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(ohTable1)
            end)
        end
    end)
    spawn(function()
        local globalGetnum = 1
        while getgenv().level do
            pcall(function()
                    local plr = game.Players.LocalPlayer
                    local args = {
                        [1] = {
                            [1] = "damage",
                            [2] = {},
                            [3] = "Melee",
                            [4] = {
                                [1] = globalGetnum,
                                [2] = "Air",
                                [3] = "Melee"
                            },
                            [5] = true,
                            [6] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                        }
                    }

                    for i, v in pairs(game.Workspace.NPCs:GetChildren()) do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 45 then
                            table.insert(args[1][2], v:WaitForChild("HumanoidRootPart"))
                        end
                    end

                    game.ReplicatedStorage:WaitForChild("Events"):WaitForChild("CombatRegister"):InvokeServer(unpack(args))

                    globalGetnum = globalGetnum + 1
                    if globalGetnum == 6 then
                        globalGetnum = 1
                    end
            end)
            task.wait(0.3)
        end
    end)

    spawn(function()
        getgenv().noclip = true
        if getgenv().noclipsetup ~= true then
            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    if getgenv().noclip then
                        if not game:GetService("Workspace"):FindFirstChild("LOL") then
                            local LOL = Instance.new("Part")
                            LOL.Name = "LOL"
                            LOL.Parent = game.Workspace
                            LOL.Anchored = true
                            LOL.Transparency = 1
                            LOL.Size = Vector3.new(50,-0.5,50)
                        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.4, 0)
                        end
                    else
                        if game:GetService("Workspace"):FindFirstChild("LOL") then
                            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                        end
                    end
                end)
            end)
            spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if getgenv().noclip then
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end)
            end)
            spawn(function()
                while getgenv().noclip do
                    local vu = game:GetService("VirtualUser")
                    game:GetService("Players").LocalPlayer.Idled:connect(function()
                      vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                      wait(1)
                      vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   end)
                    task.wait(0.1)
                end
            end)
            getgenv().noclipsetup = true
        end
    end)

    spawn(function()
        while getgenv().level do
            pcall(function()
                    local args = {
                        [1] = "Sky Walk2",
                        [2] = {
                            ["char"] = workspace.PlayerCharacters[game.Players.LocalPlayer.Name],
                            ["cf"] = CFrame.new(0, 0, 0)
                        }
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(unpack(args))
            end)
            task.wait(1.5)
        end
    end)

    spawn(function()
        while getgenv().level do
            pcall(function()
                local ohString1 = "Strength"
                game:GetService("ReplicatedStorage").Events.stats:FireServer(ohString1, nil, 1)    
            end)
            task.wait(0.1)
        end
    end)

    spawn(function()
    if getgenv().level then
        pcall(function()
        DeleteEffect()
        end)
    end
    end)








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
    local hasRun = false
    function DeleteEffect()
        if hasRun then return end
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
