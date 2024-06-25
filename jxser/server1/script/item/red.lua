-- script viet hoa By http://tranhba.com  t¾m thuéc tİnh ®iÓm dïng ®á th¾m b¶o th¹ch , cã thÓ t¾m n¨m thuéc tİnh ®iÓm 
-- script viet hoa By http://tranhba.com  By Asmik(2004-02-26) 

function main() 
Say(" lùa chän ng­¬i muèn c¶i t¹o kinh m¹ch ®İch chñng lo¹i #",5," lùc l­îng /tune_str","Th©n ph¸p /tune_dex","Ngo¹i c«ng /tune_vit","Néi c«ng /tune_eng","Cßn kh«ng cã muèn h¶o /no") 
end 


function tune_str() 
base_str = {35,20,25,30,20} -- script viet hoa By http://tranhba.com  ngò hµnh nh©n vËt trêi sanh lùc l­îng , t¾m tiÒm n¨ng lóc kh«ng cho phĞp thÊp h¬n nµy trŞ gi¸ 
	i = GetSeries() + 1
	if (GetStrg(1) < base_str[i] + 5) then		-- script viet hoa By http://tranhba.com  Ï´ÍêºóÁ¦Á¿»áµÍÓÚÌìÉúÁ¦Á¿£¬²»ÔÊĞíÏ´
Say(" lùc l­îng cña ng­¬i còng ®· ®Õn cùc h¹n !",1,"Ta ®ang suy nghÜ muèn /no") 
else -- script viet hoa By http://tranhba.com  b¾t ®Çu t¾m tiÒm n¨ng , sau khi hoµn thµnh tù ®éng ®¸ xuèng tuyÕn 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddStrg(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() hµm sè ®· t¨ng thªm ch­a ph©n xøng tiÒm n¨ng 
end 
end 

function tune_dex() 
base_dex = {25,35,25,20,15} 
	i = GetSeries() + 1
	if (GetDex(1) < base_dex[i] + 5) then		-- script viet hoa By http://tranhba.com  Ï´ÍêºóÉí·¨»áµÍÓÚÌìÉúÉí·¨£¬²»ÔÊĞíÏ´
Say(" lùc l­îng cña ng­¬i còng ®· ®Õn cùc h¹n !",1,"Ta ®ang suy nghÜ muèn /no") 
else -- script viet hoa By http://tranhba.com  b¾t ®Çu t¾m tiÒm n¨ng , sau khi hoµn thµnh tù ®éng ®¸ xuèng tuyÕn 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddDex(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() hµm sè ®· t¨ng thªm ch­a ph©n xøng tiÒm n¨ng 
end 
end 

function tune_vit() 
base_vit = {25,20,25,30,25} 
	i = GetSeries() + 1
	if (GetVit(1) < base_vit[i] + 5) then		-- script viet hoa By http://tranhba.com  Ï´ÍêºóÍâ¹¦»áµÍÓÚÌìÉú£¬²»ÔÊĞíÏ´
Say(" lùc l­îng cña ng­¬i còng ®· ®Õn cùc h¹n !",1,"Ta ®ang suy nghÜ muèn /no") 
else -- script viet hoa By http://tranhba.com  b¾t ®Çu t¾m tiÒm n¨ng , sau khi hoµn thµnh tù ®éng ®¸ xuèng tuyÕn 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddVit(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() hµm sè ®· t¨ng thªm ch­a ph©n xøng tiÒm n¨ng 
end 
end 

function tune_eng() 
base_eng = {15,25,25,20,40} 
	i = GetSeries() + 1
	if (GetEng(1) < base_eng[i] + 5) then		-- script viet hoa By http://tranhba.com  Ï´ÍêºóÄÚ¹¦»áµÍÓÚÌìÉú£¬²»ÔÊĞíÏ´
Say(" lùc l­îng cña ng­¬i còng ®· ®Õn cùc h¹n !",1,"Ta ®ang suy nghÜ muèn /no") 
else -- script viet hoa By http://tranhba.com  b¾t ®Çu t¾m tiÒm n¨ng , sau khi hoµn thµnh tù ®éng ®¸ xuèng tuyÕn 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddEng(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() hµm sè ®· t¨ng thªm ch­a ph©n xøng tiÒm n¨ng 
end 
end 

function no() 
AddItem(6, 1, 21, 1, 0, 0, 0) 
end
