-- script viet hoa By http://tranhba.com Creator:yfeng 
-- script viet hoa By http://tranhba.com Date:2004-8-31 
-- script viet hoa By http://tranhba.com Comm: m« pháng hÖ thèng hµm sè dïng cho ë kh«ng ph¶i lµ trß ch¬i trong hoµn c¶nh ®iÒu thÝ 

-- script viet hoa By http://tranhba.com Say hµm sè 
function Say(content,num,...) 
local input 
print(content) 
if(arg==nil) then 
return 
end 
-- script viet hoa By http://tranhba.com  xö lý ®Õm tæ h×nh thøc 
if(type(arg[1])=="table") then 
for i=1,num do 
print(format("[%s]",arg[1][i])) 
end 
flush() 
input=tonumber(read()) 
if(not input) then 
return 
end 
return select(arg[1],input) 
end 
-- script viet hoa By http://tranhba.com  xö lý thµnh dµi tham sæ h×nh thøc 
for i=1,num do 
print(format("[%s]",arg[i])) 
end 
flush() 
input=tonumber(read()) 
if(not input) then 
return 
end 
return select(arg,input) 
end 
-- script viet hoa By http://tranhba.com -Say ra lÖnh ®Ých lùa chän trë vÒ ®iÒu 
function select(buttons,index) 
local run,sp,ep 
if(index < 1 or index > getn(buttons)) then 
if(DEBUG) then 
print("select button index error.") 
end 
return 
end 
sp,ep = strfind(buttons[index],"/#") 
if(ep) then 
		run = strsub(buttons[index],ep+1,strlen(buttons[index]))
if(DEBUG) then 
print(run) 
print("dostring...") 
end 
return dostring(run) 
end 
sp,ep = strfind(buttons[index],"/") 
if(ep) then 
		run = strsub(buttons[index],ep+1,strlen(buttons[index])).."()"
if(DEBUG) then 
print(run) 
print("dostring...") 
end 
return dostring(run) 
end 
return 
end 

-- script viet hoa By http://tranhba.com  hai néi tån kÝnh gièng nh­ thay ®æi l­îng tæ 
__memTempTask={} 
__memTask={} 

-- script viet hoa By http://tranhba.com  thiÕt trÝ / lÊy ®­îc t¹m thêi nhiÖm vô thay ®æi l­îng 
function SetTempTask(index,value) 
if(value==nil) then value = 0 end 
__memTempTask[index] = value 
if(DEBUG) then 
print(index,value) 
end 
return 
end 

function GetTempTask(index) 
local r = __memTempTask[index] 
if(r==nil) then return 0 end 
if(DEBUG) then print(r) end 
return r 
end 
