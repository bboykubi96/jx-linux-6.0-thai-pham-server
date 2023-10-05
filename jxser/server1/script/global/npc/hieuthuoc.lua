Include("\\script\\lib\\awardtemplet.lua")
function main() 
Say("Thuèc nhËp khÈu trÞ b¸ch bÖnh !", 3,"Giao dÞch /yes","Mua M¸u Nhanh (100 L­îng - 1 B×nh)/buymaunhanh","Kh«ng giao dÞch /no") 
end; 

function yes() 
Sale(12);  			--µ¯³ö½»Ò×¿ò
end; 

function no() 
end; 

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
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={1,8,0,1,1,1}, nRate = 100, nCount= totalcount,nBindState=-2 }}, format("Get %s", "Than pham 1"))
	Pay(totalcount)
	end
end
function nhanhquamuamau11()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng mana m¸u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,8,0,1,1,1);
	end
end