-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  sinh nh�t t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Bless= 
{ 
"<#> l�i m�t c� t�t ��p b�t ��u , nguy�n ta ch�c ph�c mang cho ng��i th�nh c�ng m�t n�m , sinh nh�t vui v� . ", 
"<#> ba sinh nh�t ch�c nguy�n # m�t nguy�n th�n th� kh�e m�nh hai nguy�n h�nh ph�c vui v� ba nguy�n m�i s� nh� � . ", 
"<#> h�i m�t m�nh b�ng tuy�t chu�i th�nh tr�ng no�n ��ch c�y treo , v� ng��i sinh nh�t d�ng hi�n m�t ��a xinh ��p t�m hoa . ", 
"<#> ��a m�t ph�n l� v�t bi�u m�t kh�c ti�ng l�ng # h�ng n�m tr��ng m�i bi�t h�ng th�ng ti�n th�m b��c sinh nh�t vui v� . ", 
"<#> nguy�n t�t c� vui v� # h�nh ph�c # may m�n v�nh vi�n v�y l��n � b�n c�nh ng��i , sinh nh�t vui v� . ", 
"<#> t� ni�m trung ta mu�n kh�i sinh nh�t c�a ng��i , th�t l�ng ch�c ph�c ng��i c� m�t vui v� ��ch sinh nh�t . ", 
} 

ITEM_TASK_TEMP=27 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=137 

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

Say(szTitle, getn(Bless), FuncBless); 
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
