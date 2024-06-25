-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn to nam nh¹c trÊn 
-- script viet hoa By http://tranhba.com TrapID# hai hå khu 80 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		SetPos(1808, 3456)
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng­êi ch¬i ph¶i gia nhËp m«n ph¸i míi cã thÓ ra khái thµnh.", 0);
		SetPos(1808, 3456)
		return 1
	end;
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(54, 1471 ,2992) 
else 
Talk(1,"","ThËt xin lçi , kh«ng tíi cÊp n¨m ®Ých tay míi kh«ng thÓ ra th«n . ") 
SetPos(1808, 3456) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

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