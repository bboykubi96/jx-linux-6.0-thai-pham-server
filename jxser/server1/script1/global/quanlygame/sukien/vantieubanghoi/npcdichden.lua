--Include("\\script\\global\\lbadmin.lua")
-------------------------------------------------Script*By* NguyenKhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 91) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 92) then
		nGetSeedLevel = 3;
	end

	if (nGetSeedLevel ~= 3) then -- ������𲻶�,���ܽ���ʰȡ
		--���������Ҽ��𲻶�,����ʰȡ
		Msg2Player("Ng��i ch�i ph�i t� c�p 92 tr� l�n m�i c� th� tham gia ")
		return
                      end
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	vantieubanghoine()
	end


local _OnBreak = function()
	Msg2Player("��ng y�n kh�ng ���c nh�t nh�ch.<pic=15>")
end



function main()
	dofile("script/global/quanlygame/sukien/vantieubanghoi/npcdichden.lua")
	if 1==1 then
		--Say("V�n ti�u �ang t�m ��ng.")
	--	return
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
      		Say("Ch� c� bang ch� nh� ng��i m�i c� t� c�ch n�i chuy�n v�i ta.<pic=1>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek = tonumber(GetLocalDate("%w"))
	if %_Limit(nNpcIdx) == nil then
		return
	end

			if (nHour >= 2030 and nHour <= 2055)   then
		tbProgressBar:OpenByConfig(28, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	else
     		Say("Th�i gian v�n ti�u bang h�i t� 20h30 ��n 20h55 h�ng ng�y. Hi�n t�i ch�a ��n gi� �� tri�u ��nh cho ta nh�n ti�u bang m�i.",0)
		return
	end
end

function vantieubanghoine()
	local tbDialog = 
{ 
"<npc><color=green>��i qu�n ta �ang c�n nhi�u chuy�n ti�u �� ti�p t� l��ng th�c cho chi�n tr��ng ch�n hay qu� bang �� �em ��n ch�a.",
 "Ta ��n �� giao Ti�u Bang/giaohangdaiquan",
"Ta ch� gh� qua th�i/no",
} 
CreateTaskSay(tbDialog)
end



function giaohangdaiquan()
if GetTask(5859) > 0 then
SetTask(5859,0)
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-1);
ForbitTrade(0); 
RestoreOwnFeature();
RemoveSkillState(464);
RemoveSkillState(739);--CHIM
RemoveSkillState(731);--VONG XANH
RemoveSkillState(313);--TANHINH
RemoveSkillState(458);--TANHINH
RemoveSkillState(874);--BAYMAU
SetDeathScript("");
	local tbAward =
	{
		--	{szName="Ng�n L��ng",nJxb=50000000,nCount=1},
			{szName="Xu",tbProp={4,417,1,0,0,0},nCount=500},
			{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1},	
			{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1},	
			{szName="R��ng �� Xanh",tbProp={6,1,4476,1,0,0},nCount=25},	
			{szName="D� T�u Chi L�nh",tbProp={6,1,4407,1,0,0},nCount=50},	
		--	{szName="L�nh B�i Bang H�i",tbProp={6,1,4466,1,1,0},nCount=50},


	}
Earn(10000000)
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng V�n Ti�u Bang H�i")

    local szNews = format("Ti�u Bang H�i c�a bang Ch� <color=green>"..GetName().."<color=yellow> �� Ho�n th�nh nhi�m v� nh�n ���c ph�n th��ng.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--KickOutSelf()
	else
Say("<color=green>Ti�u ��u ��nh l�a ta � !!<pic=6>.")
	end
end



