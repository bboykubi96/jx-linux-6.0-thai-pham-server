
-- script viet hoa By http://tranhba.com  míi t¨ng liÔu ®ång b¹n ngÉu nhiªn nhiÖm vô xö lý 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/03 PM 15:55 

IncludeLib("FILESYS"); 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng kho ñng hé 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  häc vµo ngÉu nhiªn nhiÖm vô ®Çu v¨n kiÖn 
Include("\\script\\task\\system\\task_main.lua");

TabFile_Load( "\\settings\\partner\\talk\\man_w.txt" , "friendly_man_w");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°é¶Ô»°µÄ±í¸ñ
TabFile_Load( "\\settings\\partner\\talk\\woman_w.txt" , "friendly_woman_w");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°é¶Ô»°µÄ±í¸ñ
TabFile_Load( "\\settings\\partner\\talk\\man_m.txt" , "friendly_man_m");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°é¶Ô»°µÄ±í¸ñ
TabFile_Load( "\\settings\\partner\\talk\\woman_m.txt" , "friendly_woman_m");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°é¶Ô»°µÄ±í¸ñ
TabFile_Load( "\\settings\\partner\\talk\\partner_sex.txt" , "partnersex");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°éÐÔ±ðµÄ±í¸ñ
-- script viet hoa By http://tranhba.com randomseed(GetCurrentTime()) 

function toSprLinkStr(nSettingIdx, nActionId) 
return "<#><link=image[0,8]:#npcspr:?NPCSID="..tostring(nSettingIdx).."?ACTION="..tostring(nActionId)..">" 
end 

function main() 
local peoplesex = GetSex() 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local PartnerFriendly = PARTNER_GetEmotionDegree(partnerindex) 
local NpcCount = PARTNER_Count() 
local nSettingIdx = PARTNER_GetSettingIdx(partnerindex) 
if (partnerindex < 1 or partnerstate == 0) then 
Msg2Player("Ng­¬i b©y giê kh«ng cã gäi ra ®ång b¹n , kh«ng thÓ cïng ®ång b¹n ®èi tho¹i #") 
else 
local nRowCount0 = TabFile_GetRowCount("partnersex") 
local RealNpcSex, RealNpcAir 
local partner_NpcId,partner_NpcSex; 

-- script viet hoa By http://tranhba.com  ®ång b¹n ngÉu nhiªn nhiÖm vô xö lý 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/03 PM 15:55 
local nRandomTaskState = GetTaskStatus(TaskName(GetTask(ID_RANDOMTASK))); 

if nRandomTaskState==nil then nRandomTaskState=0; end; 

if getRandomTaskState()==1 then 

if GetTask(ID_RANDOMTASK)~=0 and nRandomTaskState<3 then 

Say("Ngµi ®Ých ®ång b¹n cã mét <color=green>"..GetTaskText(TaskName(GetTask(ID_RANDOMTASK_WAIT))).."<color> cÊp cho ngµi , ngµi muèn bu«ng tha cho ®ang lµm nhiÖm vô mµ tiÕp nhËn míi sao ? ", 2, 
" ®óng vËy , ta ®èi víi nhiÖm vô míi h¬n c¶m thÊy høng thó mét Ýt /_confirmRandomTask", 
" kh«ng ®­îc , ta tr­íc ®Ých nhiÖm vô cßn ch­a hoµn thµnh ®©y /#setRandomTaskState(2)"); 

return 

else 

-- script viet hoa By http://tranhba.com  thanh kh«ng chê ®îi nhËn ®Ých ngÉu nhiªn nhiÖm vô 
SetTaskStatus(TaskName(GetTask(ID_RANDOMTASK_WAIT)), 0); 
CloseTask( TaskName(GetTask(ID_RANDOMTASK_WAIT)) ); 

ApplyTask( TaskName(GetTask(ID_RANDOMTASK_WAIT)) ); -- script viet hoa By http://tranhba.com  th©n thØnh b¾t ®Çu mét c¸i nhiÖm vô 

return 

end; 

end; 

for i=2,nRowCount0 do 
partner_NpcId = tonumber( TabFile_GetCell( "partnersex", i ,"NpcId")) 
partner_NpcSex = tonumber( TabFile_GetCell( "partnersex", i ,"NpcSex")) 
if ( nSettingIdx == partner_NpcId ) then 
RealNpcSex = partner_NpcSex 
break 
end 
end 
if ( peoplesex == 0 and RealNpcSex == 1 ) then 
local nRowCount1 = TabFile_GetRowCount("friendly_man_w") 
if ( PartnerFriendly >= 0 and PartnerFriendly <= 10) then 
local j = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "friendly_man_w", j ,"friend010") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >10 and PartnerFriendly <= 19) then 
local k = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "ffriendly_man_w", k ,"friend1019") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >19 and PartnerFriendly <= 49) then 
local l = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "friendly_man_w", l ,"friend1949") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >49 and PartnerFriendly <= 84) then 
local m = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "friendly_man_w", m ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >84 and PartnerFriendly <= 95) then 
local n = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "friendly_man_w", n ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >95 and PartnerFriendly <= 100) then 
local o = random(2,nRowCount1) 
local Partner_content = TabFile_GetCell( "friendly_man_w", o ,"friend95100") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
end 
elseif ( peoplesex == 1 ) and ( RealNpcSex == 1 ) then 
local nRowCount2 = TabFile_GetRowCount("friendly_woman_w") 
if ( PartnerFriendly >= 0 and PartnerFriendly <= 10) then 
local p = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", p ,"friend010") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >10 and PartnerFriendly <= 19) then 
local q = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", q ,"friend1019") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >19 and PartnerFriendly <= 49) then 
local r = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", r ,"friend1949") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >49 and PartnerFriendly <= 84) then 
local s = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", s ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >84 and PartnerFriendly <= 95) then 
local t = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", t ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >95 and PartnerFriendly <= 100) then 
local u = random(2,nRowCount2) 
local Partner_content = TabFile_GetCell( "friendly_woman_w", u ,"friend95100") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
end 
elseif ( peoplesex == 0 ) and ( RealNpcSex == 0 ) then 
local nRowCount3 = TabFile_GetRowCount("friendly_man_m") 
if ( PartnerFriendly >= 0 and PartnerFriendly <= 10) then 
local v = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", v ,"friend010") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >10 and PartnerFriendly <= 19) then 
local w = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", w ,"friend1019") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >19 and PartnerFriendly <= 49) then 
local x = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", x ,"friend1949") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >49 and PartnerFriendly <= 84) then 
local y = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", y ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >84 and PartnerFriendly <= 95) then 
local z = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", z ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >95 and PartnerFriendly <= 100) then 
local a = random(2,nRowCount3) 
local Partner_content = TabFile_GetCell( "friendly_man_m", a ,"friend95100") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
end 
elseif ( peoplesex == 1 ) and ( RealNpcSex == 0 ) then 
local nRowCount4 = TabFile_GetRowCount("friendly_woman_m") 
if ( PartnerFriendly >= 0 and PartnerFriendly <= 10) then 
local b = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", b ,"friend010") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >10 and PartnerFriendly <= 19) then 
local c = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", c ,"friend1019") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >19 and PartnerFriendly <= 49) then 
local d = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", d ,"friend1949") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >49 and PartnerFriendly <= 84) then 
local f = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", f ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >84 and PartnerFriendly <= 95) then 
local g = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", g ,"friend4984") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
elseif ( PartnerFriendly >95 and PartnerFriendly <= 100) then 
local h = random(2,nRowCount4) 
local Partner_content = TabFile_GetCell( "friendly_woman_m", h ,"friend95100") 
Describe(toSprLinkStr(nSettingIdx, 0)..PARTNER_GetName(partnerindex).."<link>:"..Partner_content,1,"KÕt thóc ®èi tho¹i /no") 
end 
end 
end 
end 

function no() 

end 
