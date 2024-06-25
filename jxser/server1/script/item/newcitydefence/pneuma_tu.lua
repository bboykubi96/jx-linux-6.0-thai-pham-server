
function add466() 
level = random(1,4); 
AddSkillState(466, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nhµ ch¬i ®¹t ®­îc bÞ th­¬ng ®éng t¸c gi¶m bít 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót gi¶m bít bÞ th­¬ng "..(level*10).."<#> %") 
end 

function add467() 
level = random(1,4); 
AddSkillState(467, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nhµ ch¬i ®¹t ®­îc tróng ®éc thêi gian gi¶m bít 
Msg2Player("<#> ngµi ®¹t ®­îc <color=0xB5FDD7> 1 phót gi¶m bít tróng ®éc thêi gian :"..(level*10).."<#> %") 
end 

Tab={add466,add467} 

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
