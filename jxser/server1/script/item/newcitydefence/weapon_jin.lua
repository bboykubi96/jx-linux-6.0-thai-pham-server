
function add479() 
level = random(10,20); 
AddSkillState(479, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong ph� t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t b�n trong v�t l� s�t th��ng n�i c�ng :"..(level*10).."<#> �i�m ") 
end 

function add487() 
level = random(5,10); 
AddSkillState(487, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i ph� t�n th��ng ph�n tr�m so 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> v�t l� s�t th��ng ngo�i c�ng m�t ph�t b�n trong gia t�ng "..(level*10).."<#> %") 
end 

Tab={add479,add487} 

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
