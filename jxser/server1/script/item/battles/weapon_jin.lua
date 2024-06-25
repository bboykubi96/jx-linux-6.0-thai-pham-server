IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua") 
Include("\\script\\item\\battles\\addmarshalpoint.lua") 

function add479() 
level = random(10,20); 
AddSkillState(479, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn trong phæ tæn th­¬ng 
Msg2Player("<#> ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ phæ c«ng tæn th­¬ng # gia t¨ng "..(level*10).."<#> ®iÓm ") 
end 

function add487() 
level = random(5,10); 
AddSkillState(487, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi phæ tæn th­¬ng phÇn tr¨m so 
Msg2Player("<#> ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ phæ c«ng tæn th­¬ng # gia t¨ng "..(level*10).."<#>#") 
end 

Tab={add479,add487} 

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
