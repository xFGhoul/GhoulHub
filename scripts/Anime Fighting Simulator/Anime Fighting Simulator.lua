--[[
    
    ██████╗  ██╗  ██╗ ██████╗ ██╗   ██╗██╗         ██╗  ██╗██╗   ██╗██████╗ 
    ██╔════╝ ██║  ██║██╔═══██╗██║   ██║██║         ██║  ██║██║   ██║██╔══██╗
    ██║  ███╗███████║██║   ██║██║   ██║██║         ███████║██║   ██║██████╔╝
    ██║   ██║██╔══██║██║   ██║██║   ██║██║         ██╔══██║██║   ██║██╔══██╗
    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗    ██║  ██║╚██████╔╝██████╔╝
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                            

    Developer: Ghoul#1337
    File: Anime Fighting Simulator.lua
    Description: Source Code of AFS(Anime Fighting Simulator) Exploit
]]

 -- Notification Library
local Util = loadstring(game.HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/Utils/Functions.lua"))

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
local isfolder = isfolder or false
local getrawmetatable = getrawmetatable or false
local listfiles = listfiles or listdir or syn_io_listdir or false
local getsenv = getsenv or false
local hookfunc = hookfunc or hookfunction or replaceclosure or false


-- Method Checking
if (isfolder == false) then return LocalPlayer:Kick("Exploit not supported! Missing: isfolder.") end
if (getrawmetatable == false) then return LocalPlayer:Kick("Exploit not supported! Missing: getrawmetatable.") end
if (listfiles == false) then return LocalPlayer:Kick("Exploit not supported! Missing: listfiles.") end
if (getsenv == false) then return LocalPlayer:Kick("Exploit not supported! Missing: getsenv") end
if (hookfunc == false) then return LocalPlayer:Kick("Exploit not supported! Missing: hookfunc.") end

 

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

-- Game Constants
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)


-- Functions
local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

-- Extra Utilities
local IrisInit = loadstring(game:HttpGet("https://irishost.xyz/InfinityHosting/IrisInit.lua"))()



-- Load UI LIbrary
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


-- Create GUI
print("Ghoul Hub | [UI] Creating UI Library...")
local Window = Library.CreateLib("Ghoul Hub |  " .. GAME_NAME, "DarkTheme")
print("Ghoul Hub | [UI] UI Library for " .. GAME_NAME .. "Created.")

-- Main Code






-- SETTINGS

local Settings = Window:NewTab("Settings")

local SettingsMain = Settings:NewSection("Main")

local GhoulHubVersion = "1.0"

Settings:NewLabel("GhoulHub Version " .. GhoulHubVersion)

Settings:NewLabel("Press Right CTRL to Toggle UI")

SettingsMain:NewKeybind("Toggle UI", "Key To Toggle UI On/Off", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

Settings:NewButton("Copy Discord Invite", "Copies Discord Server Invite to Clipboard", function()
	setclipboard("https://https://discord.gg/8fKcb9gmwr") 
end)

Settings:NewButton("Rejoin Server", "Rejoins Current Roblox Game", function()
	TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

Settings:NewButton("Hop Server", "Joins A New Roblox Game", function()
	TeleportService:TeleportToPlaceInstance(game.PlaceId, game:GetService("Players").LocalPlayer) 
end)

Settings:NewLabel("Credits")
Settings:NewLabel("Script - Ghoul#1337")
Settings:NewLabel("UI Library - Kavo UI Library")