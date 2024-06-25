-- script viet hoa By http://tranhba.com zero 20070713 ng©n bµi cho gäi 
-- script viet hoa By http://tranhba.com  ch÷ thø nhÊt tiÕt ghi chĞp ng©n ch÷ thø hai tiÕt ghi chĞp kim ch÷ thø ba tiÕt ghi chĞp ngäc , bëi v× chØ dïng mét lÇn , chØ cÇn ghi chĞp thêi gian 

Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");
yinpai_Task=1827; 
function main( nItemIdx ) 
local TaskValue=GetTask(yinpai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if(nDate>20080331) then 
Say(" lÖnh bµi ®· qua sö dông kú , mÊt ®i hiÖu lùc !",0) 
return 0; 
end 
if( IsCharged() == 0) then 
Say("ThËt lµ tiÕc nuèi , chØ cã ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("ThËt lµ tiÕc nuèi , chØ cã 90 cÊp trë lªn nhµ ch¬i míi cã thÓ sö dông .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,1) ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ h«m nay 
if( CallBoss(3) == 0) then 
TaskValue=SetByte(TaskValue,1,nDate); -- script viet hoa By http://tranhba.com  thiÕt trİ ng©n bµi nhËt kú thø 1 ch÷ tiÕt 
SetTask(yinpai_Task,TaskValue); 
return 0; 
else 
return 1; 
end 
else 
Say("H«m nay ®· sö dông 1 c¸ ng©n bµi liÔu , chê ngµy mai míi cã thÓ tiÕp tôc sö dông !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
