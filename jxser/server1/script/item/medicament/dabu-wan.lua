-- script viet hoa By http://tranhba.com  by yfeng 

if not BAN_HEAD then 
	Include("\\script\\global\\ban.lua")
end 

function main(itemIdx) 
local mapid,_,_ = GetWorldPos() 
if(checkSJMaps(mapid)) then 
Msg2Player("Tèng kim chiÕn tr­êng bªn trong kh«ng thÓ dïng ®¹i bæ hoµn . ") 
return 1 
end 
local _,_,detail = GetItemProp(itemIdx) 
if(detail == 218) then -- script viet hoa By http://tranhba.com  c«ng tèc hoµn 
AddSkillState(511,15,1,18*180) 
return 0 
end 
if(detail == 219) then -- script viet hoa By http://tranhba.com  ch¹y tèc hoµn 
AddSkillState(512,15,1,18*180) 
return 0 
end 
if(detail == 220) then -- script viet hoa By http://tranhba.com  phæ phßng hoµn 
AddSkillState(513,20,1,18*180) 
return 0 
end 
if(detail == 221) then -- script viet hoa By http://tranhba.com  ®éc phßng hoµn 
AddSkillState(514,20,1,18*180) 
return 0 
end 
if(detail == 222) then -- script viet hoa By http://tranhba.com  b¨ng phßng hoµn 
AddSkillState(515,20,1,18*180) 
return 0 
end 
if(detail == 223) then -- script viet hoa By http://tranhba.com  löa phßng hoµn 
AddSkillState(516,20,1,18*180) 
return 0 
end 
if(detail == 224) then -- script viet hoa By http://tranhba.com  l«i phßng hoµn 
AddSkillState(517,20,1,18*180) 
return 0 
end 
if(detail == 225) then -- script viet hoa By http://tranhba.com  gi¶m th­¬ng hoµn 
AddSkillState(518,20,1,18*180) 
return 0 
end 
if(detail == 226) then -- script viet hoa By http://tranhba.com  gi¶m ngÊt hoµn 
AddSkillState(519,20,1,18*180) 
return 0 
end 
if(detail == 227) then -- script viet hoa By http://tranhba.com  gi¶m ®éc hoµn 
AddSkillState(520,20,1,18*180) 
return 0 
end 
if(detail == 228) then -- script viet hoa By http://tranhba.com  gi¶m b¨ng hoµn 
AddSkillState(521,20,1,18*180) 
return 0 
end 
if(detail == 229) then -- script viet hoa By http://tranhba.com  phæ c«ng hoµn 
AddSkillState(522,10,1,18*180) 
return 0 
end 
if(detail == 230) then -- script viet hoa By http://tranhba.com  ®éc c«ng hoµn 
AddSkillState(523,10,1,18*180) 
return 0 
end 
if(detail == 231) then -- script viet hoa By http://tranhba.com  b¨ng c«ng hoµn 
AddSkillState(524,10,1,18*180) 
return 0 
end 
if(detail == 232) then -- script viet hoa By http://tranhba.com  löa c«ng hoµn 
AddSkillState(525,10,1,18*180) 
return 0 
end 
if(detail == 233) then -- script viet hoa By http://tranhba.com  l«i c«ng hoµn 
AddSkillState(526,10,1,18*180) 
return 0 
end 
if(detail == 234) then -- script viet hoa By http://tranhba.com  tr­êng mÖnh hoµn 
AddSkillState(527,10,1,18*180) 
return 0 
end 
if(detail == 235) then -- script viet hoa By http://tranhba.com  tr­êng bªn trong hoµn 
AddSkillState(528,10,1,18*180) 
return 0 
end 

end 

function GetDesc(itemIdx) 
local _,_,detail = GetItemProp(itemIdx) 
if(detail == 218) then -- script viet hoa By http://tranhba.com  c«ng tèc hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ vâ c«ng tèc ®é c«ng kÝch # gia t¨ng 30%\n néi c«ng hÖ vâ c«ng tèc ®é c«ng kÝch # gia t¨ng 30%<color>" 
end 
if(detail == 219) then -- script viet hoa By http://tranhba.com  ch¹y tèc hoµn 
return "<color=blue>3 phót bªn trong #\n tèc ®é di ®éng # gia t¨ng 30%<color>" 
end 
if(detail == 220) then -- script viet hoa By http://tranhba.com  phæ phßng hoµn 
return "<color=blue>3 phót bªn trong #\n phæ phßng # gia t¨ng 40%<color>" 
end 
if(detail == 221) then -- script viet hoa By http://tranhba.com  ®éc phßng hoµn 
return "<color=blue>3 phót bªn trong #\n ®éc phßng # gia t¨ng 40%<color>" 
end 
if(detail == 222) then -- script viet hoa By http://tranhba.com  b¨ng phßng hoµn 
return "<color=blue>3 phót bªn trong #\n b¨ng phßng # gia t¨ng 40%<color>" 
end 
if(detail == 223) then -- script viet hoa By http://tranhba.com  löa phßng hoµn 
return "<color=blue>3 phót bªn trong #\n löa phßng # gia t¨ng 40%<color>" 
end 
if(detail == 224) then -- script viet hoa By http://tranhba.com  l«i phßng hoµn 
return "<color=blue>3 phót bªn trong #\n l«i phßng # gia t¨ng 40%<color>" 
end 
if(detail == 225) then -- script viet hoa By http://tranhba.com  gi¶m th­¬ng hoµn 
return "<color=blue>3 phót bªn trong #\n bÞ th­¬ng ®éng t¸c thêi gian # gi¶m bít 40%<color>" 
end 
if(detail == 226) then -- script viet hoa By http://tranhba.com  gi¶m ngÊt hoµn 
return "<color=blue>3 phót bªn trong #\n h«n mª thêi gian # gi¶m bít 40%<color>" 
end 
if(detail == 227) then -- script viet hoa By http://tranhba.com  gi¶m ®éc hoµn 
return "<color=blue>3 phót bªn trong #\n tróng ®éc thêi gian # gi¶m bít 40%<color>" 
end 
if(detail == 228) then -- script viet hoa By http://tranhba.com  gi¶m b¨ng hoµn 
return "<color=blue>3 phót bªn trong #\n chËm l¹i thêi gian # gi¶m bít 40%<color>" 
end 
if(detail == 229) then -- script viet hoa By http://tranhba.com  phæ c«ng hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ phæ c«ng tæn th­¬ng # gia t¨ng 200%\n néi c«ng hÖ phæ c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm <color>" 
end 
if(detail == 230) then -- script viet hoa By http://tranhba.com  ®éc c«ng hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ ®éc c«ng tæn th­¬ng # gia t¨ng 10 ®iÓm / lÇn \n néi c«ng hÖ ®éc c«ng tæn th­¬ng # gia t¨ng 10 ®iÓm / lÇn <color>" 
end 
if(detail == 231) then -- script viet hoa By http://tranhba.com  b¨ng c«ng hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ b¨ng c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm \n néi c«ng hÖ b¨ng c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm <color>" 
end 
if(detail == 232) then -- script viet hoa By http://tranhba.com  löa c«ng hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ löa c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm \n néi c«ng hÖ löa c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm <color>" 
end 
if(detail == 233) then -- script viet hoa By http://tranhba.com  l«i c«ng hoµn 
return "<color=blue>3 phót bªn trong #\n ngo¹i c«ng hÖ l«i c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm \n néi c«ng hÖ l«i c«ng tæn th­¬ng # gia t¨ng 100 ®iÓm <color>" 
end 
if(detail == 234) then -- script viet hoa By http://tranhba.com  tr­êng mÖnh hoµn 
return "<color=blue>3 phót bªn trong #\n sinh m¹ng th­îng h¹n # gia t¨ng 1000 ®iÓm <color>" 
end 
if(detail == 235) then -- script viet hoa By http://tranhba.com  tr­êng bªn trong hoµn 
return "<color=blue>3 phót bªn trong #\n néi lùc th­îng h¹n # gia t¨ng 1000 ®iÓm <color>" 
end 

end 
