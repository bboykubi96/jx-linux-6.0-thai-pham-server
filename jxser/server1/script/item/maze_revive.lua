Include("\\script\\global\\playerlist.lua")
Include("\\script\\missions\\maze\\maze.lua")

-- script viet hoa By http://tranhba.com  s�ng l�i ph� , �em ng��i s� d�ng t� v�n hoa tr� truy�n t�ng ��n v�ng chi�n ��ch ki�m m� m�t th�t 
function main(nItemIndex) 
local player = PlayerList:GetPlayer(PlayerIndex) 
local err = {} 
err.Msg = "" 
if (ReviveFigure:Use(player, err) == 0) then 
player:Msg2Player(err.Msg) 
return 1 
else 
return 0 
end 
end 
