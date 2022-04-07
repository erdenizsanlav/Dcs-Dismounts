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

--TRANSPORT CAPACITIES
--BTR-80,BTR-81A,BMP-2,BMP-3: 7 Troops
--BMP-1: 8 Troops
--MTLB: 11 Troops
--M2A2 Bradley: 7 Troops
--Stryker: 9 Troops
--LAV-25: 6 Troops
--BMD-1 and BTR-RD: 6 Troops
--Marder with Milan: 6, without 7
--Warrior: 7
--M-113: 11
--AAV-7: 21 (hoooly schmallies!)
--Tpz Fuchs: 10
--Sdkfz 251
--M2 Halftrack
--Sdkfz 7

--Questioned: Merkava? M6 Linebacker?

do

local missionTransports = {}
dismountsInitiated = 0

russianModernSquadBTR_BMP2_BMP3 =
{
	"Infantry AK",
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3"	
}--end of russianModernSquadBTR_BMP2_BMP3

russianRifleSquadBTR_BMP2_BMP3 =
{
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver3"	
}--end of russianRifleSquadBTR_BMP2_BMP3

russianManpadsCmdSquadBTR_BMP2_BMP3 =
{
	"SA-18 Igla-S comm",
	"Infantry AK",
	"SA-18 Igla-S manpad",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3"	
}--end of russianManpadsCmdSquadBTR_BMP2_BMP3

russianSquadBMP1 =
{
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver3",
	"Infantry AK ver2"
}--end of russianSquadBMP1

russianSquadManpadsBMP1 =
{
	"Infantry AK",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver3",
	"Infantry AK ver2"
}--end of russianSquadManpadsBMP1

russianSquadManpadsCmdBMP1 =
{
	"SA-18 Igla-S comm",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK ver2"
}--end of russianSquadManpadsCmdBMP1

russianVDVBMD1 =
{
	"Paratrooper AKS-74",
	"Paratrooper RPG-16",
	"Paratrooper AKS-74",
	"Paratrooper AKS-74",
	"Paratrooper RPG-16",
	"Paratrooper AKS-74"
}--end of russianVDVBMD1

russianSquadMTLB =
{
	"Infantry AK",
	"Infantry AK",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver2",
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK ver3"
}

russianSquadManpadsMTLB =
{
	"Infantry AK ver3",
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver2",
	"Infantry AK",
	"Infantry AK ver3",
	"Infantry AK"
}

russianSquadRPGMTLB =
{
	"Infantry AK",
	"Infantry AK",
	"Infantry AK ver3",
	"Paratrooper RPG-16",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Paratrooper RPG-16",
	"Infantry AK ver3",
	"Infantry AK",
	"Infantry AK ver2",
	"Infantry AK ver3"
}

russianSquadRPGIglaMTLB =
{
	"Infantry AK",
	"Infantry AK",
	"Infantry AK ver3",
	"Paratrooper RPG-16",
	"SA-18 Igla-S manpad",
	"Infantry AK ver2",
	"Paratrooper RPG-16",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK",
	"Infantry AK ver3"
}

russianSquadAntiAirMTLB =
{
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad",
	"Infantry AK ver3",
	"Infantry AK",
	"Infantry AK ver2",
	"SA-18 Igla-S manpad"
}

usaSquadLAV25 =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249"
}

usaSquadManpadsLAV25 =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249"
}

usaSquadManpadsBradleyMarder =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M4"
}

usaSquadBradleyMarderWarrior =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4"
}

usaSquadStryker =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249"
}

usaSquadManpadsStryker =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249"
}

usaFireteamStryker =
{
	"Soldier M4",
	"Soldier M249",
	"Soldier M249",
	"Soldier M249",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M249"
}

usaSquadManpadsM113 =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier stinger",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M249"
}

usaSquadM113 =
{
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier M4",
	"Soldier M249",
	"Soldier M4",
	"Soldier M249"
}


local function getHeading(Pos3)
		if (Pos3.x.x > 0) and (Pos3.x.z == 0) then
			return 0
		elseif (Pos3.x.x > 0) and (Pos3.x.z > 0) then
			return math.atan(Pos3.x.z / Pos3.x.x)
		elseif (Pos3.x.x == 0) and (Pos3.x.z > 0) then
			return math.rad(90)
		elseif (Pos3.x.x < 0) and (Pos3.x.z > 0) then
			return math.rad(90) - math.atan(Pos3.x.x / Pos3.x.z)
		elseif (Pos3.x.x < 0) and (Pos3.x.z == 0) then
			return math.rad(180)
		elseif (Pos3.x.x < 0) and (Pos3.x.z < 0) then
			return math.rad(180) + math.atan(Pos3.x.z / Pos3.x.x)
		elseif (Pos3.x.x == 0) and (Pos3.x.z < 0) then
			return math.rad(270)
		elseif (Pos3.x.x > 0) and (Pos3.x.z < 0) then
			return math.rad(270) - math.atan(Pos3.x.x / Pos3.x.z)
		end
end

local function initializeTransport(unitName,cargoSquad)
	--trigger.action.outText('Cargo:' .. #cargoSquad, 20)
	unitId = Unit.getByName(unitName):getID()

	missionTransports[unitName] = {			
			countryID = Unit.getByName(unitName):getCountry(),
			UnitID = Unit.getByName(unitName):getID(),
			cargo = cargoSquad,
			cargo_status = "mounted"
	}
	--trigger.action.outText('missionTransports:' .. #missionTransports, 20)
	--trigger.action.outText('unit name:' .. unitName, 20)
	--trigger.action.outText('unit id:' .. unitId, 20)
	--trigger.action.outText('data cargo:' .. missionTransports[unitName].cargo_status, 20)
end

function determineRandomSquad(hostVehicle)
	countryId = Unit.getByName(hostVehicle):getCountry()
	vehichleType = Unit.getByName(hostVehicle):getTypeName()

	--trigger.action.outText('CountryID:' .. countryId, 20)
	--trigger.action.outText(vehichleType, 20)

	if countryId == 0 or countryId == 1 or countryId == 16 or countryId == 17 or countryId == 18 or countryId == 19 then --East
		if vehichleType == 'BTR-80' or vehichleType == 'BMP-2' or vehichleType == 'BMP-3' or vehichleType == 'BTR-82A' then
			--randomize a number, and determine squad type corresponding to nation and number for this vehicle type, in this case, 7 men squads
			squadTypeSeed = mist.random(7) --1 to 5 = rifle squad, 5 and 6 = rifle squad with 1 manpads, 7 = air defense squad with manpads cmd+2 manpads+4 riflemen
			--trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianRifleSquadBTR_BMP2_BMP3)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,russianModernSquadBTR_BMP2_BMP3)
			else
				initializeTransport(hostVehicle,russianManpadsCmdSquadBTR_BMP2_BMP3)
			end
		elseif vehichleType == 'GAZ-66' then
			--trucks may not get any dismounts, depending on randomizer
			return 0
		elseif vehichleType == 'BMP-1' then
			squadTypeSeed = mist.random(7)
			--trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianSquadBMP1)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,russianSquadManpadsBMP1)
			else
				initializeTransport(hostVehicle,russianSquadManpadsCmdBMP1)
			end
		elseif vehichleType == 'BMD-1' or vehichleType == 'BTR_D' then
			initializeTransport(hostVehicle,russianVDVBMD1)
		elseif vehichleType == 'MTLB' then
			squadTypeSeed = mist.random(9)
			if squadTypeSeed < 4 then
				initializeTransport(hostVehicle,russianSquadMTLB)
			elseif squadTypeSeed < 6 then
				initializeTransport(hostVehicle,russianSquadManpadsMTLB)
			elseif squadTypeSeed < 8 then
				initializeTransport(hostVehicle,russianSquadRPGMTLB)
			elseif squadTypeSeed < 9 then
				initializeTransport(hostVehicle,russianSquadRPGIglaMTLB)
			else
				initializeTransport(hostVehicle,russianSquadAntiAirMTLB)
			end
		end --END vehichle type if for east
	--elseif --Insurgent
	--	return 0
	else --West
		if vehichleType == 'M-2 Bradley' or vehichleType == 'Marder' or vehichleType == 'MCV-80' then
			--randomize a number, and determine squad type corresponding to nation and number for this vehicle type, in this case, 7 men squads
			squadTypeSeed = mist.random(7) --1 to 4 = rifle squad, 5 and 6 = rifle squad with 1 manpads, 7 = air defense squad with manpads cmd+2 manpads+4 riflemen
			--trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,usaSquadBradleyMarderWarrior)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,usaSquadManpadsBradleyMarder)
			else
				initializeTransport(hostVehicle,usaSquadManpadsBradleyMarder)
			end
		elseif vehichleType == 'GAZ-66' then
			--trucks may not get any dismounts, depending on randomizer
			return 0
		elseif vehichleType == 'LAV-25' then
			squadTypeSeed = mist.random(7)
			--trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,usaSquadLAV25)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,usaSquadManpadsLAV25)
			--else
			--	initializeTransport(hostVehicle,russianSquadManpadsCmdBMP1)
			end
		elseif vehichleType == 'M-113' then
			squadTypeSeed = mist.random(5)
			if squadTypeSeed < 4 then
				initializeTransport(hostVehicle,usaSquadM113)
			else
				initializeTransport(hostVehicle,usaSquadManpadsM113)
			end
		elseif vehichleType == 'M1126 Stryker ICV' then
			squadTypeSeed = mist.random(9)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,usaSquadStryker)
			elseif squadTypeSeed < 8 then
				initializeTransport(hostVehicle,usaSquadManpadsStryker)			
			else
				initializeTransport(hostVehicle,usaFireteamStryker)
			end
		end --END vehichle type if for west
	end --END country type
end

function assignSetSquadTypeToVehicle(hostVehicle, squadType)
	--squadType = mortarWest, mortarGrg, mortarRu, mortarIns, rifleWest, rifleGrg, rifleRu, rifleIns, manpadsWest, manpadsRu, manpadsIns, vdv, rpgIns, antiAir, special, specificGroupNameFromMEditor:	
	local vehicle = Unit.getByName(hostVehicle)
	local vehichleType = Unit.getByName(hostVehicle):getTypeName()	

	if vehicle ~= nil then
		--vehicles with 7 passenger capacity
		if vehichleType == 'BTR-80' or vehichleType == 'BMP-2' or vehichleType == 'BMP-3' or vehichleType == 'BTR-82A' or vehichleType == 'M-2 Bradley' or vehichleType == 'Marder' or vehichleType == 'MCV-80' then
			if squadType == 'rifleWest' then
				initializeTransport(hostVehicle,usaSquadBradleyMarderWarrior)
			elseif squadType == 'rifleRu' then
				initializeTransport(hostVehicle,russianRifleSquadBTR_BMP2_BMP3)
			elseif squadType == 'rifleIns' then
				initializeTransport(hostVehicle,russianRifleSquadBTR_BMP2_BMP3)
			elseif squadType == 'manpadsWest' then
				initializeTransport(hostVehicle,usaSquadManpadsBradleyMarder)
			elseif squadType == 'manpadsRu' then
				initializeTransport(hostVehicle,russianModernSquadBTR_BMP2_BMP3)
			elseif squadType == 'manpadsIns' then
				initializeTransport(hostVehicle,russianModernSquadBTR_BMP2_BMP3)
			end
		--vehicles with 11 passenger capacity
		elseif vehichleType == 'M-113' or vehichleType == 'MTLB' then
			if squadType == 'rifleWest' then
				initializeTransport(hostVehicle,usaSquadM113)
			elseif squadType == 'rifleRu' then
				initializeTransport(hostVehicle,russianSquadMTLB)
			elseif squadType == 'rifleIns' then
				initializeTransport(hostVehicle,russianSquadMTLB)
			elseif squadType == 'manpadsWest' then
				initializeTransport(hostVehicle,usaSquadManpadsM113)
			elseif squadType == 'manpadsRu' then
				initializeTransport(hostVehicle,russianSquadManpadsMTLB)
			elseif squadType == 'manpadsIns' then
				initializeTransport(hostVehicle,russianSquadManpadsMTLB)
			end
		end
	end
end

local function spawnSquad(hostVehicle)
	transportVehicle = missionTransports[hostVehicle]
	--trigger.action.outText('Spawning squad', 20)

	if transportVehicle ~= nil then
		local dismountingTransport = Unit.getByName(hostVehicle)
		local carrierPos = dismountingTransport:getPosition()
		local carrierUnitID = transportVehicle.UnitID

		--trigger.action.outText('Vehicle found', 20)

		local dmVec2 = {
			x = carrierPos.p.x + carrierPos.x.x * -5,
			y = carrierPos.p.z + carrierPos.x.z * -5,
		}
		local heading = getHeading(carrierPos)
		if transportVehicle.cargo ~= nil then
			local groupData = {
					["visible"] = false,
					["route"] = 
					{
						["spans"] = 
						{
						}, -- end of ["spans"]
						["points"] = 
						{
							[1] = 
							{
								["alt"] = 0,
								["type"] = "Turning Point",
								["ETA"] = 0,
								["alt_type"] = "BARO",
								["formation_template"] = "",
								["y"] = dmVec2.y,
								["x"] = dmVec2.x,
								["ETA_locked"] = true,
								["speed"] = 5.5555555555556,
								["action"] = "Off Road",
								["task"] = 
								{
									["id"] = "ComboTask",
									["params"] = 
									{
										["tasks"] = 
										{
										}, -- end of ["tasks"]
									}, -- end of ["params"]
								}, -- end of ["task"]
								["speed_locked"] = true,
							}, -- end of [1]
							[2] = 
							{
								["alt"] = 0,
								["type"] = "Turning Point",
								["ETA"] = 0,
								["alt_type"] = "BARO",
								["formation_template"] = "",
								["y"] = dmVec2.y + 45,
								["x"] = dmVec2.x + 55,
								["ETA_locked"] = false,
								["speed"] = 5.5555555555556,
								["action"] = "Off Road",
								["task"] = 
								{
									["id"] = "ComboTask",
									["params"] = 
									{
										["tasks"] = 
										{
										}, -- end of ["tasks"]
									}, -- end of ["params"]
								}, -- end of ["task"]
								["speed_locked"] = true,
							}, -- end of [2]
						}, -- end of ["points"]
					}, -- end of ["route"]
					["groupId"] = hostVehicle .. 10000,
					["tasks"] = 
					{
					}, -- end of ["tasks"]
					["hidden"] = false,
					["units"] = 
					{
						
					}, -- end of ["units"]
					["y"] = dmVec2.y,
					["x"] = dmVec2.x,
					["name"] = "Dismounts_" .. hostVehicle,
					["start_time"] = 0,
					["task"] = "Ground Nothing",
			}
			local vehiclesList = {}

			for i=1,#transportVehicle.cargo do
				vehiclesList[i] = {
						["y"] = dmVec2.y,
						["type"] = transportVehicle.cargo[i],
						["name"] = "Dismounts_" .. hostVehicle .. "_01",
						["unitId"] = carrierUnitID + 10000,
						["heading"] = 0,
						["playerCanDrive"] = true,
						["skill"] = "Average",
						["x"] = dmVec2.x + i,
				}
			end
			groupData["units"] = vehiclesList
			coalition.addGroup(missionTransports[hostVehicle].countryID, Group.Category.GROUND, groupData)
		end
	else
		return 0;
	end	
end

local function despawnSquad(hostVehicle)
	local g = Group.getByName("Dismounts_" .. hostVehicle)
	local initialSize = g:getInitialSize()
	local currentSize = g:getUnits()
	if initialSize > #currentSize then
		--trigger.action.outText(hostVehicle .. ' dismounts were ' .. initialSize .. ' remaining ' .. #currentSize, 10)
		local remainingInfantry = {}
		for i=1,#currentSize do
			--trigger.action.outText(currentSize[i]:getTypeName(),10)
			table.insert(remainingInfantry, currentSize[i]:getTypeName())
		end
		--trigger.action.outText(#remainingInfantry,10)
		missionTransports[hostVehicle].cargo = remainingInfantry
	end
end

local function checkMovement()
	--trigger.action.outText('checking movement', 2)
	--trigger.action.outText(#missionTransports, 2)
	for unitName, transportData in pairs(missionTransports) do
		local dismountingTransport = Unit.getByName(unitName)
		--trigger.action.outText('unit:' .. unitName, 2)
		--trigger.action.outText('cargo:' .. #transportData.cargo , 2)
		--trigger.action.outText('status:' .. transportData.cargo_status, 2)
		if dismountingTransport ~= nil then
				unitId = Unit.getByName(unitName):getID()
				--trigger.action.outText('unit:' .. unitName .. ' is deploying troops if stopped', 2)

				local v = dismountingTransport:getVelocity()	--Velocity is a Vec3
				local spd = mist.vec.mag(v)

				--trigger.action.outText('its speed is ' .. spd .. ' (' .. v.x .. ' ' .. v.y .. ' ' .. v.z .. ')', 2)
				

				if spd < 1 then	--Check if speed is zero
					if transportData.cargo_status == "mounted" then
						spawnSquad(unitName)
						missionTransports[unitName].cargo_status = "dismounted"
					end
				else	--Else carrier is moving
					if transportData.cargo_status == "dismounted" then
						if spd > 2.3 then
							local g = Group.getByName("Dismounts_" .. unitName)
							if g ~= nil then	--Check if the group is still alive
								missionTransports[unitName].cargo_status = "mounted"
								despawnSquad(unitName)
								g:destroy()
							else
								missionTransports[unitName].cargo_status = "lost"	--If the dismounted group is destroyed, set status of the carrier to lost to prevent it from deploying a new group
							end
						end
					end
				end
		else
			trigger.action.outText('wow sth wrong for vehichle:' .. unitName, 2)
			--TODO: remove this entry from missionTransports table
		end
	end
	return timer.getTime() + 5
end

timer.scheduleFunction(checkMovement, nil, timer.getTime() + 1)

end