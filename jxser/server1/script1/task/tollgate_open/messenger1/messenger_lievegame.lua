-------------------------------------------------------------------------
-- FileName		:	messenger_losetask.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	��ʹ�������������ʧ�������õĽű��������ǧ��������ʱ����
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���

function messenger_livegame()
	
	local _, _, nMapIndex = GetPos()

	if ( nt_getTask(1203) ~= 30 and nt_getTask(1203) ~= 25 ) then
--		nt_setTask(1201,0)
--		nt_setTask(1202,0)
--		nt_setTask(1203,0)
--		nt_setTask(1204,0)
--		nt_setTask(1207,0)
--		nt_setTask(1212,0)
--		nt_setTask(1213,0)
--		nt_setTask(1214,0)
--		nt_setTask(1215,0)
--		
--		local Uworld1211 = nt_getTask(1211)  --����ʼʱ�䣨һֱ�ڱ仯��
--		local Uworld1222 = nt_getTask(1222)
--		local Uworld1221 = nt_getTask(1221)             --��õ�ǰ��������
--		local messenger_date = tonumber(date("%y%m%d")) --�����������	  	 
--		local lasttime   = GetGameTime()
--		
--		if ( Uworld1211 ~= 0 ) then
--			if ( lasttime - Uworld1211 > Uworld1222  ) then
--				nt_setTask(1222,0)
--			else
--				Uworld1222 = Uworld1222 - ( lasttime - Uworld1211 )
--				nt_setTask(1222,Uworld1222)
--				nt_setTask(1211,lasttime)
--			end
--		end
		
		local MapId = SubWorldIdx2ID( nMapIndex )
		if ( MapId >= 387  and MapId <= 395) then
			DisabledUseTownP(0)
			SetFightState(0)		-- �����̺��Ϊ��ս��״̬
			--SetLogoutRV(0);       -- �������˴˽ű����������ѱ�ȡ�����޷���ȥ�����ط��գ�����ԭ�������ˡ�
			SetPunish(1);
			SetCreateTeam(1);
			SetPKFlag(0)
			ForbidChangePK(0);
			SetDeathScript("");
			if nt_getTask(1203) == 20 or nt_getTask(1203) == 25  then
				nt_setTask(1203,21)--��ʱ�ж�����
			end
		end
			
--		Msg2Player("������ʹ����ʧ���ˣ�")
	end
--	nt_setTask(1211,0)
end

