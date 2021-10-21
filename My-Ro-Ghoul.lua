for i = 1, 100 do
local args = {
    [1] = "Q",
    [2] = "Down",
    [3] = CFrame.new(999, 999, 999),
    [4] = CFrame.new(999, 999, 999)
}

game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent:FireServer(unpack(args))

wait(0.1)

local args = {
    [1] = "Q",
    [2] = "Up",
    [3] = CFrame.new(999, 999, 999),
    [4] = CFrame.new(999, 999, 999)
}

game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent:FireServer(unpack(args))
end

wait(0.99)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Instructions";
	Text = "If the punches at the start doesn't get you to level 2, punch until you are level 2.";
	Duration = math.huge;
	Button1 = "Got it.";
})

CoreGui:SetCore("SendNotification", {
	Title = "Instructions";
	Text = " The focus giver will turn your RC to negitave. Use the Yen changer to turn Focus into Yen.";
	Duration = math.huge;
	Button1 = "Got it.";
})

CoreGui:SetCore("SendNotification", {
	Title = "Continuation";
	Text = "Buy something to reset your RC back to 800. 1 focus in the focus giver gives 2 focus so be catious.";
	Duration = math.huge;
	Button1 = "Mhmm..";
})

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("My Ro-Ghoul v1.11")

local b = w:CreateFolder("Stats Adder")

b:Box("Focus","number",function(focus)
    local args = {
    [1] = "Focus",
    [2] = "RCAddButton",
    [3] = -focus
}

game:GetService("Players").LocalPlayer.PlayerFolder.StatsFunction:InvokeServer(unpack(args))
end)

b:Box("Yen","number",function(yen)
    local args = {
    [1] = "Focus",
    [2] = "YenAddButton",
    [3] = yen
}

game:GetService("Players").LocalPlayer.PlayerFolder.StatsFunction:InvokeServer(unpack(args))
end)

b:Box("RC","number",function(rc)
    local args = {
    [1] = "Focus",
    [2] = "RCAddButton",
    [3] = rc
}

game:GetService("Players").LocalPlayer.PlayerFolder.StatsFunction:InvokeServer(unpack(args))
end)

b:Box("Levels","number",function(level)
    local args = {
    [1] = "Focus",
    [2] = "LevelAddButton",
    [3] = level
}

game:GetService("Players").LocalPlayer.PlayerFolder.StatsFunction:InvokeServer(unpack(args))
end)

b:Box("Reputation","number",function(reputation)
    local args = {
    [1] = "Focus",
    [2] = "ReputationAddButton",
    [3] = reputation
}

game:GetService("Players").LocalPlayer.PlayerFolder.StatsFunction:InvokeServer(unpack(args))
end)
