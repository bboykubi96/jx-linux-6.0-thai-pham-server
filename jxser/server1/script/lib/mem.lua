-- script viet hoa By http://tranhba.com Creator:yfeng 
-- script viet hoa By http://tranhba.com Date:2004-8-27 


-- script viet hoa By http://tranhba.com  c�n b�n h�m s� kho 

-- script viet hoa By http://tranhba.com  tr� xu�ng ��i m� m� ph�ng m�t ng� ��i t��ng ��ch new, l�i d�ng lua cung c�p table m� ph�ng m�t ng� ��i t��ng ch�c n�ng 
if not MEM_HEAD then 
MEM_HEAD = 1 

function __clone (org,des) -- script viet hoa By http://tranhba.com  sinh th�nh m�t m�i n�i t�n kh�ng gian , c�ng b�o ��m c�ng m� b�n class t�nh th� gi�ng nhau 
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


function new(class,...) -- script viet hoa By http://tranhba.com  m� ph�ng new, sao ch�p m�t m�i th�c l� , c�ng thi h�nh ng�y c�u t�o h�m s� :new(...) 
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

function inherit(base,class) -- script viet hoa By http://tranhba.com  c�ng new ��ch kh�c nhau l� , class �� c� ��ch th�nh vi�n , kh�ng h� n�a t� base sao ch�p 
__cclone(base,class) 
return class 
end 


end
