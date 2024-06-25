--------------------------------***Heart*Doldly***-----------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\tong\\tong_award_head.lua")
Include("\\script\\lib\\awardtemplet.lua");		
Include("\\script\\task\\tollgate\\killer\\mibao_head.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\task_addplayerexp.lua")

IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--ÅÅÐÐ°ñ
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
-------------------------------------------------------------------------------------------------------
function SetMemberTask(myTaskNumber,myOrgValue,myTaskValue,fnCallback, series)

	local nPreservedPlayerIndex = PlayerIndex
	local nMemCount = GetTeamSize()
	local myMemberTask
	local myChangeMember = 0
	local Uworld1217 = nt_getTask(1217);
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "shashourenwu")
	if (nMemCount == 0 ) then
		myMemberTask = GetTask(myTaskNumber)
		if (myMemberTask == myOrgValue) then
			add_shashouling(myOrgValue, series)
			
			nt_setTask(TSKID_KILLERMAXCOUNT, GetTask(TSKID_KILLERMAXCOUNT) + 1);
			
			tongaward_killer()
			nt_setTask(myTaskNumber,myTaskValue);
			fnCallback()
		end
	else
		myMemberTask = GetTask(myTaskNumber)
		if (myMemberTask == myOrgValue) then
			tongaward_killer()
		end
		for i = 1, nMemCount do
			PlayerIndex = GetTeamMember(i)
			myMemberTask = GetTask(myTaskNumber)
			if (myMemberTask == myOrgValue) then	-- 
				add_shashouling(myOrgValue, series)
				
				nt_setTask(TSKID_KILLERMAXCOUNT, GetTask(TSKID_KILLERMAXCOUNT) + 1);
				
				nt_setTask(myTaskNumber,myTaskValue)
				myChangeMember = myChangeMember + 1
				fnCallback();
			end
		end
		PlayerIndex = nPreservedPlayerIndex;
	end
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nTime>=0900 and nTime<=1100) or (nTime>=1200 and nTime<=1300) or (nTime>=1600 and nTime<=1700) or (nTime>=1800 and nTime<=1900) or (nTime>=2000 and nTime<=2100) or (nTime>=2200 and nTime<=2300) then

	--	tbAwardTemplet:GiveAwardByList(tbAward, "PhÇn th­ëng Tiªu DiÖt S¸t Thñ");
	--	Msg2SubWorld("<color=green>Chóc Mõng §éi Ngò <color=yellow>"..GetName().."<color> §· Hoµn Thµnh NhiÖm Vô S¸t Thñ.")	
	--	WriteLogPro("dulieu/boss_satthu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t GietBoss\n");
	end
end;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function add_shashouling(nvalue, series)
	if ( nvalue >= 1 ) and ( nvalue<= 20  ) then
		AddOwnExp(20000)
		AddItem(6,1,399,20,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 20")
		
	elseif ( nvalue >= 21 ) and ( nvalue<= 30  ) then
		AddOwnExp(30000)
		AddItem(6,1,399,30,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 30")
		
	elseif ( nvalue >= 31 ) and ( nvalue<= 40  ) then
		AddOwnExp(40000)
		AddItem(6,1,399,40,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 40")
		
	elseif ( nvalue >= 41 ) and ( nvalue<= 50  ) then
		AddOwnExp(60000)
		AddItem(6,1,399,50,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 50")
		
	elseif ( nvalue >= 51 ) and ( nvalue<= 60  ) then
	AddOwnExp(80000)
		--tl_addPlayerExp(80000)
		AddItem(6,1,399,60,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 60")
		
	elseif ( nvalue >= 61 ) and ( nvalue<= 70  ) then
		AddOwnExp(100000)
		AddItem(6,1,399,70,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 70")
		
	elseif ( nvalue >= 71 ) and ( nvalue<= 80  ) then
		AddOwnExp(120000)
		--AddItem(6,1,399,80,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 80")
		
	elseif ( nvalue >= 81 ) and ( nvalue<= 200  ) then
		AddOwnExp(1e6)
		AddExp_Skill_Extend(1e6);
		--AddItem(6,1,399,90,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 90")		
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {	
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=1},
	
		--{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=1},	
		
			},
}
------------------------------------------------------------------------------------------------------------------------------------------------
