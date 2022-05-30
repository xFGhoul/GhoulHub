--[[
    
    ██████╗  ██╗  ██╗ ██████╗ ██╗   ██╗██╗         ██╗  ██╗██╗   ██╗██████╗ 
    ██╔════╝ ██║  ██║██╔═══██╗██║   ██║██║         ██║  ██║██║   ██║██╔══██╗
    ██║  ███╗███████║██║   ██║██║   ██║██║         ███████║██║   ██║██████╔╝
    ██║   ██║██╔══██║██║   ██║██║   ██║██║         ██╔══██║██║   ██║██╔══██╗
    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗    ██║  ██║╚██████╔╝██████╔╝
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                            

    Developer: Ghoul#1337    
    File: Functions.lua
    Description: GhoulHub Notifications
]]

local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

local Notifications = {
    
}


function Notifications:New(Title, Description, Duration, ImageAsset)
    Notification.Notify(Title, Description, ImageAsset,  {
        Duration = Duration,
        Main = {
            Rounding = true
        }
    });
end
