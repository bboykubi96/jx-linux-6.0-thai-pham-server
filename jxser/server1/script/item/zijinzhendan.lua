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

local nContainExp = GetItemParam(nItemIndex, 1); 
	nContainExp = nContainExp + GetItemParam(nItemIndex, 2)*1e8;

if ST_GetTransLifeCount() <= 0 then 
Say("Ch� c� s�ng l�i ng��i c�a v�t m�i c� th� s� d�ng t�m b�m th�t �an ", 0) 
return 1; 
end 

if nContainExp <= 0 then 
Say("S� d�ng n�n t�m b�m th�t �an kh�ng th� ��t ���c kinh nghi�m .", 0) 
return 0; 
end 

local nCurTime = GetCurServerTime() 
local nTSKVTime_ZiJin = GetTask(TSK_BeiDouChuanGong_USEDTIME_ZIJIN); 
local szMsg_ZiJin = nil; 

	if nTSKVTime_ZiJin + TSKV_BeiDouChuanGong_UseLimit >= nCurTime then

		local nTime = (nTSKVTime_ZiJin + TSKV_BeiDouChuanGong_UseLimit - nCurTime);
local nDay = floor(nTime / (24*60*60) ); 
nTime = mod( nTime, 24*60*60); 
local nHour = floor( nTime / (60*60) ); 
nTime = mod(nTime, 60*60); 
local nMin = floor(nTime / 60 ); 
local nSec = mod(nTime, 60); 

szMsg_ZiJin = format("<color=yellow>%d ng�y %d l�c %d ph�n %d gi�y <color>",nDay,nHour,nMin,nSec); 
end 

local szTitle; 
local tbOpt; 

if szMsg_ZiJin ~= nil then 
szTitle = format("Ng�i kh�e <color=yellow>%s<color>, � 60 ng�y b�n trong ch� c� th� s� d�ng 1 l�n ti�n b�c th�t �an , ��i hi�p ch� l�u %s sau �� s� th� l�i .",GetName(),szMsg_ZiJin) 
tbOpt = 
{ 
" x�c nh�n /OnCancel" 
} 
else 
szTitle = format("Ng�i kh�e <color=yellow>%s<color>, s� d�ng n�n ti�n �an c� th� ��t ���c <color=yellow>%s<color> kinh nghi�m . x�c nh�n mu�n s� d�ng ?",GetName(), nContainExp) 
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

local nContainExp = GetItemParam(nItemIndex, 1); 
	nContainExp = nContainExp + GetItemParam(nItemIndex, 2)*1e8;

if ST_GetTransLifeCount() <= 0 then 
Say("Ch� c� s�ng l�i ng��i c�a m�i c� th� s� d�ng t�m b�m th�t �an ", 0) 
return 1; 
end 

if nContainExp <= 0 then 
Say("S� d�ng n�n th�t �an kh�ng th� ��t ���c kinh nghi�m .", 0) 
return 0; 
end 

local nCurTime = GetCurServerTime() 
local nTSKVTime_ZiJin = GetTask(TSK_BeiDouChuanGong_USEDTIME_ZIJIN); 
local szMsg_ZiJin = nil; 

	if nTSKVTime_ZiJin + TSKV_BeiDouChuanGong_UseLimit >= nCurTime then

		local nTime = (nTSKVTime_ZiJin + TSKV_BeiDouChuanGong_UseLimit - nCurTime);
local nDay = floor(nTime / (24*60*60) ); 
nTime = mod( nTime, 24*60*60); 
local nHour = floor( nTime / (60*60) ); 
nTime = mod(nTime, 60*60); 
local nMin = floor(nTime / 60 ); 
local nSec = mod(nTime, 60); 

szMsg_ZiJin = format("<color=yellow>%d ng�y %d l�c %d ph�n %d gi�y <color>",nDay,nHour,nMin,nSec); 
end 


if szMsg_ZiJin ~= nil then 
local szTitle = format("Ng�i kh�e <color=yellow>%s<color>, � 60 ng�y b�n trong ch� c� th� s� d�ng 1 l�n ti�n b�c th�t �an , ��i hi�p ch� l�u %s sau �� s� th� l�i ",GetName(),szMsg_ZiJin) 
local tbOpt = 
{ 
" x�c nh�n /OnCancel" 
} 
Say(szTitle, getn(tbOpt), tbOpt); 
else 
if RemoveItemByIndex(nItemIndex) == 1 then 

tbAwardTemplet:GiveAwardByList({nExp_tl = nContainExp;}, format("%s s� d�ng t�m b�m th�t �an ", GetName())); 
SetTask(TSK_BeiDouChuanGong_USEDTIME_ZIJIN, GetCurServerTime()); 
AddSkillState( 509, 1, 0, 180); 

end 
end 
end 

function OnCancel() 

end 

function GetDesc(nItem) 
local nContainExp = GetItemParam(nItem, 1); 
	nContainExp = nContainExp + GetItemParam(nItem, 2)*1e8;
return format("\n h�m h�u <color=yellow>%s<color> kinh nghi�m ", nContainExp); 
end 
