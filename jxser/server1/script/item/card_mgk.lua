-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  hoa h�ng t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Bless= 
{ 
"<#> th�t hy v�ng ph�ng b�i ng��i m�i cho ��n l�o , �� cho ng��i l�m tay ta trong l�ng ��ch b�o . b�o b�i , ta s� v�nh vi�n y�u ng��i . ", 
-- script viet hoa By http://tranhba.com  "<#> con m�t c�a ng��i nh�y m�t m�t c�i , ta s� ch�t �i , con m�t c�a ng��i n�a nh�y m�t m�t c�i , ta li�n s�ng l�i , con m�t c�a ng��i kh�ng ng�ng nh�y m�t t�i nh�y m�t �i , v� v�y ta li�n ch�t �i s�ng l�i !", 
"<#> g�p ng��i l� c�a ta may m�n , y�u ng��i l� tr�i cao ��ch an b�i , c�ng ng��i �i h�t c� ��i , ��ng l� h�nh ph�c c�a ta #", 
"<#> c�m t� nguy�t l�o �em ta ng��i ngay c� � c�ng nhau , b�i v� ta bi�t : ng��i l� c�a ta th�ch nh�t m� ta l� ng��i duy nh�t #", 
"<#> ta y�u ng��i , ta th��ng ng��i , nh�ng ta kh�ng th� c�ng ch�u ng��i , b�o b�i ta s� y�u ng��i c� ��i . ", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=138 

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
FuncBless[nSelectCount] = "H# b? /QueryWiseManCancel" 

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
