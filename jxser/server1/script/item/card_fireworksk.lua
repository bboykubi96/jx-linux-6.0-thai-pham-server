IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 1054 
function main() 
if (gb_GetModule("Ph�o b�ng ch�c ph�c ") == 1) then 
Say("T� n�y ph�o b�ng h� t�p c� th� � ng�i mu�n ch�c ph�c ng��i c�a chung quanh ��t ph�o b�ng . ", 2,"B�y gi� ti�n h�nh ch�c ph�c /want2fireworks","H�y b� /OnCancel") 
end 
return 1 
end 

function OnCancel() 
end 

function want2fireworks() 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/m�i ��a v�o ��i ph��ng t�n "); 
end 

function PlayerSelect(rolename) 
QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename); 
end 

function BlessPlayerOffline(TargetName) 
Say("Th�t xin l�i , "..TargetName.." tr��c m�t kh�ng c� � ��y , kh�ng c�ch n�o bi�t ���c tung t�ch c�a h�n . ",0) 
end; 

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect) 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local nposx = nPosX * 32 
local nposy = nPosY * 32 
local szParam = TargetName.." "..nSubWorldID.." "..nPosX.." "..nPosY.." "..GetName() 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "fireworks_bless_anywhere", szParam, "", "")
Msg2Player("Ng�i ��ch ch�c ph�c �� th�nh c�ng ��a ra #") 
else 
Say("Kh�ng t�m ���c th� , xin/m�i th� l�i m�t l�n . ", 0) 
end 
end 