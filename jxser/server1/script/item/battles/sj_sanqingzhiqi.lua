IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add505() 
CastSkill(505, 1 ) -- script viet hoa By http://tranhba.com  toµn thÓ h«n mª 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7> ba thanh khÝ , khiÕn cho ng­¬i ®Þch nh©n ë chung quanh toµn thÓ h«n mª . ") 
end 

function add506() 
CastSkill(506, 1 ) -- script viet hoa By http://tranhba.com  toµn thÓ ®ãng b¨ng 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7> ba thanh khÝ , khiÕn cho ng­¬i ®Þch nh©n ë chung quanh toµn thÓ ®ãng b¨ng . ") 
end 

function add507() 
CastSkill(507, 1 ) -- script viet hoa By http://tranhba.com  toµn thÓ tróng ®éc 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7> ba thanh khÝ , khiÕn cho ng­¬i ®Þch nh©n ë chung quanh toµn thÓ tróng ®éc . ") 
end 

function add508() 
CastSkill(508, 1 ) -- script viet hoa By http://tranhba.com  toµn thÓ chËm l¹i 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7> ba thanh khÝ , khiÕn cho ng­¬i ®Þch nh©n ë chung quanh toµn thÓ chËm l¹i . ") 
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
return 0; -- script viet hoa By http://tranhba.com  thñ tiªu vËt phÈm 
end 
end 
