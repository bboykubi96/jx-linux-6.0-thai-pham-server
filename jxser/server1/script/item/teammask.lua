function main(nItem) 
Say("<#> ®éi ngò mÆt n¹ cã thÓ ®em ®éi ngò toµn thÓ thµnh viªn biÕn thµnh cïng bé d¸ng 2 canh giê , muèn sö dông sao ? ", 2, " õ/d¹ , chóng ta muèn thèng nhÊt trang phôc /#yes("..nItem..")","Tr­íc kh«ng sö dông /no"); 
return 1 
end 

function yes(nItem) 
if(GetTeamSize() <= 0) then 
Msg2Player("Ng­¬i kh«ng cã ë ®©y trong ®éi ngò , kh«ng c¸ch nµo sö dông ®¹o nµy cô "); 
return 1 
end 
local teamid = GetTeam(); 
local name = GetName() 
local nfeature = GetItemParam(nItem, 1); 
if RemoveItemByIndex(nItem) ~= 1 then 
return 
end 
ChangeTeamFeature(teamid, nfeature, 129600); 
Msg2Team(name.." sö dông ®éi ngò mÆt n¹ , ®éi viªn biÕn thµnh cïng bé d¸ng , kÐo dµi 2 giê "); 
end 

function GetDesc(nItem) 
local nNpcSettingIdx = GetItemParam(nItem, 1) 
local nAction = random(0, 13) 
local szSpr = GetMaskActionSpr(nNpcSettingIdx, nAction) 
if (not szSpr)then 
return "" 
end 
return "<spr="..szSpr..">" 
end 

function no() 
end