--��ԭ���� �������� ս��״̬�л�Trap
--TrapID��63

function main(sel)
if GetTask(5859)==1 then
Say("�ang V�n Ti�u, Kh�ng Th� V�o Th�nh")
SetPos(1624, 2976)
 Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> ch�i �n gian c� g�ng ��a Ti�u v�o th�nh <color=green>Ti�u Bang h�i<color=yellow> l�p t�c quay tr� l�i 203/186 Chu Ti�n Tr�n.!")
return 1
end
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1729, 3246)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1727, 3242)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(15)			-- ��¼��ɫ��������������
end;
