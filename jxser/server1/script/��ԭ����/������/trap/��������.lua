--��ԭ���� �������� ս��״̬�л�Trap
--TrapId��66

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
if GetTask(5859)==1 then
Say("�ang V�n Ti�u, Kh�ng Th� V�o Th�nh")
SetPos(1624, 2976)
 Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> ch�i �n gian c� g�ng ��a Ti�u v�o th�nh <color=green>Ti�u Bang h�i<color=yellow> l�p t�c quay tr� l�i 203/186 Chu Ti�n Tr�n.!")
return 1
end
	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		SetPos(1697, 3097)
		return 1
	end

if ( GetFightState() == 0 ) then
	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1697, 3097)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1695, 3099)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(15)			-- ��¼��ɫ��������������
end;

 