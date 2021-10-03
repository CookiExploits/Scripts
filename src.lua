local Click = true
local DoCoins = false
local DoUpgrades = false
local AAMax = false
local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local Auto = library:CreateWindow("School Simulator")
local Misc = library:CreateWindow("Misc | Settings")

local itemTable = {
    [1] = "2",
    [2] = "3",
    [3] = "4",
    [4] = "5",
    [5] = "6",
    [6] = "7",
    [8] = "8",
    [10] = "9",
    [12] = "10",
    [15] = "11",
    [25] = "12",
    [50] = "13",
}

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

Auto:Section('W.I.P')

local AC = Auto:Toggle('Auto Click', {flag = "toggle1"}, function()
    while Click do
        wait(0.95)
        game:GetService("Players").LocalPlayer.Character.intelligence:Activate()
        game:GetService("Players").LocalPlayer.Character.athleticism:Activate()
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
    

local dg = Misc:Button('DestroyGui', function()
    game:GetService("CoreGui").ScreenGui:Destroy()
end)
