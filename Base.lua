--Advertiser Id
local aq = ADVERTISER-ID
--Shorted Redis Address
BaseHash = "Advertiser-"..aq..":"
--#----------------------------------------#--
--Reload Bot
local function Reload()
Advertiser = dofile("./Advertiser.lua")
end
--Auto Reload Bot At New Run
Reload()
--#----------------------------------------#--
----------------------------------------------
---------- Start Multi Bot Funtion -----------
----------------------------------------------
function tdbot_update_callback(data)
--Multi Account Mod
Advertiser.Update(data,aq)
end