-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  ch�c ph�c t�p 
-- script viet hoa By http://tranhba.com  t�ng c�ng c� s�u t� ch�c ph�c t�p , m�i t� ��ch ch�c ph�c ng� ��u kh�ng c�ng . 

Include("\\script\\lib\\string.lua")

-- script viet hoa By http://tranhba.com <playerbless> -- script viet hoa By http://tranhba.com  [ thu t�p ng��i t�n ] 
-- script viet hoa By http://tranhba.com <name> -- script viet hoa By http://tranhba.com  [ ph�t t�p ng��i t�n ] 
tbMessage={ 
["6,1,1328"] = "Ch�c <color=red><playerbless><color> m�t Gi�ng Sinh v� N�m m�i vui v�.  <color=red><name><color>", 
["6,1,1329"] = "<color=red><playerbless><color> th�n y�u, ch�c n�ng m�t Gi�ng Sinh vui v�. <color=red><name><color>", 
["6,1,1330"] = "<color=red><playerbless><color> th�n y�u, ch�c ch�ng m�t Gi�ng Sinh vui v�. <color=red><name><color>", 
["6,1,1331"] = "V�i t�t c� t�m l�ng, ta xin ch�c cho <color=red><playerbless><color> m�t Gi�ng Sinh vui v�. <color=red><name><color>", 
["6,1,1332"] = "V�i t�t c� t�m l�ng, ta xin ch�c cho <color=red><playerbless><color> m�t N�m m�i vui v� v� h�nh ph�c <color=red><name><color>", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

function main(sel) 

if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng�i tr��c m�t �ang ph�t ch�c ph�c ng� , xin ch� m�t ch�t !"); 
return 1; 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 
SetTaskTemp(ITEM_TASK_TEMP,sel); 

Say("Ng��i ngh� g�i gi�ng sinh t�p cho b�ng h�u sao ?", 2,"Mu�n /sendWish","T�m th�i kh�ng c�n /wishCancel"); 
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
Msg2Player("Ng�i mu�n ch�c ph�c ng��i b�y gi� kh�ng c� tr�c tuy�n , ch� m�t ch�t th� l�i !."); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function wishCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
