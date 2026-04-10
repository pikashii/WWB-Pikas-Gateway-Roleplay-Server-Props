--**********************************************************--
--**             TELEPORT UTILITY MODULE                  **--
--**         teleportPlayers() by Shurutsue               **--
--**********************************************************--

local PikaTeleportUtil = {}

local playersToTeleport = {} -- each entry: {isoPlayer, x, y, z, timeInMs}

function PikaTeleportUtil.teleport(player, x, y, z, delay)
    table.insert(playersToTeleport, {player, x, y, z, getTimestampMs() + (delay or 10)})
end

function PikaTeleportUtil.teleportWithSound(player, x, y, z, sound, delay)
    player:getEmitter():playSound(sound)
    PikaTeleportUtil.teleport(player, x, y, z, delay)
end

--- Register a table of teleport locations as global recipe callback functions.
--- Each entry maps a global function name to {x, y, z} or {x, y, z, sound="SoundName"}.
function PikaTeleportUtil.registerLocations(locations)
    for name, loc in pairs(locations) do
        _G[name] = function(recipe, result, player)
            if loc.sound then
                PikaTeleportUtil.teleportWithSound(player, loc[1], loc[2], loc[3], loc.sound)
            else
                PikaTeleportUtil.teleport(player, loc[1], loc[2], loc[3])
            end
        end
    end
end

local function teleportPlayers()
    for i = #playersToTeleport, 1, -1 do
        local entry = playersToTeleport[i]
        if getTimestampMs() >= entry[5] then
            entry[1]:setX(tonumber(entry[2]))
            entry[1]:setY(tonumber(entry[3]))
            entry[1]:setZ(tonumber(entry[4]))
            entry[1]:setLx(tonumber(entry[2]))
            entry[1]:setLy(tonumber(entry[3]))
            entry[1]:setLz(tonumber(entry[4]))
            table.remove(playersToTeleport, i)
        end
    end
end

Events.OnTick.Add(teleportPlayers)

return PikaTeleportUtil
