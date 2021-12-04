---------Clientside functions---------

esx:onPlayerDeath -> hospital:server:SetDeathStatus

esx:playerLoaded -> QBCore:Client:OnPlayerLoaded (use for setting a variable to let the script know the player is ready)

esx:showAdvancedNotification -> QBCore:Notify

esx:showHelpNotification -> QBCore:Notify

esx:showNotification -> QBCore:Notify

ESX.GetPlayerData -> QBCore.Functions.GetPlayerData

ESX.IsPlayerLoaded -> None (checks if player is loaded so not relevant)

ESX.SetPlayerData -> QBCore:Player:SetPlayerData

ESX.TriggerServerCallback -> QBCore.Functions.TriggerCallback

ESX.Game.DeleteObject -> None (Can use FiveM native DeleteEntity)

ESX.Game.DeleteVehicle -> QBCore.Functions.DeleteVehicle

ESX.Game.GetClosestObject -> None (Can use FiveM native GetClosestObjectOfType)

ESX.Game.GetClosestPed -> QBCore.Functions.GetClosestPed

ESX.Game.GetClosestPlayer -> QBCore.Functions.GetClosestPlayer

ESX.Game.GetClosestVehicle -> QBCore.Functions.GetClosestVehicle

ESX.Game.GetObjects -> None (uses enumeration)

ESX.Game.GetPedMugshot -> None (Can use FiveM native RegisterPedheadshot)

ESX.Game.GetPeds -> None (uses enumeration)

ESX.Game.GetPlayers -> QBCore.Functions.GetPlayers

ESX.Game.GetPlayersInArea -> None (uses enumeration)

ESX.Game.GetVehicleInDirection -> None (uses ray casting)

ESX.Game.GetVehicles -> QBCore.Functions.GetVehicles

ESX.Game.GetVehiclesInArea -> None (uses enumeration)

ESX.Game.IsSpawnPointClear -> None (uses getvehiclesinarea)

ESX.Game.SetVehicleProperties -> QBCore.Functions.SetVehicleProperties

ESX.Game.SpawnLocalObject -> None (dont bother)

ESX.Game.SpawnLocalVehicle -> None (dont bother)

ESX.Game.SpawnObject -> None (Can use FiveM Native CreateObject)

ESX.Game.SpawnVehicle -> QBCore.Functions.SpawnVehicle

ESX.Game.Teleport -> (Can use FiveM Native SetEntityCoords and SetEntityHeading)

ESX.Game.Utils.DrawText3D -> QBCore.Functions.DrawText3D

There is no direct translation for replacing ESX.Streaming or ESX.Scaleform or ESX.UI 


---------Serverside functions---------

QBCore.Functions.ExecuteSql = function(wait, query, cb) 

QBCore.Functions.GetIdentifier = function(source, idtype) 

QBCore.Functions.GetSource = function(identifier)

QBCore.Functions.GetPlayer = function(source)

QBCore.Functions.GetPlayerByCitizenId = function(citizenid)

QBCore.Functions.GetPlayerByPhone = function(number)

QBCore.Functions.GetPlayers = function()

QBCore.Functions.CreateCallback = function(name, cb)

QBCore.Functions.TriggerCallback = function(name, source, cb, ...)

QBCore.Functions.CreateUseableItem = function(item, cb)

QBCore.Functions.CanUseItem = function(item)

QBCore.Functions.UseItem = function(source, item)

QBCore.Functions.AddPermission = function(source, permission)

QBCore.Functions.RemovePermission = function(source)

QBCore.Functions.HasPermission = function(source, permission)

QBCore.Functions.GetPermission = function(source)

QBCore.Functions.IsPlayerBanned = function (source) 
 
--------- Playerdata:Client Side---------

local xPlayer = QBCore.Functions.GetPlayerData() <-- Client is automatically the source so no need to specify
local citizenid = xPlayer.citizenid  <-- See here i do NOT have to put "PlayerData"

--------- Playerdata:Server Side---------
local xPlayer = QBCore.Functions.GetPlayer(source) <-- Have to specify the source
local citizenid = xPlayer.PlayerData.citizenid  <-- See here i DO have to put "PlayerData"

PlayerData.citizenid -> Returns player's citizen id
                  
PlayerData.steam -> Returns player's steam id
                  
PlayerData.license -> Returns player's rockstar id
                  
PlayerData.name -> Returns player's name
                  
PlayerData.cid -> Returns player's in-game id
                  
PlayerData.money['cash'] -> Returns the player's cash amount
                  
PlayerData.money['bank'] -> Returns the player's bank amount
                  
PlayerData.charinfo -> Returns a table of the player's character info
                  
PlayerData.charinfo.firstname -> Returns player's characters first name
                  
PlayerData.charinfo.lastname -> Returns player's characters last name
                                
PlayerData.charinfo.birthdate -> Returns player's characters birth date
                  
PlayerData.charinfo.gender -> Returns player's characters gender
                  
PlayerData.charinfo.nationality -> Returns player's characters nationality
                  
PlayerData.charinfo.phone -> Returns player's characters phone number
                  
PlayerData.charinfo.account -> Returns player's characters bank account number 
                  
 PlayerData.metadata -> Returns a table of the player's metadata
                  
PlayerData.metadata["hunger"] -> Returns player's hunger level
                  
PlayerData.metadata["thirst"] -> Returns player's thirst level
                  
PlayerData.metadata["stress"] -> Returns player's stress level
                  
PlayerData.metadata["isdead"] -> Returns player's death status
                  
PlayerData.metadata["inlaststand"] -> Returns player's last stand status
                  
PlayerData.metadata["armor"] -> Returns player's armor level
                  
PlayerData.metadata["ishandcuffed"] -> Returns player's handcuff status  
                  
PlayerData.metadata["tracker"] -> Returns if player is wearing a tracker
                   
PlayerData.metadata["injail"] -> Returns player's jail status
                   
PlayerData.metadata["jailitems"] -> Returns a table of the player's jail items
                   
PlayerData.metadata["status"] -> Returns a table of the player's status
                   
PlayerData.metadata["phone"] -> Returns a table of the player's phone data
                   
PlayerData.metadata["fitbit"] -> Returns a table of the player's fitbit data
                   
PlayerData.metadata["commandbinds"] -> Returns a table of the player's binds
                   
PlayerData.metadata["bloodtype"] -> Returns the player's blood type
                   
PlayerData.metadata["dealerrep"] -> Returns the player's dealer rep amount
                   
PlayerData.metadata["craftingrep"] -> Returns the player's crafting rep amount
                   
PlayerData.metadata["attachmentcraftingrep"] -> Returns the player's attachment crafting rep amount
                   
PlayerData.metadata["currentapartment"] -> Returns the player's current apartment
                   
playerData.metadata["jobrep"] -> Returns the player's job rep amount
                   
PlayerData.metadata["callsign"] -> Returns the player's callsign
                   
PlayerData.metadata["fingerprint"] -> Returns the player's fingerprint
                   
PlayerData.metadata["walletid"] -> Returns the player's wallet id
                   
PlayerData.metadata["criminalrecord"] -> Returns a table of the player's criminal record  
                   
PlayerData.metadata["licences"] -> Returns a table of the player's licenses 
                   
PlayerData.metadata["inside"] -> Returns a table of the player's inside info
                   
PlayerData.metadata["phonedata"] -> Returns a table of the player's phone data (installed apps)
                   
PlayerData.job -> Returns a table of the player's job info
                   
PlayerData.job.name -> Returns the player's job name
                   
PlayerData.job.label -> Returns the player's job label
                   
PlayerData.job.payment -> Returns the player's job payment amount
                   
PlayerData.job.onduty -> Returns the player's duty status
                   
PlayerData.gang -> Returns a table of the player's gang info
                   
PlayerData.gang.name -> Returns the player's gang name
                   
PlayerData.gang.label -> Returns the player's gang label
                   
PlayerData.position -> Returns the player's position

---------ESX TO QBCore CLIENTSIDE---------

esx:onPlayerDeath -> hospital:server:SetDeathStatus

esx:playerLoaded -> QBCore:Client:OnPlayerLoaded (use for setting a variable to let the script know the player is ready)

esx:showAdvancedNotification -> QBCore:Notify

esx:showHelpNotification -> QBCore:Notify

esx:showNotification -> QBCore:Notify

ESX.GetPlayerData -> QBCore.Functions.GetPlayerData

ESX.IsPlayerLoaded -> None (checks if player is loaded so not relevant)

ESX.SetPlayerData -> QBCore:Player:SetPlayerData

ESX.TriggerServerCallback -> QBCore.Functions.TriggerCallback

ESX.Game.DeleteObject -> None (Can use FiveM native DeleteEntity)

ESX.Game.DeleteVehicle -> QBCore.Functions.DeleteVehicle

ESX.Game.GetClosestObject -> None (Can use FiveM native GetClosestObjectOfType)

ESX.Game.GetClosestPed -> QBCore.Functions.GetClosestPed

ESX.Game.GetClosestPlayer -> QBCore.Functions.GetClosestPlayer

ESX.Game.GetClosestVehicle -> QBCore.Functions.GetClosestVehicle

ESX.Game.GetObjects -> None (uses enumeration)

ESX.Game.GetPedMugshot -> None (Can use FiveM native RegisterPedheadshot)

ESX.Game.GetPeds -> None (uses enumeration)

ESX.Game.GetPlayers -> QBCore.Functions.GetPlayers

ESX.Game.GetPlayersInArea -> None (uses enumeration)

ESX.Game.GetVehicleInDirection -> None (uses ray casting)

ESX.Game.GetVehicles -> QBCore.Functions.GetVehicles

ESX.Game.GetVehiclesInArea -> None (uses enumeration)

ESX.Game.IsSpawnPointClear -> None (uses getvehiclesinarea)

ESX.Game.SetVehicleProperties -> QBCore.Functions.SetVehicleProperties

ESX.Game.SpawnLocalObject -> None (dont bother)

ESX.Game.SpawnLocalVehicle -> None (dont bother)

ESX.Game.SpawnObject -> None (Can use FiveM Native CreateObject)

ESX.Game.SpawnVehicle -> QBCore.Functions.SpawnVehicle

ESX.Game.Teleport -> (Can use FiveM Native SetEntityCoords and SetEntityHeading)

ESX.Game.Utils.DrawText3D -> QBCore.Functions.DrawText3D

There is no direct translation for replacing ESX.Streaming or ESX.Scaleform or ESX.UI

---------Serverside---------

ESX.CreatePickup -> None (irrelevant and done through qb-inventory)

ESX.GetItemLabel -> None (Just returns item label)

ESX.GetPlayerFromId -> QBCore.Functions.GetPlayer

ESX.GetPlayerFromIdentifier -> QBCore.Functions.GetPlayerByCitizenId

ESX.GetPlayers -> QBCore.Functions.GetPlayers

ESX.RegisterServerCallback -> QBCore.Functions.CreateCallback

ESX.RegisterUsableItem -> QBCore.Functions.CreateUseableItem

ESX.SavePlayer -> QBCore.Player.Save

ESX.SavePlayers -> None (dont bother)

ESX.Trace -> Use QBCore.Debug but dont bother converting this

ESX.UseItem -> QBCore.Functions.UseItem 

XPLAYER: xPlayer.removeWeaponComponent -> xPlayer.Functions.RemoveItem (component name)

xPlayer.setAccountMoney -> xPlayer.Functions.SetMoney (account)

xPlayer.setCoords -> None (used for teleporting)

xPlayer.setInventoryItem -> xPlayer.Functions.AddItem (item name)

xPlayer.setJob -> xPlayer.Functions.SetJob

xPlayer.setMaxWeight -> None (It is set in qb-core config) 

xPlayer.setMoney -> xPlayer.Functions.SetMoney

xPlayer.setName -> None (dont bother)

xPlayer.setWeaponTint -> None (qb-weapons does this)

xPlayer.showHelpNotification -> TriggerClientEvent('QBCore:Notify')

xPlayer.showNotification -> TriggerClientEvent('QBCore:Notify')

xPlayer.triggerEvent -> None (dont bother)

xPlayer.updateCoords -> None (dont bother) 


---------Events---------

esx:getSharedObject -> QBCore:GetObject

esx:setJob -> QBCore:Client:OnJobUpdate

esx:onPlayerSpawn -> QBCore:Client:OnPlayerLoaded

playerSpawned -> QBCore:Client:OnPlayerLoaded (spawnmanager compatibility)

esx:addInventoryItem -> QBCore:Server:AddItem

esx:removeInventoryItem -> QBCore:Server:RemoveItem

esx:useItem -> QBCore:Server:UseItem
