VERSION = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

print(
	"^0======================================================================^7\n" ..
	"^0[^2Autor^0]^7 :^0 ^2KabeGames^7\n" ..
	("^0[^3Version^0]^7 :^0 ^3%s^7\n"):format(VERSION) ..
	"^0[^4Descarga^0]^7 :^0 ^5https://github.com/KabeCode/CrosshairbyKabe/releases/^7\n" ..
	"^0======================================================================^7"
)



local estaapuntando = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		if IsControlPressed(0, 25) then
            estaapuntando = true
        else
            estaapuntando = false
        end	
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if(estaapuntando)then
            ShowHudComponentThisFrame(14)
        end
    end
end)
