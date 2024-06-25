Include("\\script\\activitysys\\config\\26\\head.lua")
Include("\\script\\activitysys\\config\\26\\variables.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
local szRemoteScript = "\\script\\event\\2011dayanqunxia\\event.lua"

function pActivity:SuDungHongBao()
	local tbTeacherEXP = { {nExp_tl=1,nCount = 200000000,}, }
	tbAwardTemplet:Give(tbTeacherEXP,1,{%szEventName, "SuDungHongBaoVienNgoai", "SuDungHongBaoVienNgoai"})
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Hång Bao<color> t¹i npc ThÈm Viªn Ngo¹i (T­¬ng D­¬ng 199/200)")
	self:AddTask(%TSK_UseLiBao, 1)
end

function pActivity:PlayerOnLogin()

	if GetTask(3907) ~= 3 then
		SetTask(3907,3)--task kiem tra event dot truoc moi dot event tang len 1
		SetTask(3908,0)--task nhan moc 1000
		SetTask(3909,0)--task event loai 3
		SetTask(3910,0) --ev kvan
		SetTask(3911,0) --ev xu
		SetTask(3912,0) --thuong free event
		--self:SetTask(TSK_UseLiBao,0)
		--self:SetTask(TSK_LiBao,0)
		--self:SetTask(TSK_SuDungNTKT,0)
	end
end

function pActivity:ResetTaskA(TSK_EXP_A, TSK_DATE_A)
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	local nRecordDate = self:GetTask(TSK_DATE_A)
	
	if nCurDate ~= nRecordDate then
		self:SetTask(TSK_DATE_A, nCurDate)
		self:SetTask(TSK_EXP_A, 0)
	end
end

function pActivity:AddTaskA(TSK_EXP_A, TSK_DATE_A, nAddValue)
	self:ResetTaskA(TSK_EXP_A, TSK_DATE_A)
	return self:AddTask(TSK_EXP_A, nAddValue)	
end

function pActivity:GetTaskA(TSK_EXP_A, TSK_DATE_A)
	self:ResetTaskA(TSK_EXP_A, TSK_DATE_A)
	return self:GetTask(TSK_EXP_A)
end

function pActivity:CheckTaskA(TSK_EXP_A, TSK_DATE_A, nUpExpA, szMsgA, nNumber)
	local nCurExpA = self:GetTaskA(TSK_EXP_A, TSK_DATE_A)
	
	local diemtoida = nUpExpA * 1000
	local diemnhanduoc = nCurExpA * 10000

	Msg2Player("H«m nay ®· nhËn ®­îc: "..diemnhanduoc.." ®iÓm kinh nghiÖm")

	if nCurExpA >= nUpExpA then
		if szMsgA ~= nil then
			Talk(1, "", szMsgA)
		end
		return
	end
	return 1
end

function pActivity:CheckTaskB(TSK_B, szMsg, szOption)
	local nValue = self:GetTask(TSK_B)
	if szOption == "==" then
		if nValue == 0 then
			return 1
		end
	elseif szOption == "~=" then
		if nValue ~= 0 then
			return 1
		end
	end
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	return self:CheckTask(TSK_B, nCurDate, szMsg, szOption)
end

function pActivity:GiveEatAward(TSK_EXP_A, TSK_DATE_A, TSK_EXP_B, nNumber)
	local tbAward = 
	{
		{nExp_tl = 1000000, nRate = 40, 
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng­¬i ¨n mét miÕng ' S­ên Xµo Chua Ngät'  nhËn ®­îc  1.000.000 kinh nghiÖm")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 1000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 1000000 / %nNumber)
			end
		},
		{nExp_tl = 2000000, nRate = 30,
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng­¬i g¾p mét miÕng 'C¸ ChÐp Kho Om' ¨n ngon lµnh, nhËn ®­îc 2.000.000 kinh nghiÖm")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 2000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 2000000 / %nNumber)
			end
		},
		{nExp_tl = 3000000, nRate = 20,
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng­¬i lÊy mét miÕng 'Gµ Trèng T¬' ¨n ngon lµnh, nhËn ®­îc 3.000.000 kinh nghiÖm")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 3000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 3000000 / %nNumber)
			end
		},
		{nExp_tl = 5000000, nRate = 10, 
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng­¬i cÇm lªn mét miÕng ' Heo S÷a Quay' ¨n mét miÕng ngon lµnh, nhËn ®­îc 5.000.000 kinh nghiÖm")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 5000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 5000000 / %nNumber)
			end
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "§¹i YÕn QuÇn HiÖp n¨m 2011, ¨n thøc ¨n nhËn ®­îc kinh nghiÖm.", 1)
end

function pActivity:ExpAwardThucAn(nValue, strItemName)
PlayerFunLib:AddExp(nValue, 1, "§¹i YÕn QuÇn HiÖp n¨m 2011, ¨n thøc ¨n nhËn ®­îc kinh nghiÖm")
Talk(1, "", strItemName)
end

function pActivity:GiveEatAward1(TSK_EXP_A, TSK_DATE_A, TSK_EXP_B, nNumber)
	local tbAward = 
	{
		{szName="§iÓm kinh nghiÖm 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(200000,"Ng­¬i ¨n mét miÕng ' S­ên Xµo Chua Ngät'  nhËn ®­îc  200.000 kinh nghiÖm")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 200000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 200000 / %nNumber)
				end,
				nRate = 40,
		},
		{szName="§iÓm kinh nghiÖm 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(300000,"Ng­¬i g¾p mét miÕng 'C¸ ChÐp Kho Om' ¨n ngon lµnh, nhËn ®­îc 300.000 kinh nghiÖm")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 300000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 300000 / %nNumber)
				end,
				nRate = 30,
		},
		{szName="§iÓm kinh nghiÖm 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(700000,"Ng­¬i lÊy mét miÕng 'Gµ Trèng T¬' ¨n ngon lµnh, nhËn ®­îc 700.000 kinh nghiÖm")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 700000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 700000 / %nNumber)
				end,
				nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(1000000,"Ng­¬i cÇm lªn mét miÕng ' Heo S÷a Quay' ¨n mét miÕng ngon lµnh, nhËn ®­îc 1.000.000 kinh nghiÖm")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 1000000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 1000000 / %nNumber)
				end,
				nRate = 10,
		},
	}
	local nTraTienAn = 50000
	local sltien = GetCash()
	if sltien < nTraTienAn then
		Say("§¹i hiÖp kh«ng mang theo ®ñ <color=green>"..nTraTienAn.."<color> ng©n l­îng")
		return
	end

	tbAwardTemplet:GiveAwardByList(tbAward, "§¹i YÕn QuÇn HiÖp n¨m 2011, ¨n thøc ¨n nhËn ®­îc kinh nghiÖm.", 1)
	Pay(nTraTienAn)
	Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color> th­ëng thøc Mãn ¨n <color=yellow>t¹i Bµn TiÖc T­¬ng D­¬ng 197/201<color> nhËn ®­îc ®iÓm kinh nghiÖm")
end

function pActivity:CheckNotGetDrunk(nSkillId, szMsg)
	if GetSkillState(nSkillId) == -1 then
		return 1
	end
	Talk(1, "", szMsg)
end

function pActivity:CheckGetDrunk(nSkillId, szMsg)
	local nValue = self:CheckNotGetDrunk(nSkillId)
	if nValue ~= 1 then
		return 1
	end
	Talk(1, "", szMsg)
end

function pActivity:DrinkOneRound(TSK_A, TSK_B, TSK_Time, TSK_Round, TSK_AwardB, TSK_AwardC, TSK_Date, nSkillId, szKind, nDetailId)

	local nAddValueA = nil
	local nAddValueB = nil
	if szKind == "small" then
		nAddValueA = random(1, 6)
		nAddValueB = 3
	elseif szKind == "middle" then
		nAddValueA = random(2, 12)
		nAddValueB = 7
	elseif szKind == "big" then
		nAddValueA = random(3, 18)
		nAddValueB = 11
	end
	--TSK_AwardB:¶·¾Æ³É¹¦½±  TSK_AwardC:°²Î¿½±
	self:AddTask(TSK_A, nAddValueA)--¾ÆÒâ
	self:AddTask(TSK_B, nAddValueB)--¾ÆÁ¿
	
	local nValueA = self:GetTask(TSK_A)
	local nValueB = self:GetTask(TSK_B)
	
	if nValueA >= 100 then
		self:SetTask(TSK_AwardC, 1) --ÓÐ°²Î¿½±ÒªÁì
		self:AddTaskDaily(TSK_Time, 1)--³¡Êý¼Ó1
		self:SetTask(TSK_Round, 0)--ÂÖÊýÇåÁã
		self:SetTask(TSK_A, 0)--¾ÆÒâÇåÁã
		self:SetTask(TSK_B, 0)--¾ÆÁ¿ÇåÁã
		PlayerFunLib:AddSkillState(nSkillId, 1, 3, 30 * 60 * 18, 1)
		Talk(1, "", "Ng­¬i ®· uèng say råi, ãi möa ra c¶ ®Êt kia k×a, nhanh ®i nhËn th­ëng an ñi ®i")
	else
		self:AddTask(TSK_Round, 1)--ÂÖÊý¼Ó1
		local nRound = self:GetTask(TSK_Round)
		if nRound >= 12 then
			self:SetTask(TSK_AwardB, 1) --ÓÐ¶·¾Æ³É¹¦½±ÒªÁì
			self:AddTaskDaily(TSK_Time, 1)--³¡Êý¼Ó1
			self:SetTask(TSK_Round, 0)--ÂÖÊýÇåÁã
			self:SetTask(TSK_A, 0)--¾ÆÒâÇåÁã
			self:AddJiuLiang(nValueB)
			self:SetTask(TSK_B, 0)--¾ÆÁ¿ÇåÁã
			local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
			self:SetTask(TSK_Date, nCurDate)			
			Talk(1, "", "TrËn ®Êu r­îu lÇn nµy ng­¬i thµnh c«ng råi!")
		else
			self:ExecActivityDetail(nDetailId)
		end
	end
	
end

function pActivity:AddJiuLiang(nValue)
	local obj = ObjBuffer:New()
	local szName = GetName()
	obj:Push(szName)
	obj:Push(nValue)
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	obj:Push(nCurDate)
	RemoteExecute(%szRemoteScript, "tbQunXia:g2s_AddJiuLiang", obj.m_Handle)
	obj:Destroy()	
end

function pActivity:GetTitle(TSK_A, TSK_B, TSK_C)
	local nValueA = self:GetTask(TSK_A)
	local nValueB = self:GetTask(TSK_B)
	local nValueC = self:GetTask(TSK_C)
	local szTitle = "TrËn ®Êu r­îu lÇn nµy ng­¬i ph¶i uèng hÕt 12 l­ît r­îu, ng­¬i ®· uèng %d l­ît r­îu, ®é say xØn tr­íc m¾t cña ng­¬i lµ %d, trËn ®Êu r­îu lÇn nµy ng­¬i ®· nhËn ®­îc töu l­îng lµ %d, uèng 1 b¸t r­îu nhá sÏ lµm t¨ng 1-6 ®é say xØn, uèng mét b¸t rùîu trung sÏ lµm t¨ng 2-12 ®é say xØn, t¨ng 7 l­îng töu l­îng, uèng mét b¸t r­îu lín sÏ lµm t¨ng 3-18 ®é say xØn, t¨ng 11 l­îng töu l­îng."
	szTitle = format(szTitle, nValueA, nValueB, nValueC)
	return szTitle
end

function pActivity:Lose(TSK_A, TSK_B, TSK_C, TSK_D, TSK_E)
	--TSK_A:³¡Êý  TSK_B£ºÂÖÊý   TSK_C£º×íÒâ  TSK_D: °²Î¿½±
	self:AddTaskDaily(TSK_A, 1)--³¡Êý¼Ó1
	self:SetTask(TSK_B, 0)--ÂÖÊýÇåÁã
	self:SetTask(TSK_C, 0)--×íÒâÇåÁã
	self:SetTask(TSK_D, 1)--ÓÐ°²Î¿½±Áì
	self:SetTask(TSK_E, 1)--¾ÆÁ¿ÇåÁã
end

function pActivity:AddDialogNpc(szNpcName, nNpcId, tbNpcPos)
	self:AddNpc(szNpcName, nNpcId, tbNpcPos,  "\\script\\activitysys\\npcdailog.lua")
end

function pActivity:AddNpc(szNpcName, nNpcId, tbNpcPos, szLuaFile)
	for i=1, getn(tbNpcPos) do
		local pPos = tbNpcPos[i]
		local nMapIndex = SubWorldID2Idx(pPos[1])
		if nMapIndex > 0 then
			local nNpcIndex = AddNpc(nNpcId, 1, nMapIndex, pPos[2] * 32, pPos[3] * 32, 0, szNpcName);
			if szLuaFile ~= nil then
				SetNpcScript(nNpcIndex, szLuaFile)
			end
		end		
	end
end

function pActivity:AddNpcFromFile(szNpcName, nNpcId, szPosPath, nMapId)
	if (TabFile_Load(szPosPath, szPosPath) == 0) then
		print("Load TabFile Error!"..szPosPath)
		return 0
	end	
	local tbNpcPos = {}
	local nRowCount = TabFile_GetRowCount(szPosPath)
	for nRow = 2, nRowCount do
		tbNpcPos[nRow - 1] = {}
		tbNpcPos[nRow - 1][1] = nMapId
		local nX = TabFile_GetCell(szPosPath, nRow, 1)
		local nY = TabFile_GetCell(szPosPath, nRow, 2)
		tbNpcPos[nRow - 1][2] = nX
		tbNpcPos[nRow - 1][3] = nY
	end
	self:AddNpc(szNpcName, nNpcId, tbNpcPos)
end

function pActivity:AddMulNpc(tbNpcInfos, szNpcName, nNpcId)
	local nCount = getn(tbNpcInfos)
	for i = 1, nCount do
		self:AddNpcFromFile(szNpcName, nNpcId, tbNpcInfos[i]["szPosPath"], tbNpcInfos[i]["nMapId"])
	end
end

function pActivity:DisplayCurJiuLiang()
	local obj = ObjBuffer:New()
	local szName = GetName()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	obj:Push(szName)	
	obj:Push(nCurDate)
	DynamicExecute("\\script\\activitysys\\config\\26\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbQunXia:g2s_QueryPlayerJiuLiang", obj.m_Handle, "pActivity:ReceiveCurJiuLiang", 0)
	obj:Destroy()
end

function pActivity:ReceiveCurJiuLiang(nParam, ResultHandle)
	local szName = ObjBuffer:PopObject(ResultHandle)
	local nJiuLiang = ObjBuffer:PopObject(ResultHandle)
	local szMsg = format("%-32s%-10d\n", szName, nJiuLiang)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		local szTitle = format("%-32s%-10s\n", "Tªn", "Töu L­îng h«m nay")
		CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szTitle..szMsg, {{"KÕt thóc ®èi tho¹i"}})
	end
end

function pActivity:JieJiu(nSkillId)
	RemoveSkillState(nSkillId)
end

function pActivity:CheckDrinkTime(nStartHour, nEndHour, szMsg)
	local nCurHour = tonumber(GetLocalDate("%H"))
	if (nCurHour >= nStartHour and nCurHour <= nEndHour) then
		return 1
	end
	Talk(1, "", szMsg)
end

function pActivity:GetDrinkAward(TSK_EXP_A, nUpExpA, nAddExpA, szMsg, szOption, nNumber, szLogTitle)
	if self:CheckTask(TSK_EXP_A, nUpExpA, szMsg, szOption) ~= 1 then
		return
	end
	PlayerFunLib:AddExp(nAddExpA, 1, szLogTitle)
	self:AddTask(TSK_EXP_A, nAddExpA / nNumber)
	return 1
end

function pActivity:GetPaiMingAward()
	local nDate = self:GetTask(%TSK_LastTimeDate)
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if nDate == 0 or nDate >= nCurDate then
		Talk(1, "", "ThiÕu HiÖp tr­íc m¾t ng­¬i vÉn ch­a cã phÇn th­ëng ®Ó nhËn")
		return
	end
	self:GetFixCountData(nDate, 10, GetName())
end

function pActivity:GetFixCountData(nDate, nCount, szName)
	local obj = ObjBuffer:New()
	obj:Push(nDate)
	obj:Push(nCount)
	obj:Push(szName)
	DynamicExecute("\\script\\activitysys\\config\\26\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbQunXia:g2s_LoadFixCountData", obj.m_Handle, "pActivity:ReceiveFixCountData", 0)
	obj:Destroy()	
end

function pActivity:ReceiveFixCountData(nParam, ResultHandle)
	local szName = ObjBuffer:PopObject(ResultHandle)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex == nil or nPlayerIndex <= 0 then
		return
	end
	local nResult = DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:CheckTaskB", %TSK_LastTimeDate, "ThiÕu HiÖp ng­¬i ®· nhËn phÇn th­ëng xÕp h¹ng råi", "~=")
	if  nResult ~= 1 then
		return
	end
	
	local tbTopTen = ObjBuffer:PopObject(ResultHandle)
	local nCount = 0
	if tbTopTen ~= nil then
		nCount = getn(tbTopTen)
	end
	if nCount == 0 then
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "ThiÕu HiÖp ng­¬i t¹m thêi ch­a cã phÇn th­ëng ®Ó nhËn")
		return
	end
	local nPos = -1
	for i = 1, nCount do
		if tbTopTen[i] ~= nil and tbTopTen[i][1] ~= nil then
			if tbTopTen[i][1] == szName then
				nPos = i
				break
			end
		end
	end
	if nPos == -1 then
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "ThiÕu HiÖp ng­¬i t¹m thêi ch­a cã phÇn th­ëng ®Ó nhËn")
		return
	end
	local nAddExpA = 0
	if nPos == 1 then
		nAddExpA = %tbPaiMingExp[1]
	elseif nPos == 2 then
		nAddExpA = %tbPaiMingExp[2]
	elseif nPos == 3 then
		nAddExpA = %tbPaiMingExp[3]
	else
		nAddExpA = %tbPaiMingExp[4]
	end
	local bFlag = DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:GetDrinkAward", 
		%TSK_TotalDrinkExp, %nTotalDrinkUpExp, nAddExpA, "ThiÕu HiÖp ng­¬i tham gia ®Êu r­îu nhËn ®­îc kinh nghiÖm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ tiÕp tôc nhËn nh÷ng phÇn th­ëng cã liªn quan ®Õn ®Êu r­îu", "<", %nNumber, "§¹i YÕn QuÇn HiÖp n¨m 2011, nhËn phÇn th­ëng xÕp h¹ng ®Êu r­îu.")
	DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:SetTask", %TSK_LastTimeDate, 0)
	if bFlag == 1 then
		local szMsg = ""
		if nPos >= 4 then
			szMsg = "§· nhËn phÇn th­ëng xÕp h¹ng ®Êu r­îu xÕp h¹ng tõ 4-10 thµnh c«ng."
		else
			szMsg = format("§· nhËn phÇn th­ëng xÕp h¹ng ®Êu r­îu xÕp h¹ng cÊp thø %d( xÕp h¹ng thø %d) thµnh c«ng", nPos, nPos)
		end
		CallPlayerFunction(nPlayerIndex, Msg2Player, szMsg)
	end
end

function pActivity:GetYDate()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	local nTime = GetCurServerTime() - 24*60*60
	local tbYDate = Time2Tm(nTime)
	local nYDate = tbYDate[1] * 10000 + tbYDate[2] * 100 + tbYDate[3]
	return nYDate
end

function pActivity:DisplayCurTopTen()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	local szName = GetName()
	local obj = ObjBuffer:New()
	obj:Push(nCurDate)
	obj:Push(szName)
	DynamicExecute("\\script\\activitysys\\config\\26\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbQunXia:g2s_QueryTopTen", obj.m_Handle, "pActivity:ReceiveTopTen", 0)
	obj:Destroy()	
end

function pActivity:DisplayYTopTen()
	local nTime = tonumber(GetLocalDate("%H%M"))
	if nTime >= 0 and nTime <= 5 then
		Talk(1, "", "Tr­íc m¾t vÉn ch­a cã xÕp h¹ng")
		return
	end	
	local nYDate = self:GetYDate()
	local szName = GetName()
	local obj = ObjBuffer:New()
	obj:Push(nYDate)
	obj:Push(szName)
	DynamicExecute("\\script\\activitysys\\config\\26\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbQunXia:g2s_QueryTopTen", obj.m_Handle, "pActivity:ReceiveTopTen", 0)
	obj:Destroy()		
end

function pActivity:ReceiveTopTen(nParam, ResultHandle)
	local szName = ObjBuffer:PopObject(ResultHandle)
	local tbTopTen = ObjBuffer:PopObject(ResultHandle)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex == nil or nPlayerIndex <= 0 then
		return
	end
	local szMsg = "Tr­íc m¾t vÉn ch­a cã xÕp h¹ng"
	if tbTopTen ~= nil then
		local nCount = getn(tbTopTen)
		if nCount == 0 then
			CallPlayerFunction(nPlayerIndex, Talk, 1, "", szMsg)
			return
		end
		local szPaiMing = format("%-32s%-10s\n", "Tªn", "Töu L­îng")
		for i = 1, nCount do
			local szTemp = format("%-32s%-10d\n", tbTopTen[i][1], tbTopTen[i][2])
			szPaiMing = szPaiMing..szTemp
		end
		CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szPaiMing, {{"KÕt thóc ®èi tho¹i"}})
	else
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", szMsg)
	end
end

function pActivity:DisplayPlayerPaiMing(nDate, szFun)
	local szName = GetName()
	local obj = ObjBuffer:New()
	obj:Push(szName)	
	obj:Push(nDate)
	DynamicExecute("\\script\\activitysys\\config\\26\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbQunXia:g2s_QueryPlayerPaiMing", obj.m_Handle, szFun, 0)
	obj:Destroy()		
end

function pActivity:DisplayYPlayerPaiMing()
	local nTime = tonumber(GetLocalDate("%H%M"))
	if nTime >= 0 and nTime <= 5 then
		Talk(1, "", "Tr­íc m¾t vÉn ch­a cã xÕp h¹ng")
		return
	end	
	local nYDate = self:GetYDate()	
	self:DisplayPlayerPaiMing(nYDate, "pActivity:ReceivePlayerPaiMing")
end

function pActivity:ReceivePlayerPaiMing(nParam, ResultHandle)
	local szName = ObjBuffer:PopObject(ResultHandle)
	local nPaiMing = ObjBuffer:PopObject(ResultHandle)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex == nil or nPlayerIndex <= 0 then
		return
	end
	if nPaiMing == nil then
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "ThiÕu HiÖp tr­íc m¾t ng­¬i ch­a cã xÕp h¹ng Töu L­îng cña ngµy h«m tr­íc")
		return
	end
	local szPaiMing = format("%-32s%-10d\n", szName, nPaiMing)
	local szTitle = format("%-32s%-10s\n", "Tªn", "XÕp h¹ng ngµy h«m tr­íc")
	CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szTitle..szPaiMing, {{"KÕt thóc ®èi tho¹i"}})
end

function pActivity:CheckPaiMing()
	local nResult = self:CheckTaskB(%TSK_LastTimeDate, nil, "==")
	if nResult ~= 1 then
		local nDate = self:GetTask(%TSK_LastTimeDate)
		self:DisplayPlayerPaiMing(nDate, "pActivity:CheckRePaiMing")
	else
		self:pCreateDialog()
	end
end

function pActivity:CheckRePaiMing(nParam, ResultHandle)
	local szName = ObjBuffer:PopObject(ResultHandle)
	local nPaiMing = ObjBuffer:PopObject(ResultHandle)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex == nil or nPlayerIndex <= 0 then
		return
	end
	if nPaiMing ~= nil and nPaiMing >= 1 and nPaiMing <= 10 then
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "Tr­íc khi tham gia trËn ®Êu r­îu nµy cÇn ph¶i nhËn hÕt tÊt c¶ phÇn th­ëng cña trËn ®Êu r­îu tr­íc( phÇn th­ëng an ñi, phÇn th­ëng ®Êu r­îu thµnh c«ng, phÇn th­ëng xÕp h¹ng ) xin h·y ®i nhËn hÕt nh÷ng phÇn th­ëng nµy ®i råi h·y ®Õn tham gia nhÐ")	
	else
		DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:SetTask", %TSK_LastTimeDate, 0)
		DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:pCreateDialog")
	end
end

function pActivity:UseNTKT()

	local nUsedCount = self:GetTask(%TSK_SuDungNTKT)
	local nCurCount = nUsedCount + 1
	Msg2Player("Sö dông lÇn thø: " ..nCurCount.."")

	if nCurCount > 1000 then
		Talk(1, "", "Sö dông vËt phÈm ®¹t giíi h¹n, kh«ng thÓ sö dông thªm.")
		return nil
	end
	self:SetTask(%TSK_SuDungNTKT, nCurCount)	

	--Diem kn mac dinh
	local tbExpAward = 
	{
		[1] = {szName = "§iÓm kinh nghiÖm", nExp = 1500000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})

	--Diem kn dat moc
	local tbBonusAward = {
		[500] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 150000000},},
		[600] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 160000000},},
		[700] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 170000000},},
		[800] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 180000000},},
		[900] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 190000000},
			{szName = "MÆt n¹ V­¬ng Gi¶", tbProp = {0,11,561,1,0,0}, nExpiredTime = 60*24*15, nCount=1},
			{szName = "ThÊt tinh th¶o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B¸ch niªn thÊt tinh th¶o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thiªn niªn thÊt tinh th¶o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B¾c §Èu truyÒn c«ng thuËt", tbProp={6,1,1672,1,0,0},nCount=1, },
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 7000000000}, 
			{szName = "NhÊt kû cµn kh«n phï",	tbProp = {6,1,2126,1,0,0},nCount=1,},
			{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=50,},
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanVatPhamNguThaiKetTinh", nCurCount)})
		local msgtbao = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Event ®Õn mèc <color=yellow>"..nCurCount.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý"
		Msg2SubWorld(msgtbao)
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "Kim tª",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			{szName = "HuyÒn tinh cÊp 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "HuyÒn tinh cÊp 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "HuyÒn tinh cÊp 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "HuyÒn tinh cÊp 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "HuyÒn tinh cÊp 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			{szName="M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},

			{szName = "§iÓm Kinh NghiÖm", nExp=2000000,nRate=1},
			{szName = "§iÓm Kinh NghiÖm", nExp=4000000,nRate=1},
			{szName = "§iÓm Kinh NghiÖm", nExp=6000000,nRate=1},
			{szName = "§iÓm Kinh NghiÖm", nExp=8000000,nRate=1},
			{szName = "§iÓm Kinh NghiÖm", nExp=10000000,nRate=0.01},
			{szName = "§iÓm Kinh NghiÖm", nExp=15000000,nRate=0.01},

			{szName = "LÖnh bµi hoµn thµnh D· TÈu",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
			{szName = "Cèng HiÕn LÔ bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
			{szName = "Cèng HiÕn §¹i LÔ bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
			{szName = "KiÕn ThiÕt LÔ Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
			{szName = "KiÕn ThiÕt §¹i LÔ Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
			{szName = "ChiÕn BÞ LÔ Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
			{szName = "ChiÕn BÞ §¹i LÔ Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=1},
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},

			{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
			{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})

end

function pActivity:pCreateDialog()
	local tbDailog = DailogClass:new()
	tbDailog.szTitleMsg = self:GetTitle(%TSK_DrinkRound, %TSK_ZuiYi, %TSK_JiuLiang)
	tbDailog:AddOptEntry("Uèng mét b¸t r­îu nhá", self.GotoDetail, {self, 6, {tbDailog}})
	tbDailog:AddOptEntry("Uèng 1 B¸t R­îu Trung", self.GotoDetail, {self, 7, {tbDailog}})
	tbDailog:AddOptEntry("Uèng mét b¸t r­îu lín", self.GotoDetail, {self, 8, {tbDailog}})
	tbDailog:AddOptEntry("Ta uèng hÕt nçi råi, trËn §Êu R­îu nµy ta chÞu thua", self.GotoDetail, {self, 9, {tbDailog}})
	tbDailog:Show()
end

function pActivity:BeginDrink()
	if self:CheckDate() ~= 1 then
		return
	end
		
	if self:CheckDrinkTime(9, 23, "ThiÕu HiÖp b©y giê kh«ng ph¶i lµ thêi gian ®Êu r­îu, ngµy mai vµo lóc 9h-24h h·y ®Õn chç cña ta ®Êu r­îu nhÐ") ~= 1 then
		return
	end
	
	if self:CheckTaskDaily(%TSK_DrinkTimes, 3, "H«m nay ®· uèng ®ñ 3 trËn r­îu råi, ngµy mai h·y quay l¹i nhÐ", "<") ~= 1 then
		return
	end
	
	if self:CheckNotGetDrunk(1020, "ThiÕu HiÖp ng­¬i ®· uèng say råi, ®îi tØnh r­îu råi l¹i ®Õn nhÐ") ~= 1 then
		return
	end
	
	if self:CheckTask(%TSK_WinDrink, 0, "Tr­íc khi tham gia trËn ®Êu r­îu nµy cÇn ph¶i nhËn hÕt tÊt c¶ phÇn th­ëng cña trËn ®Êu r­îu tr­íc( phÇn th­ëng an ñi, phÇn th­ëng ®Êu r­îu thµnh c«ng, phÇn th­ëng xÕp h¹ng ) xin h·y ®i nhËn hÕt nh÷ng phÇn th­ëng nµy ®i råi h·y ®Õn tham gia nhÐ", "==") ~= 1 then
		return
	end
	
	if self:CheckTask(%TSK_AnWei, 0, "Tr­íc khi tham gia trËn ®Êu r­îu nµy cÇn ph¶i nhËn hÕt tÊt c¶ phÇn th­ëng cña trËn ®Êu r­îu tr­íc( phÇn th­ëng an ñi, phÇn th­ëng ®Êu r­îu thµnh c«ng, phÇn th­ëng xÕp h¹ng ) xin h·y ®i nhËn hÕt nh÷ng phÇn th­ëng nµy ®i råi h·y ®Õn tham gia nhÐ", "==") ~= 1 then
		return
	end
	
	self:CheckPaiMing()
end







