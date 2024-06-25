if MODEL_GAMESERVER == 1 then 
IncludeLib("TONG") 
	Include("\\script\\tong\\tong_header.lua")
end 

function main(nItem) 
local _Name, nTongID = GetTongName() 
if(nTongID == 0) then 
Msg2Player("Ng­¬i kh«ng cã ë ®©y bang héi trung , kh«ng c¸ch nµo sö dông ®¹o nµy cô "); 
return 1 
end 
local figure = TONGM_GetFigure(nTongID, GetName()) 
if (figure == TONG_MASTER or figure == TONG_ELDER)then 
Say("<#> bang héi mÆt n¹ cã thÓ ®em bang héi toµn thÓ ë tuyÕn thµnh viªn biÕn thµnh cïng bé d¸ng 3 canh giê , muèn sö dông sao ? ", 2, " õ/d¹ , chóng ta muèn thèng nhÊt trang phôc /#yes("..nItem..")","Tr­íc kh«ng sö dông /no"); 
return 1 
else 
Msg2Player("Ng­¬i võa kh«ng ph¶i lµ bang chñ l¹i kh«ng ph¶i lµ tr­ëng l·o , kh«ng c¸ch nµo sö dông ®¹o nµy cô "); 
return 1 
end 
end 

function yes(nItem) 
local a,b = GetTongName(); 
if(b == 0) then 
Msg2Player("Ng­¬i kh«ng cã ë ®©y bang héi trung , kh«ng c¸ch nµo sö dông ®¹o nµy cô "); 
return 1 
end 
local figure = TONGM_GetFigure(b, GetName()) 
if (figure ~= TONG_MASTER and figure ~= TONG_ELDER)then 
Msg2Player("Ng­¬i võa kh«ng ph¶i lµ bang chñ l¹i kh«ng ph¶i lµ tr­ëng l·o , kh«ng c¸ch nµo sö dông ®¹o nµy cô "); 
return 1 
end 
local name = GetName(); 
local nfeature = GetItemParam(nItem, 1); 
if RemoveItemByIndex(nItem) ~= 1 then 
return 
end 
TONG_ChangeAllMemberFeature(b,nfeature,194400) 
Msg2Tong(b, name.." sö dông bang héi mÆt n¹ , ë tuyÕn bang héi thµnh viªn biÕn thµnh cïng bé d¸ng , kÐo dµi 3 giê "); 
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