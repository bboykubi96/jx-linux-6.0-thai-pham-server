Include("\\script\\battles\\battleinfo.lua")
--¾üÐè¹Ù
function main(sel)
--Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","T×m hiÓu quy t¾c Tèng Kim ®¹i chiÕn/help_sjbattle","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
	Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","Mua m¸u nhanh/buymaunhanh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end;

function salemedicine(sel)
Sale(99, 1)
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