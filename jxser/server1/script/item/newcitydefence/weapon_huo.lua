
function add482() 
level = random(10,20); 
AddSkillState(482, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i n�i h�a t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t n�i h�a gi�t n�i c�ng gia t�ng :"..(level*10).."<#> �i�m ") 
end 

function add498() 
level = random(10,30); 
AddSkillState(498, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i l�a t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t n�i h�a gi�t ngo�i c�ng gia t�ng :"..(level*10).."<#> �i�m ") 
end 

Tab={add482} 

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
