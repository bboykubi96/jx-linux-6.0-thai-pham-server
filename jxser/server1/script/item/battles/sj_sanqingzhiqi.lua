IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add505() 
CastSkill(505, 1 ) -- script viet hoa By http://tranhba.com  to�n th� h�n m� 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> ba thanh kh� , khi�n cho ng��i ��ch nh�n � chung quanh to�n th� h�n m� . ") 
end 

function add506() 
CastSkill(506, 1 ) -- script viet hoa By http://tranhba.com  to�n th� ��ng b�ng 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> ba thanh kh� , khi�n cho ng��i ��ch nh�n � chung quanh to�n th� ��ng b�ng . ") 
end 

function add507() 
CastSkill(507, 1 ) -- script viet hoa By http://tranhba.com  to�n th� tr�ng ��c 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> ba thanh kh� , khi�n cho ng��i ��ch nh�n � chung quanh to�n th� tr�ng ��c . ") 
end 

function add508() 
CastSkill(508, 1 ) -- script viet hoa By http://tranhba.com  to�n th� ch�m l�i 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> ba thanh kh� , khi�n cho ng��i ��ch nh�n � chung quanh to�n th� ch�m l�i . ") 
end 

Tab={add505,add506,add507,add508} 

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
