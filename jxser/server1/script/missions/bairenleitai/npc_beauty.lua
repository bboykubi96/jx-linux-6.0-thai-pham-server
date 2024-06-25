-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - l«i ®µi mü n÷ 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##npc_beauty.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-05-03 10:26:19 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main(nNpcIndex) 
local szName = GetName(); 

local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local nParam1 = GetNpcParam(nNpcIndex, 1); 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> bän hä nãi chØ cÇn nghe ta tÊu hoµn bµi h¸t nµy sÏ c¶m gi¸c tinh thÇn phÊn chÊn , tu luyÖn thêi ®iÓm còng cã thÓ ®Ò cao mét Ýt c«ng lùc , ng­¬i nghe mét chót nh×n cã ph¶i hay kh«ng qu¶ thËt gièng nh­ truyÒn thuyÕt kú qu¸i nh­ thÕ ?" 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tinsert(tbDailog, {" lîi h¹i nh­ vËy , nh­ vËy ta ph¶i nghe nghe nh×n .", onBeautyState, {szName, nParam1}}); 
tinsert(tbDailog, {"TÝnh / chän , ta ®èi víi nh÷ng thø kia c­êi giìn kh«ng cã høng thó ."}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 

end 

function onBeautyState(szName, nParam1) 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:AddDoubleState", szName, nParam1);
end 

function OnTimer(nNpcIndex) 
DelNpc(nNpcIndex); 
end 
