
function add471() 
level = random(2,10); 
AddSkillState(471, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> ë nöa gi©y bªn trong kh«i phôc søc sèng "..(level*500).."<#> ®iÓm cïng víi nöa gi©y bªn trong kh«i phôc néi lùc "..(level*500).."<#> ®iÓm ") 
end 

function add472() 
level = random(1,10); 
AddSkillState(472, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc kÐo dµi kh«i phôc 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y kh«i phôc søc sèng , mçi nöa gi©y kh«i phôc "..(level*100).."<#> ®iÓm cïng víi 30 gi©y kh«i phôc néi lùc , kh«ng cã nöa gi©y kh«i phôc "..(level*100).."<#> ®iÓm ") 
end 

function add490() 
level = random(10,20); 
AddSkillState(490, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc th­îng h¹n 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 30 gi©y søc sèng gia t¨ng :"..(level*100).."<#> ®iÓm cïng víi 30 gi©y néi lùc gia t¨ng :"..(level*100).."<#> ®iÓm ") 
end 

Tab={add471,add472,add490} 

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
