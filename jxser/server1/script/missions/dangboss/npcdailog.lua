
Include("\\script\\missions\\dangboss\\dangbaossclass.lua")

Include("\\script\\lib\\composeclass.lua")
Include("\\script\\event\\qingren_jieri\\200902\\event.lua");	
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\awardtemplet.lua")


if not tbDangBossDailog then
	tbDangBossDailog = tbBaseClass:new()
end




function tbDangBossDailog:_init(tbTaskCtrl)
	self.szClassName = "tbDangBossDailog"
	self.tbTask = tbTaskCtrl
	self.nStartDate = 090117
	self.nEndDate = 200217
end

function tbDangBossDailog:IsActDay()
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	--return self.nStartDate <= nDate and nDate <= self.nEndDate
	return 1
end

function tbDangBossDailog:Main()
	Talk(1, "", "Ho�t ��ng t�m  ��ng.")
	do return end
	--if self:IsOpenModule() ~= 1 then
	--	return Talk(1, "", "Ho�t ��ng t�m  ��ng.")
	--end
	
	--if self:IsActDay() ~= 1 then
		--return Talk(1, "", "Ho�t ��ng �� k�t th�c.")
	--end
	
	local tbSay = 
	{
		"<dec><npc>�G�n ��y quan ph� c� t� ch�c c�c ho�t ��ng ��u ng�u � ph�a b�n kia s�ng, xin h�i c�c h� c� mu�n sang kia kh�ng?",
		format("Ta mu�n b�o danh tham gia ho�t ��ng ��u ng�u/#%s:DailogSignUp(1)", self.szClassName),
		format("Ta l� ng��i th�ng cu�c v� ��n nh�n th��ng/#%s:GetAward(1)", self.szClassName),
		format("Ta mu�n t�m hi�u ho�t ��ng ��u ng�u/#%s:Explain()", self.szClassName),
		"Ta s� quay l�i sau!/OnCancel",
		
	}
	
	CreateTaskSay(tbSay)
end

function tbDangBossDailog:Explain(nStep)
	local tbSay = 
	{
		"<dec><npc>ng��i ch�i c�p 80 v� �� n�p th� c� th� ��n ��y b�o danh, m�i ��t ch� ���c 100 ng��i. M�t ng��i s� bi�n th�n th�nh kim ng�u, nh�ng ng��i kh�c s� ��u ng�u. N�u nh� trong v�ng 5 ph�t ��nh b�i kim ng�u th� s� ���c th��ng kim ng�u b�o r��ng. N�u kh�ng th� nh�n v�t bi�n th�nh kim ng�u s� ���c quan ph� tr�ng th��ng.",
		"Ta �� hi�u r�i/OnCancel",
	}
	
	CreateTaskSay(tbSay)
end


function tbDangBossDailog:DailogSignUp(nStep)
	local nMapId = 895
	local nMissionState = tbDangBoss:GetMissionState(nMapId)
if GetCash() < 300000 and nStep == 1 and nMissionState == 1 and GetTask(5440) ~=1 then
Talk(1, "", "Xin l�i l�n ��u ng�u ��u ti�n nay c�n c� 30 v�n m�i c� th� thi ��u.Trong th�i gian ch�a b�t ��u thi ��u v�i ng�u n�u tho�t ra v�o l�i s� kh�ng b� tr� ph�")
return
end

	local nMapId = 895
	local nMoney = 0
	
	local nCurMatchId = tbDangBoss:GetMissionV(tbDangBoss.tbMissionV.MATCH_ID, nMapId)
	local nContinueCount = self.tbTask:GetContinueCount(nCurMatchId) + 1
	local nMissionState = tbDangBoss:GetMissionState(nMapId)
	local nPlayerCount = tbDangBoss:GetMSPlayerCount(0, nMapId)
	if nStep == 1 then
		if nMissionState == 2 then
			nMoney = nContinueCount * 3e5 
			local tbSay = 
			{
				format("<dec><npc>Th�i gian b�o danh �� qua, hi�n t�i ph�i chi tr� %d ng�n l��ng m�i c� th� v�o. X�c nh�n mu�n chi tr�?", nMoney),
				format("���ng nhi�n, ta mu�n �i b�o th�/#%s:DailogSignUp(2)", self.szClassName),
				"Kh�ng c�n!/OnCancel",
			}
			return CreateTaskSay(tbSay)
		end
		
	elseif nStep == 2 then
		if nMissionState == 2 then
			nMoney = nContinueCount * 3e5
		end
		
		if GetCash() < nMoney then
			return Talk(1, "", format("Ng�n l��ng kh�ng ��, c�n %d", nMoney))
		end
	end	
	
	if tbDangBoss:IsPlayerEligible() ~= 1 then
		Talk(1, "", format("C�p %d tr� l�n v� %s m�i c� th� tham gia", tbDangBoss.nMinLevel, (tbDangBoss.bIsCharged == 1 and "N�p") or ""))
		return 0
	end
	
	if nMissionState ~= tbDangBoss.READY_STATE and nMissionState ~= tbDangBoss.BATTLE_STATE then
		Talk(1, "", "R�t ti�c th�i gian b�o danh �� qua. Xin h�y ��i ��t sau")
		SetTask(5440,0)
		return 0
	end
	if nPlayerCount >= tbDangBoss.nMaxPlayerCount then
		Talk(1, "", format("S� ng��i b�o danh �� ��t ��n %d. R�t ti�c, xin h�y ��i ��t sau", tbDangBoss.nMaxPlayerCount))
		return 0
	end
	local nMapId = 895
	local nMissionState = tbDangBoss:GetMissionState(nMapId)
if nStep == 1 and nMissionState == 1 and GetTask(5440) ~=1 then
Pay(300000)
SetTask(5440,1)
end
	local nMapId = 895
	local nMissionState = tbDangBoss:GetMissionState(nMapId)
if nStep == 1 and nMissionState == 2 then
SetTask(5440,0)
end
	local nMapId, nPosX16, nPosY16 = GetWorldPos()
	self.tbTask:SetLastPos(nMapId, nPosX16, nPosY16)
	tbDangBoss:GotoBattlePlace()
		local szNews = format("��i hi�p <color=green>"..GetName().."<color=yellow> �� v�o xu�n phong ��o �� ��u Ng�u<color=blue> (B�o Danh T�i L�m An ��ng 201/201)");
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��u s� <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< khi chi�n th�ng cu�c ��u ng�u ng�y h�m nay><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local tbItem = 
{
		{szName="Thi�t La H�n L� Bao", tbProp={6, 1, 1665, 1, 0, 0}, nCount = 2,CallBack= _Message,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
		{szName="N�n", tbProp={6, 1, 4399, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
			{szName="N�n", tbProp={6, 1, 4400, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
						{szName="M�t th� v� l�m", tbProp={6,1,1477,1,1,0}, nCount = 1,CallBack= _Message,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
												{szName="M�t th� v� l�m", tbProp={6,1,1477,1,1,0}, nCount = 2,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
	--	{szName="Xu", tbProp={4, 417, 1, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
	--	{szName="Xu", tbProp={4, 417, 1, 1, 0, 0}, nCount = 99,},  -- ph�n th��ng cho nguoi chi�n th�ng cu�i c�ng ��u ng�u v
}

function tbDangBossDailog:GetAward(nStep, nCurCount)
	local nTotalCount = self.tbTask:GetAwardCount()
	
	if nTotalCount == 0 then
		return Talk(1, "", "R�t ti�c, trong ��t ��u ng�u v�a r�i kh�ng ph�i l� ng��i th�ng cu�c ho�c �� nh�n th��ng r�i.")
	end
	
	if nStep == 1 then
		local tbSay = 
		{
			format("<dec><npc>H�m nay c� th� nh�n %d ph�n th��ng, <color=red>(N�u nh� h�m nay kh�ng nh�n ng�y mai s� m�t �i)<color>Ng��i mu�n:", nTotalCount),
		--	format("Nh�n t�t c�/#%s:GetAward(2, %d)", self.szClassName, nTotalCount),
			format("Nh�n th��ng/#%s:GetAward(2, 1)", self.szClassName, 1),
			"K�t th�c ��i tho�i/OnCancel"
		}
		CreateTaskSay(tbSay)
	elseif nStep == 2 then
		if CalcFreeItemCellCount() >= nCurCount then
		AddOwnExp(20000000)
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,random(1326,1329),1,1,0},nCount=1,},}, "test", 1);

			tbAwardTemplet:GiveAwardByList(%tbItem, "Nh�n ph�n th��ng kim ng�u sinh t�n", nCurCount)
			self.tbTask:PayAwardCount(nCurCount)
		else
			Talk(1, "", format("H�nh trang kh�ng �� nh�n %d ph�n th��ng", nTotalCount))
		end
	end	
end

function tbDangBossDailog:IsOpenModule()
	return gb_GetModule("chunjie2009_dangboss")
end

tbDangBossDailog:_init(tbDangBossTaskCtrl)