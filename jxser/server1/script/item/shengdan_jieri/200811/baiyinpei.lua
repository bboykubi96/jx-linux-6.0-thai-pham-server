Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

function main() 
christmas_resettask(); 
if (GetLevel() < 50 or GetExtPoint(0) < 1) then 
Say("Nhµ ch¬i cÇn sung trÞ gi¸ cïng víi ®¹t tíi 50 cÊp trë lªn míi cã thÓ sö dông b¹ch kim béi .", 0); 
end 
	if (GetTask(christmas_yupei_taskid) + 10000000 <= 200000000) then	
		SetTask(christmas_yupei_taskid, GetTask(christmas_yupei_taskid) + 10000000);
AddOwnExp(10000000); 
else 
Say("§· ®¹t kinh nghiÖm th­îng h¹n , kh«ng thÓ sö dông n÷a b¹ch kim béi liÔu .", 0); 
return 1; 
end 
end