Include("\\script\\battles\\battleinfo.lua")
--¾üÐè¹Ù
function main(sel)
--Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","T×m hiÓu quy t¾c Tèng Kim ®¹i chiÕn/help_sjbattle","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
Say("Ng­¬i cã cÇn gióp ®ì g× kh«ng?",2,"Mua d­îc phÈm/salemedicine","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end;

function salemedicine(sel)
Sale(21)
end
function muamatna()
if CalcEquiproomItemCount(4,417,1,1)<10 then
	Say("Hµnh Trang kh«ng ®ñ 10 TiÒn §ång")
	return
end
if CalcFreeItemCellCount() < 2 then
	Say("Hµnh Trang kh«ng ®ñ 2 « trèng")
	return
end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName = "ChiÕn Cæ",tbProp={6,1,156,1,1},nCount=100},}, "test", 1);
end
function muamautongkim()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=10 then
	ConsumeEquiproomItem(10,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "M¸u tèng kim ®¹i",tbProp={6,1,215,1,1},nCount=300},}, "test", 1);
		--Msg2SubWorld("<color=green> §¹i Gia <color=yellow>"..GetName().." <color>®· mua <color=cyan>100 ChiÕn Cæ<color> ë Qu©n Nhu Quan.")
	else
	Say("Hµnh trang kh«ng ®ñ 3 « trèng hoÆc kh«ng ®ñ 10 xu.")
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
	if moneymin >= totalcount then
		tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
		Pay(totalcount * pri)
	else
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= moneymin }}, format("Get %s", "Than pham 1"))
		Pay(moneymin * pri)
end
end