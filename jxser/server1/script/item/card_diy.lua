-- script viet hoa By http://tranhba.com  Created by firefox 
-- script viet hoa By http://tranhba.com  nh� � t�p 
-- script viet hoa By http://tranhba.com  c� th� m�nh bi�n t�p ch�c ph�c 
IL("SETTING") 
IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=1016 
STSK_OTHERNAME = 3 
TB_FORBIDWORD = { 
"<item=", 
"<link=", 
"<pic=", 
"<color=", 
"<bclr=", 
"<enter", 
} 
function main(nIndex) 
if (gb_GetModule("M�u s�c r�c r� th�ng b�o h� t�p ") == 1) then 
Say("��y l� m�t t� huy�n th�i h� t�p , c� th� �em ng�i ��ch ch�c ph�c l�y m�u s�c r�c r� ch� vi�t g�i �i ra ngo�i . xin/m�i tr��c ��a v�o ng�i mu�n ch�c ph�c ��i t��ng ��ch t�n , sau �� l�a ch�n ch�c ph�c ng� ��ch m�u s�c , n�a ��a v�o ng�i mu�n l�i ch�c ph�c , li�n c� th� ��a ra ng�i ��ch ch�c ph�c . ", 
2, 
" b�y gi� b�t ��u ch�c ph�c /want2bless", 
" sau n�y n�a ��a /OnCancel") 
end 
return 1 
end 

function want2bless(nIndex) 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/m�i ��a v�o ��i ph��ng t�n "); 
end 

function PlayerSelect(rolename) 
if (ST_CheckTextFilter(rolename) ~= 1) then 
Say("Th�t xin l�i , ng�i s� ��a v�o ��ch t�n h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 
for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(rolename, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("Th�t xin l�i , ng�i s� ��a v�o ��ch t�n h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 
end 
SetStringTask(STSK_OTHERNAME,rolename) 
AskClientForString("BlessPlayer", "", 1, 100,"Xin/m�i ��a v�o ch�c ph�c ng� "); 
end 

function BlessPlayer(szBless) 
if (ST_CheckTextFilter(szBless) ~= 1) then 
Say("Th�t xin l�i , ng�i s� ��a v�o ��ch t�n h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 
for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(szBless, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("Th�t xin l�i , ng�i s� ��a v�o ��ch t�n h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 
end 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local szMsg 
szMsg = GetName().."<#> ��i v�i "..GetStringTask(STSK_OTHERNAME).."<#> n�i #"..szBless 
AddGlobalCountNews(szMsg,3); 
else 
Msg2Player("Kh�ng t�m ���c th� , xin/m�i th� l�i m�t l�n . ") 
end 
end 
