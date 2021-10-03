local DoPushups = false
local DoSquats = false
local DoPunch = false
local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local Auto = library:CreateWindow("Saitama Sim")
local Misc = library:CreateWindow("Misc | Settings")

Auto:Section('Farming')

local ap = Auto:Toggle('Auto Pushups', {flag = "toggle1"}, function(state)
    DoPushups = state
    while DoPushups do
        wait()
        p.Character.Pushups:Activate()
    end
end)

local as = Auto:Toggle('Auto Squats', {flag = "toggle2"}, function(state)
    DoSquats = state
    while DoSquats do
        wait()
        p.Character.Squats:Activate()
    end
end)

local ap2 = Auto:Toggle('Auto Combat', {flag = "toggle3"}, function(state)
    DoPunch = state
    while DoPunch do
        wait()
        p.Character.Combat:Activate()
    end
end)

Auto:Section('TPs')

Auto:Button('Ancient Pillar', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(110.105, 150.234, 427.371)
end)

Auto:Button('Lave Section', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(544.549, -1.2, 1087.55)
end)

Auto:Button('Hero Asso', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(367.223, 13.265, 1354.1)
end)

Auto:Button('Safezone', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(1095.05, 5, -259.95)
end)

Auto:Button('Desert', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(845, 24.03, -170)
end)

Auto:Button('Ancient Pyramid', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(-221.996, 180.48, -1604)
end)

Auto:Button('Ice Section', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(-402.3, -18.9, -28.4003)
end)

Auto:Button('Nature Section', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(211.55, 0.7, -194.45)
end)

Auto:Button('Crablante Arena', function()
    p.Character.HumanoidRootPart.CFrame = CFrame.new(1079.82, 1.78, -791.825)
end)

Misc:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)

Misc:Box('JumpPower', {
   flag = "jp";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
end)

Misc:Button('Server Hop', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CookiExploits/Misc-Scripts/master/SH.lua"))()
end)
Misc:Button('Inf Stamina', function()
    while wait() do
    p.abilityFolder.Stamina.Value = 75
end
end)

Misc:Button('DestroyGui', function()
    game.CoreGui.ScreenGui:Destroy()
end)
