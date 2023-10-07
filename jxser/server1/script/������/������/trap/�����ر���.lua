Include("\\script\\global\\systemconfig.lua");
function main(sel)

	local isServerOpen = IsServerOpen();-- ("\\script\\global\\systemconfig.lua");
	local nCurDate = tonumber(date("%Y%m%d"));--20231007
	local nCurTime = tonumber(GetLocalDate("%H%M"));--2030
	if(isServerOpen == 0) then 		
		Talk(1, "","Th«ng b¸o: Ch­a tíi giê khai më m¸y chñ, §¹i hiÖp kh«ng thÓ ra ngoµi!");
		SetPos(1620, 3187);	
		return
	end

	if ( GetFightState() == 0 ) then	
		SetPos(1631, 3096);	
		SetFightState(1);	
	else			       		
		SetPos(1628, 3100);	
		SetFightState(0);
	end;
	AddStation(10);	
	SetProtectTime(18*3);
	AddSkillState(963, 1, 0, 18*3); 
end