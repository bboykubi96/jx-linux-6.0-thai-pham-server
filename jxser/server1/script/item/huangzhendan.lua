-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##chuangongdan.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-02-25 16:25:21 
IncludeLib("SETTING"); 
Include("\\script\\lib\\pay.lua");
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\event\\BeiDouChuanGong\\lib\\addaward.lua");
Include("\\script\\event\\BeiDouChuanGong\\head.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex) 

local nCurTime = GetCurServerTime() 
local nTSKVTime_Huang = GetTask(TSK_BeiDouChuanGong_USEDTIME_HUANG); 
local szMsg_Huang = nil; 

	if nTSKVTime_Huang + TSKV_BeiDouChuanGong_UseLimit >= nCurTime then

		local nTime = (nTSKVTime_Huang + TSKV_BeiDouChuanGong_UseLimit - nCurTime);
local nDay = floor(nTime / (24*60*60) ); 
nTime = mod( nTime, 24*60*60); 
local nHour = floor( nTime / (60*60) ); 
nTime = mod(nTime, 60*60); 
local nMin = floor(nTime / 60 ); 
local nSec = mod(nTime, 60); 

szMsg_Huang = format("<color=yellow>%d ng�y %d l�c %d ph�n %d gi�y <color>",nDay,nHour,nMin,nSec); 
end 

local szTitle; 
local tbOpt; 

if szMsg_Huang ~= nil then 
szTitle = format("Ng�i kh�e <color=yellow>%s<color>, � 60 ng�y b�n trong ch� c� th� s� d�ng 1 l�n ho�ng th�t �an , ��i hi�p ch� l�u %s sau �� s� th� l�i .",GetName(), szMsg_Huang); 
tbOpt = 
{ 
" x�c nh�n OnCancel" 
} 
else 
szTitle = format("Ng�i kh�e <color=yellow>%s<color>, s� d�ng ho�ng th�t �an c� th� ��t ���c <color=yellow>%s<color> kinh nghi�m . x�c nh�n mu�n s� d�ng ?",GetName(), 2000000000) 
tbOpt = 
{ 
format("X�c nh�n /#BeiDouChuanGong_UseItem(%d)", nItemIndex), 
" bu�ng tha cho /OnCancel" 
} 
end 
Say(szTitle, getn(tbOpt), tbOpt); 
return 1; 
end 

function BeiDouChuanGong_UseItem(nItemIndex) 

local nCurTime = GetCurServerTime() 
local nTSKVTime_Huang = GetTask(TSK_BeiDouChuanGong_USEDTIME_HUANG); 
local szMsg_Huang = nil; 

	if nTSKVTime_Huang + TSKV_BeiDouChuanGong_UseLimit >= nCurTime then

		local nTime = (nTSKVTime_Huang + TSKV_BeiDouChuanGong_UseLimit - nCurTime);
local nDay = floor(nTime / (24*60*60) ); 
nTime = mod( nTime, 24*60*60); 
local nHour = floor( nTime / (60*60) ); 
nTime = mod(nTime, 60*60); 
local nMin = floor(nTime / 60 ); 
local nSec = mod(nTime, 60); 

szMsg_Huang = format("<color=yellow>%d ng�y %d l�c %d ph�n %d gi�y <color>",nDay,nHour,nMin,nSec); 
end 

if szMsg_Huang ~= nil then 
local szTitle = format("Ng�i kh�e <color=yellow>%s<color>, � 60 ng�y b�n trong ch� c� th� s� d�ng 1 l�n ho�ng th�t �an , ��i hi�p ch� l�u %s sau �� s� th� l�i .",GetName(), szMsg_Huang) 
local tbOpt = 
{ 
" x�c nh�n /OnCancel" 
} 
Say(szTitle, getn(tbOpt), tbOpt); 

else 
if RemoveItemByIndex(nItemIndex) == 1 then 
tbAwardTemplet:GiveAwardByList({nExp_tl = 2000000000;}, format("%s s� d�ng ho�ng th�t �an ", GetName())); 
SetTask(TSK_BeiDouChuanGong_USEDTIME_HUANG, GetCurServerTime()); 
AddSkillState( 509, 1, 0, 180); 
end 
end 
end 

function OnCancel() 

end 

function GetDesc(nItem) 
return format("\n h�m h�u <color=yellow>%s<color> kinh nghi�m ", 2000000000); 
end 
