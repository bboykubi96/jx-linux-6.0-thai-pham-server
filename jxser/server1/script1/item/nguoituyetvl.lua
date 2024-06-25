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
	586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,53
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
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
function main(nItemIdx)
	if checkfightstate() ~= 1 then
		return 1
	end
	local nMapId,nPosX,nPosY = GetWorldPos()
		local mapidx = SubWorldID2Idx(nMapId)
	local npcindex = AddNpcEx(1335, 95, random(0,4), SubWorldID2Idx(nMapId), nPosX*32, nPosY*32, 1, "Ng��i Tuy�t Luy�n Skill", 1)
	SetNpcParam(npcindex, 1, 1335)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death222.lua");
	 AddTimer(24*60*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
	--if %checkOnlyUseInMap() ~= 1 then
		--Msg2Player("Kh�ng th� s� d�ng v�t ph�m n�y t�i ��y.")
	--	return 1
	--end
	
	return 0
end