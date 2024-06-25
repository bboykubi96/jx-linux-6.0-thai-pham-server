IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 1054 
function main() 
if (gb_GetModule("Ph¸o b«ng chóc phóc ") == 1) then 
Say("Tê nµy ph¸o b«ng h¹ t¹p cã thÓ ë ngµi muèn chóc phóc ng­êi cña chung quanh ®èt ph¸o b«ng . ", 2,"B©y giê tiÕn hµnh chóc phóc /want2fireworks","Hñy bá /OnCancel") 
end 
return 1 
end 

function OnCancel() 
end 

function want2fireworks() 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/mêi ®­a vµo ®èi ph­¬ng tªn "); 
end 

function PlayerSelect(rolename) 
QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename); 
end 

function BlessPlayerOffline(TargetName) 
Say("ThËt xin lçi , "..TargetName.." tr­íc m¾t kh«ng cã ë ®©y , kh«ng c¸ch nµo biÕt ®­îc tung tÝch cña h¾n . ",0) 
end; 

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect) 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local nposx = nPosX * 32 
local nposy = nPosY * 32 
local szParam = TargetName.." "..nSubWorldID.." "..nPosX.." "..nPosY.." "..GetName() 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "fireworks_bless_anywhere", szParam, "", "")
Msg2Player("Ngµi ®Ých chóc phóc ®· thµnh c«ng ®­a ra #") 
else 
Say("Kh«ng t×m ®­îc thÎ , xin/mêi thö l¹i mét lÇn . ", 0) 
end 
end 