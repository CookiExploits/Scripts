local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local Auto = library:CreateWindow("Template")
local Misc = library:CreateWindow("Misc | Settings")


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

Misc:Button('DestroyGui', function()
    game.CoreGui.ScreenGui:Destroy()
end)
