--��ԭ���� ������to�ν�ս��
--TrapID����ԭ���� 57
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��
Include("\\script\\battles\\battlehead.lua")

function main(sel)
if GetTask(5859)==1 then
Say("�ang V�n Ti�u, Kh�ng Th� V�o Th�nh")
SetPos(1624, 2976)
  Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> ch�i �n gian c� g�ng ��a Ti�u v�o th�nh <color=green>Ti�u Bang h�i<color=yellow> l�p t�c quay tr� l�i 203/186 Chu Ti�n Tr�n.!")
return 1
end
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, 1570, 3085);
		SetFightState(0);
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, 1570, 3085);
		SetFightState(0);
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
		NewWorld( 325, 1570, 3085);
		SetFightState(0);
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end
