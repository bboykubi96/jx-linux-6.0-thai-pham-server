function PickUp( nItemIndex, nPlayerIndex ) 
local oldPlyIdx = PlayerIndex; 
local size = GetTeamSize(); 
local mySex = GetSex(); 
if(size < 2) then 
Msg2Player("Ng��i c� ��c th�p l�y n�ng t�nh hoa h�ng kh�ng c� hi�u qu� . "); 
return 0; 
elseif(size > 2) then 
Msg2Player("Ch� c� 1 nam 1 n� h�p th�nh ��i th�p l�y n�ng t�nh hoa h�ng m�i c� t��ng th��ng . "); 
return 0; 
else 
for i = 1, size do 
PlayerIndex = GetTeamMember(i); 
if( mySex ~= GetSex() ) then 
GiveExp(oldPlyIdx,size); 
return 0; 
end 
end 
PlayerIndex = oldPlyIdx; 
Msg2Player("Ch� c� 1 nam 1 n� h�p th�nh ��i th�p l�y n�ng t�nh hoa h�ng m�i c� t��ng th��ng . "); 
return 0; 
end 
end 

function GiveExp(oldPlyIdx,size) 
local levelexp = {70,160,280,400,520,590,770,850,1000,1200,1500}; 
for j = 1, size do 
PlayerIndex = GetTeamMember(j); 
		SetTask(1562, GetTask(1562)+1);
if(GetTask(1562) >= 99 ) then 
AddItem(6,1,833,1,0,0); 
SetTask(1562, 0); 
Msg2Player("Ng��i �� th�p l�y 99 ��a n�ng t�nh hoa h�ng , l�y ���c 1 kh�i y�u y�u X�o Kh�c L�c , th�p l�y ��m thanh linh . "); 
end 
Msg2Player("Ng��i �� th�p l�y "..GetTask(1562).." ��a n�ng t�nh hoa h�ng "); 
local level = GetLevel(); 
		local exp_level = floor(level / 10) + 1;
if(exp_level > 11) then 
exp_level = 11; 
end 
AddOwnExp(levelexp[exp_level]); 
end 
PlayerIndex = oldPlyIdx; 
end