-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ tiÖm thuèc l·o b¶n ®èi tho¹i 
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- script viet hoa By http://tranhba.com  luyÖn chÕ hçn nguyªn linh lé 
function refine() 
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end 

OPTIONS = {} 

function main(sel) 
Say("HiÖu Thuèc: ta ®©y n¬i nµy b¸n th¶o d­îc cã bÖnh ch÷a bÖnh # v« bÖnh d­ìng sinh . gièng nh­ c¸c ng­¬i lo¹i nµy ë vÕt ®ao th­îng kiÕm sèng ng­êi , cµng lµ c¸ch kh«ng ®­îc nh÷ng thø nµy m¹ng sèng ®Ých th¶o d­îc . ", 
getn(OPTIONS), 
OPTIONS) 
end 

function yes() 
Sale(12) -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 

if TEACHERSWITCH then 
tinsert(OPTIONS,"Gióp h¾n cÊt thuèc r­îu /brew") 
end 
tinsert(OPTIONS,"Giao dÞch /yes") 
tinsert(OPTIONS, " luyÖn chÕ hçn nguyªn linh lé /refine") 
tinsert(OPTIONS,"Kh«ng giao dÞch /Cancel") 
