--��ԭ���� ������ Ǯׯ�ϰ�Ի�
-- Update: Dan_Deng(2003-12-31) �Ӻ����Ԫ������

Include("\\script\\global\\Ǯׯ����.lua")

function main(sel)
	i = random(0,1)
	if (i == 0) then
		Talk(1,"main_proc","Ch� ti�n trang:  L� d�n l�m �n, ���ng nhi�n l� ti�n ki�m ���c c�ng nhi�u c�ng t�t r�i, gi�u c� l� s��ng nh�t trong thi�n h� r�i! ")
	else
		Talk(1,"Ch� ti�n trang:  Chuy�n ��i to�n gi� d�i, ch� c� v�ng th�t b�c tr�ng m�i l� th�t th�i.")
	end
end;
