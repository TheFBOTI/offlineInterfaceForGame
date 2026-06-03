local PLAYER_EVENT_ON_LOGIN = 3

local function OnPlayerLogin(event, player)
    local guid = player:GetGUIDLow()

    local query = CharDBQuery(
            "SELECT identity_type, display_id " ..
                    "FROM acore_playable_races.custom_player_identity " ..
                    "WHERE guid = " .. guid
    )


    if query then
        local identityType = query:GetString(0)
        local displayId = query:GetUInt32(1)

        player:SetDisplayId(displayId)

        player:SendBroadcastMessage(
                "Custom identity applied: " .. identityType .. " using display ID " .. displayId
        )
    else
        player:SendBroadcastMessage("No custom identity found for this character.")
    end
end

RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, OnPlayerLogin)