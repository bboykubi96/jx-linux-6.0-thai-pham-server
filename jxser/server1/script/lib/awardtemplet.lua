

-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##awardtemplet.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-03-20 18:55:45 
IncludeLib("ITEM") 
IncludeLib("ITEM") 

tbAwardTemplet = {} 

tbAwardTemplet.TYPE = {} 

function tbAwardTemplet:RegType(szKey, pClass) 
self.TYPE[szKey] = pClass 
end 

function tbAwardTemplet:GivByRandom(tbItem, nAwardCount, tbLogTitle) 
if tbItem == nil then 
return 0 
end 
local rtotal = 10000000 
local rcur=random(1,rtotal); 
local rstep=0; 
for i=1,getn(tbItem) do 
		rstep=rstep+floor(tbItem[i].nRate*rtotal/100);
if(rcur <= rstep) then 
return self:Give(tbItem[i], nAwardCount, tbLogTitle) 
end 
end 
end 

function tbAwardTemplet:Give(tbItem, nAwardCount, tbLogTitle) 
if not tbItem then -- script viet hoa By http://tranhba.com  v�t ph�m bi�u v� v� �ch 
return 0 
end 
nAwardCount = nAwardCount or 1 
if type(tbItem[1]) == "table" then -- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u v�t ph�m 
if tbItem[1].nRate then -- script viet hoa By http://tranhba.com  theo nh� x�c su�t cho m�t c� 
for i = 1, nAwardCount do 
self:GivByRandom(tbItem, 1, tbLogTitle) 
end 
return 1 
else -- script viet hoa By http://tranhba.com  theo nh� th� t� cho to�n b� 
for i = 1, getn(tbItem) do 
self:Give(tbItem[i], nAwardCount, tbLogTitle) 
end 
return 1; 
end 
else 
for k, v in self.TYPE do 
if tbItem[k] then 
v:Give(tbItem, nAwardCount, tbLogTitle) 
return 1 
end 
end 
end 
end 

function tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle, nAwardCount) 
return self:Give(tbItem, nAwardCount, {szLogTitle}) 
end
