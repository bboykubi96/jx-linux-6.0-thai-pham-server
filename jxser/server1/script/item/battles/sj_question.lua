IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add462() 
level = random(2,10); 
AddSkillState(462, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i n�a gi�y ��ch l��ng m�u h�i ph�c "..(level*500).."<#> �i�m ") 
end 


function add463() 
level = random(2,10); 
AddSkillState(463, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i n�a gi�y ��ch n�i l�c h�i ph�c "..(level*500).."<#> �i�m ") 
end 

function add464() 
level = random(1,10); 
AddSkillState(464, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u k�o d�i kh�i ph�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y ��ch l��ng m�u h�i ph�c , m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add465() 
level = random(1,10); 
AddSkillState(465, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c k�o d�i h�i ph�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y ��ch n�i l�c h�i ph�c , m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add466() 
level = random(1,4); 
AddSkillState(466, level, 0, 1080 ) 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t b� th��ng ��ng t�c gi�m b�t #"..(level*10).."<#>#") 
end 

function add467() 
level = random(1,4); 
AddSkillState(467, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c tr�ng ��c th�i gian gi�m b�t 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t tr�ng ��c th�i gian gi�m b�t #"..(level*10).."<#>#") 
end 

function add468() 
level = random(1,4); 
AddSkillState(468, level, 0, 1080 ) 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ch�m l�i th�i gian gi�m b�t #"..(level*10).."<#>#") 
end 

function add469() 
level = random(1,4); 
AddSkillState(469, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c h�n m� th�i gian gi�m b�t 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t h�n m� th�i gian gi�m b�t #"..(level*10).."<#>#") 
end 

function add471() 
level = random(2,10); 
AddSkillState(471, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i n�a gi�y ��ch l��ng m�u h�i ph�c "..(level*500).."<#> �i�m c�ng k�o d�i n�a gi�y ��ch n�i l�c h�i ph�c "..(level*500).."<#> �i�m ") 
end 

function add472() 
level = random(1,10); 
AddSkillState(472, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c k�o d�i kh�i ph�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y ��ch l��ng m�u h�i ph�c , m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m c�ng k�o d�i 30 gi�y ��ch n�i l�c h�i ph�c , m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add473() 
level = random(1,7); 
AddSkillState(473, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i ph� ph�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ph� ph�ng # gia t�ng "..(level*10).."<#>#") 
end 

function add474() 
level = random(1,7); 
AddSkillState(474, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i ��c ph�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ��c ph�ng # gia t�ng "..(level*10).."<#>#") 
end 

function add475() 
level = random(1,7); 
AddSkillState(475, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�ng ph�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t b�ng ph�ng # gia t�ng "..(level*10).."<#>#") 
end 

function add476() 
level = random(1,7); 
AddSkillState(476, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l�a ph�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t l�a ph�ng # gia t�ng "..(level*10).."<#>#") 
end 

function add477() 
level = random(1,7); 
AddSkillState(477, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l�i ph�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t l�i ph�ng # gia t�ng "..(level*10).."<#>#") 
end 

function add478() 
level = random(1,4); 
AddSkillState(478, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i to�n kh�ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t t�t c� kh�ng t�nh # gia t�ng "..(level*10).."<#>#") 
end 

function add479() 
level = random(10,20); 
AddSkillState(479, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong ph� t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� ph� c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add480() 
level = random(1,5); 
AddSkillState(480, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong ��c t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� ��c c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add481() 
level = random(10,20); 
AddSkillState(481, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong b�ng t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� b�ng c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add482() 
level = random(10,20); 
AddSkillState(482, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i h�a t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� l�a c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add483() 
level = random(10,20); 
AddSkillState(483, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong l�i t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� l�i c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add485() 
level = random(1,5); 
AddSkillState(485, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i ��c t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ngo�i c�ng h� ��c c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add486() 
level = random(1,4); 
AddSkillState(486, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i b�ng t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ngo�i c�ng h� b�ng c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add487() 
level = random(5,10); 
AddSkillState(487, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i ph� t�n th��ng ph�n tr�m so 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ngo�i c�ng h� ph� c�ng t�n th��ng # gia t�ng "..(level*10).."<#>#") 
end 

function add488() 
level = random(10,20); 
AddSkillState(488, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u th��ng h�n 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 1 ph�t l��ng m�u th��ng h�n gia t�ng #"..(level*100).."<#> �i�m ") 
end 

function add489() 
level = random(10,20); 
AddSkillState(489, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c th��ng h�n 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 1 ph�t n�i l�c th��ng h�n gia t�ng #"..(level*100).."<#> �i�m ") 
end 

function add490() 
level = random(10,20); 
AddSkillState(490, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c th��ng h�n 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y ��ch n�i l�c th��ng h�n gia t�ng #"..(level*100).."<#> �i�m c�ng k�o d�i 30 gi�y ��ch n�i l�c th��ng h�n gia t�ng #"..(level*100).."<#> �i�m ") 
end 

function add493() 
level = random(1,3); 
AddSkillState(493, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c gia t�ng ch�y t�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t t�c �� di ��ng # gia t�ng "..(level*10).."<#>#") 
end 

function add495() 
level = random(10,20); 
AddSkillState(495, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c gia t�ng ch�y t�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t c�ng k�ch m�nh trung t� s� # gia t�ng "..(level*10).."<#>#") 
end 

function add496() 
level = random(1,2); 
AddSkillState(496, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c gia t�ng ch�y t�c 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t v� c�ng ra chi�u ��ng t�c # gia t�ng "..(level*10).."<#>#") 
end 

Tab={add462,add463,add464,add465,add466,add467,add468,add469,add471,add472,add473,add474,add475,add476,add477,add478,add479,add480,add481,add482,add483,add485,add486,add487,add488,add489,add490,add493,add495,add496} 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
i = random(getn(Tab)) 
Tab[i](); 
		BT_SetData(PL_GETITEM, BT_GetData(PL_GETITEM) + 1);
bt_addtotalpoint(BT_GetTypeBonus(PL_GETITEM, GetCurCamp())) 
checkbattlerule(BT_GetTypeBonus(PL_GETITEM, GetCurCamp())) 
BT_SortLadder(); 
BT_BroadSelf(); 
return 0; -- script viet hoa By http://tranhba.com  th� ti�u v�t ph�m 
end 
end 
