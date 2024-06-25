-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu ®¹o h­¬ng th«n ®«ng 2 cöa tr¹ng th¸i chiÕn ®Êu thiÕt ®æi Trap 
-- script viet hoa By http://tranhba.com TrapId:80 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		SetPos(1799, 3194)
		return 1
	end

if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë trong thµnh 
SetPos(1802, 3195) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®i ra Trap ®iÓm , môc ®Ých ®iÓm ë ngoµi thµnh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu , tøc ë ngoµi thµnh 
SetPos(1799, 3194) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®i ra Trap ®iÓm , môc ®Ých ®iÓm ë trong thµnh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
AddStation(13) -- script viet hoa By http://tranhba.com  ghi chÐp vai trß ®· tõng ®· ®Õn ®¹o h­¬ng th«n 
end; 
