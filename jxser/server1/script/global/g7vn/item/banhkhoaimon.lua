Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
	--dofile("script/item/wulin-miji.lua")
	dofile("script/global/g7vn/item/banhkhoaimon.lua")

	times = GetTask(3024)
	str={
		"B�n c�m quy�n V� L�m M�t T�ch nghi�n c�u c� n�a ng�y, k�t qu� c�ng kh�ng l�nh ng� ���c g�. ",
		"B�n c�m B�nh Khoai M�n Nh�n Th�t Ch� nghi�n c�u c� n�a ng�y, k�t qu� l�nh ng� ���c ch�t �t. ",
		"B�n s� d�ng 'B�nh Khoai M�n Nh�n Th�t Ch�', K� n�ng t�ng th�m 1 �i�m",
		"B�n c�m tr�n tay B�nh Khoai M�n Nh�n Th�t Ch� r�t l�u, ng�m ngh� t�i sao nh�n th�t ch� kh�ng ph�i th�t heo?"
		}
	if(times >14) then                -- ʹ�ô����Ѵﵽ����
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[4])
		return 1
	elseif (GetLevel() < 80) then     -- �ȼ�С��80
		Msg2Player(str[2])
		return 1
	else                            	-- ����1�㼼�ܵ�
		AddMagicPoint(1)
		SetTask(3024,times+1)
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[3])
		return 0
	end
end