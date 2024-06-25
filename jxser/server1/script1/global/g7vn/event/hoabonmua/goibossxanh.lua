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
	local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53}
--	local ACTIVITY_MAP = {53}
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
		lib:ShowMessage("C�n ph�i s� d�ng t�i  b�n �� th�nh th�, th�n trang.")
		return 0
	end
	return 1
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[1481] = {858,90,"Tr� Thi�n M�n",},		
		[1482] = {513,90,"Di�u Nh�",},	
		[1483] = {511,90,"Tr��ng T�ng Ch�nh",},	
		[1484] = {1358,90,"T�y V��ng T� ��c",},	
		[1485] = {1360,90,"Do�n Thanh V�n",},	
		[1486] = {1361,90,"H�c Y S�t Th�",},	
		[1487] = {1356,90,"Ng�o Thi�n T��ng Qu�n",},	
		[1488] = {1362,90,"Th�p Ph��ng C�u Di�t",},	
		[1489] = {1364,90,"Thanh Y T�",},	
		[1490] = {1355,90,"T�nh Th�ng",},	
		--[3084] = {1874,90,"Kim Th� L��ng",},		
		--[3085] = {1875,90,"M� Dung To�n",},		
	}
	--local G,D,P = GetItemProp(nItemIdx)
	
	local P=1481--random(1481,1490)
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
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bosstieudeath1.lua");
	if npcindex then
		if GetAccount()~="testgame4" then
			--Msg2SubWorld("<color=green>��i hi�p <color=yellow>"..GetName().."<color> �� th� BOSS Ti�u, C�c hi�n s� nhanh ch�n ��n c��p �o�t.")
		end
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
--	if CalcEquiproomItemCount(4,417,1,1)<5 or GetCash()<100000 then
--		Say("M� l�nh b�i c�n 5 xu + 10 v�n l��ng.")
--	return 1
--	end
--	ConsumeEquiproomItem(5,4,417,1,1)
--	Pay(100000)
	local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx)
	
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		Msg2Player("Tri�u h�i Boss th�t b�i, xin th� l�i")
		return 1
	end
	
	return 0
end