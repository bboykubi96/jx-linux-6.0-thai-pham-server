Include("\\script\\battles\\battleinfo.lua")
--¾üÐè¹Ù
function main(sel)
--Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","T×m hiÓu quy t¾c Tèng Kim ®¹i chiÕn/help_sjbattle","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","Mua m¸u nhanh (1 l­îng - 1 b×nh)/buymaunhanh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end;

function salemedicine(sel)
Sale(99, 1)
end
function muachienco()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=5 then
	ConsumeEquiproomItem(5,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "ChiÕn Cæ",tbProp={6,1,156,1,1},nCount=100},}, "test", 1);
		Msg2SubWorld("<color=green> §¹i Gia <color=yellow>"..GetName().." <color>®· mua <color=cyan>100 ChiÕn Cæ<color> ë Qu©n Nhu Quan.")
	else
	Say("Hµnh trang kh«ng ®ñ 3 « trèng hoÆc kh«ng ®ñ 5 xu.")
end
end
function muamautongkim()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=2 then
	ConsumeEquiproomItem(2,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "M¸u tèng kim ®¹i",tbProp={6,1,215,1,1},nCount=500},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "M¸u tèng kim ®¹i",tbProp={6,1,215,1,1},nCount=500},}, "test", 1);
		--Msg2SubWorld("<color=green> §¹i Gia <color=yellow>"..GetName().." <color>®· mua <color=cyan>100 ChiÕn Cæ<color> ë Qu©n Nhu Quan.")
	else
	Say("Hµnh trang kh«ng ®ñ 3 « trèng hoÆc kh«ng ®ñ 2 xu.")
end
end
function buymaunhanh()

	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if money>=totalcount then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount,nBindState=-2 }}, format("Get %s", "Than pham 1"))
	Pay(totalcount)
	end
end