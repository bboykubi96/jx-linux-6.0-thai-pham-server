Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> �c lang bang l� m�t nh�m c� ng� � �c lang c�c ��ch c��ng ��o , v� v�y m�i ���c ��t t�n �c lang c�c . nh�ng ng��i n�y ��c bi�t �i gieo h�a l��ng d�n , b�u x�u giang h� nh�n s� ��ch danh d� , r�t nhi�u anh h�ng h�o ki�t c�ng mu�n tr� �i b�n h� . nh�ng l� , ng��i n�y c� v� l�m th�t truy�n �� l�u h� th� th�n c�ng , m�t lo�i �ao th��ng binh kh� c�ng kh�ng th� th��ng t�n ���c b�n h� . 30 n�m tr��c , c� m�t giang h� k� t�i ph�t minh c�n kh�n k�ch l�c �an , nghe n�i n�n �an uy l�c v� c�ng , n�u nh� ��i hi�p c� th� t�m ���c n� , l� c� th� d� d�ng ��i ph��ng b�n h� h� th� th�n c�ng , c�n d�n ch�ng m�t an t�nh cu�c s�ng . ." 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 
tinsert(tbDailog, {"Ta mu�n r�i �i !", GoToWaiMian}) 
tinsert(tbDailog, {"Ch� m�t ch�t "}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 
end 

function GoToWaiMian() 
local tbMapList = {{11,3183,5180}, {1,1651,3279}, {37,1704,3222}, {176,1695,3294}, 
{162,1697,3277}, {78,1596,3379}, {80,1718,3201},} 
local nOutPosId = random(1, getn(tbMapList)) 
local tbPos = tbMapList[nOutPosId] 
NewWorld(tbPos[1], tbPos[2], tbPos[3]) 
end 