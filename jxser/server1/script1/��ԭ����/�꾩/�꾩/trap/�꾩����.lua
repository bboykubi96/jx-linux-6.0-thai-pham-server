--Bien Kinh bac

function main(sel)
if GetTask(5859)==1 then
Say("�ang V�n Ti�u, Kh�ng Th� V�o Th�nh")
SetPos(1563, 2967)
return 1
end

if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1888, 2905)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1885, 2909)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(4)			-- ��¼��ɫ���������꾩��
end;