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
	"SA-18 Igla manpad",
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
	"SA-18 Igla manpad",
	"Infantry AK ver3",
	"Infantry AK ver2",
	"Infantry AK ver3",
	"Infantry AK ver3",
	"Infantry AK ver2"
}--end of russianSquadManpadsBMP1

russianVDVBMD1 =
{
	"Paratrooper AKS-74",
	"Paratrooper RPG-16",
	"Paratrooper AKS-74",
	"Paratrooper AKS-74",
	"Paratrooper RPG-16",
	"Paratrooper AKS-74"
}--end of russianVDVBMD1

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
	trigger.action.outText('Cargo:' .. #cargoSquad, 20)
	unitId = Unit.getByName(unitName):getID()

	missionTransports[unitName] = {			
			countryID = Unit.getByName(unitName):getCountry(),
			UnitID = Unit.getByName(unitName):getID(),
			cargo = cargoSquad,
			cargo_status = "mounted",
	}
	trigger.action.outText('missionTransports:' .. #missionTransports, 20)
	trigger.action.outText('unit name:' .. unitName, 20)
	trigger.action.outText('unit id:' .. unitId, 20)
	trigger.action.outText('data cargo:' .. missionTransports[unitName].cargo_status, 20)
end

function determineRandomSquad(hostVehicle)
	countryId = Unit.getByName(hostVehicle):getCountry()
	vehichleType = Unit.getByName(hostVehicle):getTypeName()

	trigger.action.outText('CountryID:' .. countryId, 20)
	trigger.action.outText(vehichleType, 20)

	if countryId == 0 or countryId == 1 or countryId == 16 or countryId == 17 or countryId == 18 or countryId == 19 then --East
		if vehichleType == 'BTR-80' or vehichleType == 'BMP-2' or vehichleType == 'BMP-3' then
			--randomize a number, and determine squad type corresponding to nation and number for this vehicle type, in this case, 7 men squads
			squadTypeSeed = mist.random(7) --1 to 5 = rifle squad, 5 and 6 = rifle squad with 1 manpads, 7 = air defense squad with manpads cmd, 2 manpads, 4 riflemen
			trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianRifleSquadBTR_BMP2_BMP3)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,russianModernSquadBTR_BMP2_BMP3)
			end
		elseif vehichleType == 'GAZ-66' then
			--trucks may not get any dismounts, depending on randomizer
			return 0
		elseif vehichleType == 'BMP-1' then
			squadTypeSeed = mist.random(7)
			trigger.action.outText('seed:' .. squadTypeSeed, 20)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianSquadBMP1)
			elseif squadTypeSeed < 7 then
				initializeTransport(hostVehicle,russianSquadManpadsBMP1)
			end
		end --END vehichle type if for east
	--elseif --Insurgent
	--	return 0
	else --West
		return 0
	end --END country type
end

function assignSetSquadTypeToVehicle(hostVehicle, squadType)
	--squadType = mortarWest, mortarGrg, mortarRu, mortarIns, rifleWest, rifleGrg, rifleRu, rifleIns, manpadsWest, manpadsRu, manpadsIns, vdv, rpgIns, specificGroupNameFromMEditor:
end

local function spawnSquad(hostVehicle)
	transportVehicle = missionTransports[hostVehicle]	

	if transportVehicle ~= nil then
		local dismountingTransport = Unit.getByName(hostVehicle)
		local carrierPos = dismountingTransport:getPosition()
		local carrierUnitID = transportVehicle.UnitID

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
	-- body
end

local function checkMovement()
	trigger.action.outText('checking movement', 2)
	trigger.action.outText(#missionTransports, 2)
	for unitName, transportData in pairs(missionTransports) do
		local dismountingTransport = Unit.getByName(unitName)
		trigger.action.outText('unit:' .. unitName, 2)
		if dismountingTransport ~= nil then
				unitId = Unit.getByName(unitName):getID()
				local v = dismountingTransport:getVelocity()	--Velocity is a Vec3
				if v.x == 0 and v.y == 0 and v.z == 0 then	--Check if speed is zero
					if missionTransports[unitName].cargo_status == "mounted" then
						spawnSquad(unitName)
						missionTransports[unitName].cargo_status = "dismounted"
					end
				else	--Else carrier is moving
					if missionTransports[unitName].cargo_status == "dismounted" then
						if missionTransports[unitName].cargo ~= "Rifle" or math.sqrt(v.x * v.x + v.z * v.z) > 5.3 then	--Remount rifle squad only when speed bigger than 5.3 m/s (19 kph). Remount everyone else immediately when moving.
							local g = Group.getByName("Dismounts_" .. DismountsCarrier[n].UnitID)
							if g ~= nil then	--Check if the group is still alive
								missionTransports[unitName].cargo_status = "mounted"
								g:destroy()
							else
								missionTransports[unitName].cargo_status = "lost"	--If the dismounted group is destroyed, set status of the carrier to lost to prevent it from deploying a new group
							end
						end
					end
				end
		end
	end
	return timer.getTime() + 5
end

timer.scheduleFunction(checkMovement, nil, timer.getTime() + 1)

end