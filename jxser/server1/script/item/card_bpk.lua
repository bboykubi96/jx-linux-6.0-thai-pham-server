-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  bang ph�i t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Bless= 
{ 
"<#> ng�y ng�y kinh nghi�m ng�n ng�n v�n , v�ng nguy�n b�o �� th�m th�ch , �� m�n m�t r��ng l�i m�t r��ng . ", 
"<#> kh�ng c� g� so bang ph�i h�u t�nh h�n �m �p # trong bang ��ch ��p trai m� n� �� cho ta qu� tr�ng . ", 
"<#> huynh �� t� mu�i ch�nh l� � th��ng th� c�a ng��i t�m l�c an �i ng��i # � ng��i vui v� l�c c�ng nhau chia x� ng��i c�a . ", 
"<#> ch�c bang ph�i ��ch c�c v� huynh �� t� mu�i m�t n�m th�t vui v� , c� ��i mau mau th�t vui v� , m�t ��i b�nh an ", 
"<#> ch�c bang ph�i ��ch c�c v� huynh �� t� mu�i ng�y ng�y long m� tinh th�n , h�ng th�ng th�n th� kh�e m�nh , h�ng n�m t�i nguy�n nghi�m v�o . ", 
"<#> bang h�i l� tr�nh gi� ��ch c�ng loan # c�c ng��i l� c� phong ��ch b� bi�n , �i t�i n�i n�y c� bang ph�i l� ta h�nh ph�c l�n nh�t . ", 
} 

ITEM_TASK_TEMP=25 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=136 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng��i b�y gi� �ang ti�n h�nh nh�ng kh�c ch�c ph�c , xin h�u th� l�i . "); 
return 1 
end 

local TongName 
local Result 
TongName, Result = GetTong(); 
if (TongName == "") then 
Msg2Player("Ng��i kh�ng c� gia nh�p bang ph�i , kh�ng c�ch n�o s� d�ng bang ph�i t�p . ") 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
return 1; 
end 

SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Bless); 
for i=1, nSelectCount do 
FuncBless[i] = Bless[i].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " h�y b� /QueryWiseManCancel" 

	Say(szTitle, getn(Bless) + 1, FuncBless);
SetTaskTemp(ITEM_TASK_TEMP,sel); 
-- script viet hoa By http://tranhba.com  tr��c kh�ng th� ti�u nh� ch�i ��ch th� , � th�c t� g�i li�u ch�c ph�c l�c n�a san # t�m th�i ghi ch�p xu�ng trang b� bi�n s� # 
return 1; 
end 

function PlayerSelect(nSelect) 
local TongName 
local Result 
TongName, Result = GetTong(); 
if (TongName == "") then 
Msg2Player("Ng��i kh�ng c� gia nh�p bang ph�i , kh�ng c�ch n�o s� d�ng bang ph�i t�p . ") 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
return 
end 
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
			szMsg = GetName().."<#>��"..TongName.."<#>����˵��"..Bless[nSelect + 1]
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

function QueryWiseManCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
