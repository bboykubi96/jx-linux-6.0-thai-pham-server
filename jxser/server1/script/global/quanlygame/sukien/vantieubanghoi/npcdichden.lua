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
		Msg2Player("Ng��i ch�i ph�i t� c�p 120 tr� l�n m�i c� th� tham gia ")
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
	-- dofile("script/global/quanlygame/sukien/vantieubanghoi/npcdichden.lua")
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
      		Say("Ch� c� bang ch� nh� ng��i m�i c� t� c�ch n�i chuy�n v�i ta.<pic=1>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	local nHour = tonumber(GetLocalDate("%H%M"))

	if %_Limit(nNpcIdx) == nil then
		return
	end
	if( nHour >= 2000) then
		Say("Th�i Gian Tr� Ti�u �� H�t.",0)
	return  
	end
		
	if( nHour >= 1900 and nHour <= 2000) then
		tbProgressBar:OpenByConfig(25, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	else
     		Say("Th�i gian v�n ti�u bang h�i t� 19h00 ��n 20h00 h�ng ng�y hi�n t�i ch�a ��n gi� �� tri�u ��nh cho ta nh�n ti�u bang m�i.",0)
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
    	-- {szName="KNB",tbProp={4,1496,1,1,0,0},nCount=9999},
	{szName="Xu",tbProp={4,417,1,1,0,0},nCount=15000},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng ��n L�ng Bang H�i")

    local szNews = format("Ti�u Bang H�i c�a bang Ch� <color=green>"..GetName().."<color=yellow> �� Ho�n th�nh nhi�m v� nh�n ���c ph�n th��ng.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--KickOutSelf()
	else
Say("<color=green>Ti�u ��u ��nh l�a ta � !!<pic=6>.")
	end
end



function ranphanthuong()
local s = random(1,13)

if s==1 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t �a T�nh Ho�n",tbProp={0,187},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t �an T�m Gi�i",tbProp={0,188},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==4 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t T�nh � K�t",tbProp={0,189},nCount=1,nQuality = 1,nRate=10},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t �a T�nh Ho�n",tbProp={0,187},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T�nh C�n Qu�c Ngh� Th��ng",tbProp={0,190},nCount=1,nQuality = 1,nRate=10},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={0,193},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T�nh Th�c N� H�ng Li�n",tbProp={0,191},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==7 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T�nh  Ph�ng Nghi Gi�i Ch�",tbProp={0,192},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={0,193},nCount=1,nQuality = 1,},}, "test", 1);
end;
	
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c Thanh Sa Tr��ng Sam",tbProp={0,159},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c � Sa Ph�t Qu�n",tbProp={0,160},nCount=1,nQuality = 1,nRate=10,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={0,161},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={0,161},nCount=1,nQuality = 1,},}, "test", 1);
end;
	
if s==12 then
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c T� ��ng H� uy�n",tbProp={0,162},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==13 then
			tbAwardTemplet:GiveAwardByList({{szName = "��nh Qu�c Ng�n T�m Y�u ��i",tbProp={0,163},nCount=1,nQuality = 1,},}, "test", 1);
end;
end
