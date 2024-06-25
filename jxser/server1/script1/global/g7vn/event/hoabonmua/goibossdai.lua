-- �ļ�������callbosslingpai.lua
-- �����ߡ���wangjingjun
-- ���ݡ�����ֻ�����ڸ������ǣ����ִ��Ұ��Ͱ���ͼcall
-- ����ʱ�䣺2011-11-11 14:56:18
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
function checkfightstate()
	if ( GetFightState() == 0 ) then	--��ս��������
		Msg2Player("Kh�ng � trong tr�ng th�i chi�n ��u th� kh�ng th� s� d�ng");
		return 0
	end
	return 1
end

function checkmap()
	-- �ߴ���У��˴����ִ壬����ͼ
	local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53, 586,587,588,589,590,591,593,594,595,596,597}
	--local ACTIVITY_MAP = {989}
	local W,X,Y = GetWorldPos()
	local nMapId = W
	local nIsInMap = 0
	
	for i = 1, getn(ACTIVITY_MAP) do
		if nMapId == ACTIVITY_MAP[i] and GetFightState() == 1 then
			nIsInMap = 1
			break	
		end
	end
	
	if nIsInMap == 0 then
		lib:ShowMessage("C�n ph�i s� d�ng t�i  b�n �� th�n trang, th�nh th�")
		return 0
	end
	return 1
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[1481] = {739,95,"V��ng T�",},		
		[1482] = {740,95,"Huy�n Gi�c ��i S�",},	
		[1486] = {1366,95,"���ng Phi Y�n",},	
		--[1484] = {568,95,"H� Linh Phi�u",},	
		[1487] = {744,95,"Y�n Hi�u Tr�i",},	
		[1488] = {583,95,"M�nh Th��ng L��ng",},	
	--	[1487] = {563,95,"Gia Lu�t T� Ly",},	
	--	[1488] = {562,95,"��o Thanh Ch�n Nh�n",},	
		[1489] = {747,95,"Tuy�n C� T�",},	
		[1490] = {582,95,"Lam Y Y",},	
	--	[1491] = {565,95,"�oan M�c Du�",},	
	--	[1492] = {566,95,"C� B�ch",},	
		--[3084] = {1874,95,"Kim Th� L��ng",},		
		--[3085] = {1875,95,"M� Dung To�n",},		
	}
	--local G,D,P = GetItemProp(nItemIdx)
	
	local P=random(1486,1490)
	local szBossname = tbBossInfomation[P][3]
	local nBossLevel = tbBossInfomation[P][2]
	local nBossId = tbBossInfomation[P][1]
	return szBossname, nBossLevel, nBossId
end

function callboss(szBossname, nBossLevel, nBossId)
	local nMapId,nPosX,nPosY = GetWorldPos()
	local tbGoldBoss = 
	{
		szName = szBossname, 
		nLevel = nBossLevel,
		nNpcId = nBossId,
		nIsboss = 1,
		tbNpcParam = {nBossId,},
	}
	local npcindex=basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) 
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bossdeath.lua");
	if npcindex then
		Msg2SubWorld("<color=green>��i hi�p <color=yellow>"..GetName().."<color> �� tri�u h�i BOSS")
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] D�ng l�nh b�i g�i Boss �� g�i Boss Ho�ng Kim: "..szBossname);
		return 1
	end
	return 0
end

function main(nItemIdx)
	if checkfightstate() ~= 1 then
		return 1
	end
	
	if checkmap() ~= 1 then
		return 1
	end
	
	local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx)
	
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		Msg2Player("Tri�u h�i Boss th�t b�i, xin th� l�i")
		return 1
	end
	
	return 0
end