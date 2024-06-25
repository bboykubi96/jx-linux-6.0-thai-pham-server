-- script viet hoa By http://tranhba.com  truyÖn nhµ chi s¸ch 
Include("\\script\\event\\teacher_day_200711\\head.lua");

-- script viet hoa By http://tranhba.com  mçi vai trß chØ cã thÓ th«ng qua gia truyÒn chi s¸ch ®¹o cô ®¹t ®­îc 5 øc kinh nghiÖm ®¸ng gi¸ th­îng h¹n . 
-- script viet hoa By http://tranhba.com  

function main() 
local nDate = tonumber(GetLocalDate("%y%m%d%H")); 
local nExpLimit = GetTask(TSK_TeacherDay200711_UseExpLimit); 
if ( nExpLimit >= TeacherDay200711_UseExpLimit) then 
Say("Sö dông gia truyÒn bİ tŞch ®· ®¹t kinh nghiÖm trŞ gi¸ th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu .",0) 
return 1; 
end 
if (GetLevel() < 50) then 
Say("ThËt lµ tiÕc nuèi , chØ cã nhµ ch¬i <color=yellow>50 cÊp trë lªn <color> míi cã thÓ sö dông nªn bİ tŞch .",0) 
return 1; 
end 
if (nDate < TeacherDay200711_START_TIME or nDate > TeacherDay200711_UseLimitTime) then 
Say("Ho¹t ®éng ®· kÕt thóc , kh«ng thÓ sö dông !",0); 
return 0; 
end 
-- script viet hoa By http://tranhba.com 2.000.000 kinh nghiÖm trŞ gi¸ 
-- script viet hoa By http://tranhba.com 1,5% x¸c suÊt ®¹t ®­îc 1 viªn ®á th¾m b¶o th¹ch 
AddOwnExp(2000000); 
	SetTask(TSK_TeacherDay200711_UseExpLimit,nExpLimit+2000000);
if (random(1,10000) <= 150) then 
AddItem(4,353,1,1,0,0) 
Msg2Player(format("§¹t ®­îc %d %s",1,"Tinh hång b¶o th¹ch ")) 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tGetItem %d %s2007 n¨m ViÖt Nam gi¸o s­ tiÕt ho¹t ®éng ",GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),1,"Tinh hång b¶o th¹ch ")); 
end 
return 0; 
end
