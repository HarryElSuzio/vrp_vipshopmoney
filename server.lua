--[[
	Credit: LeFruJohn#5854
	##########
   # VIP Menu #
	##########

   $############################################################################################################################################################$

	[$[]$]                             [$[]$][$[]$][$[]$][$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$][$[]$][$[]$][$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$][$[]$][$[]$][$[]$            [$[]$][$[]$][$[]$][$[]$]

   $################################################################################################################################################################$

	[$[]$][$[]$][$[]$][$[]$]           [$[]$][$[]$][$[]$][$[]$]                    [$[]$]            [$[]$]       
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$][$[]$][$[]$][$[]$]           [$[]$][$[]$][$[]$][$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$][$[]$]                                [$[]$]            [$[]$]
	[$[]$]                             [$[]$]    [$[]$]                            [$[]$]            [$[]$] 
	[$[]$]                             [$[]$]        [$[]$]                        [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]      
	[$[]$]                             [$[]$]                [$[]$]                [$[]$]            [$[]$]
	[$[]$]                             [$[]$]                    [$[]$]            [$[]$][$[]$][$[]$][$[]$]

   $##################################################################################################################################################################$

                    [$[]$]                 [$[]$][$[]$][$[]$][$[]$]                 [$[]$]                  [$[]$]            [$[]$][$[]$]                      [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]  [$[]$]                    [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]    [$[]$]                  [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]      [$[]$]                [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]        [$[]$]              [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$][$[]$][$[]$][$[]$][$[]$]            [$[]$]          [$[]$]            [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]            [$[]$]          [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]              [$[]$]        [$[]$] 
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                [$[]$]      [$[]$]
     [$[]$]         [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                  [$[]$]    [$[]$]
        [$[]$]      [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                    [$[]$]  [$[]$]
			   [$[]$]	                   [$[]$][$[]$][$[]$][$[]$]                 [$[]$]                  [$[]$]            [$[]$]                      [$[]$][$[]$]
			   
   $##################################################################################################################################################################$

]]--

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
	
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vipshopmoney")

RegisterServerEvent("givebronzem")
AddEventHandler("givebronzem", function()
	local user_id = vRP.getUserId({source})
	local hasmoney = vRP.getMoney({user_id})
	local price = 10000
	if hasmoney >= price then
		vRP.tryFullPayment({user_id, price})
		vRP.addUserGroup({user_id, "VIP Bronze"})
		vRPclient.notify(user_id,{"~g~You bought VIP Bronze!"})
	else
		vRPclient.notify(user_id,{"~r~You don't have enough money !"})
	end
end)

RegisterServerEvent("givesilverm")
AddEventHandler("givesilverm", function()
	local user_id = vRP.getUserId({source})
	local hasmoney = vRP.getMoney({user_id})
	local price = 20000
	if hasmoney >= price then
		vRP.tryFullPayment({user_id, price})
		vRP.addUserGroup({user_id, "VIP Silver"})
		vRPclient.notify(user_id,{"~g~You bought VIP Silver!"})
	else
		vRPclient.notify(user_id,{"~r~You don't have enough money !"})
	end
end)

RegisterServerEvent("givegoldm")
AddEventHandler("givegoldm", function()
	local user_id = vRP.getUserId({source})
	local hasmoney = vRP.getMoney({user_id})
	local price = 30000
	if hasmoney >= price then
		vRP.tryFullPayment({user_id, price})
		vRP.addUserGroup({user_id, "VIP Gold"})
		vRPclient.notify(user_id,{"~g~You bought VIP Gold!"})
	else
		vRPclient.notify(user_id,{"~r~You don't have enough money !"})
	end
end)

RegisterServerEvent("givediamondm")
AddEventHandler("givediamondm", function()
	local user_id = vRP.getUserId({source})
	local hasmoney = vRP.getMoney({user_id})
	local price = 40000
	if hasmoney >= price then
		vRP.tryFullPayment({user_id, price})
		vRP.addUserGroup({user_id, "VIP Diamond"})
		vRPclient.notify(user_id,{"~g~You bought VIP Diamond!"})
	else
		vRPclient.notify(user_id,{"~r~You don't have enough money !"})
	end
end)

RegisterServerEvent("givemeraldm")
AddEventHandler("giveemeraldm", function()
	local user_id = vRP.getUserId({source})
	local hasmoney = vRP.getMoney({user_id})
	local price = 50000
	if hasmoney >= price then
		vRP.tryFullPayment({user_id, price})
		vRP.addUserGroup({user_id, "VIP Emerald"})
		vRPclient.notify(user_id,{"~g~You bought VIP Emerald!"})
	else
		vRPclient.notify(user_id,{"~r~You don't have enough money !"})
	end
end)