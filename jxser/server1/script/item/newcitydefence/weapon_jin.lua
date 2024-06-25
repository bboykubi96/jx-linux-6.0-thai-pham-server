
function add479() 
level = random(10,20); 
AddSkillState(479, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn trong phæ tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót bªn trong vËt lý s¸t th­¬ng néi c«ng :"..(level*10).."<#> ®iÓm ") 
end 

function add487() 
level = random(5,10); 
AddSkillState(487, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi phæ tæn th­¬ng phÇn tr¨m so 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> vËt lý s¸t th­¬ng ngo¹i c«ng mét phót bªn trong gia t¨ng "..(level*10).."<#> %") 
end 

Tab={add479,add487} 

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
