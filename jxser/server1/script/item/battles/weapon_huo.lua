IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua") 
Include("\\script\\item\\battles\\addmarshalpoint.lua") 

function add482() 
level = random(10,20); 
AddSkillState(482, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i h�a t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� l�a c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

function add498() 
level = random(10,30); 
AddSkillState(498, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i l�a t�n th��ng 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t ngo�i c�ng h� l�a c�ng t�n th��ng # gia t�ng "..(level*10).."<#> �i�m ") 
end 

Tab={add482,add498} 

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
