
function add463() 
level = random(2,10); 
AddSkillState(463, level, 0, 12 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> � n�a gi�y b�n trong kh�i ph�c n�i l�c "..(level*500).."<#> �i�m ") 
end 

function add465() 
level = random(1,10); 
AddSkillState(465, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c k�o d�i h�i ph�c 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y kh�i ph�c n�i l�c , m�i n�a gi�y kh�i ph�c "..(level*100).."<#> �i�m ") 
end 

function add489() 
level = random(10,20); 
AddSkillState(489, level, 0, 540 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i l�c th��ng h�n 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 30 gi�y n�i l�c gia t�ng :"..(level*100).."<#> �i�m ") 
end 

Tab={add463,add465,add489} 

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
