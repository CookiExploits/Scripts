local p = game.Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local w = library:CreateWindow("Template")
local a = library:CreateWindow("Misc | Settings")


a:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)

a:Box('JumpPower', {
   flag = "jp";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
end)

a:Button('Server Hop', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CookiExploits/Misc-Scripts/master/SH.lua"))()
end)

a:Button('DestroyGui', function()
    game.CoreGui.ScreenGui:Destroy()
end)
