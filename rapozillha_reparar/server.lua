--
-- Adiciona isto no teu server.fg: add_ace group.admin rapozillha.reparar allow
--

RegisterCommand("reparar", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "rapozillha.reparar") then
		TriggerClientEvent('rapozillha:reparar', source)
    else
		TriggerClientEvent('rapozillha:noPerms', source)
    end
end)

RegisterCommand("limpar", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "rapozillha.reparar") then
		TriggerClientEvent('rapozillha:limpar', source)
    else
		TriggerClientEvent('rapozillha:noPerms', source)
    end
end)
