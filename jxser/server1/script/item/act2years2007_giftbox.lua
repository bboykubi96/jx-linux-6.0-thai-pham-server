-- script viet hoa By http://tranhba.com  Vi�t Nam hai tu�n l� n�m ho�t ��ng , l� ph�m h�p 
-- script viet hoa By http://tranhba.com fmz 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TWhiteBoxRan = { 
tRan = {1000}, 
tItemID = { {6,1,1442}}, 
tItemName = {"H�i mi�n b�nh ng�t "} 
} 
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TBlueBoxRan = { 
tRan = {10,15,25,125,175,195,295,1000}, 
tItemID = { 
{6,1,23}, 
{6,1,12}, 
{4,353,1}, 
{6,1,147,1}, 
{6,1,147,2}, 
{6,1,147,3}, 
{6,1,125}, 
{6,1,1443}, 
}, 
tItemName = {"Thi�t La H�n ","M�m m�m t�m tr�i qua ","Tinh h�ng b�o th�ch ","1 c�p huy�n tinh qu�ng th�ch ","2 c�p huy�n tinh qu�ng th�ch ","3 c�p huy�n tinh qu�ng th�ch ", 
" hoa qu� r��u ","B�ng k�ch l�ng b�nh ",} 
} 
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TYellowBoxRan = { 
tRan = {30,124,174,194,344,944,946,948,950,952,954,956,958,960,962,964,966,968,970,972,974,976,978,980,982,984,986,988,990,992,994,996,998,1000,}, 
tItemID = { 
{6,1,23}, 
{6,1,147,2}, 
{6,1,147,3}, 
{6,1,147,4}, 
{4,239,1}, 
{6,1,1444}, 
{6,1,27}, 
{6,1,28}, 
{6,1,33}, 
{6,1,34}, 
{6,1,35}, 
{6,1,36}, 
{6,1,37}, 
{6,1,38}, 
{6,1,39}, 
{6,1,40}, 
{6,1,41}, 
{6,1,42}, 
{6,1,43}, 
{6,1,45}, 
{6,1,46}, 
{6,1,47}, 
{6,1,48}, 
{6,1,49}, 
{6,1,50}, 
{6,1,51}, 
{6,1,52}, 
{6,1,53}, 
{6,1,54}, 
{6,1,55}, 
{6,1,56}, 
{6,1,57}, 
{6,1,58}, 
{6,1,59}, 
}, 
tItemName = {"Thi�t La H�n ","2 c�p huy�n tinh qu�ng th�ch ","3 c�p huy�n tinh qu�ng th�ch ","4 c�p huy�n tinh qu�ng th�ch ","T� th�y tinh ","��c bi�t b�ng k�ch l�ng b�nh ","T� t�i b�n cung . m�a sa l� hoa ", 
" v�i l�p t�nh thu�t . lo�n ��nh tr� ","Th�i c�c quy�n ph� . quy�n th� ba ","Th�i C�c ki�m ph� . quy�n th� hai ","V�n long k�ch . m�u ph�p "," l�u tinh . ��o ph�p ","Thi�n v��ng ch�y ph�p . cu�n 1", 
" Thi�n v��ng th��ng ph�p . cu�n 2","Thi�n v��ng ��o ph�p . cu�n 3","Th�y kh�i ��o ph�p ","Th�y kh�i song �ao ","Di�t ki�m b� t�ch ","Nga Mi ph�t quang ch��ng b� t�ch ","Phi �ao thu�t . nhi�p h�n b�ng tr�ng ", 
" phi ti�u thu�t . c�u cung bay tinh ","N�m ��c ch��ng ph�p . cu�n 1","N�m ��c ��o ph�p . cu�n 2","N�m ��c nhi�p t�m thu�t . cu�n 3","Ng� phong thu�t ","Ng� long thu�t ","Ng� t�m thu�t ", 
" nhi�p h�n . ch� thu�t ","C�i Bang ch��ng ph�p ","C�i Bang c�n ph�p ","Thi�u L�m quy�n ph�p . cu�n 1","Thi�u L�m c�n ph�p . cu�n 2","Thi�u L�m ��o ph�p . cu�n 3","Ph� �� b� t�ch " } 
} 
-- script viet hoa By http://tranhba.com  
function main(nItemIndex) 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > 70712 then 
Say("V�t ph�m �� qua s� d�ng k� .",0) 
return 0 
end 
local szItemName = GetItemName(nItemIndex) 
local tRan = {} 
local g, d , p = GetItemProp( nItemIndex ) 
if p == 1439 then 
tRan = ACT2YEAR_TWhiteBoxRan 
elseif p == 1441 then 
tRan = ACT2YEAR_TBlueBoxRan 
elseif p == 1440 then 
tRan = ACT2YEAR_TYellowBoxRan 
end 
local nMedalItemGID, nMedalItemDID,nMedalItemPID,nItemLev,szMedalItemName = act2years2007_getgift(tRan) 
if nMedalItemGID == nil or nMedalItemDID == nil or nMedalItemPID == nil or szMedalItemName == nil then 
Msg2Player("S� d�ng th�t b�i , xin/m�i th� m�t l�n n�a .") 
return 1 
end 
-- script viet hoa By http://tranhba.com  n�u nh� kh�ng ph�i l� huy�n tinh 
if nMedalItemPID ~= 147 then 
nItemLev = 1 
end 
AddItem(nMedalItemGID,nMedalItemDID,nMedalItemPID,nItemLev,0,0) 
Msg2Player(format("Ch�c m�ng ng�i ��t ���c 1%s.",szMedalItemName)) 
return 0 
end 
-- script viet hoa By http://tranhba.com  
function act2years2007_getgift(tRan) 

local nCurRan,nMaxNumber 
local nMaxRan = 1000 
nCurRan = random(nMaxRan) 
nMaxNumber = getn(tRan.tRan) 
for i = 1, nMaxNumber do 
if nCurRan <= tRan.tRan[i] then 
return tRan.tItemID[i][1],tRan.tItemID[i][2],tRan.tItemID[i][3],tRan.tItemID[i][4], tRan.tItemName[i] 
end 
end 
end 
