-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##jinengmiji_90.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### c�c m�n ph�i b� t�ch , c� th� h�c t�p 90 c�p k� n�ng 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-12 15:59:01 

Include("\\script\\dailogsys\\dailogsay.lua")
-- script viet hoa By http://tranhba.com # Thi�u L�m 0 Thi�n v��ng 1 ���ng m�n 2 n�m ��c 3 Nga Mi 4 th�y kh�i 5 C�i Bang 6 ng�y nh�n 7 V� ���ng 8 C�n L�n 9# 
sbook_list = 
{ -- script viet hoa By http://tranhba.com  c�ch th�c #{ k� n�ng ID, k� n�ng c�p b�c , bang ph�i ID, c�n c�p b�c , k� n�ng t�n s�ch x�ng , k� n�ng t�n } 
[2959] = { 
{318, 1, 0, 80,"Thi�u L�m b� t�ch ","Thi�u L�m ch��ng ph�p - ��t Ma �� giang "}, 
{319, 1, 0, 80,"Thi�u L�m b� t�ch ","Thi�u L�m c�n ph�p - ho�nh t�o thi�n qu�n "}, 
{321, 1, 0, 80,"Thi�u L�m b� t�ch ","Thi�u L�m �ao ph�p - v� t��ng ch�m "}, 
}, 
[2960] = { 
{322, 1, 1, 80,"Thi�n v��ng b� t�ch ","Thi�n v��ng �ao ph�p - x� tr�i ch�m "}, 
{323, 1, 1, 80,"Thi�n v��ng b� t�ch ","Thi�n v��ng th��ng ph�p - �u�i tinh tr�c th�ng "}, 
{325, 1, 1, 80,"Thi�n v��ng b� t�ch ","Thi�n v��ng ch�y ph�p - �u�i phong quy�t "}, 
}, 
[2961] = { 
{339, 1, 2, 80,"���ng m�n b� t�ch ","���ng m�n phi �ao - nhi�p h�n b�ng tr�ng "}, 
{302, 1, 2, 80,"���ng m�n b� t�ch ","���ng m�n t� ti�n - m�a sa l� hoa "}, 
{342, 1, 2, 80,"���ng m�n b� t�ch ","���ng m�n phi ti�u - c�u cung bay tinh "}, 
{351, 0, 2, 80,"���ng m�n b� t�ch ","���ng m�n ng�m t�nh - lo�n ��nh tr� "}, 
}, 
[2962] = { 
{353, 1, 3, 80,"N�m ��c b� t�ch ","N�m ��c ch��ng ph�p - �m phong th�c c�t "}, 
{355, 1, 3, 80,"N�m ��c b� t�ch ","N�m ��c �ao ph�p - huy�n �m ch�m "}, 
{390, 0, 3, 80,"N�m ��c b� t�ch ","N�m ��c nhi�p t�m thu�t - �o�n g�n h� c�t "}, 
}, 
[2963] = { 
{328, 1, 4, 80,"Nga Mi b� t�ch ","Nga Mi ki�m ph�p - ba nga �� tuy�t "}, 
{380, 1, 4, 80,"Nga Mi b� t�ch ","Nga Mi ch��ng ph�p - phong s��ng b� �nh "}, 
{332, 0, 4, 80,"Nga Mi b� t�ch h","Nga Mi ph� �� - ph� �� ch�ng sanh "}, 
}, 
[2964] = { 
{336, 1, 5, 80,"Th�y kh�i b� t�ch ","Th�y kh�i �ao ph�p - b�ng t�ng v� �nh "}, 
{337, 1, 5, 80,"Th�y kh�i b� t�ch ","Th�y kh�i song �ao - b�ng t�m ti�n t� "}, 
}, 
[2965] = { 
{357, 1, 6, 80,"C�i Bang b� t�ch ","C�i Bang ch��ng ph�p - phi long � tr�n tr�i "}, 
{359, 1, 6, 80,"C�i Bang b� t�ch ","C�i Bang c�n ph�p - thi�n h� v� ch� "}, 
}, 
[2966] = { 
{361, 1, 7, 80,"Ng�y nh�n b� t�ch ","Ng�y nh�n m�u ph�p - v�n long k�ch "}, 
{362, 1, 7, 80,"Ng�y nh�n b� t�ch ","Ng�y nh�n �ao ph�p - Thi�n Ngo�i L�u Tinh "}, 
{391, 0, 7, 80,"Ng�y nh�n b� t�ch ","Ng�y nh�n ch� thu�t - nhi�p h�n lo�n t�m "}, 
}, 
[2967] = { 
{365, 1, 8, 80,"V� ���ng b� t�ch ","V� ���ng ch��ng ph�p - ng�o tuy�t ti�u ng�n n�i "}, 
{368, 1, 8, 80,"V� ���ng b� t�ch ","V� ���ng ki�m ph�p - ng��i ki�m h�p nh�t "}, 
}, 
[2968] = { 
{372, 1, 9, 80,"C�n L�n b� t�ch ","C�n L�n ng� phong - ng�o tuy�t ti�u ng�n n�i "}, 
{375, 1, 9, 80,"C�n L�n b� t�ch ","C�n L�n ng� long - l�i ��ng c�u thi�n "}, 
{394, 0, 9, 80,"C�n L�n b� t�ch ","C�n L�n ng� t�m - say ti�n ��nh c�t "}, 
}, 
} 

function LearnSkillByBook(index, list, nItemIndex, nPlayerIndex) 

if(GetLastFactionNumber() ~= list[index][3]) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ch� ��nh m�n ph�i 
Msg2Player("Ng�i c�m "..list[index][5].." nghi�n c�u n�a ng�y , k�t qu� c�ng l�nh h�i kh�ng t�i c�i g� ") 
return 1 
end 
if(GetLevel() < list[index][4]) then -- script viet hoa By http://tranhba.com  nh�ng ch�a t�i ch� ��nh c�p b�c 
Msg2Player("Ng�i c�m "..list[index][5].." nghi�n c�u n�a ng�y , k�t qu� l�nh h�i m�t ch�t . ") 
return 1 
end 
if(HaveMagic(list[index][1]) ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng�i �� c�m "..list[index][5].." nghi�n c�u t�i nghi�n c�u �i , nh�ng l� c�ng kh�ng c� h�c ���c c�i g� # ") 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n tr��c m�t ��ch v�t ph�m l� hay kh�ng v� Thi�u L�m b� t�ch , l� l� tr��c th� ti�u , sau gia t�ng k� n�ng 
if CallPlayerFunction(nPlayerIndex, IsMyItem, nItemIndex) ~= 1 then 
return 
end 
if CallPlayerFunction(nPlayerIndex, RemoveItemByIndex, nItemIndex) ~= 1 then 
WriteLog("Bu�ng tha cho Thi�u L�m b� t�ch th�t b�i ") 
return 
end 

AddMagic(list[index][1], list[index][2]) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng 

WriteLog(date("%H%M%S")..": tr��ng m�c :"..GetAccount()..", nh�n v�t :"..GetName()..", s� d�ng : "..list[index][5].." �� h�c ���c : "..list[index][6]); 
Msg2Player("�� h�c ���c k� n�ng "..list[index][6].."'. ") 
return 0 
end 

function selectskill(list, nItemIndex, nPlayerIndex) 
local szTitle = " ��i hi�p mu�n h�c lo�i n�o k� n�ng " 
local tbOpt = {} 
for index,v in list do 
tinsert(tbOpt, {v[6], LearnSkillByBook, {index, list, nItemIndex, PlayerIndex}}) 
end 
tinsert(tbOpt, {"Nhi�m v� suy ngh� th�t k� ", cancel}) 
CreateNewSayEx(szTitle, tbOpt) 
end 

function main(nItemIndex) 
Genre, DetailType, Particular=GetItemProp(nItemIndex) 
selectskill(sbook_list[Particular], nItemIndex, PlayerIndex) 
return 1 
end 
