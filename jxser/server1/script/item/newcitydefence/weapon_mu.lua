
function add480() 
level = random(1,5); 
AddSkillState(480, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n trong ��c t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t b�n trong ��c gi�t n�i c�ng :"..(level*10).."<#> �i�m ") 
end 

function add485() 
level = random(1,5); 
AddSkillState(485, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�n ngo�i ��c t�n th��ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> ��c gi�t n�i c�ng m�t ph�t b�n trong gia t�ng :"..(level*10).."<#> �i�m ") 
end 

Tab={add480,add485} 

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
