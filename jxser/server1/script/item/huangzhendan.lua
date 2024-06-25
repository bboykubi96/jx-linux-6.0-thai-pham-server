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

szMsg_Huang = format("<color=yellow>%d ngµy %d lóc %d ph©n %d gi©y <color>",nDay,nHour,nMin,nSec); 
end 

local szTitle; 
local tbOpt; 

if szMsg_Huang ~= nil then 
szTitle = format("Ngµi kháe <color=yellow>%s<color>, ë 60 ngµy bªn trong chØ cã thÓ sö dông 1 lÇn hoµng thËt ®an , ®¹i hiÖp chê l©u %s sau ®ã sÏ thö l¹i .",GetName(), szMsg_Huang); 
tbOpt = 
{ 
" x¸c nhËn OnCancel" 
} 
else 
szTitle = format("Ngµi kháe <color=yellow>%s<color>, sö dông hoµng thËt ®an cã thÓ ®¹t ®­îc <color=yellow>%s<color> kinh nghiÖm . x¸c nhËn muèn sö dông ?",GetName(), 2000000000) 
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

szMsg_Huang = format("<color=yellow>%d ngµy %d lóc %d ph©n %d gi©y <color>",nDay,nHour,nMin,nSec); 
end 

if szMsg_Huang ~= nil then 
local szTitle = format("Ngµi kháe <color=yellow>%s<color>, ë 60 ngµy bªn trong chØ cã thÓ sö dông 1 lÇn hoµng thËt ®an , ®¹i hiÖp chê l©u %s sau ®ã sÏ thö l¹i .",GetName(), szMsg_Huang) 
local tbOpt = 
{ 
" x¸c nhËn /OnCancel" 
} 
Say(szTitle, getn(tbOpt), tbOpt); 

else 
if RemoveItemByIndex(nItemIndex) == 1 then 
tbAwardTemplet:GiveAwardByList({nExp_tl = 2000000000;}, format("%s sö dông hoµng thËt ®an ", GetName())); 
SetTask(TSK_BeiDouChuanGong_USEDTIME_HUANG, GetCurServerTime()); 
AddSkillState( 509, 1, 0, 180); 
end 
end 
end 

function OnCancel() 

end 

function GetDesc(nItem) 
return format("\n hµm h÷u <color=yellow>%s<color> kinh nghiÖm ", 2000000000); 
end 
