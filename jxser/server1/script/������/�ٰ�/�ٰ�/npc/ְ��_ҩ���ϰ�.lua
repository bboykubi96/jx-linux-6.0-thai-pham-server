-- �ٰ���ְ�ܡ�ҩ���ϰ�
-- by��Dan_Deng(2003-09-16)

-- ���ƻ�Ԫ��¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("�au b�nh th� ph�i u�ng thu�c! Nh�ng ��ng �� c� b�nh r�i m�i mua! L�c �� e s� c�u kh�ng k�p!",
		3,
		"Giao d�ch/yes",
		"Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine",
		"Kh�ng giao d�ch/Cancel")
end;

function yes()
	Sale(12)  				--�������׿�
end
