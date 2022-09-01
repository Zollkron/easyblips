-- CLIENT SIDE

---------------------------------------------------------------------------------------------------

--------------------------------------------------------------------
------------------------ BLIP CUSTOM DATA --------------------------
--------------------------------------------------------------------

-- BLIPS (put your blips here)
Config.Blips = {
	-- Examples
	{	-- Blip for a Money Laundry
		label = _U('money_laundry'), 
		sprite = Sprites['radar_production_money'], 
		color = Colors['red'], 
		scale = 1.0,
		display_mode = DisplayModes['map_and_minimap_selectable'], 
		short_ranged = true,
		x = 999.1253, 
		y = -1785.257, 
		z = 31.46448,
		no_visible_for = 'police',
		only_visible_for = 'any'
	},
	{	-- Blip for Simeon's missions
		label = _U('simeon'), 
		sprite = Sprites['radar_simeon_family'], 
		color = Colors['blue'], 
		scale = 1.0,
		display_mode = DisplayModes['map_and_minimap_selectable'], 
		short_ranged = true,
		x = -25.0, 
		y = -1100.0, 
		z = 32.0,
		no_visible_for = 'police',
		only_visible_for = 'any'
	}
}

---------------------------------------------------------------------------------------------------

local blips = {}
local toggle = true

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

function createBlip(data)
	-- Creating the blip
	local blip = AddBlipForCoord(data.x, data.y, data.z)
	-- Setting the sprite
	SetBlipSprite(blip, data.sprite)
	-- Setting the color
	SetBlipColour(blip, data.color)
	-- Setting its scale
	SetBlipScale(blip, data.scale)
	-- Setting its Display Mode
	SetBlipDisplay(blip, data.display_mode)
	-- Setting if short ranged or not
	SetBlipAsShortRange(blip, data.short_ranged)
	
	-- Setting the label name
	BeginTextCommandSetBlipName("STRING") -- Indicating string type
	AddTextComponentString(data.label) -- Adding label name
	EndTextCommandSetBlipName(blip) -- Finishing the name setting by passing the blip object
	return blip
end

function createBlips()
	if ESX.PlayerData.job == nil then return end --Assert if no job yet
	-- Loop for every blip in blips table
	for i, data in pairs(blips) do
		if toggle then
			local job_name = ESX.PlayerData.job.name
			if job_name ~= data.no_visible_for then 
				if job_name == data.only_visible_for or data.only_visible_for == 'any' then
					if data.blip == nil then
						data.blip = createBlip(data)
					end
				end
			elseif data.blip ~= nil then
				RemoveBlip(data.blip)
				data.blip = nil
			end
		elseif data.blip ~= nil and (job_name == data.no_visible_for or (job_name ~= data.only_visible_for and data.only_visible_for ~= 'any')) then
			RemoveBlip(data.blip)
			data.blip = nil
		end
	end
end

function removeBlips()
	-- Loop for every blip in blips table
	for i, data in pairs(blips) do
		if data.blip ~= nil then
			RemoveBlip(data.blip)
			data.blip = nil
		end
	end
end 

RegisterCommand('toggleEasyBlips', function(source, args)
	-- If not argument passed then print message and return
    if args[1] == nil then
		print("No option on/off was supplied.")
        return
	end
	-- If argument is off then remove all blips and put toggle variable to false
	if args[1] == 'off' then
		removeBlips()
		toggle = false
	-- Else if argument is on then put toggle variable to true
	elseif args[1] == 'on' then
		toggle = true
	-- Else if argument is not off neither on then print message and return
	else
		print(args[1] .. " is not a valid on/off option.")
		return
	end
end, false)

function getConfigBlips()
	-- function for clone Config.Blips table in local blips table
	local blips = {}
	-- Loop for every blip in Config.Blips table
	for i, data in pairs(Config.Blips) do
		blips[i] = data
	end
	return blips
end

Citizen.CreateThread(function()
	-- While loop for refresh blips
	while true do
		-- If toggle on then load Config blips
		if toggle then
			blips = getConfigBlips()
		end
		Wait(0)
		-- Create blips
		createBlips()
	end
end)