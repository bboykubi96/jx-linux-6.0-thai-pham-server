
function add481() 
level = random(10,20); 
AddSkillState(481, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong b�ng t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> b�ng gi�t n�i c�ng 1 ph�t b�n trong gia t�ng :"..(level*10).."<#> �i�m ") 
end 

function add486() 
level = random(1,10); 
AddSkillState(486, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i b�ng t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> b�ng gi�t ngo�i c�ng m�t ph�t b�n trong gia t�ng :"..(level*10).."<#> �i�m ") 
end 

Tab={add481,add486} 

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
