Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (TAB_ACTION[tabidx][7][1] ~= 0 and TAB_ACTION[tabidx][7][2] ~= 0) then 
SetTask(TAB_ACTION[tabidx][7][1], 4) 
		SetTask(TAB_ACTION[tabidx][7][2], GetCurServerTime() + 30)
end; 

Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> cao c�p kinh nghi�m l�nh b�i <color> , 30 gi�y b�n trong ��t ���c kinh nghi�m v� th� ra l� 4 l�n . ") 
end;