-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  n�m m�i t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Bless= 
{ 
"<#> nguy�n t�ng m�nh tr�ng no�n xinh ��p b�ng tuy�t mang theo ta ch�c nguy�n bay ��n b�n c�nh ng�i , ch�c ng�i n�m m�i nh� � !", 
"<#> h� n�m m�i , kh�nh giai ti�t , ch�c m�ng ph�t t�i # n�m m�i h�o , m�i s� thu�n , m�i chuy�n nh� � . ", 
"<#> ch�c n�m m�i vui v� , ti�n tr�nh t�a nh� c�m , c�t tinh cao chi�u , t�i v�n hanh th�ng , h�p nh� sung s��ng . ", 
"<#> �� cho v�n sao �i l�ng tr�n ��y ch�c ph�c , �i�m chu� ng��i ng�t ng�o m�ng , nguy�n ng��i c� m�t h�nh ph�c vui v� ��ch n�m m�i #", 
"<#> ch�c ph�c l� ph�n th�t l�ng � , kh�ng ph�i l� thi�n ng�n v�n ng� ��ch th� t�i . ch�c ph�c ng��i n�m m�i vui v� . ", 
"<#> l�ng tr�n ��y t�nh y�u h�a th�nh ch�n ch� ��ch ch�c ph�c , ch�c ng��i n�m m�i vui v� !", 
} 

ITEM_TASK_TEMP=23 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=140 

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
