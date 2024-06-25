
function add482() 
level = random(10,20); 
AddSkillState(482, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i néi háa tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót néi háa giÕt néi c«ng gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

function add498() 
level = random(10,30); 
AddSkillState(498, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i bªn ngoµi löa tæn th­¬ng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót néi háa giÕt ngo¹i c«ng gia t¨ng :"..(level*10).."<#> ®iÓm ") 
end 

Tab={add482} 

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
