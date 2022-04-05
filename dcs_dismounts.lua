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

missionTransports = {}
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

function determineRandomSquad(hostVehicle)
	countryId = Unit.getByName(hostVehicle):getCountry()
	vehichleType = Object.getTypeName(hostVehicle)

	if countryID == 0 or countryID == 1 or countryID == 16 or countryID == 17 or countryID == 18 or countryID == 19 then --East
		if vehichleType == 'BTR-70' or vehichleType == 'BMP-2' or vehichleType == 'BMP-3' then
			--randomize a number, and determine squad type corresponding to nation and number for this vehicle type, in this case, 7 men squads
			squadTypeSeed = mist.random(7) --1 to 5 = rifle squad, 5 and 6 = rifle squad with 1 manpads, 7 = air defense squad with manpads cmd, 2 manpads, 4 riflemen
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianRifleSquadBTR_BMP2_BMP3)
			elseif squadTypeSeed < 7
				initializeTransport(hostVehicle,russianModernSquadBTR_BMP2_BMP3)
		elseif vehichleType == 'GAZ-66'
			--trucks may not get any dismounts, depending on randomizer
		elseif vehichleType == 'BMP-1'
			squadTypeSeed = mist.random(7)
			if squadTypeSeed < 5 then
				initializeTransport(hostVehicle,russianSquadBMP1)
			elseif squadTypeSeed < 7
				initializeTransport(hostVehicle,russianSquadManpadsBMP1)
		end --END vehichle type if for east
	elseif --Insurgent

	else --West

	end --END country type
end

function assignSetSquadTypeToVehicle(hostVehicle, squadType)
	--squadType = mortarWest, mortarGrg, mortarRu, mortarIns, rifleWest, rifleGrg, rifleRu, rifleIns, manpadsWest, manpadsRu, manpadsIns, vdv, rpgIns, specificGroupNameFromMEditor:
end



function initializeTransport(unitName,cargoSquad)
	missionTransports[unitName] = {			
			countryID = Unit.getByName(unitName):getCountry(),
			UnitID = Unit.getByName(unitName):getID(),
			cargo = cargoSquad,
			cargo_status = "mounted"
		}
end

function spawnSquad(hostVehicle)
	transportVehicle = missionTransports[hostVehicle]	

	if transportVehicle ~= nil then
		local dismountingTransport = Unit.getByName(unitName)
		local carrierPos = dismountingTransport:getPosition()
		local dmVec2 = {
			x = carrierPos.p.x + carrierPos.x.x * -5,
			y = carrierPos.p.z + carrierPos.x.z * -5,
		}
		local heading = getHeading(carrierPos)
		if transportVehicle.cargo ~= nil then
			local groupData = local group = {
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
					["groupId"] = carrierUnitID + 10000,
					["tasks"] = 
					{
					}, -- end of ["tasks"]
					["hidden"] = false,
					["units"] = 
					{
						
					}, -- end of ["units"]
					["y"] = dmVec2.y,
					["x"] = dmVec2.x,
					["name"] = "Dismounts_" .. carrierUnitID,
					["start_time"] = 0,
					["task"] = "Ground Nothing",
				}
			for i=1,#transportVehicle.cargo do
				print(i)
			end
		end
	else
		return 0;
	end

	coalition.addGroup(missionTransports[unitName].countryID, Group.Category.GROUND, group)
end

function despawnSquad(hostVehicle)
	-- body
end

function checkMovement()
	for unitName, transportData in pairs(missionTransports) do
		local dismountingTransport = Unit.getByName(unitName)
		if dismountingTransport ~= nil then
				local v = dismountingTransport:getVelocity()	--Velocity is a Vec3
				if v.x == 0 and v.y == 0 and v.z == 0 then	--Check if speed is zero
					if missionTransports[unitName].cargo_status == "mounted" then
						
						local group = GetDmGroup(missionTransports[unitName].countryID, missionTransports[unitName].UnitID, carrierPos, missionTransports[unitName].cargo, missionTransports[unitName].name)
						spawnSquad(unitName)
						missionTransports[unitName].cargo_status = "dismounted"
					end
				else	--Else carrier is moving
					if missionTransports[unitName].cargo_status == "dismounted" then
						if missionTransports[unitName].cargo ~= "Rifle" or math.sqrt(v.x * v.x + v.z * v.z) > 5.3 then	--Remount rifle squad only when speed bigger than 5.3 m/s (19 kph). Remount everyone else immediately when moving.
							local g = Group.getByName("Dismounts_" .. DismountsCarrier[n].UnitID)
							if g ~= nil then	--Check if the group is still alive
								DismountsCarrier[n].cargo_status = "mounted"
								g:destroy()
							else
								DismountsCarrier[n].cargo_status = "lost"	--If the dismounted group is destroyed, set status of the carrier to lost to prevent it from deploying a new group
							end
						end
					end
				end
		end
	end
end

function testSpawn()
	
	mist.dynAdd()
end