
function add462() 
level = random(2,10); 
AddSkillState(462, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> � n�a gi�y b�n trong kh�i ph�c l��ng m�u "..(level*500).."<#> �i�m ") 
end 

function add464() 
level = random(1,10); 
AddSkillState(464, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u k�o d�i kh�i ph�c 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y kh�i ph�c l��ng m�u , m�i n�a gi�y kh�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add488() 
level = random(10,20); 
AddSkillState(488, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u th��ng h�n 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y l��ng m�u gia t�ng :"..(level*100).."<#> �i�m ") 
end 

Tab={add462,add464,add488} 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
i = random(getn(Tab)) 
Tab[i](); 
return 0; -- script viet hoa By http://tranhba.com  th� ti�u v�t ph�m 
end 
end 
