function main() 
level = GetLevel() 
if(level < 199) then
Msg2Player("V�t ph�m t�m th�i kh�ng th� s� d�ng")
return 1 
end 
AddSkillState( 493, 2, 0, 388800,1); 
Msg2Player("Trong v�ng 6 gi� t�i , t�c �� di chuy�n c�a ng��i t�ng 20 �i�m"); 
end