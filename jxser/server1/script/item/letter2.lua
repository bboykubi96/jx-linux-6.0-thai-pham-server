-- script viet hoa By http://tranhba.com  bäc quÇn ¸o bªn trong ®Ých phong th¬ # nhiÖm vô míi hÖ thèng long n¨m ®Ých bäc quÇn ¸o # tµ ph¸i 
-- script viet hoa By http://tranhba.com by xiaoyang(2004\12\25) 

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
local curCamp = nt_getCamp() 
Uworld1001 = nt_getTask(1001) -- script viet hoa By http://tranhba.com  chÝnh ph¸i 
Uworld1002 = nt_getTask(1002) 
Uworld1003 = nt_getTask(1003) 
Uworld183 = nt_getTask(183) 
Uworld186 = nt_getTask(186) 
Uworld189 = nt_getTask(189) 
local name = GetName() 
if ( Uworld189 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj091.spr> long n¨m ®Ých tin/th¬ <link><enter>"..name..", ®i Chu tiªn trÊn t×m V©n nhi , liªn quan tíi nµng hÕt th¶y ng­¬i còng sÏ tõ tõ biÕt ®­îc , nh­ng ta kh«ng muèn nãi thªm mét ch÷ , ng¾m ng­¬i tr©n träng m×nh . long n¨m . ",1,"Thu håi tÝn hµm /no") 
nt_setTask(189,30) 
if ( Uworld1003 < 10 ) then 
nt_setTask(1003,10) -- script viet hoa By http://tranhba.com  tµ ph¸i nhiÖm vô b¾t ®Çu 
end 
end 
return 0 
end 
