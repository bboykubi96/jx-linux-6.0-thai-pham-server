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

local tbUseOnlyInMap = 
{
	586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604
}
local checkOnlyUseInMap = function()
	local nMapId = SubWorldIdx2MapCopy(SubWorld)
	for i = 1, getn( %tbUseOnlyInMap ) do		--�����ͼ����
		if( %tbUseOnlyInMap[i] == nMapId ) then
			return 1
		end
	end
	return 0
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[4346] = {1335,95,"Ng��i Tuy�t Luy�n Skill",},		
	}
	local G,D,P = GetItemProp(nItemIdx)
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
	if basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) then
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] D�ng l�nh b�i g�i Boss �� g�i Boss Ho�ng Kim: "..szBossname);
		return 1
	end
	return 0
end

function main(nItemIdx)
                       local nSubWorldID = GetWorldPos();
                        if (nSubWorldID == 11) or (nSubWorldID == 78) or (nSubWorldID == 1) or (nSubWorldID == 162)  or (nSubWorldID == 37)  or (nSubWorldID == 80)  or (nSubWorldID == 176)  or (nSubWorldID == 555)  or (nSubWorldID == 20)  or (nSubWorldID == 99)  or (nSubWorldID == 100)  or (nSubWorldID == 101)  or (nSubWorldID == 121)  or (nSubWorldID == 153)  or (nSubWorldID == 174)  or (nSubWorldID == 175) or (nSubWorldID == 242) or (nSubWorldID == 243) or (nSubWorldID == 244) or (nSubWorldID == 245) or (nSubWorldID == 246) or (nSubWorldID == 247) or (nSubWorldID == 248)   or (nSubWorldID == 53) then
Msg2Player("Tri�u h�i Boss")
		else
   Say("Ch� ���c th� � th�t ��i th�nh th� v� th�n tr�n v� ��o t�y t�y.",0)
return 1
end
	--local nSubWorldID = GetWorldPos();
	--	if nSubWorldID == 53 then
--Say("Kh�ng th�  th� t�i Ba L�ng Huy�n")
--return 1
--end

	if checkfightstate() ~= 1 then
		return 1
	end
	
	--if %checkOnlyUseInMap() ~= 1 then
		--Msg2Player("Kh�ng th� s� d�ng v�t ph�m n�y t�i ��y.")
	--	return 1
	--end
	
	local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx)
	
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		Msg2Player("Tri�u h�i Boss th�t b�i, xin th� l�i")
		return 1
	end

	return 0
end