-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : toll_tongpaixinshi.lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-08-16 15:28:15 
-- script viet hoa By http://tranhba.com  Desc : tin/th¬ khiÕn cho nhiÖm vô ®ång bµi bªn ph¶i kiÖn xóc ph¸t ch©n vèn 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(itemindex) 
local paramvalue = GetItemParam(itemindex, 1) 
if ( paramvalue >= 5 ) then 
Msg2Player("ThËt xin lçi , ng­¬i tin/th¬ khiÕn cho ®ång bµi ®· sö dông qu¸ 5 lÇn , nã ®em bŞ tiªu hñy . ") 
elseif ( nt_getTask(1206) < 2 ) then 
Msg2Player("ThËt xin lçi , ng­¬i cßn kh«ng cã nhËn lÊy ®Õn ®ång bµi tin/th¬ khiÕn cho ®İch danh hiÖu , kh«ng c¸ch nµo sö dông tin/th¬ khiÕn cho ®ång bµi . xin/mêi ®i tr­íc t×m dŞch quan th¨ng cÊp danh hiÖu , c¸m ¬n . ") 
return 1 
else 
		if ( SetSpecItemParam(itemindex, 1, paramvalue+1) == 1 ) then
SyncItem(itemindex) 
local Realvalue = 5 - GetItemParam(itemindex, 1) 
Msg2Player("Ng­¬i tin/th¬ khiÕn cho ®ång bµi sö dông sau nh­ng ®¹t ®­îc mét giê ®İch 15 ®iÓm bŞ/cha/chŞu kh¸ng . tr­íc m¾t cßn cã thÓ sö dông "..Realvalue.." lÇn . ") 
end 

if ( GetSeries() == 0 ) then -- script viet hoa By http://tranhba.com  kim hÖ nh©n vËt bŞ löa kh¾c , 631-635 , kim méc thñy háa thæ 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 634, 2, 1, 64800) 
elseif ( GetSeries() == 1 ) then -- script viet hoa By http://tranhba.com  méc hÖ nh©n vËt bŞ kim kh¾c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 631, 2, 1, 64800) 
elseif ( GetSeries() == 2 ) then -- script viet hoa By http://tranhba.com  thñy hÖ nh©n vËt bŞ ®Êt kh¾c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 635, 2, 1, 64800) 
elseif ( GetSeries() == 3 ) then -- script viet hoa By http://tranhba.com  háa hÖ nh©n vËt bŞ n­íc kh¾c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 633, 2, 1, 64800) 
elseif ( GetSeries() == 4 ) then -- script viet hoa By http://tranhba.com  thæ hÖ nh©n vËt bŞ méc kh¾c 
AddSkillState( 543, 1, 1, 64800) 
AddSkillState( 632, 2, 1, 64800) 
end 

return 1 
end 
end 

function GetDesc( nItem ) 
local szDesc; 
local nIssueID, nIDCount; 
local nPayMonth1 
local nPayMonth1 = GetItemParam( nItem, 1 ) 
local Realvalue = 5 - nPayMonth1 

szDesc = "" 
szDesc = szDesc..format("Ng­¬i tin/th¬ khiÕn cho ®ång bµi sö dông sau nh­ng ®¹t ®­îc mét giê ®İch 15 ®iÓm bŞ/cha/chŞu kh¸ng . tr­íc m¾t cßn cã thÓ sö dông "..Realvalue.." lÇn . "); 
return szDesc; 
end
