-- script viet hoa By http://tranhba.com  2007 n�m n�m m�i h� t�p 
-- script viet hoa By http://tranhba.com  c�ng 4 t� 

Include("\\script\\lib\\string.lua")

-- script viet hoa By http://tranhba.com <playerbless> -- script viet hoa By http://tranhba.com  [ thu t�p ng��i t�n ] 
-- script viet hoa By http://tranhba.com <name> -- script viet hoa By http://tranhba.com  [ ph�t t�p ng��i t�n ] 
tbMessage={ 
["6,1,1346"] = " ch�c <color=red><playerbless><color> m�i m�t n�m an khang h�ng v��ng .<color=red><name><color>", 
["6,1,1347"] = " ch�c <color=red><playerbless><color> n�m m�i m�i s� nh� � , l�m �n ph�t ��t .<color=red><name><color>", 
["6,1,1348"] = " ch�c <color=red><playerbless><color> n�m m�i v�o t�i v�o l�c , m�i s� h�ng th�ng .<color=red><name><color>", 
["6,1,1349"] = " ch�c <color=red><playerbless><color> an khang h�ng v��ng , gia ��nh kh�e m�nh , l�m �n ph�t ��t .<color=red><name><color>", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

function main(sel) 

if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng�i �ang ph�t ch�c ph�c ng� , xin ch� m�t ch�t m�t c�i !"); 
return 1; 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 
SetTaskTemp(ITEM_TASK_TEMP,sel); 

Say("Ng�i mu�n � ng�y l� chi t� cho th�n h�u ph�t ��p nh�t t�t ch�c ph�c sao ", 2,"Mu�n /sendWish","T�m th�i kh�ng c�n /wishCancel"); 
return 1; 
end 

function sendWish() 
QueryWiseMan("BlessPlayerOnline", "BlessPlayerOffline", 1); 
end 

function BlessPlayerOnline(TargetName, nSelect, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
local ItemIdx = GetTaskTemp(ITEM_TASK_TEMP); 
local ItemGenre 
local DetailType 
local ParticularType 

ItemGenre,DetailType,ParticularType = GetItemProp(ItemIdx) 
local szItemkey = ItemGenre..","..DetailType..","..ParticularType; 
if (ItemIdx > 0 and tbMessage[szItemkey] ~= nil) then 
if (RemoveItemByIndex(ItemIdx) == 1) then 
local szMsg 
szMsg = replace(tbMessage[szItemkey],"<playerbless>",TargetName); 
szMsg = replace(szMsg,"<name>",GetName()); 
AddGlobalCountNews(szMsg,1); 
else 
Msg2Player("Kh�ng t�m ���c t�p , xin/m�i th� m�t l�n n�a !.") 
end 
else 
Msg2Player("S� d�ng t�p th�t b�i , xin/m�i th� m�t l�n n�a .") 
end 
SetTaskTemp(ITEM_TASK_TEMP,0) 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function BlessPlayerOffline(TargetName, nP) 
Msg2Player("Ng�i mu�n ch�c ph�c ng��i c�a b�y gi� kh�ng c� � ��y tuy�n , ch� ch�t m�t l�n th� l�i !."); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function wishCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
