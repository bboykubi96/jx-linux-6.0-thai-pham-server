-- script viet hoa By http://tranhba.com Creator:yfeng 
-- script viet hoa By http://tranhba.com Date:2004-8-31 
-- script viet hoa By http://tranhba.com Comm: m� ph�ng h� th�ng h�m s� d�ng cho � kh�ng ph�i l� tr� ch�i trong ho�n c�nh �i�u th� 

-- script viet hoa By http://tranhba.com Say h�m s� 
function Say(content,num,...) 
local input 
print(content) 
if(arg==nil) then 
return 
end 
-- script viet hoa By http://tranhba.com  x� l� ��m t� h�nh th�c 
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
-- script viet hoa By http://tranhba.com  x� l� th�nh d�i tham s� h�nh th�c 
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
-- script viet hoa By http://tranhba.com -Say ra l�nh ��ch l�a ch�n tr� v� �i�u 
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

-- script viet hoa By http://tranhba.com  hai n�i t�n k�nh gi�ng nh� thay ��i l��ng t� 
__memTempTask={} 
__memTask={} 

-- script viet hoa By http://tranhba.com  thi�t tr� / l�y ���c t�m th�i nhi�m v� thay ��i l��ng 
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
