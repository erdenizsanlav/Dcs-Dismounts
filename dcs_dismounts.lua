--IglaGRG_1
--IglaRUS_1
--Stinger_manpad
--IglaINS_1
--SA-18 Igla manpad
--Infantry AK
--Infantry AK ver2
--Infantry AK ver3
--2B11 mortar
--Paratrooper AKS-74
--Paratrooper RPG-16

missionTransports = {}

russianModernSquadBTR_BMP2_BMP3 =
{
	["hidden"] = false,
	["units"] =
	{
		[1] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[2] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[3] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[4] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[5] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[6] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "SA-18 Igla manpad"
		},
		[7] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		}
	}
}--end of russianModernSquadBTR_BMP2_BMP3

russianRifleSquadBTR_BMP2_BMP3 =
{
	["hidden"] = false,
	["units"] =
	{
		[1] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[2] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[3] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[4] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[5] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[6] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[7] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		}
	}
}--end of russianRifleSquadBTR_BMP2_BMP3

russianSquadBMP1 =
{
	["hidden"] = false,
	["units"] =
	{
		[1] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[2] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[3] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[4] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[5] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[6] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[7] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[8] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		}
	}
}--end of russianSquadBMP1

russianSquadManpadsBMP1 =
{
	["hidden"] = false,
	["units"] =
	{
		[1] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK"
		},
		[2] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[3] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "SA-18 Igla manpad"
		},
		[4] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[5] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		},
		[6] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[7] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver3"
		},
		[8] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Infantry AK ver2"
		}
	}
}--end of russianSquadManpadsBMP1

russianVDVBMD1 =
{
	["hidden"] = false,
	["units"] =
	{
		[1] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper AKS-74"
		},
		[2] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper RPG-16"
		},
		[3] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper AKS-74"
		},
		[4] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper AKS-74"
		},
		[5] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper RPG-16"
		},
		[6] =
		{
			["skill"] = "Average",
			["category"] = "vehichle",
			["type"] = "Paratrooper AKS-74"
		}
	}
}--end of russianVDVBMD1

function determineRandomSquad(hostVehicle)
	countryId = Unit.getByName(hostVehicle):getCountry()
	vehichleType = Object.getTypeName(hostVehicle)

	if countryID == 0 or countryID == 1 or countryID == 16 or countryID == 17 or countryID == 18 or countryID == 19 then --East
		if vehichleType == 'BTR-70' or vehichleType == 'BMP-2' or vehichleType == 'BMP-3' then

		elseif vehichleType == 'GAZ-66'

		elseif vehichleType == 'BMP-1'

		end --END vehichle type if for east
	elseif --Insurgent

	else --West

	end --END country type

end

function assignSetSquadTypeToVehicle(hostVehicle, squadType)
	-- squadType = mortarWest, mortarGrg, mortarRu, mortarIns, rifleWest, rifleGrg, rifleRu, rifleIns, manpadsWest, manpadsRu, manpadsIns, vdv, rpgIns, specificGroupNameFromMEditor:
end



function initializeTransports()
	missionTransports[#missionTransports + 1] = {
			name = UnitName,
			countryID = Unit.getByName(UnitName):getCountry(),
			UnitID = Unit.getByName(UnitName):getID(),
			cargo = dm_type,
			cargo_status = "mounted"
		}
end


function testSpawn()
	
	mist.dynAdd()
end