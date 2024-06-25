Include("\\script\\global\\playerlist.lua")
Include("\\script\\missions\\maze\\maze.lua")

-- script viet hoa By http://tranhba.com  sèng l¹i phï , ®em ng­êi sö dông tõ v¹n hoa tr× truyÒn tèng ®Õn vßng chiÕn ®İch kiÕm mé mËt thÊt 
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
