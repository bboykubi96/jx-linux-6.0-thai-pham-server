
function add471() 
level = random(2,10); 
AddSkillState(471, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> � n�a gi�y b�n trong kh�i ph�c s�c s�ng "..(level*500).."<#> �i�m c�ng v�i n�a gi�y b�n trong kh�i ph�c n�i l�c "..(level*500).."<#> �i�m ") 
end 

function add472() 
level = random(1,10); 
AddSkillState(472, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c k�o d�i kh�i ph�c 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y kh�i ph�c s�c s�ng , m�i n�a gi�y kh�i ph�c "..(level*100).."<#> �i�m c�ng v�i 30 gi�y kh�i ph�c n�i l�c , kh�ng c� n�a gi�y kh�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add490() 
level = random(10,20); 
AddSkillState(490, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c th��ng h�n 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y s�c s�ng gia t�ng :"..(level*100).."<#> �i�m c�ng v�i 30 gi�y n�i l�c gia t�ng :"..(level*100).."<#> �i�m ") 
end 

Tab={add471,add472,add490} 

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
