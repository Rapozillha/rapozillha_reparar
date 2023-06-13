--
-- Adiciona isto no teu server.fg: add_ace group.admin rapozillha.reparar allow
--

RegisterNetEvent('rapozillha:reparar')
AddEventHandler('rapozillha:reparar', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		--notification("Veículo Reparado com Sucesso ")  ----~g~ADMIN~g~---
		exports['okokNotify']:Alert("ADMIN", "Veículo Reparado com Sucesso", 3000, 'success')

	else
		--notification("Apenas pode ser efetuada a Reparação dentro de um Veículo ")
		exports['okokNotify']:Alert("ADMIN", "Apenas pode ser efetuada a Reparação dentro de um Veículo", 3000, 'error')

	end
end)

RegisterNetEvent('rapozillha:limpar')
AddEventHandler('rapozillha:limpar', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		--notification("Veículo Limpo com Sucesso") ----~g~ADMIN~g~----
		exports['okokNotify']:Alert("ADMIN", "Veículo Limpo com Sucesso", 3000, 'success')

	else
		--notification("Não podes efetuar esse Comando fora de uma Víatura ")
		exports['okokNotify']:Alert("ADMIN", "Não podes efetuar esse Comando fora de uma Víatura", 3000, 'error')

	end
end)

RegisterNetEvent('rapozillha:noPerms')
AddEventHandler('rapozillha:noPerms', function()
	--notification("És mesmo Burro, achas que tens Perms para isso? chama o mecânico !")
	exports['okokNotify']:Alert("SONHADOR", "És mesmo Burro, achas que tens Perms para isso? chama o mecânico !", 3000, 'error')

end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

Citizen.CreateThread(function() TriggerEvent('chat:addSuggestion', '/reparar', 'Repara o teu Veiculo') end)
Citizen.CreateThread(function() TriggerEvent('chat:addSuggestion', '/limpar', 'Limpa o teu Veículo') end)