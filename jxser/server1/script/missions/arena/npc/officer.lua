Include("\\script\\missions\\arena\\player.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\maps\\checkmap.lua")
IncludeLib("TITLE") 

local tbTitle2Id = 
{ 
[" ��c c� c�u b�i "] = 237, 
[" v� l�m ch� t�n "] = 238, 
[" m�t ��i t�ng s� "] = 239, 
[" tuy�t th� cao th� "] = 240, 
[" n�i ti�ng giang h� "] = 241, 
[" hi�p danh lan xa "] = 242, 
[" v� l�m t�n t� "] = 243, 
[" m�i v�o giang h� "] = 244, 
[" nh�p m�n �� t� "] = 245, 
} 

function want_get_title() 
local szTitle = " ��i hi�p m�i tu�n tham gia �� 20 tr�ng c�nh k� chi�n li�n c� th� l�y ���c c�nh k� chi�n danh hi�u " 
local tbOpt = 
{ 
{"Ta mu�n d�n danh hi�u ", get_title, {}}, 

{"Ta ch�ng qua l� xem m�t ch�t "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function get_title() 
if tbPlayer:GetTitleFlag() ~= 0 then 
return Talk(1, "","M�t tu�n ch� d�n m�t l�n ") 
end 

if tbPlayer:GetCurCount() < tbPlayer.PER_WEEK_COUNT then 
return Talk(1, "", format("Mu�n tham gia �� %d tr�ng m�i c� th� nh�n l�y ", tbPlayer.PER_WEEK_COUNT)) 
end 

local szTitle = tbPlayer:GetTitle() 
local nTitleId = %tbTitle2Id[szTitle] 
if not nTitleId then 
return 
end 

tbPlayer:SetTitleFlag() 
	local nTime = GetCurServerTime() + 60*60*24*7
nTime = tonumber(FormatTime2String("%m%d%H%M", nTime)) 
SetTask(TASK_ACTIVE_TITLE, nTitleId); 
Title_AddTitle(nTitleId, 2, nTime) 
Title_ActiveTitle(nTitleId) 
end 

function show_introduction() 
local szTitle = " c�c v� h�o # s�n ��u �� � trong ch�n giang h� r�ng r�i tuy�n truy�n li�u <enter> ghi danh # �i�m k�ch con chu�t b�n ph�i ki�n ti�n v�o � v�o trang ch�nh m�t b�n ph�i th��ng gi�c ��ch s�n ��u b�n kh�i m� ra ghi danh gi�i m�t ; <enter> s�n ��u vinh d� huy ch��ng : m�i th�ng g�p ��u 20 tr�ng c� th� nh�n l�y vinh d� huy ch��ng , ��i hi�p ��nh �� 20 tr�ng c�ng c� th� nh�n l�y nh�ng kh�c vinh d� huy ch��ng ; <enter> chi�n ��i c�p b�c : c�n c� ng��i � ��y chi�n ��i trung ��ch ng��i bi�u hi�n s� �� cao ho�c r�t xu�ng ng��i chi�n ��i c�p b�c ; <enter> vinh d� huy ch��ng c�a h�ng # s� d�ng vinh d� huy ch��ng mua c�c lo�i qu� tr�ng ��o c� " 
local tbOpt = 
{ 
{"C� th� !", }, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function open_credits_shop() 
local nMapId = GetWorldPos() 
if (IsFreshmanMap(nMapId) == 1 or IsCityMap(nMapId) == 1) and GetFightState() == 0 then 
Sale(175, 16) 
else 
Msg2Player("Ch� c� th� � th�nh ph� c�ng n�ng th�n ch� an to�n khu v�c khai c�a h�ng .") 
end 
end 


function main() 
-- script viet hoa By http://tranhba.com  t�t s�n ��u k� n�ng - Modified By NgaVN - 20120305 
do 
Talk(1,"","K� n�ng t�m ��ng/nh�m !") 
return 
end 
local szTitle = " ��i hi�p h�o , b�n th�n l� s�n ��u quan vi�n ." 
local tbOpt = 
{ 
{"Nh�n l�y v�n chu s�n ��u chi�n ��i danh hi�u ", want_get_title, {}}, 
{"Khai s�n ��u vinh d� c�a h�ng ", open_credits_shop, {}}, 
{"Gi�i thi�u s�n ��u t�nh n�ng ", show_introduction, {}}, 
{"H�y b� "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end
