--[[
  The game: https://www.roblox.com/games/11495558803
  Shit script for a shit game
  run `getgenv().Disable = true` in order to stop the script
]]

local wl = {
	'Alien',
	'Fire Guard'
} --Change enemy names to your level.

local allowed = {}

print(#allowed)

while task.wait() do

if getgenv().Disable == true then getgenv().Disable = false break end

for i, v in pairs(game:GetService('Workspace').Npc:GetChildren()) do
	if table.find(wl, v.Name) and not table.find(allowed, v) then
		table.insert(allowed, v)
	end
end

for i, v in pairs(allowed) do
	pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(-2, 0, 2)
		task.wait(0.05)
	end)
end

end
 
