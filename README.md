# Dcs-Dismounts
lua script library for infantry squad dismounts from APC/IFV/Truck type vehicles in DCS World

Uses MIST library, and also some inspiration/snippets from Mbot's older dismounts script and Igneous01's additions to it, though mostly from scratch, and with many more features.

Load MIST first, then dcs_dismounts script, and then choose however you like the transports to be populated in a "do script" line in triggers:
- mechanizeAll() for automatically assigning appropriate (and randomized) squads to all suitable vehicles
- determineRandomSquad('Unit's name as seen in editor') for giving specific unit(s) appropriate (and randomized) squad(s)
- assignSetSquadTypeToVehicle('Unit's name as seen in editor', 'squadType') for giving specific unit(s) specific squad(s)

More detailed documentation will be provided in a pdf doc.
