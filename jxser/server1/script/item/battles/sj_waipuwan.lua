Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine() 
level = GetLevel() 
if(level < 199) then
Msg2Player("V�t ph�m t�m th�i kh�ng th� s� d�ng")
return 1 
end 
AddSkillState( 487, 5, 0, 3240); 
Msg2Player("Ng��i �n r�i m�t b�n ngo�i ph� ho�n "); 
end