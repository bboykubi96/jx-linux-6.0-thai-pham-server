
function add462() 
level = random(2,10); 
AddSkillState(462, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> ë nöa gi©y bªn trong kh«i phôc l­îng m¸u "..(level*500).."<#> ®iÓm ") 
end 

function add464() 
level = random(1,10); 
AddSkillState(464, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u kÐo dµi kh«i phôc 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y kh«i phôc l­îng m¸u , mçi nöa gi©y kh«i phôc "..(level*100).."<#> ®iÓm ") 
end 

function add488() 
level = random(10,20); 
AddSkillState(488, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u th­îng h¹n 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y l­îng m¸u gia t¨ng :"..(level*100).."<#> ®iÓm ") 
end 

Tab={add462,add464,add488} 

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
