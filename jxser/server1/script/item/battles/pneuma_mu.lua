IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add466() 
level = random(1,4); 
AddSkillState(466, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c b� th��ng ��ng t�c gi�m b�t 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>1 ph�t b� th��ng ��ng t�c gi�m b�t #"..(level*10).."<#>#") 
end 

Tab={add466} 

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
