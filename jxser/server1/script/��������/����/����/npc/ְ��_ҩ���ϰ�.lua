-- script viet hoa By http://tranhba.com  §¹i Lý chøc n¨ng tiÖm thuèc l·o b¶n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {} 

function refine() 
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end 

function main() 
Say("TiÖm cña ta dùa vµo §iÓm th­¬ng s¬n cuéc sèng , phÝa trªn cã h¬n ngµn lo¹i th¶o d­îc .", 
getn(OPTIONS), 
OPTIONS) 
end; 

function yes() 
Sale(12) -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end 

if TEACHERSWITCH then 
tinsert(OPTIONS,"Gióp ta ®Ó thuèc r­îu /brew") 
end 
tinsert(OPTIONS,"Giao dÞch /yes") 
tinsert(OPTIONS,"Ta muèn luyÖn chÕ hçn nguyªn linh lé refine") 
tinsert(OPTIONS,"Kh«ng giao dÞch /Cancel") 
