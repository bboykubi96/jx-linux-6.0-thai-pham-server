-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##chuangongdan.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-02-25 16:25:21 
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
Say("ChØ cã sèng l¹i ng­êi cña vËt míi cã thÓ sö dông tÝm bÇm thËt ®an ", 0) 
return 1; 
end 

if nContainExp <= 0 then 
Say("Sö dông nªn tÝm bÇm thËt ®an kh«ng thÓ ®¹t ®­îc kinh nghiÖm .", 0) 
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

szMsg_ZiJin = format("<color=yellow>%d ngµy %d lóc %d ph©n %d gi©y <color>",nDay,nHour,nMin,nSec); 
end 

local szTitle; 
local tbOpt; 

if szMsg_ZiJin ~= nil then 
szTitle = format("Ngµi kháe <color=yellow>%s<color>, ë 60 ngµy bªn trong chØ cã thÓ sö dông 1 lÇn tiÒn b¹c thËt ®an , ®¹i hiÖp chê l©u %s sau ®ã sÏ thö l¹i .",GetName(),szMsg_ZiJin) 
tbOpt = 
{ 
" x¸c nhËn /OnCancel" 
} 
else 
szTitle = format("Ngµi kháe <color=yellow>%s<color>, sö dông nªn tiªn ®an cã thÓ ®¹t ®­îc <color=yellow>%s<color> kinh nghiÖm . x¸c nhËn muèn sö dông ?",GetName(), nContainExp) 
tbOpt = 
{ 
format("X¸c nhËn /#BeiDouChuanGong_UseItem(%d)", nItemIndex), 
" bu«ng tha cho /OnCancel" 
} 
end 
Say(szTitle, getn(tbOpt), tbOpt); 
return 1; 
end 

function BeiDouChuanGong_UseItem(nItemIndex) 

local nContainExp = GetItemParam(nItemIndex, 1); 
	nContainExp = nContainExp + GetItemParam(nItemIndex, 2)*1e8;

if ST_GetTransLifeCount() <= 0 then 
Say("ChØ cã sèng l¹i ng­êi cña míi cã thÓ sö dông tÝm bÇm thËt ®an ", 0) 
return 1; 
end 

if nContainExp <= 0 then 
Say("Sö dông nªn thËt ®an kh«ng thÓ ®¹t ®­îc kinh nghiÖm .", 0) 
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

szMsg_ZiJin = format("<color=yellow>%d ngµy %d lóc %d ph©n %d gi©y <color>",nDay,nHour,nMin,nSec); 
end 


if szMsg_ZiJin ~= nil then 
local szTitle = format("Ngµi kháe <color=yellow>%s<color>, ë 60 ngµy bªn trong chØ cã thÓ sö dông 1 lÇn tiÒn b¹c thËt ®an , ®¹i hiÖp chê l©u %s sau ®ã sÏ thö l¹i ",GetName(),szMsg_ZiJin) 
local tbOpt = 
{ 
" x¸c nhËn /OnCancel" 
} 
Say(szTitle, getn(tbOpt), tbOpt); 
else 
if RemoveItemByIndex(nItemIndex) == 1 then 

tbAwardTemplet:GiveAwardByList({nExp_tl = nContainExp;}, format("%s sö dông tÝm bÇm thËt ®an ", GetName())); 
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
return format("\n hµm h÷u <color=yellow>%s<color> kinh nghiÖm ", nContainExp); 
end 
