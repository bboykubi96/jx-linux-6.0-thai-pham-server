Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuithantai.lua")
	--do Say("Tói thÇn tµi T¹m thêi ch­a sö ®ông d­îc") return end

	local diemdv = random(3,5)
	AddRepute(diemdv)
	Msg2Player("Më tói danh väng may m¾n nhËn ®­îc <color=green>"..diemdv.."<color> ®iÓm")
end
