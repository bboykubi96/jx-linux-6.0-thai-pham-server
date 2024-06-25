-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn to vò l¨ng ®éng 
-- script viet hoa By http://tranhba.com TrapID# hai hå khu 80 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng­êi ch¬i ph¶i gia nhËp m«n ph¸i míi cã thÓ ra khái thµnh.", 0);
		return 1
	end;
SetFightState(1); 
NewWorld(199, 1644 ,2906) 
AddTermini(218) 
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