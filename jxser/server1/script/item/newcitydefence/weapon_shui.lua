
function add481() 
level = random(10,20); 
AddSkillState(481, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn trong b¨ng tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> b¨ng giÕt néi c«ng 1 phót bªn trong gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

function add486() 
level = random(1,10); 
AddSkillState(486, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi b¨ng tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> b¨ng giÕt ngo¹i c«ng mét phót bªn trong gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

Tab={add481,add486} 

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
