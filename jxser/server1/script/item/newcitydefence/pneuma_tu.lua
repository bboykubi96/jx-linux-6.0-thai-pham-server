
function add466() 
level = random(1,4); 
AddSkillState(466, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c b� th��ng ��ng t�c gi�m b�t 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t gi�m b�t b� th��ng "..(level*10).."<#> %") 
end 

function add467() 
level = random(1,4); 
AddSkillState(467, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  nh� ch�i ��t ���c tr�ng ��c th�i gian gi�m b�t 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> 1 ph�t gi�m b�t tr�ng ��c th�i gian :"..(level*10).."<#> %") 
end 

Tab={add466,add467} 

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
