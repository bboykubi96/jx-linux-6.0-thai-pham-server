-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  ch�c ph�c t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Bless= 
{ 
"<#> n�u c� m�t ng�y ng��i ngh� kh�c , xin m�i g�i �i�n tho�i cho ta . ta kh�ng th� b�o ��m c� th� khi�n cho ng��i c��i , nh�ng ta c� th� c�ng ng��i c�ng nhau kh�c .", 
"<#> ch� mong gi� xu�n ��y ng��i , ng��i nh� quan t�m ng��i , t�nh y�u l�m d�u ng��i , may m�n chi tinh v�nh vi�n d�a theo ng��i .", 
"<#> c�m �n ng��i lu�n l� � ta m�t m�c nh�t ��ch th�i �i�m xu�t hi�n , c� ng��i � ��y b�n c�nh ta ta r�t h�nh ph�c . ", 
"<#> l� c�a ng��i xu�t hi�n mang cho ta v� h�n vui v� , nguy�n ng��i m�i m�t thi�n �� vui v� .", 
} 

ITEM_TASK_TEMP=24 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=135 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng��i b�y gi� �ang ti�n h�nh nh�ng kh�c ch�c ph�c , xin h�u th� l�i . "); 
return 1 
end 

SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Bless); 
for i=1, nSelectCount do 
FuncBless[i] = Bless[i].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " h�y b� /QueryWiseManCancel" 

Say(szTitle, nSelectCount, FuncBless); 

SetTaskTemp(ITEM_TASK_TEMP,sel); 
-- script viet hoa By http://tranhba.com  tr��c kh�ng th� ti�u nh� ch�i ��ch th� , � th�c t� g�i li�u ch�c ph�c l�c n�a san # t�m th�i ghi ch�p xu�ng trang b� bi�n s� # 
return 1; 

end 

function PlayerSelect(nSelect) 
QueryWiseMan("BlessPlayerOnline", "BlessPlayerOffline", nSelect); 
end 

function BlessPlayerOnline(TargetName, nSelect, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
local ItemIdx 
ItemIdx = GetTaskTemp(ITEM_TASK_TEMP); 
local ItemGenre 
local DetailType 
local ParticularType 
local Level 
local Series 
local Luck 
ItemGenre,DetailType,ParticularType,Level,Series,Luck = GetItemProp(ItemIdx) 
if (ItemIdx > 0 and ItemGenre == ITEM_GENRE and DetailType == ITEM_DETAIL and ParticularType == ITEM_PARTI) then 
if (RemoveItemByIndex(ItemIdx) == 1) then 
local szMsg 
			szMsg = GetName().."<#>��"..TargetName.."<#>˵��"..Bless[nSelect + 1]
AddGlobalCountNews(szMsg,1); 
else 
Msg2Player("Kh�ng t�m ���c th� , xin/m�i th� l�i m�t l�n . ") 
end 
else 
Msg2Player("Th� s� d�ng th�t b�i , xin/m�i th� l�i m�t l�n . ") 
end 
SetTaskTemp(ITEM_TASK_TEMP,0) 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function BlessPlayerOffline(TargetName, nSelect) 
Msg2Player("Ng��i ngh� ch�c ph�c ��ch nh� ch�i b�y gi� kh�ng c� � ��y tuy�n , xin h�u th� l�i . "); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function QueryWiseManCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
