Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
newyear0901_resettask(); 

local n_date = tonumber(GetLocalDate("%Y%m%d")); 
if (n_date >= 20090216) then 
Say("Nªn vËt phÈm ®· qua kú .", 0); 
return 0; 
end 

	if (GetTask(newyear0901_TSK_GetExp_Yanhua) + 200 > 20000) then
Say("§¹i hiÖp ®· ®¹t tíi cao nhÊt kinh nghiÖm , v× vËy , kh«ng thÓ sö dông n÷a nghªnh xu©n ph¸o b«ng liÔu .", 0); 
return 1; 
end 
	SetTask(newyear0901_TSK_GetExp_Yanhua, GetTask(newyear0901_TSK_GetExp_Yanhua) + 200);
AddOwnExp(2000000); 
CastSkill(932, 1); 
end