IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 2621 
function main() 
if (gb_GetModule("Phóc duyªn ph¸o b«ng ") == 1) then 
Say("Nªn h¹ t¹p cã thÓ ë ng­¬i nghÜ chóc phóc ng­êi cña chung quanh tuyÕt r¬i hoa .", 2,"B¾t ®Çu chóc phóc /want2fireworks","Bu«ng tha cho /OnCancel") 
end 
return 1 
end 

function OnCancel() 
end 

function want2fireworks() 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/mêi ®­a vµo ®èi ph­¬ng tªn hä "); 
end 

function PlayerSelect(rolename) 
QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename); 
end 

function BlessPlayerOffline(TargetName) 
Say("ThËt xin lçi ! "..TargetName.." tr­íc m¾t kh«ng cã ë tuyÕn .",0) 
end; 

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect) 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local nposx = nPosX * 32 
local nposy = nPosY * 32 
local szParam = TargetName.." "..nSubWorldID.." "..nPosX.." "..nPosY.." "..GetName() 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "xuehua_bless_anywhere", szParam, "", "")
Msg2Player("Ngµi ®Ých chóc phóc ng÷ ®· gëi thµnh c«ng !") 
else 
Say("Kh«ng t×m ®­îc t¹p # xin/mêi thö mét lÇn n÷a !.", 0) 
end 
end 