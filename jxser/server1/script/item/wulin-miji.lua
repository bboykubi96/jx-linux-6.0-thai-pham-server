Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
	--dofile("script/item/wulin-miji.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	times = GetTask(80)
	str={
		"B�n c�m quy�n V� L�m M�t T�ch nghi�n c�u c� n�a ng�y, k�t qu� c�ng kh�ng l�nh ng� ���c g�. ",
		"B�n c�m quy�n V� L�m M�t T�ch nghi�n c�u c� n�a ng�y, k�t qu� l�nh ng� ���c ch�t �t. ",
		"B�n c�m quy�n V� L�m M�t T�ch nghi�n c�u c� n�a ng�y, k�t qu� c�ng thu ���c m�t v�i �i�u t�m ��c li�n quan ��n v� c�ng ",
		"B�n �� nghi�n ng�m k� quy�n V� L�m M�t T�ch, nh�ng kh�ng thu ���c �i�u g� t�m ��c "
		}
	if(times >gioihanVLMT) then                -- ʹ�ô����Ѵﵽ����
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[4])
		return 1
	elseif (GetLevel() < 90) then     -- �ȼ�С��80
		Msg2Player(str[2])
		return 1
	else                            	-- ����1�㼼�ܵ�
		AddMagicPoint(1)
		SetTask(80,times+1)
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[3])
		return 0
	end
end