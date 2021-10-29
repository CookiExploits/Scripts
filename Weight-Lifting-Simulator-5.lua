local tool = game.Players.LocalPlayer.Backpack.Weight or game.Players.LocalPlayer.Character.Weight

_G.Options = {
['AutoFarm'] = false
}

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("WLS 5")

local b = w:CreateFolder("Farming")

local s = w:CreateFolder("Misc")

b:Toggle("Auto Farm", function(eee)
AutoFarm = eee 
while AutoFarm do
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
tool:Activate()
end
end)

b:Button("Safe Place", function()
    local plr = game:GetService('Players').LocalPlayer.Character
plr.HumanoidRootPart.CFrame = CFrame.new(1041.917, 200.998, -1008.509)
end)

b:Button("Sky Gym", function()
    local plr = game:GetService('Players').LocalPlayer.Character
plr.HumanoidRootPart.CFrame = CFrame.new(2859.50903, 1322.32886, -269.634399)
end)

s:Slider("Walkspeed",{
    min = 16;
    max = 200;
    precise = false;
},function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)


s:Slider("Jumppower",{
    min = 50;
    max = 500;
    precise = false;
},function(value2)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value2
end)
