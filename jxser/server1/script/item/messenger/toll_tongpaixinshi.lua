-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : toll_tongpaixinshi.lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-08-16 15:28:15 
-- script viet hoa By http://tranhba.com  Desc : tin/th� khi�n cho nhi�m v� ��ng b�i b�n ph�i ki�n x�c ph�t ch�n v�n 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(itemindex) 
local paramvalue = GetItemParam(itemindex, 1) 
if ( paramvalue >= 5 ) then 
Msg2Player("Th�t xin l�i , ng��i tin/th� khi�n cho ��ng b�i �� s� d�ng qu� 5 l�n , n� �em b� ti�u h�y . ") 
elseif ( nt_getTask(1206) < 2 ) then 
Msg2Player("Th�t xin l�i , ng��i c�n kh�ng c� nh�n l�y ��n ��ng b�i tin/th� khi�n cho ��ch danh hi�u , kh�ng c�ch n�o s� d�ng tin/th� khi�n cho ��ng b�i . xin/m�i �i tr��c t�m d�ch quan th�ng c�p danh hi�u , c�m �n . ") 
return 1 
else 
		if ( SetSpecItemParam(itemindex, 1, paramvalue+1) == 1 ) then
SyncItem(itemindex) 
local Realvalue = 5 - GetItemParam(itemindex, 1) 
Msg2Player("Ng��i tin/th� khi�n cho ��ng b�i s� d�ng sau nh�ng ��t ���c m�t gi� ��ch 15 �i�m b�/cha/ch�u kh�ng . tr��c m�t c�n c� th� s� d�ng "..Realvalue.." l�n . ") 
end 

if ( GetSeries() == 0 ) then -- script viet hoa By http://tranhba.com  kim h� nh�n v�t b� l�a kh�c , 631-635 , kim m�c th�y h�a th� 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 634, 2, 1, 64800) 
elseif ( GetSeries() == 1 ) then -- script viet hoa By http://tranhba.com  m�c h� nh�n v�t b� kim kh�c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 631, 2, 1, 64800) 
elseif ( GetSeries() == 2 ) then -- script viet hoa By http://tranhba.com  th�y h� nh�n v�t b� ��t kh�c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 635, 2, 1, 64800) 
elseif ( GetSeries() == 3 ) then -- script viet hoa By http://tranhba.com  h�a h� nh�n v�t b� n��c kh�c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 633, 2, 1, 64800) 
elseif ( GetSeries() == 4 ) then -- script viet hoa By http://tranhba.com  th� h� nh�n v�t b� m�c kh�c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 632, 2, 1, 64800) 
end 

return 1 
end 
end 

function GetDesc( nItem ) 
local szDesc; 
local nIssueID, nIDCount; 
local nPayMonth1 
local nPayMonth1 = GetItemParam( nItem, 1 ) 
local Realvalue = 5 - nPayMonth1 

szDesc = "" 
szDesc = szDesc..format("Ng��i tin/th� khi�n cho ��ng b�i s� d�ng sau nh�ng ��t ���c m�t gi� ��ch 15 �i�m b�/cha/ch�u kh�ng . tr��c m�t c�n c� th� s� d�ng "..Realvalue.." l�n . "); 
return szDesc; 
end
