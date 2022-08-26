-- CLIENT SIDE
-- Note: Simple part, only a function.

Citizen.CreateThread(function()
	
	-- Loop for every blip in Config.Blips table
	for meta, data in pairs(Config.Blips) do
		-- Creating the blip
		data.blip = AddBlipForCoord(data.x, data.y, data.z)
		-- Setting the sprite
		SetBlipSprite(data.blip, data.sprite)
		-- Setting the color
		SetBlipColour(data.blip, data.color)
		-- Setting its scale
		SetBlipScale(data.blip, data.scale)
		-- Setting its Display Mode
		SetBlipDisplay(data.blip, data.display_mode)
		-- Setting if short ranged or not
		SetBlipAsShortRange(data.blip, data.short_range)
		
		-- Setting the label name
		BeginTextCommandSetBlipName("STRING") -- Indicating string type
		AddTextComponentString(data.label) -- Adding label name
		EndTextCommandSetBlipName(data.blip) -- Finishing the name setting by passing the blip object
		
	end
  
end)