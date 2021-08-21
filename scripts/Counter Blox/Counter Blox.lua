--[[
    
    ██████╗  ██╗  ██╗ ██████╗ ██╗   ██╗██╗         ██╗  ██╗██╗   ██╗██████╗ 
    ██╔════╝ ██║  ██║██╔═══██╗██║   ██║██║         ██║  ██║██║   ██║██╔══██╗
    ██║  ███╗███████║██║   ██║██║   ██║██║         ███████║██║   ██║██████╔╝
    ██║   ██║██╔══██║██║   ██║██║   ██║██║         ██╔══██║██║   ██║██╔══██╗
    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗    ██║  ██║╚██████╔╝██████╔╝
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                            
    Developer: Ghoul#6066
    File: Counter Blox.lua
    Description: Source Code of Counter Blox Exploit
]]

repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("GUI")

-- Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")

-- Constants
local GAME_NAME = game.Name
local LocalPlayer = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Environment 
local getrawmetatable = getrawmetatable or false
local mousemove = mousemove or mousemoverel or mouse_move or false
local getsenv = getsenv or false
local listfiles = listfiles or listdir or syn_io_listdir or false
local isfolder = isfolder or false
local hookfunc = hookfunc or hookfunction or replaceclosure or false


-- Method Checking
if (getrawmetatable == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: getrawmetatable.") end
if (mousemove == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: mousemove.") end
if (getsenv == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: getsenv.") end
if (listfiles == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: listfiles.") end
if (isfolder == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: isfolder.") end
if (hookfunc == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: hookfunc.") end

-- Config Checking
if not isfolder("GhoulHub") then
	print("Ghoul Hub | [CONFIG] Creating GhoulHub Folder...")
	makefolder("GhoulHub")
	print("Ghoul Hub | [CONFIG] GhoulHub Folder Created.")
end

if not isfolder("GhoulHub/Configs") then
	print("Ghoul Hub | [CONFIG] Creating Configs Folder...")
    makefolder("GhoulHub/Configs")
	print("Ghoul Hub | [CONFIG] Configs Folder Created.")
end

if not isfolder("GhoulHub/Configs/Counter Blox") then
    print("Ghoul Hub | [CONFIG] Creating Counter Blox Config Folder...")
    makefolder("GhoulHub/Configs/Counter Blox")
	print("Ghoul Hub | [CONFIG] Counter Blox Config Folder Created.")
end

if not isfolder("GhoulHub/Configs/Counter Blox/Settings") then
    print("Ghoul Hub | [CONFIG] Creating Counter Blox Config Settings Folder...")
    makefolder("GhoulHub/Configs/Counter Blox/Settings")
	print("Ghoul Hub | [CONFIG] Counter Blox Config Settings Folder Created.")
end

if not isfile("GhoulHub/Configs/Counter Blox/skyboxes.txt") then
	print("Ghoul Hub | [UTIL] Downloading GhoulHub SkyBoxes File...")
	writefile("GhoulHub/Configs/Counter Blox/skyboxes.txt", game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/data/skyboxes.txt"))
	print("Ghoul Hub | [UTIL] GhoulHub SkyBoxes File Downloaded.")
end

-- Game Constants
local Hitboxes = {
	["Head"] = {"Head"},
	["Chest"] = {"UpperTorso", "LowerTorso"},
	["Arms"] = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"},
	["Legs"] = {"LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}
}
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local Weapons = {}; for i,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do if v:FindFirstChild("Model") then table.insert(Weapons, v.Name) end end

-- Functions
local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

-- Extra Utility 
local skyboxes = loadstring("return "..readfile("GhoulHub/Configs/Counter Blox/skyboxes.txt"))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/ESP.lua"))()


-- Load UI LIbrary
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


-- Create GUI
print("Ghoul Hub | [UI] Creating UI Library...")
local Window = Library.CreateLib("Ghoul Hub |  " .. GAME_NAME, "DarkTheme")
print("Ghoul Hub | [UI] UI Library for " .. GAME_NAME .. "Created.")


-- Main Code


-- AIMBOT

local AimbotTab = Window:NewTab("Aimbot")

local AimbotTabCategoryLegit = AimbotTab:NewSection("Legit")

local AimbotTabCategoryLegitLabel = AimbotTabCategoryLegit:NewLabel("Legit")

AimbotTabCategoryLegit:NewToggle("Enabled", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

AimbotTabCategoryLegit:NewToggle("Silent Aim", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

AimbotTabCategoryLegit:NewToggle("Team Check", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

AimbotTabCategoryLegit:NewToggle("Visibility Check", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

AimbotTabCategoryLegit:NewDropdown("HitBox", "DropdownInfo", {"Head", "Chest", "Arms", "Leg"}, function(currentOption)
    print(currentOption)
end)

AimbotTabCategoryLegit:NewDropdown("HitBox Priority", "DropdownInfo", {"FOV", "Distance"}, function(currentOption)
    print(currentOption)
end)

AimbotTabCategoryLegit:NewDropdown("Target Priority", "DropdownInfo", {"FOV", "Distance"}, function(currentOption)
    print(currentOption)
end)

AimbotTabCategoryLegit:NewSlider("FOV", "SliderInfo", 360, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

AimbotTabCategoryLegit:NewSlider("Distance", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

AimbotTabCategoryLegit:NewSlider("Smoothness", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

AimbotTabCategoryLegit:NewSlider("Hitchance", "SliderInfo", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


-- ANTIAIM

local AimbotTabCategoryAntiAim = AimbotTab:NewSection("Anti Aim")

AimbotTabCategoryLegit:NewLabel("Anti Aim")

AimbotTabCategoryAntiAim:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

AimbotTabCategoryAntiAim:NewDropdown("Pitch", "INFO", {"Default", "Up", "Down", "Boneless", "Random"}, function(currentOption)
    print(currentOption)
end)

AimbotTabCategoryAntiAim:NewDropdown("Yaw", "INFO", {"Default", "Forward", "Backward", "Left", "Right", "Spin"}, function(currentOption)
    print(currentOption)
end)


AimbotTabCategoryAntiAim:NewSlider("Yaw Strength", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


AimbotTabCategoryAntiAim:NewToggle("Remove Head Hitbox", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)


AimbotTabCategoryAntiAim:NewToggle("Disable While Climbing", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

-- ESP

local ESPTab = Window:NewTab("ESP")

local ESPTabCategoryPlayers = ESPTab:NewSection("Players")

ESPTab:NewLabel("Players")

ESPTabCategoryPlayers:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Boxes", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Tracers", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Show Team", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Use Team Colour", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewColorPicker("Team Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

ESPTabCategoryPlayers:NewColorPicker("Enemy Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)


-- INFO
ESPTab:NewLabel("Info")

ESPTabCategoryPlayers:NewToggle("Name", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Health", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Weapon", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryPlayers:NewToggle("Distance", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)


-- DROPPED ESP

local ESPTabCategoryDroppedESP = ESPTab:NewSection("Dropped ESP")

ESPTab:NewLabel("Dropped ESP")

ESPTabCategoryDroppedESP:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryDroppedESP:NewColorPicker("Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

ESPTabCategoryDroppedESP:NewToggle("Icon", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryDroppedESP:NewToggle("Text", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryDroppedESP:NewToggle("Ammo", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)


-- GRENADE ESP


local ESPTabCategoryGrenadeESP = ESPTab:NewSection("Grenade ESP")

ESPTab:NewLabel("Grenade ESP")

ESPTabCategoryGrenadeESP:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryGrenadeESP:NewColorPicker("Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

ESPTabCategoryGrenadeESP:NewToggle("Icon", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryGrenadeESP:NewToggle("Text", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)


-- BOMB ESP


local ESPTabCategoryBombESP = ESPTab:NewSection("Bomb ESP")

ESPTab:NewLabel("Bomb ESP")

ESPTabCategoryBombESP:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryBombESP:NewColorPicker("Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

ESPTabCategoryBombESP:NewToggle("Icon", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryBombESP:NewToggle("Text", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryBombESP:NewToggle("Timer", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

-- EFFETCS


local ESPTabCategoryEffects = ESPTab:NewSection("Effects")

-- REMOVE EFFECTS

ESPTab:NewLabel("Toggle Effects")

ESPTabCategoryEffects:NewToggle("Scope", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewToggle("Flash", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewToggle("Smoke", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewToggle("Bullet Holes", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewToggle("Blood", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

-- WORLD EFFECTS

ESPTab:NewLabel("World")

ESPTabCategoryEffects:NewColorPicker("Ambience", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)


ESPTabCategoryEffects:NewDropdown("SkyBox", "DropdownInfo", {"Space", "Night", "Default", "None"}, function(currentOption)
    print(currentOption)
end)

-- BULLETS

ESPTab:NewLabel("Bullets")

ESPTabCategoryEffects:NewToggle("Bullet Tracers", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewColorPicker("Bullet Tracers Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

ESPTabCategoryEffects:NewToggle("Bullet Impacts", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewColorPicker("Bullet Impacts Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)


-- VIEW MODEL

ESPTab:NewLabel("ViewModel")

ESPTabCategoryEffects:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewSlider("FOV", "SliderInfo", 120, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


ESPTabCategoryEffects:NewSlider("ViewModel Offset X", "SliderInfo", 360, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

ESPTabCategoryEffects:NewSlider("ViewModel Offset Y", "SliderInfo", 360, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

ESPTabCategoryEffects:NewSlider("Viewmodel Offset Z", "SliderInfo", 360, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

ESPTabCategoryEffects:NewSlider("Viewmodel Offset Roll", "SliderInfo", 360, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

ESPTabCategoryEffects:NewButton("Reset", "ButtonInfo", function()
	print("Clicked")
end)

-- THIRD PERSON


ESPTab:NewLabel("Third Person")


ESPTabCategoryEffects:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

ESPTabCategoryEffects:NewKeybind("Keybind", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)


ESPTabCategoryEffects:NewSlider("Distance", "SliderInfo", 50, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


-- MISC
local MiscTab = Window:NewTab("Misc")

local MiscTabCategoryTeleport = MiscTab:NewSection("Teleport")

MiscTabCategoryTeleport:NewDropdown("Waypoints", {"Spawn T", "Spawn CT", "Bombsite A", "Bombsite B"}, function(currentOption)
	print(currentOption)
end)

MiscTabCategoryTeleport:NewDropdown("Places", {"Casual", "Competitive", "Deathmatch", "Trading"}, function(currentOption)
	print(currentOption)
end)

local MiscTabCategoryExtra = MiscTab:NewSection("Extra")

MiscTabCategoryExtra:NewButton("Unlock All Skins", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewButton("Crash Server", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewButton("Infinite HP", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewButton("FE GOD", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewButton("Vote Kick Yourself", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewButton("Invisibility", "ButtonInfo", function()
	print("Button Clicked")
end)

MiscTabCategoryExtra:NewToggle("Anti Vote Kick", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Anti Spectators", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Unlock Reset Character", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Unlock Shop While Alive", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Show Spectators", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Infinite Jump", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Infinite Cash", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Infinite Stamina", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Remove Chat Filter", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("No Fall Damage", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("No Fire Damage", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Kill All", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryExtra:NewToggle("Kill Enemies", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

local MiscTabCategoryGunmods = MiscTab:NewLabel("Gun Mods")

MiscTabCategoryGunmods:NewSlider("Damage Multiplier", "SliderInfo", 100, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscTabCategoryGunmods:NewToggle("Wallbang", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("No Recoil", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("No Spread", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Rapid Fire", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Full Auto", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Instant Reload", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Instant Equip", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Infinite Ammo", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Infinite Range", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryGunmods:NewToggle("Infinite Penetration", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

local MiscTabCategoryBomb = MiscTab:NewSection("Bomb")

MiscTabCategoryBomb:NewDropdown("Plant", "DropdownInfo", {"Normal", "Instant"}, function(currentOption)
	print(currentOption)
end)

MiscTabCategoryBomb:NewDropdown("Defuse", "DropdownInfo", {"Normal", "Instant"}, function(currentOption)
	print(currentOption)
end)

MiscTabCategoryBomb:NewButton("Plant C4", "Buttoninfo", function()
	print("Button Clicked")
end)

MiscTabCategoryBomb:NewButton("Defuse C4", "Buttoninfo", function()
	print("Button Clicked")
end)

-- BUNNY HOP

local MiscTabCategoryBunnyHop = MiscTab:NewSection("Bunny Hop")

MiscTabCategoryBunnyHop:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryBunnyHop:NewSlider("Acceleration", "SliderInfo", 100, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscTabCategoryBunnyHop:NewSlider("Maximum Velocity", "SliderInfo", 100, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscTabCategoryBunnyHop:NewSlider("Minimum Velocity", "SliderInfo", 100, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- BACKTRACK

local MiscTabCategoryBackTrack = MiscTab:NewSection("Back Track")

MiscTabCategoryBackTrack:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryBackTrack:NewSlider("Time", "SliderInfo", 500, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscTabCategoryBackTrack:NewColorPicker("Colour", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

local MiscTabCategoryChatSpam = MiscTab:NewSection("Chat Spam")

MiscTabCategoryChatSpam:NewToggle("Enabled", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

MiscTabCategoryChatSpam:NewTextBox("Chat Message", "TextboxInfo", function(txt)
	print(txt)
end)

-- SETTINGS

local Settings = Window:NewTab("Settings")

local SettingsMain = Settings:NewSection("Main")

local GhoulHubVersion = "1.0"

Settings:NewLabel("GhoulHub Version " .. GhoulHubVersion)

Settings:NewLabel("Press Right CTRL to Toggle UI")

SettingsMain:NewKeybind("Toggle UI", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

Settings:NewButton("Copy Discord Invite", "ButtonInfo", function()
	setclipboard("https://discord.gg/pornhub")
end)

Settings:NewButton("Rejoin Server", "ButtonInfo", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

Settings:NewButton("Hop Server", "ButtonInfo", function()
	print(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Settings:NewLabel("Credits")
Settings:NewLabel("Script - Ghoul#6066")
Settings:NewLabel("UI Library - Kavo UI Library")
Settings:NewLabel("ESP - Pawel12d#0272")
Settings:NewLabel("Inventory Changer - 0 clue (someone find him for me)")