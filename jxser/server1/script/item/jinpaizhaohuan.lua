-- script viet hoa By http://tranhba.com zero 20070713 kim bµi cho gäi 
-- script viet hoa By http://tranhba.com  ch÷ thø nhÊt tiÕt ghi chĞp ng©n ch÷ thø hai tiÕt ghi chĞp kim ch÷ thø ba tiÕt ghi chĞp ngäc , bëi v× chØ dïng mét lÇn , chØ cÇn ghi chĞp thêi gian 
-- script viet hoa By http://tranhba.com tinhpn 20100720: forbid item 
Include("\\script\\item\\forbid_jinpai_yupai.lua");


Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ®Æc thï b¶n ®å cÊm dïng 
if( %tbUseOnlyInMap[i] == nMapId ) then 
return 1 
end 
end 
return 0 
end 


jinpai_Task=1827; 
function main( nItemIdx ) 
local TaskValue=GetTask(jinpai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
-- script viet hoa By http://tranhba.com if(nDate>20080331) then 
-- script viet hoa By http://tranhba.com  Say(" lÖnh bµi qua sö dông kú h¹n , kh«ng cã hiÖu qu¶ liÔu , chØ cã thÓ vøt bá ",0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch ReQuest 
if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("Kh«ng thÓ ë ta ®©y sö dông vËt phÈm .") 
return 1 
end 

-- script viet hoa By http://tranhba.com tinhpn 20100720: forbid item 
if (ForbidMap() == 1) then 
return 1 
end 

if( IsCharged() == 0) then 
Say("ThËt tiÕc nuèi , chØ cã ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("ThËt tiÕc nuèi , chØ cã ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,2) ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ h«m nay 
if( CallBoss(4) == 0) then 
TaskValue=SetByte(TaskValue,2,nDate); -- script viet hoa By http://tranhba.com  thiÕt trİ kim bµi nhËt kú thø 1 ch÷ tiÕt 
SetTask(jinpai_Task,TaskValue); 
return 0; 
else 
return 1; 
end 
else 
Say("H«m nay ®· sö dông 1 c¸ kim bµi liÔu # chê ngµy mai míi cã thÓ tiÕp tôc sö dông !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
