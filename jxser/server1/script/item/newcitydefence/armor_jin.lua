
function add474() 
level = random(1,7); 
AddSkillState(474, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i ®éc phßng 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> ë 1 phót bªn trong gia t¨ng ®éc phßng "..(level*10).."<#> %") 
end 

Tab={add474} 

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
