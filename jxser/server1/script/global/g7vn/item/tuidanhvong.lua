Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuithantai.lua")
	--do Say("T�i th�n t�i T�m th�i ch�a s� ��ng d��c") return end

	local diemdv = random(3,5)
	AddRepute(diemdv)
	Msg2Player("M� t�i danh v�ng may m�n nh�n ���c <color=green>"..diemdv.."<color> �i�m")
end
