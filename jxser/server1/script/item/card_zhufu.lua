IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 2621 
function main() 
if (gb_GetModule("Ph�c duy�n ph�o b�ng ") == 1) then 
Say("N�n h� t�p c� th� � ng��i ngh� ch�c ph�c ng��i c�a chung quanh tuy�t r�i hoa .", 2,"B�t ��u ch�c ph�c /want2fireworks","Bu�ng tha cho /OnCancel") 
end 
return 1 
end 

function OnCancel() 
end 

function want2fireworks() 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/m�i ��a v�o ��i ph��ng t�n h� "); 
end 

function PlayerSelect(rolename) 
QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename); 
end 

function BlessPlayerOffline(TargetName) 
Say("Th�t xin l�i ! "..TargetName.." tr��c m�t kh�ng c� � tuy�n .",0) 
end; 

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect) 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local nposx = nPosX * 32 
local nposy = nPosY * 32 
local szParam = TargetName.." "..nSubWorldID.." "..nPosX.." "..nPosY.." "..GetName() 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "xuehua_bless_anywhere", szParam, "", "")
Msg2Player("Ng�i ��ch ch�c ph�c ng� �� g�i th�nh c�ng !") 
else 
Say("Kh�ng t�m ���c t�p # xin/m�i th� m�t l�n n�a !.", 0) 
end 
end 