-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  hoa h�ng t�p 
-- script viet hoa By http://tranhba.com  ��t ���c ng�u nhi�n s�u t� t�p 

szTitle="<#> xin/m�i l�a ch�n ch�c ph�c ng� #" 
Message= 
{ 
{"<#> ng��i c� hay kh�ng nh� ta m�t d�ng nh� ng��i ","<#> hoa r�i ��y c�i l�ng th�m h��ng doanh t� , ch� mu�n bi�t ng��i c� hay kh�ng nh� ta mu�n ng��i m�t d�ng �ang suy ngh� ta . "}, 
{"<#> ng��i l� c�a ta sinh m�ng ","<#> l�m ta n�i ng��i l� linh h�n c�a ta c�ng sinh m�ng , kh�ng mu�n kinh ng�c , b�i v� ng��i l� t�nh m�ng c�a ta . "}, 
{"<#> ��m tuy�t trong ��t ��n ��ch ng��i ","<#> nh�n th�y ng��i l�c , c�m gi�c �m �p gi�ng nh� � ��m tuy�t trong ch�t th�y l�n ��n ng��i ch�nh l� kia ��t ��n ng��i c�a . "}, 
{"<#> ki�p n�y c�ng ng��i kh�ng kh� kh�ng r�i ","<#> ta � ph�t tr��c c�u xin n�m tr�m n�m , nguy�n c� th� k�t n�y tr�n duy�n , c�ng ng��i ki�p n�y t��ng th� kh�ng kh� kh�ng r�i . "}, 
{"<#> nguy�n c� th� c�ng ng��i khuynh t�m g�p nhau ","<#> ch� b�i v� c� l� s� s�a ��i , kh�ng n�i c�u kia xinh ��p l�i th� , nguy�n c� th� c�ng ng��i kho�nh t�m t��ng g�p . "}, 
{"<#> ta ng��i �n nhu t��ng ��i , kh�ng ch�u l��ng duy�n ","<#> b�t k� y�u nhau th�i gian s� c� bao l�u , tr�ng ng��i ta ��u c� th� �n nhu t��ng ��i , kh�ng ch�u l��ng duy�n . "}, 
{"<#> l�n l�n t� ","<#> ng�y d�i ���ng xa h�n bay kh� , m�ng h�n kh�ng t�i quan s�n kh� kh�n , l�n l�n t� , t�i t�m can . "}, 
{"<#> ta t� thanh b�o ki�m ","<#> ta t� thanh b�o ki�m ph�t ra �� ~ �� ��ch t�n s� , th� ra l� � c�a ta ng��i trong l� ng��i , c�n ch�y . "}, 
{"<#> ng��i �em l�ng c�a ta tr�m �i ","<#> qu� linh tinh qu�i ��ch ng��i , �em l�ng c�a ta tr�m �i , �� cho ��u �c ta trong ��u l� ng��i th�n �nh c�a . "}, 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b�o ��m m�t ch�c ph�c kh�ng c� �i ra tr��c kh�ng th� s� d�ng th� hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=236 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng��i b�y gi� �ang ti�n h�nh nh�ng kh�c ch�c ph�c , xin h�u th� l�i . "); 
return 1 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Message); 
for i=1, nSelectCount do 
FuncBless[i] = Message[i][1].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " h�y b� /QueryWiseManCancel" 

Say(szTitle, getn(FuncBless), FuncBless); 
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
			szMsg = GetName().."<#>��"..TargetName.."<#>˵��"..Message[nSelect + 1][2]
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
