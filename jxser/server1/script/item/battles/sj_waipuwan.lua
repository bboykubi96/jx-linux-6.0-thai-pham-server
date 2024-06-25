Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine() 
level = GetLevel() 
if(level < 199) then
Msg2Player("VËt phÈm t¹m thêi kh«ng thÓ sö dông")
return 1 
end 
AddSkillState( 487, 5, 0, 3240); 
Msg2Player("Ng­¬i ¨n råi mét bªn ngoµi phæ hoµn "); 
end