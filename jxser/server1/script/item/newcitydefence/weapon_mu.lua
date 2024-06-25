
function add480() 
level = random(1,5); 
AddSkillState(480, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn trong ®éc tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót bªn trong ®éc giÕt néi c«ng :"..(level*10).."<#> ®iÓm ") 
end 

function add485() 
level = random(1,5); 
AddSkillState(485, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi ®éc tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> ®éc giÕt néi c«ng mét phót bªn trong gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

Tab={add480,add485} 

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
