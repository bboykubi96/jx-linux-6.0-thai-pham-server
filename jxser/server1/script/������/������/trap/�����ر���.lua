-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn b¾c m«n tr¹ng th¸i chiÕn ®Êu thiÕt ®æi Trap 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
local zDate = tonumber(date("%Y%m%d%H%M"))
	if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		SetPos(1628, 3100)
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng­êi ch¬i ph¶i gia nhËp m«n ph¸i míi cã thÓ ra khái thµnh.", 0);
		SetPos(1628, 3100)
		return 1
	end;

	if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë trong thµnh 
		SetPos(1631, 3096) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®i ra Trap ®iÓm , môc ®Ých ®iÓm ë ngoµi thµnh 
		SetFightState(1) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
		else -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu , tøc ë ngoµi thµnh 
			SetPos(1628, 3100) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®i ra Trap ®iÓm , môc ®Ých ®iÓm ë trong thµnh 
				SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
	end; 
AddStation(10) -- script viet hoa By http://tranhba.com  ghi chÐp vai trß ®· tõng ®· ®Õn ba l¨ng huyÒn 
SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi©y b¶o vÖ thêi gian 
AddSkillState(963, 1, 0, 18*3) 
end;

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end