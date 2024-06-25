Include("\\script\\activitysys\\config\\1009\\head.lua")
Include("\\script\\activitysys\\config\\1009\\variables.lua")
Include("\\script\\activitysys\\config\\1009\\award_ext.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\log.lua")

function pActivity:DropItemRandom(nNpcIndex)
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, %ITEM_SKILL_PIECE, "Drop Material Bag", 1)
end

function pActivity:NhanNhanDoiKinhNghiem()
	if GetLevel() >= 50 then
		
		AddSkillState(512,20,1,60*60*18);
		AddSkillState(527,5,1,60*60*18);
		AddSkillState(313,5,1,60*60*18);
		AddSkillState(314,12,1,60*60*18);
		AddSkillState(546,1,1,60*60*18);
		--AddSkillState(440, 1, 1, 60*60*18);--Tien thao lo
		AddSkillState(531,10,1,60*60*18);--ngoi sao x2
		AddSkillState(461,1, 1,60*60*18);

		Say("�� nh�n ���c v�ng s�ng 30p sau ho�c �m r��ng quay l�i ��y nh�n ti�p")
		else
		Say("��ng c�p t� 50 tr� l�n m�i c� th� nh�n")
	end
end

function pActivity:PlayerOnLogin()

	if GetTask(3907) ~= 6 then
		SetTask(3907,6)--task kiem tra event dot truoc moi dot event tang len 1
		--SetTask(3908,0)--task nhan moc 1000
		--SetTask(3909,0)--task event loai 3
		--SetTask(3910,0) --ev kvan
		--SetTask(3911,0) --ev xu
		--SetTask(3912,0) --thuong free event
		--self:SetTask(TSK_SUDUNG_BANHCHUNG,0)
		--self:SetTask(TSK_SUDUNG_MAMNGUQUA,0)
		--self:SetTask(TSK_BAOLIXISD,0)
		--self:SetTask(TSK_BAOLIXI,0)
		
		local nCount1 = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_USING)
		
		if nCount1 >= 10 then
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_LIMIT_HAT_USING,0)
		end
		
		local nCount2 = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING)
		
		if nCount2 >= 10 then
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING,0)
		end

	end
end

function pActivity:UseHatFreedom()
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_USING)
	local nCurCount = nCount + 1
	Msg2Player("L�n th�: <color=green>"..nCurCount.."<color>")
	--Ladder_NewLadder(10282, GetName(),nCurCount,0,GetLastFactionNumber());
		--Phan thuong them
		local tbItemAward = 
		{
			{szName = "Huy�n tinh c�p 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =0.3},
			{szName = "Huy�n tinh c�p 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.2},
			{szName = "Huy�n tinh c�p 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.1},
			{szName = "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=0.5},
			{szName  = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.01},
			{szName = "M�nh T�ng B�o �� 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M�nh T�ng B�o �� 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Ph�c Duy�n L� (ti�u)",tbProp={6,1,122,1,0,0},nCount=1,nRate=0.3},
			{szName = "Ph�c duy�n l� trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=0.2},
			{szName = "Ph�c duy�n l� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=0.1},
			{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=0.1},
			{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.01},
			{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.01},
			{szName = "B�n nh��c t�m kinh",tbProp={6,1,12,1,0,0},nCount=1,nRate=0.2},
		}
		tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungMamMuTuDo"})
	--Diem kn dat moc
	local tbBonusAward = {
		[500] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 30000000},
			{
				{szName="T� Ti�n thu�t. B�o V� L� Hoa",tbProp={6,1,27,1,0,0},nCount=1,nRate=0.1},
				{szName="H�m T�nh thu�t. Lo�n Ho�n K�ch",tbProp={6,1,28,1,0,0},nCount=1,nRate=0.5},
				{szName="Th�i C�c Quy�n Ph�- Quy�n 3",tbProp={6,1,33,1,0,0},nCount=1,nRate=0.5},
				{szName="Th�i C�c Ki�m Ph�. Quy�n 2",tbProp={6,1,34,1,0,0},nCount=1,nRate=0.1},
				{szName="V�n Long K�ch. M�u ph�p",tbProp={6,1,35,1,0,0},nCount=1,nRate=0.5},
				{szName="L�u Tinh. �ao ph�p",tbProp={6,1,36,1,0,0},nCount=1,nRate=0.1},
				{szName="Thi�n V��ng Ch�y Ph�p. Quy�n 1",tbProp={6,1,37,1,0,0},nCount=1,nRate=0.5},
				{szName="Thi�n V��ng Th��ng ph�p- Quy�n 2",tbProp={6,1,38,1,0,0},nCount=1,nRate=0.5},
				{szName="Thi�n V��ng �ao ph�p - Quy�n 3 ",tbProp={6,1,39,1,0,0},nCount=1,nRate=0.5},
				{szName="Th�y Y�n �ao ph�p",tbProp={6,1,40,1,0,0},nCount=1,nRate=0.5},
				{szName="Th�y Y�n Song �ao",tbProp={6,1,41,1,0,0},nCount=1,nRate=0.5},
				{szName="Di�t Ki�m M�t T�ch",tbProp={6,1,42,1,0,0},nCount=1,nRate=0.1},
				{szName="Nga Mi Ph�t Quang Ch��ng M�t T�ch",tbProp={6,1,43,1,0,0},nCount=1,nRate=0.5},
				{szName="Phi �ao thu�t. Nhi�p H�n Nguy�t �nh",tbProp={6,1,45,1,0,0},nCount=1,nRate=0.5},
				{szName="Phi Ti�u thu�t. C�u Cung Phi Tinh",tbProp={6,1,46,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� ��c Ch��ng Ph�p. Quy�n 1",tbProp={6,1,47,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� ��c �ao ph�p. Quy�n 2",tbProp={6,1,48,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� ��c Nhi�p T�m thu�t. Quy�n 3",tbProp={6,1,49,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� Phong thu�t",tbProp={6,1,50,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� L�i thu�t",tbProp={6,1,51,1,0,0},nCount=1,nRate=0.5},
				{szName="Ng� T�m thu�t",tbProp={6,1,52,1,0,0},nCount=1,nRate=0.5},
				{szName="Nhi�p H�n - Tr��c Ch�",tbProp={6,1,53,1,0,0},nCount=1,nRate=0.5},
				{szName="C�i Bang Ch��ng Ph�p",tbProp={6,1,54,1,0,0},nCount=1,nRate=0.1},
				{szName="C�i Bang C�n Ph�p",tbProp={6,1,55,1,0,0},nCount=1,nRate=0.5},
				{szName="Thi�u L�m Quy�n Ph�p. Quy�n 1",tbProp={6,1,56,1,0,0},nCount=1,nRate=0.5},
				{szName="Thi�u L�m C�n ph�p. Quy�n 2",tbProp={6,1,57,1,0,0},nCount=1,nRate=0.5},
				{szName="Thi�u L�m �ao ph�p. Quy�n 3",tbProp={6,1,58,1,0,0},nCount=1,nRate=0.5},
				{szName="Ph� �� M�t T�ch",tbProp={6,1,59,1,0,0},nCount=1,nRate=0.5},	
			},
		},
		[1000] = 
		{
			{
				{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 70000000},
			},
			{
				--{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*15,nRate=50},
				{szName = "Phi V�n", tbProp={0,10,8,1,5,0},nCount=1, nExpiredTime=60*24*15,nRate=1},
			},
			{
				{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={6,1,391,1,0,0},nCount=1,nRate=0.5},
				{szName = "�� ph� Ho�ng Kim - ��nh Qu�c Thanh Sa Tr��ng Sam ",tbProp={6,1,383,1,0,0},nCount=1,nRate=0.5},
			},
		},
	}
	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dMuTuDo", nCurCount)})
		Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color> c�c h� s� d�ng ��n m�c <color=yellow>"..nCurCount.."<color> v�t ph�m nh�n ���c ph�n th��ng nh� �")
	end
end

function pActivity:UseHatPeace()
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING)
	local nCountHT = nCount + 1
	Msg2Player("S� d�ng l�n th�: <color=green>"..nCountHT.."<color>")
end


IncludeLib("RELAYLADDER");

function pActivity:XemTOP3Event()
	local sResult = ""
	for i = 1, 3 do
		local nten, ncap,nphai = Ladder_GetLadderInfo(10282, i)
		sResult = sResult.."\r\n TOP "..i.." - <"..nten.."> s� l�n: <"..ncap..">"
	end
	Say("Danh s�ch b�ng x�p h�ng TOP 3 event k� n�y: \r\n" .. sResult)
end
