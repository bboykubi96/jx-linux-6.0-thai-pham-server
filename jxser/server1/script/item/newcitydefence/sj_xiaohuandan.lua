
function add463() 
level = random(2,10); 
AddSkillState(463, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i néi lùc 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> ë nöa gi©y bªn trong kh«i phôc néi lùc "..(level*500).."<#> ®iÓm ") 
end 

function add465() 
level = random(1,10); 
AddSkillState(465, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i néi lùc kÐo dµi håi phôc 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y kh«i phôc néi lùc , mçi nöa gi©y kh«i phôc "..(level*100).."<#> ®iÓm ") 
end 

function add489() 
level = random(10,20); 
AddSkillState(489, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i néi lùc th­îng h¹n 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y néi lùc gia t¨ng :"..(level*100).."<#> ®iÓm ") 
end 

Tab={add463,add465,add489} 

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
