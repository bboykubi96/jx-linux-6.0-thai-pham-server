
function add483() 
level = random(10,20); 
AddSkillState(483, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn trong l«i tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> l«i giÕt néi c«ng mét phót bªn trong gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

function add499() 
level = random(10,30); 
AddSkillState(499, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi l«i tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> l«i giÕt ngo¹i c«ng mét phót bªn trong gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

Tab={add483} 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
i = random(getn(Tab)) 
Tab[i](); 
return 0; -- script viet hoa By http://tranhba.com  thñ tiªu vËt phÈm 
end 
end 
