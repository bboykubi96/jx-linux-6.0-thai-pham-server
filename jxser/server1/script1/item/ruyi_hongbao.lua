
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
function main(nItemIdx)		
	dofile("script/item/ruyi_hongbao.lua")
		if 1==1 then
		return
	end
	if GetTask(3023)>0 then
		Say("Mçi Nh©n VËt ChØ §­îc Sö Dông 1 LÇn LÔ Bao L× X×")
		return 1
	else

	local aa=random(50,70)
		local tbAwardcc={
	{szName="KNB", tbProp={4,343,1,1},nCount = aa},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "TiÒn §ång");
SetTask(3023,2)
	Msg2SubWorld("<color=green>§¹i hiÖp <color=red>"..GetName().."<color> më <color=cyan>LÔ Bao L× X× 2021<color> nhËn ®­îc "..aa.." <color=yellow>Kim Nguyªn B¶o.")
	end
end
