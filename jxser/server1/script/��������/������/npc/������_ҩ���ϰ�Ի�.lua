-- script viet hoa By http://tranhba.com  t©y b¾c nam khu vÜnh nh¹c trÊn tiÖm thuèc l·o b¶n ®èi tho¹i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel) 
Say("Hµnh tÈu giang hå , chuÈn bÞ ®iÓm thuèc phßng th©n lµ kh«ng thÓ thiÓu ®Ých !", 3,"Giao dÞch /yes","Mua M¸u Nhanh (2000 l­îng - 1 b×nh)/okmuamau","Kh«ng giao dÞch /no"); 
end; 


function yes() 
Sale(12); -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 


function no() 
end; 

function okmuamau()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("§¹i hiÖp kh«ng ®ñ ng©n l­îng ®Ó mua m¸u nhanh.")
		return
	end
end