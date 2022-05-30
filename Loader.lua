--[[
    
    ██████╗  ██╗  ██╗ ██████╗ ██╗   ██╗██╗         ██╗  ██╗██╗   ██╗██████╗ 
    ██╔════╝ ██║  ██║██╔═══██╗██║   ██║██║         ██║  ██║██║   ██║██╔══██╗
    ██║  ███╗███████║██║   ██║██║   ██║██║         ███████║██║   ██║██████╔╝
    ██║   ██║██╔══██║██║   ██║██║   ██║██║         ██╔══██║██║   ██║██╔══██╗
    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗    ██║  ██║╚██████╔╝██████╔╝
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                            

    Developer: Ghoul#1337    
    File: Loader.lua
    Description: Source Code of Hub Loader
]]


-- Place IDS
local AsernalID = 286090429
local BadBusinessID = 3233893879
local PrisonLifeID = 155615604
local NinjaLegendsID = 3956818381
local CounterBloxID = 301549746
local PhantomForcesID = 292439477
local JailbreakID = 606849621
local AdoptMeID = 920587237
local AnimeFightingSimulatorID = 4042427666
local BloxFruitsID = 2753915549
local DaHoodId = 2788229376
local GrandPieceId = 1730877806
local KingLegacyId = 4520749081
local RoGhoulId = 914010731
local BigPaintballID = 3527629287
local FinalStandID = 536102540
local ProjectXLID = 6186867282
local ShindoLifeID = 4616652839
local TowerOfHellID = 1962086868
local AllStarTowerDefenseID = 4996049426
local BloxburgID = 185655149
local BrookhavenRPID = 4924922222
local PetSimulatorXID = 6284583030
local AnimeFightersSimulatorID = 6299805723
local YourBizzareAdventureID = 2809202155
local BeeSwarmSimulatorID = 1537690962


local Util = loadstring(game.HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/Utils/Functions.lua"))

Util:Notify("Ghoul Hub | 1.0", "Detecting Game...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")

if game.PlaceId == AsernalID then
    Util:Notify("Ghoul Hub | 1.0", "Arsenal Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Arsenal/Arsenal.lua"))() 

elseif game.PlaceId == BadBusinessID then
    Util:Notify("Ghoul Hub | 1.0", "Bad Business Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Bad%20Business/Bad%20Business.lua"))()

elseif game.PlaceId == PrisonLifeID then
    Util:Notify("Ghoul Hub | 1.0", "Prison Life Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Prison%20LIfe/Prison%20Life.lua"))()

elseif game.PlaceId ==  NinjaLegendsID then
    Util:Notify("Ghoul Hub | 1.0", "Ninja Legends Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Ninja%20Legends/Ninja%20Legends.lua"))()

elseif game.PlaceId ==  CounterBloxID then
    Util:Notify("Ghoul Hub | 1.0", "Counter Blox Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Counter%20Blox/Counter%20Blox.lua"))()

elseif game.PlaceId ==  PhantomForcesID then
    Util:Notify("Ghoul Hub | 1.0", "Phantom Forces Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Phantom%20Forces/Phantom%20Forces.lua"))()

elseif game.PlaceId ==  JailbreakID then
    Util:Notify("Ghoul Hub | 1.0", "Jailbreak Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Jail%20Break/Jail%20Break.lua"))()

elseif game.PlaceId ==  AdoptMeID then
    Util:Notify("Ghoul Hub | 1.0", "Adopt Me Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Adopt%20Me/Adopt%20Me.lua"))()

elseif game.PlaceId ==  AnimeFightingSimulatorID then
    Util:Notify("Ghoul Hub | 1.0", "Anime Fighting Simulator Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Anime%20Fighting%20Simulator/Anime%20Fighting%20Simulator.lua"))()

elseif game.PlaceId ==  BloxFruitsID then
    Util:Notify("Ghoul Hub | 1.0", "Blox Fruits Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Blox%20Fruits/Blox%20Fruits.lua"))()

elseif game.PlaceId == DaHoodId then
    Util:Notify("Ghoul Hub | 1.0", "Da Hood Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Da%20Hood/Da%20Hood.lua"))()

elseif game.PlaceId ==  GrandPieceId then
    Util:Notify("Ghoul Hub | 1.0", "Grand Piece Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Grand%20Piece/Grand%20Piece.lua"))()

elseif game.PlaceId ==  KingLegacyId then
    Util:Notify("Ghoul Hub | 1.0", "King Legacy Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/King%20Legacy/King%20Legacy.lua"))()

elseif game.PlaceId ==  RoGhoulId then
    Util:Notify("Ghoul Hub | 1.0", "Ro Ghoul Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Ro-Ghoul/Ro%20Ghoul.lua"))()

elseif game.PlaceId ==  BigPaintballID then
    Util:Notify("Ghoul Hub | 1.0", "Big Paintball Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Big%20Paintball/Big%20Paintball.lua"))()

elseif game.PlaceId ==  FinalStandID then
    Util:Notify("Ghoul Hub | 1.0", "Final Stand Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Final%20Stand/Final%20Stand.lua"))()

elseif game.PlaceId ==  ProjectXLID then
    Util:Notify("Ghoul Hub | 1.0", "Project XL Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Project%20XL/Project%20XL.lua"))()

elseif game.PlaceId ==  ShindoLifeID then
    Util:Notify("Ghoul Hub | 1.0", "Shindo Life Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Shindo%20Life/Shindo%20Life.lua"))()

elseif game.PlaceId ==  TowerOfHellID then
    Util:Notify("Ghoul Hub | 1.0", "Tower Of Hell Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Tower%20Of%20Hell/Tower%20Of%20Hell.lua"))()

elseif game.PlaceId ==  AllStarTowerDefenseID then
    Util:Notify("Ghoul Hub | 1.0", "All Star Tower Defense Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/All%20Star%20Tower%20Defense/All%20Star%20Tower%20Defense.lua"))()

elseif game.PlaceId ==  BloxburgID then
    Util:Notify("Ghoul Hub | 1.0", "Bloxburg Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Bloxburg/Bloxburg.lua"))()

elseif game.PlaceId ==  BrookhavenRPID then
    Util:Notify("Ghoul Hub | 1.0", "Brookhaven RP, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Brookhaven%20RP/Brookhaven%20RP.lua"))()

elseif game.PlaceId ==  PetSimulatorXID then
    Util:Notify("Ghoul Hub | 1.0", "Pet Simulator X Detected, Executing GUI...", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Pet%20Simulator%20X/Pet%20Simulator%20X.lua"))()

elseif game.PlaceId == AnimeFightersSimulatorID then
    Util:Notify("Ghoul Hub | 1.0", "Anime Fighters Simulator Detected, Executing GUI", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Anime%20Fighters%20Simulator/Anime%20Fighters%20Simulator.lua"))()

elseif game.PlaceId == YourBizzareAdventureID then
    Util:Notify("Ghoul Hub | 1.0", "Your Bizzare Adevnture Detected, Executing GUI", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Your%20Bizzare%20Adventure/Your%20Bizzare%20Adventure.lua"))()

elseif game.PlaceId == BeeSwarmSimulatorID then
    Util:Notify("Ghoul Hub | 1.0", "Bee Swarm Simulator Detected, Executing GUI", 3, "rbxasset://textures/GhoulHub/ghoulhub_logo.png")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/dev/scripts/Bee%20Swarm%20Simulator/Bee%20Swarm%20Simulator.lua"))()

else
    game.Players.LocalPlayer:Kick("Ghoul Hub | [ERROR] GAME NOT SUPPORTED")
end 