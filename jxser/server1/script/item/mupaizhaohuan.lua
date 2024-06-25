-- script viet hoa By http://tranhba.com zero 20070713 tÊm b¶ng gç cho gäi 
-- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng tr­íc 16bit lµm tÊm b¶ng gç tr­íc 8bit lµm nhËt kú , ghi chĞp ngµy , sau 8bit ghi chĞp sè lÇn 
-- script viet hoa By http://tranhba.com  sau 16bit lµm ®ång bµi tr­íc 8bit lµm ngµy , sau 8bit sè lÇn 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  sö dông GetByte(TaskValue,1) lÊy tÊm b¶ng gç ®İch nhËt kú 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,2) lÊy tÊm b¶ng gç sö dông sè lÇn 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,3) lÊy ®ång bµi nhËt kú 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,4) lÊy ®ång bµi sö dông sè lÇn 
-- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng ph­¬ng ph¸p 
-- script viet hoa By http://tranhba.com  SetByte(TaskValue,i,n) trong ®ã i bµy tá thø mÊy ch÷ tiÕt , n bµy tá nhËt kú hoÆc sè lÇn 10 vµo chÕ 
Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");
mupai_Task=1826; 
function main( nItemIdx ) 
local TaskValue=GetTask(mupai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if(nDate>20220820) then 
Say(" lÖnh bµi ®· qua kú sö dông , hiÖu lùc biÕn mÊt !",0) 
return 0; 
end 
if( IsCharged() == 0) then 
Say("ThËt lµ tiÕc nuèi , chØ cã ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("ThËt lµ tiÕc nuèi , chØ cã ®· sung trŞ gi¸ 90 cÊp trë lªn nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,1) ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ h«m nay sè lÇn kh«i phôc 
TaskValue=SetByte(TaskValue,1,nDate); -- script viet hoa By http://tranhba.com  thiÕt trİ tÊm b¶ng gç nhËt kú thø 1 ch÷ tiÕt 
TaskValue=SetByte(TaskValue,1,40); -- script viet hoa By http://tranhba.com  kh«i phôc tÊm b¶ng gç sè lÇn 40 thø 2 ch÷ tiÕt 
SetTask(mupai_Task,TaskValue); -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô nhiÖm vô thay ®æi l­îng 
end 
local temp_count=GetByte(TaskValue,1); 
if(temp_count > 0 ) then -- script viet hoa By http://tranhba.com  sè lÇn lín h¬n 0 lÇn 
if( CallBoss(1) == 0) then 
TaskValue=SetByte(TaskValue,1,temp_count-1); 
SetTask(mupai_Task,TaskValue); -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng 
return 0; 
else 
return 1; 
end 
else 
Say("H«m nay ®· sö dông 40 c¸ tÊm b¶ng gç liÔu # chê ngµy mai míi cã thÓ tiÕp tôc sö dông !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
