
IncludeLib("ITEM")

function main(nItemIdx)		
	--dofile("script/item/ruyi_hongbao.lua")
	local nMoney = random(40000,60000)
	Earn(nMoney)
	Msg2Player("B�n ��t ���c "..nMoney.." l��ng")
	Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> m� <color=green>Bao L� X� Nh� �<color> nh�n ���c ng�n l��ng")
end
