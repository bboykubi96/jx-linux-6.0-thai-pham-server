CAKE_ITEM = 
{ 
{"B�nh sinh nh�t ",200000}, 
{"Th��ng ��ng b�nh sinh nh�t ",1000000}, 
} 

MAX_EXP_CAKE = 50000000 
TASK_CAKE_EXP = 1743 

function main() 
if (GetTask(TASK_CAKE_EXP) < MAX_EXP_CAKE) then 
Msg2Player("Ng�i �� �n r�i m�t "..CAKE_ITEM[caketype][1]..", ��t ���c t��ng th��ng "..CAKE_ITEM[caketype][2].." kinh nghi�m tr� gi� .") 
AddOwnExp(CAKE_ITEM[caketype][2]) 
		SetTask(TASK_CAKE_EXP,GetTask(TASK_CAKE_EXP) + CAKE_ITEM[caketype][2]) 
if (GetTask(TASK_CAKE_EXP) >= MAX_EXP_CAKE) then 
Msg2Player("Ng�i ch� c� th� t� b�nh sinh nh�t ��t ���c 5000 v�n kinh nghi�m tr� gi� !") 
else 
Msg2Player("Ng�i c� th� �n nhi�u m�t b�nh sinh nh�t ��t ���c "..(MAX_EXP_CAKE-GetTask(TASK_CAKE_EXP)).." kinh nghi�m tr� gi� .") 
end 
return 0 
else 
Say("Ng�i ch� c� th� t� b�nh sinh nh�t ��t ���c 5000 v�n kinh nghi�m tr� gi� !",0) 
return 1 
end 
end