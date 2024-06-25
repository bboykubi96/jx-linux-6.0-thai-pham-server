-- script viet hoa By http://tranhba.com Creator:yfeng 
-- script viet hoa By http://tranhba.com Date:2004-8-27 


-- script viet hoa By http://tranhba.com  c¨n b¶n hµm sè kho 

-- script viet hoa By http://tranhba.com  trë xuèng ®¹i m· m« pháng mÆt ngã ®èi t­îng ®Ých new, lîi dông lua cung cÊp table m« pháng mÆt ngã ®èi t­îng chøc n¨ng 
if not MEM_HEAD then 
MEM_HEAD = 1 

function __clone (org,des) -- script viet hoa By http://tranhba.com  sinh thµnh mét míi néi tån kh«ng gian , còng b¶o ®¶m cïng m« b¶n class t×nh thÕ gièng nhau 
local i,j 
for i,j in org do 
if(type(j)=="table") then 
des[i]={} 
__clone(j,des[i]) 
else 
des[i]=j 
end 
end 
end 

function __cclone(org,des) 
local i,j 
for i,j in org do 
if(type(j)=="table") then 
if(not des[i]) then 
des[i]={} 
__cclone(j,des[i]) 
end 
else 
if(not des[i]) then 
des[i]=j 
end 
end 
end 
end 


function new(class,...) -- script viet hoa By http://tranhba.com  m« pháng new, sao chÐp mét míi thùc lÖ , còng thi hµnh ngôy cÊu t¹o hµm sè :new(...) 
local obj={} 
__clone(class,obj) 
if(type(obj.__new)=="function") then 
-- script viet hoa By http://tranhba.com  if(DEBUG) then 
-- script viet hoa By http://tranhba.com  print("call function new") 
-- script viet hoa By http://tranhba.com  print("arg num:"..getn(arg)) 
-- script viet hoa By http://tranhba.com  for i=1,getn(arg) do 
-- script viet hoa By http://tranhba.com  print("\targ["..i.."]#"..arg[i]) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end 
obj:__new(arg) 
end 
return obj 
end 

function inherit(base,class) -- script viet hoa By http://tranhba.com  cïng new ®Ých kh¸c nhau lµ , class ®· cã ®Ých thµnh viªn , kh«ng hÒ n÷a tõ base sao chÐp 
__cclone(base,class) 
return class 
end 


end
