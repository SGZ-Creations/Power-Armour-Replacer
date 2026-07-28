--[[
commands.add_command("give", "Gives item", function(event)
    local player_index = event.player_index
    local player = game.get_player(player_index)
    local parameter = event.parameter
    if game.give[parameter] then
        player.insert{name = parameter, count = 1}
    end
end)
]]