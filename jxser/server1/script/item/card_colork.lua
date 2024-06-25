IL("SETTING") 
IL("LEAGUE") 
Include("\\script\\lib\\gb_modulefuncs.lua")

COLOR_BLESS = { 
{"Thu�n m�u tr�ng ","color=White"}, -- script viet hoa By http://tranhba.com  m�u tr�ng 
{"�� t��i s�c ","color=Red"}, -- script viet hoa By http://tranhba.com  m�u �� 
{"C� m�u xanh l� c�y ","color=Green"}, -- script viet hoa By http://tranhba.com  m�u xanh l� c�y 
{"H� m�u xanh da tr�i ","color=Water"}, -- script viet hoa By http://tranhba.com  m�u xanh da tr�i 
{"M�u v�ng kim ","color=Orange"}, -- script viet hoa By http://tranhba.com  kim Gold 
{"Chanh m�u �� ","color=0xff5040"}, -- script viet hoa By http://tranhba.com  chanh s�c 
{"M�u �� t�m ","color=Pink"}, -- script viet hoa By http://tranhba.com  t� h�ng 
{"Gi�ng m�u t�m ","color=Violet"}, -- script viet hoa By http://tranhba.com  t� 
{" l��ng m�u �� ","bclr=Red><color=Yellow"}, -- script viet hoa By http://tranhba.com  l��ng m�u �� 
{" l��ng m�u xanh da tr�i ","bclr=Blue><color=White"}, -- script viet hoa By http://tranhba.com  l��ng m�u xanh da tr�i 
{" l��ng ��o h�ng s�c ","bclr=Pink><color=Yellow"}, -- script viet hoa By http://tranhba.com  l��ng ��o h�ng 
} 

TB_FORBIDWORD = { 
"<item=", 
"<link=", 
"<pic=", 
"<color=", 
"<bclr=", 
"<enter", 
} 

STSK_OTHERNAME = 1 
STST_COLOR = 2 
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 1053 

function main() 
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
local tbOpp = {} 
for i = 1, getn(COLOR_BLESS) do 
tbOpp[i] = COLOR_BLESS[i][1].."/ColorSelect" 
end 
	tbOpp[ getn(tbOpp) + 1 ] = "ȡ��/OnCancel"
Say("Xin/m�i l�a ch�n ch�c ph�c ng� ��ch m�u s�c #", getn(tbOpp), tbOpp ) 
end 

function ColorSelect(nSel) 
	local stcolor = nSel + 1
SetStringTask(STST_COLOR,COLOR_BLESS[stcolor][2]) 
AskClientForString("BlessPlayer", "", 1, 100,"Xin/m�i ��a v�o ch�c ph�c ng� "); 
end 

function BlessPlayer(szBless) 
if (ST_CheckTextFilter(szBless) ~= 1) then 
Say("Th�t xin l�i , ng�i ��ch ch�c ph�c ng� trung h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 

for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(szBless, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("Th�t xin l�i , ng�i s� ��a v�o ��ch t�n h�m h�u phi ph�p t� ��n , xin/m�i th� l�i m�t l�n . ", 0) 
return 
end 
end 

if (GetStringTask(STSK_OTHERNAME) == nil or GetStringTask(STSK_OTHERNAME) == "" or GetStringTask(STST_COLOR) == nil or GetStringTask(STST_COLOR) == "") then 
return 
end 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local szMsg = "" 
szMsg = "<color=yellow>"..GetName().."<color><#> ��i v�i <color=yellow>"..GetStringTask(STSK_OTHERNAME).."<color><#> n�i #<"..GetStringTask(STST_COLOR)..">"..szBless 
-- script viet hoa By http://tranhba.com AddGlobalCountNews(szMsg,2); 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "")
else 
Say("Kh�ng t�m ���c th� , xin/m�i th� l�i m�t l�n . ", 0) 
end 
end 

function OnCancel() 
end
