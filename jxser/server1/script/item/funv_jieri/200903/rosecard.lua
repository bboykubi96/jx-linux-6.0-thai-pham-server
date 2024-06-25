Include("\\script\\event\\funv_jieri\\200903\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")

Include("\\script\\lib\\string.lua")
local tbExpAward = 
{ 
-- script viet hoa By http://tranhba.com [nSex] = {nExp = nExp} 
[0] = {nExp = 2000000}, 
[1] = {nExp = 3000000}, 

} 


local tbBless = 
{ 
" tr�n m�i lu�n l� l� ra th�n thi�t m�m c��i , ", 
" lu�n l� vui v� c�ng h�nh ph�c ", 
" lu�n l� g�p ph�i r�t nhi�u may m�n c�ng h�nh ph�c ", 
" r�t ��p li�u , mu�n ��p h�n , �� cho hoa h�m m� , tr�ng s�ng ghen t� ", 
" m� h�o �� t�ng � b�n ng��i ", 
" � trong cu�c s�ng lu�n l� c��ng ��i c�ng t� tin ", 
" �i v� ph�a tr��c ��ch tr�n ���ng lu�n l� quang minh t�a nh� c�a h�ng hoa h�ng ", 
" d� d�ng l��t qua trong cu�c s�ng ��ch kh� kh�n ", 
" th�i gian s� kh�ng th�n r�i dung nhan ", 
" lu�n l� c�m th�y vui v� c�ng tho�i m�i ", 
" ��i v�i cu�c s�ng tr�n ��y t�n ni�m ", 
" v�nh vi�n xinh ��p ", 
" v�nh vi�n gi�ng nh� b�ch hoa m�t d�ng xinh ��p ", 
" cu�c s�ng � b�ng h�u h�a th�n ng��i t�nh c�m trung ", 
" tin t��ng s� nghi�p s� th�nh c�ng ", 
" v�nh vi�n xinh ��p c�ng c� m� l�c ", 
" ng� nh�o ��ch th�i �i�m t�ng c� th� ��ng ��ng l�n , d�ng c�m l��t qua kh� kh�n ", 
"3 th�ng 8 s� th�t l� vui v� c�ng tr�n ��y � ngh�a m�t ng�y ", 
" s�m ng�y t�m ���c d�a v�o ��a ph��ng � trong ��i ki�n ��nh �i v� ph�a tr��c ", 
" c� nh� vui v� # h�nh ph�c # kh�e m�nh ", 
} 
local _AddRoseCardExp = function (nItemIndex) 
local nSex = GetSex() 
if tbFunv0903.tbTask:CheckExpFromRose() ~= 1 then 
Msg2Player(format("M�i ng��i nhi�u nh�t ch� c� th� t� hoa h�ng t�p trung ��t ���c %u kinh nghi�m ", tbFunv0903.tbTask.nMaxExpFromRose)) 
else 
local tbExp = %tbExpAward[nSex] 
tbAwardTemplet:GiveAwardByList(tbExp, "use "..GetItemName(nItemIndex)) 
tbFunv0903.tbTask:AddCurExpFromRose(tbExp.nExp) 
end 

end 

function main(nItemIndex) 

if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 

local nTeamSize = GetTeamSize() 
if GetSex() ~= 0 then 
Talk(1, "","N�n v�t ph�m ch� c� nam nh�n m�i c� th� s� d�ng ") 
return 1 
end 
if nTeamSize ~= 2 then 
Talk(1, "","C�n 1 nam 1 n� h�p th�nh ��i m�i c� th� s� d�ng .") 
return 1 
end 
local nSexFlag = 0 
local szName_Male = GetName() 
local szName_Female = "" 
for i=1, nTeamSize do 
local nPlayerIndex = GetTeamMember(i) 
local nSex = doFunByPlayer(nPlayerIndex, GetSex) 
local szName = doFunByPlayer(nPlayerIndex, GetName) 
local bRet, szFailMsg = doFunByPlayer(nPlayerIndex, tbFunv0903.IsPlayerEligible, tbFunv0903) 
if bRet ~= 1 then 
local szMsg = format("<color=yellow>%s<color>%s",szName, szFailMsg) 
Msg2Team(szMsg) 
Talk(1, "", szMsg) 

return 1 
end 

		nSexFlag = nSexFlag + nSex
if szName ~= szName_Male then 
szName_Female = szName 
end 
end 

	if nSexFlag ~= 1 then -- script viet hoa By http://tranhba.com 2����ӵ�����£�ͬ�Ա���ӱض�Ϊ0+0=0����1+1=2������Ϊ0+1=1
Talk(1, "","C�n 1 nam 1 n� h�p th�nh ��i m�i c� th� s� d�ng .") 
return 1 
end 
local nColor = toColor(random(0,255), random(0,255), random(0,255)) 
local szBless = format("<color=%s>%s<color>", tostring(nColor), %tbBless[random(1, getn(%tbBless))]) 
local szMsg = format("<color=yellows>%s<color> ch�c <color=yellows>%s<color>: %s", szName_Male, szName_Female, szBless) 
AddGlobalNews(szMsg) 
Msg2SubWorld(szMsg) 
for i=1, nTeamSize do 
local nPlayerIndex = GetTeamMember(i) 
doFunByPlayer(nPlayerIndex, %_AddRoseCardExp, nItemIndex) 
end 





end
