
function add483() 
level = random(10,20); 
AddSkillState(483, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong l�i t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> l�i gi�t n�i c�ng m�t ph�t b�n trong gia t�ng :"..(level*10).."<#> �i�m ") 
end 

function add499() 
level = random(10,30); 
AddSkillState(499, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i l�i t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> l�i gi�t ngo�i c�ng m�t ph�t b�n trong gia t�ng :"..(level*10).."<#> �i�m ") 
end 

Tab={add483} 

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
