local PLAYER_EVENT_ON_LOGIN = 3

-- Example display ID. Replace this with the model display ID you want.
local MURLOC_DISPLAY_ID = 15926

-- local KOBOLD_DISPLAY_ID = 2153 --
local function OnPlayerLogin(event, player)
    player:SendBroadcastMessage("Eluna test: applying custom model")

    player:SetDisplayId(MURLOC_DISPLAY_ID)
end

RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, OnPlayerLogin)