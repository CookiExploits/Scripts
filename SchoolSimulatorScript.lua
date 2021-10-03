local DoClicks = true
local DoCoins = false
local DoUpgrades = false
local AAMax = false
local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local Auto = library:CreateWindow("School Simulator")
local Misc = library:CreateWindow("Misc | Settings")

Auto:Section('Farming')

local coins = Auto:Toggle('Farm Coins', {flag = "toggle1"}, function(state)
    DoCoins = state
    while DoCoins do
        wait(0.5)
        for k, v in pairs(workspace.CoinHolder:GetChildren()) do
            v.CFrame = p.Character.HumanoidRootPart.CFrame
        end
    end
end)


local AA = Auto:Toggle('Auto Athleticism', {flag = "toggle2"}, function(state)
    DoClicks = state
    while DoClicks do
        wait()
        game:GetService("Players").LocalPlayer.Character.athleticism:Activate()
    end
end)

local AI = Auto:Toggle('Auto Intelligence', {flag = "toggle3"}, function(state)
    DoClicks = state
    while DoClicks do
        wait()
        game:GetService("Players").LocalPlayer.Character.intelligence:Activate()
    end
end)

local AP = Auto:Toggle('Auto Popularity', {flag = "toggle4"}, function(state)
    DoClicks = state
    while DoClicks do
        wait()
        game:GetService("Players").LocalPlayer.Character.popularity:Activate()
    end
end)

Auto:Section('Extras')

local mute = Auto:Button('Mute Music', function()
    game:GetService("Players").LocalPlayer.PlayerScripts.Music:Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts.MusicSystem:Destroy()
    game:GetService("StarterPlayer").StarterPlayerScripts.Music:Destroy()
    game:GetService("StarterPlayer").StarterPlayerScripts.MusicSystem:Destroy()
end)

local sh = Misc:Button('Server Hop', function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CookiExploits/School-Simulator-Hub/main/SH.lua", true))()
 end)

local dg = Misc:Button('DestroyGui', function()
    game:GetService("CoreGui").ScreenGui:Destroy()
end)
