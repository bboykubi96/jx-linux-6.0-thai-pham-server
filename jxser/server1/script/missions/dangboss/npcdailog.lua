
Include("\\script\\missions\\dangboss\\dangbaossclass.lua")

Include("\\script\\lib\\composeclass.lua")
Include("\\script\\event\\qingren_jieri\\200902\\event.lua");	
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
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
	Talk(1, "", "Ho¹t ®éng t¹m  ®ãng.")
	do return end
	--if self:IsOpenModule() ~= 1 then
	--	return Talk(1, "", "Ho¹t ®éng t¹m  ®ãng.")
	--end
	
	--if self:IsActDay() ~= 1 then
		--return Talk(1, "", "Ho¹t ®éng ®· kÕt thóc.")
	--end
	
	local tbSay = 
	{
		"<dec><npc>“GÇn ®©y quan phñ cã tæ chøc c¸c ho¹t ®éng ®Êu ng­u ë phÝa bªn kia s«ng, xin hái c¸c h¹ cã muèn sang kia kh«ng?",
		format("Ta muèn b¸o danh tham gia ho¹t ®éng ®Êu ng­u/#%s:DailogSignUp(1)", self.szClassName),
		format("Ta lµ ng­êi th¾ng cuéc vµ ®Õn nhËn th­ëng/#%s:GetAward(1)", self.szClassName),
		format("Ta muèn t×m hiÓu ho¹t ®éng ®Êu ng­u/#%s:Explain()", self.szClassName),
		"Ta sÏ quay l¹i sau!/OnCancel",
		
	}
	
	CreateTaskSay(tbSay)
end

function tbDangBossDailog:Explain(nStep)
	local tbSay = 
	{
		"<dec><npc>ng­êi ch¬i cÊp 80 vµ ®· nép thÎ cã thÓ ®Õn ®©y b¸o danh, mçi ®ît chØ ®­îc 100 ng­êi. Mét ng­êi sÏ biÕn th©n thµnh kim ng­u, nh÷ng ng­êi kh¸c sÏ ®Êu ng­u. NÕu nh­ trong vßng 5 phót ®¸nh b¹i kim ng­u th× sÏ ®­îc th­ëng kim ng­u b¶o r­¬ng. NÕu kh«ng th× nh©n vËt biÕn thµnh kim ng­u sÏ ®­îc quan phñ träng th­ëng.",
		"Ta ®· hiÓu råi/OnCancel",
	}
	
	CreateTaskSay(tbSay)
end


function tbDangBossDailog:DailogSignUp(nStep)
	local nMapId = 895
	local nMissionState = tbDangBoss:GetMissionState(nMapId)
if GetCash() < 300000 and nStep == 1 and nMissionState == 1 and GetTask(5440) ~=1 then
Talk(1, "", "Xin lçi lÇn ®Êu ng­u ®Çu tiªn nay cÇn cã 30 v¹n míi cã thÓ thi ®Êu.Trong thêi gian ch­a b¾t ®Çu thi ®Êu víi ng­u nÕu tho¸t ra vµo l¹i sÏ kh«ng bÞ trõ phÝ")
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
				format("<dec><npc>Thêi gian b¸o danh ®· qua, hiÖn t¹i ph¶i chi tr¶ %d ng©n l­îng míi cã thÓ vµo. X¸c nhËn muèn chi tr¶?", nMoney),
				format("§­¬ng nhiªn, ta muèn ®i b¸o thï/#%s:DailogSignUp(2)", self.szClassName),
				"Kh«ng cÇn!/OnCancel",
			}
			return CreateTaskSay(tbSay)
		end
		
	elseif nStep == 2 then
		if nMissionState == 2 then
			nMoney = nContinueCount * 3e5
		end
		
		if GetCash() < nMoney then
			return Talk(1, "", format("Ng©n l­îng kh«ng ®ñ, cÇn %d", nMoney))
		end
	end	
	
	if tbDangBoss:IsPlayerEligible() ~= 1 then
		Talk(1, "", format("CÊp %d trë lªn vµ %s míi cã thÓ tham gia", tbDangBoss.nMinLevel, (tbDangBoss.bIsCharged == 1 and "Nép") or ""))
		return 0
	end
	
	if nMissionState ~= tbDangBoss.READY_STATE and nMissionState ~= tbDangBoss.BATTLE_STATE then
		Talk(1, "", "RÊt tiÕc thêi gian b¸o danh ®· qua. Xin h·y ®îi ®ît sau")
		SetTask(5440,0)
		return 0
	end
	if nPlayerCount >= tbDangBoss.nMaxPlayerCount then
		Talk(1, "", format("Sè ng­êi b¸o danh ®· ®¹t ®Õn %d. RÊt tiÕc, xin h·y ®îi ®ît sau", tbDangBoss.nMaxPlayerCount))
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
		local szNews = format("§¹i hiÖp <color=green>"..GetName().."<color=yellow> §· vµo xu©n phong ®¶o ®Ó §Êu Ng­u<color=blue> (B¸o Danh T¹i L©m An §«ng 201/201)");
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§Êu sÜ <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< khi chiÕn th¾ng cuéc ®Êu ng­u ngµy h«m nay><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local tbItem = 
{
		{szName="ThiÕt La H¸n LÔ Bao", tbProp={6, 1, 1665, 1, 0, 0}, nCount = 2,CallBack= _Message,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
		{szName="NÕn", tbProp={6, 1, 4399, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
			{szName="NÕn", tbProp={6, 1, 4400, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
						{szName="MËt th­ vâ l©m", tbProp={6,1,1477,1,1,0}, nCount = 1,CallBack= _Message,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
												{szName="MËt th­ vâ l©m", tbProp={6,1,1477,1,1,0}, nCount = 2,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
	--	{szName="Xu", tbProp={4, 417, 1, 1, 0, 0}, nCount = 1,CallBack= _Message,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
	--	{szName="Xu", tbProp={4, 417, 1, 1, 0, 0}, nCount = 99,},  -- phÇn th­ëng cho nguoi chiÕn th»ng cuèi cïng ®Êu ng÷u v
}

function tbDangBossDailog:GetAward(nStep, nCurCount)
	local nTotalCount = self.tbTask:GetAwardCount()
	
	if nTotalCount == 0 then
		return Talk(1, "", "RÊt tiÕc, trong ®ît ®Êu ng­u võa råi kh«ng ph¶i lµ ng­êi th¾ng cuéc hoÆc ®· nhËn th­ëng råi.")
	end
	
	if nStep == 1 then
		local tbSay = 
		{
			format("<dec><npc>H«m nay cã thÓ nhËn %d phÇn th­ëng, <color=red>(NÕu nh­ h«m nay kh«ng nhËn ngµy mai sÏ mÊt ®i)<color>Ng­¬i muèn:", nTotalCount),
		--	format("NhËn tÊt c¶/#%s:GetAward(2, %d)", self.szClassName, nTotalCount),
			format("NhËn th­ëng/#%s:GetAward(2, 1)", self.szClassName, 1),
			"KÕt thóc ®èi tho¹i/OnCancel"
		}
		CreateTaskSay(tbSay)
	elseif nStep == 2 then
		if CalcFreeItemCellCount() >= nCurCount then
		AddOwnExp(20000000)
		tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,random(1326,1329),1,1,0},nCount=1,},}, "test", 1);

			tbAwardTemplet:GiveAwardByList(%tbItem, "NhËn phÇn th­ëng kim ng­u sinh tån", nCurCount)
			self.tbTask:PayAwardCount(nCurCount)
		else
			Talk(1, "", format("Hµnh trang kh«ng ®ñ nhËn %d phÇn th­ëng", nTotalCount))
		end
	end	
end

function tbDangBossDailog:IsOpenModule()
	return gb_GetModule("chunjie2009_dangboss")
end

tbDangBossDailog:_init(tbDangBossTaskCtrl)