Include("\\script\\activitysys\\config\\26\\head.lua")
Include("\\script\\activitysys\\config\\26\\variables.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
local szRemoteScript = "\\script\\event\\2011dayanqunxia\\event.lua"

function pActivity:SuDungHongBao()
	local tbTeacherEXP = { {nExp_tl=1,nCount = 200000000,}, }
	tbAwardTemplet:Give(tbTeacherEXP,1,{%szEventName, "SuDungHongBaoVienNgoai", "SuDungHongBaoVienNgoai"})
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>H�ng Bao<color> t�i npc Th�m Vi�n Ngo�i (T��ng D��ng 199/200)")
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

	Msg2Player("H�m nay �� nh�n ���c: "..diemnhanduoc.." �i�m kinh nghi�m")

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
				Talk(1, "", "Ng��i �n m�t mi�ng ' S��n X�o Chua Ng�t'  nh�n ���c  1.000.000 kinh nghi�m")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 1000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 1000000 / %nNumber)
			end
		},
		{nExp_tl = 2000000, nRate = 30,
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng��i g�p m�t mi�ng 'C� Ch�p Kho Om' �n ngon l�nh, nh�n ���c 2.000.000 kinh nghi�m")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 2000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 2000000 / %nNumber)
			end
		},
		{nExp_tl = 3000000, nRate = 20,
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng��i l�y m�t mi�ng 'G� Tr�ng T�' �n ngon l�nh, nh�n ���c 3.000.000 kinh nghi�m")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 3000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 3000000 / %nNumber)
			end
		},
		{nExp_tl = 5000000, nRate = 10, 
			pFun = function(tbItem, nItemCount, szLogTitle)
				Talk(1, "", "Ng��i c�m l�n m�t mi�ng ' Heo S�a Quay' �n m�t mi�ng ngon l�nh, nh�n ���c 5.000.000 kinh nghi�m")
				%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 5000000 / %nNumber)
				%self:AddTask(%TSK_EXP_B, nItemCount * 5000000 / %nNumber)
			end
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "��i Y�n Qu�n Hi�p n�m 2011, �n th�c �n nh�n ���c kinh nghi�m.", 1)
end

function pActivity:ExpAwardThucAn(nValue, strItemName)
PlayerFunLib:AddExp(nValue, 1, "��i Y�n Qu�n Hi�p n�m 2011, �n th�c �n nh�n ���c kinh nghi�m")
Talk(1, "", strItemName)
end

function pActivity:GiveEatAward1(TSK_EXP_A, TSK_DATE_A, TSK_EXP_B, nNumber)
	local tbAward = 
	{
		{szName="�i�m kinh nghi�m 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(200000,"Ng��i �n m�t mi�ng ' S��n X�o Chua Ng�t'  nh�n ���c  200.000 kinh nghi�m")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 200000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 200000 / %nNumber)
				end,
				nRate = 40,
		},
		{szName="�i�m kinh nghi�m 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(300000,"Ng��i g�p m�t mi�ng 'C� Ch�p Kho Om' �n ngon l�nh, nh�n ���c 300.000 kinh nghi�m")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 300000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 300000 / %nNumber)
				end,
				nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(700000,"Ng��i l�y m�t mi�ng 'G� Tr�ng T�' �n ngon l�nh, nh�n ���c 700.000 kinh nghi�m")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 700000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 700000 / %nNumber)
				end,
				nRate = 20,
		},
		{szName="�i�m kinh nghi�m 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%self:ExpAwardThucAn(1000000,"Ng��i c�m l�n m�t mi�ng ' Heo S�a Quay' �n m�t mi�ng ngon l�nh, nh�n ���c 1.000.000 kinh nghi�m")
					%self:AddTaskA(%TSK_EXP_A, %TSK_DATE_A, nItemCount * 1000000 / %nNumber)
					%self:AddTask(%TSK_EXP_B, nItemCount * 1000000 / %nNumber)
				end,
				nRate = 10,
		},
	}
	local nTraTienAn = 50000
	local sltien = GetCash()
	if sltien < nTraTienAn then
		Say("��i hi�p kh�ng mang theo �� <color=green>"..nTraTienAn.."<color> ng�n l��ng")
		return
	end

	tbAwardTemplet:GiveAwardByList(tbAward, "��i Y�n Qu�n Hi�p n�m 2011, �n th�c �n nh�n ���c kinh nghi�m.", 1)
	Pay(nTraTienAn)
	Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color> th��ng th�c M�n �n <color=yellow>t�i B�n Ti�c T��ng D��ng 197/201<color> nh�n ���c �i�m kinh nghi�m")
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
	--TSK_AwardB:���Ƴɹ���  TSK_AwardC:��ο��
	self:AddTask(TSK_A, nAddValueA)--����
	self:AddTask(TSK_B, nAddValueB)--����
	
	local nValueA = self:GetTask(TSK_A)
	local nValueB = self:GetTask(TSK_B)
	
	if nValueA >= 100 then
		self:SetTask(TSK_AwardC, 1) --�а�ο��Ҫ��
		self:AddTaskDaily(TSK_Time, 1)--������1
		self:SetTask(TSK_Round, 0)--��������
		self:SetTask(TSK_A, 0)--��������
		self:SetTask(TSK_B, 0)--��������
		PlayerFunLib:AddSkillState(nSkillId, 1, 3, 30 * 60 * 18, 1)
		Talk(1, "", "Ng��i �� u�ng say r�i, �i m�a ra c� ��t kia k�a, nhanh �i nh�n th��ng an �i �i")
	else
		self:AddTask(TSK_Round, 1)--������1
		local nRound = self:GetTask(TSK_Round)
		if nRound >= 12 then
			self:SetTask(TSK_AwardB, 1) --�ж��Ƴɹ���Ҫ��
			self:AddTaskDaily(TSK_Time, 1)--������1
			self:SetTask(TSK_Round, 0)--��������
			self:SetTask(TSK_A, 0)--��������
			self:AddJiuLiang(nValueB)
			self:SetTask(TSK_B, 0)--��������
			local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
			self:SetTask(TSK_Date, nCurDate)			
			Talk(1, "", "Tr�n ��u r��u l�n n�y ng��i th�nh c�ng r�i!")
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
	local szTitle = "Tr�n ��u r��u l�n n�y ng��i ph�i u�ng h�t 12 l��t r��u, ng��i �� u�ng %d l��t r��u, �� say x�n tr��c m�t c�a ng��i l� %d, tr�n ��u r��u l�n n�y ng��i �� nh�n ���c t�u l��ng l� %d, u�ng 1 b�t r��u nh� s� l�m t�ng 1-6 �� say x�n, u�ng m�t b�t r��u trung s� l�m t�ng 2-12 �� say x�n, t�ng 7 l��ng t�u l��ng, u�ng m�t b�t r��u l�n s� l�m t�ng 3-18 �� say x�n, t�ng 11 l��ng t�u l��ng."
	szTitle = format(szTitle, nValueA, nValueB, nValueC)
	return szTitle
end

function pActivity:Lose(TSK_A, TSK_B, TSK_C, TSK_D, TSK_E)
	--TSK_A:����  TSK_B������   TSK_C������  TSK_D: ��ο��
	self:AddTaskDaily(TSK_A, 1)--������1
	self:SetTask(TSK_B, 0)--��������
	self:SetTask(TSK_C, 0)--��������
	self:SetTask(TSK_D, 1)--�а�ο����
	self:SetTask(TSK_E, 1)--��������
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
		local szTitle = format("%-32s%-10s\n", "T�n", "T�u L��ng h�m nay")
		CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szTitle..szMsg, {{"K�t th�c ��i tho�i"}})
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
		Talk(1, "", "Thi�u Hi�p tr��c m�t ng��i v�n ch�a c� ph�n th��ng �� nh�n")
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
	local nResult = DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:CheckTaskB", %TSK_LastTimeDate, "Thi�u Hi�p ng��i �� nh�n ph�n th��ng x�p h�ng r�i", "~=")
	if  nResult ~= 1 then
		return
	end
	
	local tbTopTen = ObjBuffer:PopObject(ResultHandle)
	local nCount = 0
	if tbTopTen ~= nil then
		nCount = getn(tbTopTen)
	end
	if nCount == 0 then
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "Thi�u Hi�p ng��i t�m th�i ch�a c� ph�n th��ng �� nh�n")
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
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "Thi�u Hi�p ng��i t�m th�i ch�a c� ph�n th��ng �� nh�n")
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
		%TSK_TotalDrinkExp, %nTotalDrinkUpExp, nAddExpA, "Thi�u Hi�p ng��i tham gia ��u r��u nh�n ���c kinh nghi�m �� ��t ��n gi�i h�n, kh�ng th� ti�p t�c nh�n nh�ng ph�n th��ng c� li�n quan ��n ��u r��u", "<", %nNumber, "��i Y�n Qu�n Hi�p n�m 2011, nh�n ph�n th��ng x�p h�ng ��u r��u.")
	DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:SetTask", %TSK_LastTimeDate, 0)
	if bFlag == 1 then
		local szMsg = ""
		if nPos >= 4 then
			szMsg = "�� nh�n ph�n th��ng x�p h�ng ��u r��u x�p h�ng t� 4-10 th�nh c�ng."
		else
			szMsg = format("�� nh�n ph�n th��ng x�p h�ng ��u r��u x�p h�ng c�p th� %d( x�p h�ng th� %d) th�nh c�ng", nPos, nPos)
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
		Talk(1, "", "Tr��c m�t v�n ch�a c� x�p h�ng")
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
	local szMsg = "Tr��c m�t v�n ch�a c� x�p h�ng"
	if tbTopTen ~= nil then
		local nCount = getn(tbTopTen)
		if nCount == 0 then
			CallPlayerFunction(nPlayerIndex, Talk, 1, "", szMsg)
			return
		end
		local szPaiMing = format("%-32s%-10s\n", "T�n", "T�u L��ng")
		for i = 1, nCount do
			local szTemp = format("%-32s%-10d\n", tbTopTen[i][1], tbTopTen[i][2])
			szPaiMing = szPaiMing..szTemp
		end
		CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szPaiMing, {{"K�t th�c ��i tho�i"}})
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
		Talk(1, "", "Tr��c m�t v�n ch�a c� x�p h�ng")
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
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "Thi�u Hi�p tr��c m�t ng��i ch�a c� x�p h�ng T�u L��ng c�a ng�y h�m tr��c")
		return
	end
	local szPaiMing = format("%-32s%-10d\n", szName, nPaiMing)
	local szTitle = format("%-32s%-10s\n", "T�n", "X�p h�ng ng�y h�m tr��c")
	CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szTitle..szPaiMing, {{"K�t th�c ��i tho�i"}})
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
		CallPlayerFunction(nPlayerIndex, Talk, 1, "", "Tr��c khi tham gia tr�n ��u r��u n�y c�n ph�i nh�n h�t t�t c� ph�n th��ng c�a tr�n ��u r��u tr��c( ph�n th��ng an �i, ph�n th��ng ��u r��u th�nh c�ng, ph�n th��ng x�p h�ng ) xin h�y �i nh�n h�t nh�ng ph�n th��ng n�y �i r�i h�y ��n tham gia nh�")	
	else
		DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:SetTask", %TSK_LastTimeDate, 0)
		DynamicExecuteByPlayer(nPlayerIndex, "\\script\\activitysys\\config\\26\\extend.lua", "pActivity:pCreateDialog")
	end
end

function pActivity:UseNTKT()

	local nUsedCount = self:GetTask(%TSK_SuDungNTKT)
	local nCurCount = nUsedCount + 1
	Msg2Player("S� d�ng l�n th�: " ..nCurCount.."")

	if nCurCount > 1000 then
		Talk(1, "", "S� d�ng v�t ph�m ��t gi�i h�n, kh�ng th� s� d�ng th�m.")
		return nil
	end
	self:SetTask(%TSK_SuDungNTKT, nCurCount)	

	--Diem kn mac dinh
	local tbExpAward = 
	{
		[1] = {szName = "�i�m kinh nghi�m", nExp = 1500000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})

	--Diem kn dat moc
	local tbBonusAward = {
		[500] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 150000000},},
		[600] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 160000000},},
		[700] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 170000000},},
		[800] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 180000000},},
		[900] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 190000000},
			{szName = "M�t n� V��ng Gi�", tbProp = {0,11,561,1,0,0}, nExpiredTime = 60*24*15, nCount=1},
			{szName = "Th�t tinh th�o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B�ch ni�n th�t tinh th�o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thi�n ni�n th�t tinh th�o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B�c ��u truy�n c�ng thu�t", tbProp={6,1,1672,1,0,0},nCount=1, },
		},
		[1000] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 7000000000}, 
			{szName = "Nh�t k� c�n kh�n ph�",	tbProp = {6,1,2126,1,0,0},nCount=1,},
			{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=50,},
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanVatPhamNguThaiKetTinh", nCurCount)})
		local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Event ��n m�c <color=yellow>"..nCurCount.."<color>, nh�n ���c ph�n th��ng nh� �"
		Msg2SubWorld(msgtbao)
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			{szName = "Huy�n tinh c�p 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "Huy�n tinh c�p 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "Huy�n tinh c�p 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "Huy�n tinh c�p 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "Huy�n tinh c�p 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			{szName="M�nh T�ng B�o �� 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},

			{szName = "�i�m Kinh Nghi�m", nExp=2000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=4000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=6000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=8000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=0.01},
			{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=0.01},

			{szName = "L�nh b�i ho�n th�nh D� T�u",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
			{szName = "C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
			{szName = "C�ng Hi�n ��i L� bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
			{szName = "Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
			{szName = "Ki�n Thi�t ��i L� Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
			{szName = "Chi�n B� L� Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
			{szName = "Chi�n B� ��i L� Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=1},
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},

			{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
			{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})

end

function pActivity:pCreateDialog()
	local tbDailog = DailogClass:new()
	tbDailog.szTitleMsg = self:GetTitle(%TSK_DrinkRound, %TSK_ZuiYi, %TSK_JiuLiang)
	tbDailog:AddOptEntry("U�ng m�t b�t r��u nh�", self.GotoDetail, {self, 6, {tbDailog}})
	tbDailog:AddOptEntry("U�ng 1 B�t R��u Trung", self.GotoDetail, {self, 7, {tbDailog}})
	tbDailog:AddOptEntry("U�ng m�t b�t r��u l�n", self.GotoDetail, {self, 8, {tbDailog}})
	tbDailog:AddOptEntry("Ta u�ng h�t n�i r�i, tr�n ��u R��u n�y ta ch�u thua", self.GotoDetail, {self, 9, {tbDailog}})
	tbDailog:Show()
end

function pActivity:BeginDrink()
	if self:CheckDate() ~= 1 then
		return
	end
		
	if self:CheckDrinkTime(9, 23, "Thi�u Hi�p b�y gi� kh�ng ph�i l� th�i gian ��u r��u, ng�y mai v�o l�c 9h-24h h�y ��n ch� c�a ta ��u r��u nh�") ~= 1 then
		return
	end
	
	if self:CheckTaskDaily(%TSK_DrinkTimes, 3, "H�m nay �� u�ng �� 3 tr�n r��u r�i, ng�y mai h�y quay l�i nh�", "<") ~= 1 then
		return
	end
	
	if self:CheckNotGetDrunk(1020, "Thi�u Hi�p ng��i �� u�ng say r�i, ��i t�nh r��u r�i l�i ��n nh�") ~= 1 then
		return
	end
	
	if self:CheckTask(%TSK_WinDrink, 0, "Tr��c khi tham gia tr�n ��u r��u n�y c�n ph�i nh�n h�t t�t c� ph�n th��ng c�a tr�n ��u r��u tr��c( ph�n th��ng an �i, ph�n th��ng ��u r��u th�nh c�ng, ph�n th��ng x�p h�ng ) xin h�y �i nh�n h�t nh�ng ph�n th��ng n�y �i r�i h�y ��n tham gia nh�", "==") ~= 1 then
		return
	end
	
	if self:CheckTask(%TSK_AnWei, 0, "Tr��c khi tham gia tr�n ��u r��u n�y c�n ph�i nh�n h�t t�t c� ph�n th��ng c�a tr�n ��u r��u tr��c( ph�n th��ng an �i, ph�n th��ng ��u r��u th�nh c�ng, ph�n th��ng x�p h�ng ) xin h�y �i nh�n h�t nh�ng ph�n th��ng n�y �i r�i h�y ��n tham gia nh�", "==") ~= 1 then
		return
	end
	
	self:CheckPaiMing()
end







