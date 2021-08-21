--[[
    
    ██████╗  ██╗  ██╗ ██████╗ ██╗   ██╗██╗         ██╗  ██╗██╗   ██╗██████╗ 
    ██╔════╝ ██║  ██║██╔═══██╗██║   ██║██║         ██║  ██║██║   ██║██╔══██╗
    ██║  ███╗███████║██║   ██║██║   ██║██║         ███████║██║   ██║██████╔╝
    ██║   ██║██╔══██║██║   ██║██║   ██║██║         ██╔══██║██║   ██║██╔══██╗
    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗    ██║  ██║╚██████╔╝██████╔╝
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                            

    Developer: Ghoul#6066    
    File: Loader.lua
    Description: Source Code of Hub Loader
]]

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


if game.PlaceId == AsernalID then
    print("Ghoul Hub | [DETECTOR] ARSENAL DECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Arsenal/Arsenal.lua"))() 

elseif game.PlaceId == BadBusinessID then
    print("Ghoul Hub | [DETECTOR] BAD BUSINESS DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Bad%20Business/Bad%20Business.lua"))()

elseif game.PlaceId == PrisonLifeID then
    print("Ghoul Hub | [DETECTOR] PRISON LIFE DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Prison%20LIfe/Prison%20Life.lua"))()

elseif game.PlaceId ==  NinjaLegendsID then
    print("Ghoul Hub | [DETECTOR] Ninja Legends DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Ninja%20Legends/Ninja%20Legends.lua"))()

elseif game.PlaceId ==  CounterBloxID then
    print("Ghoul Hub | [DETECTOR] COUNTER BLOX DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Counter%20Blox/Counter%20Blox.lua"))()

elseif game.PlaceId ==  PhantomForcesID then
    print("Ghoul Hub | [DETECTOR] PHANTOM FORCES DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Phantom%20Forces/Phantom%20Forces.lua"))()

elseif game.PlaceId ==  JailbreakID then
    print("Ghoul Hub | [DETECTOR] JAILBREAK DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Jail%20Break/Jail%20Break.lua"))()

elseif game.PlaceId ==  AdoptMeID then
    print("Ghoul Hub | [DETECTOR] ADOPT ME DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Adopt%20Me/Adopt%20Me.lua"))()

elseif game.PlaceId ==  AnimeFightingSimulatorID then
    print("Ghoul Hub | [DETECTOR] ANIME FIGHTING SIMULATOR DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Anime%20Fighting%20Simulator/Anime%20Fighting%20Simulator.lua"))()

elseif game.PlaceId ==  BloxFruitsID then
    print("Ghoul Hub | [DETECTOR] BLOX FRUITS DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Blox%20Fruits/Blox%20Fruits.lua"))()

elseif game.PlaceId ==  DaHoodId then
    print("Ghoul Hub | [DETECTOR] DA HOOD DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Da%20Hood/Da%20Hood.lua"))()

elseif game.PlaceId ==  GrandPieceId then
    print("Ghoul Hub | [DETECTOR] GRAND PIECE DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Grand%20Piece/Grand%20Piece.lua"))()

elseif game.PlaceId ==  KingLegacyId then
    print("Ghoul Hub | [DETECTOR] KING LEGACY DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/King%20Legacy/King%20Legacy.lua"))()

elseif game.PlaceId ==  RoGhoulId then
    print("Ghoul Hub | [DETECTOR] RO GHOUL DETECTED")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xFGhoul/GhoulHub/master/scripts/Ro-Ghoul/Ro%20Ghoul.lua"))()

else
    game.Players.LocalPlayer:Kick("Ghoul Hub | [ERROR] GAME NOT SUPPORTED")
end 