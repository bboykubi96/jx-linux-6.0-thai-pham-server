Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("FILESYS");
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\gm_tool\\libgm.lua")
-------------------------------------------------------------------------------
TSK_TIMEDATE_TM = 2763; TSK_TIMELIMIT_TM = 7*24*60*60
-------------------------------------------------------------------------------
function main()
local nNowTime = GetCurServerTime()
local nTimeDate = GetTask(TSK_TIMEDATE_TM)
	if (nTimeDate + TSK_TIMELIMIT_TM <= nNowTime) then
		SetTask(TSK_TIMEDATE_TM,nNowTime) PlayerFunLib:AddSkillState(1615,20,3,10886400,1); RemoveSkillState(1614,20,3,10886400,1); RemoveSkillState(1616,20,3,10886400,1)
		Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc HiÖu øng Vßng S¸ng Lang Häa Cã HiÖu Lùc Trong 7 Ngµy")
            logplayer("dulieu/vongsang/kichhoatvongsanglanghao_.txt",format(" Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] - Kich Hoat Vong Sang langhaoh\n! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	else
		local nTime = (nTimeDate + TSK_TIMELIMIT_TM - nNowTime)
		local nDay = floor(nTime / (24*60*60))
		nTime = mod(nTime, 24*60*60)
		local nHour = floor(nTime / (60*60))
		nTime = mod(nTime, 60*60)
		local nMin = floor(nTime / (60))
		local nSec = mod(nTime, 60);
		Say(format("<color=yellow>Vßng S¸ng Lang Hao §ang Cã HiÖu Lùc:\n   Thêi Gian Cßn L¹i: <color=red>%d<color> Ngµy <color=red>%d<color> Giê <color=red>%d<color> Phót <color=red>%d<color> Gi©y<color>", nDay, nHour, nMin, nSec))
		return 1
	end
end

function logplayer(zFile,szMsg)
	local Data2 = openfile(""..zFile.."", "a+");
	write(Data2,tostring(szMsg));
	closefile(Data2);
 end

