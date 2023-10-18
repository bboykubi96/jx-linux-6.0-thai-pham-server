-- script viet hoa By http://tranhba.com  t©y b¾c nam khu vÜnh nh¹c trÊn to ph­îng t­êng phñ 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c nam khu 28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 
Include("\\script\\global\\g7vn\\g7configall.lua") 
function main(sel) 
local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
		SetPos(1411, 2913)
		return 1
	end

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(1, 1800 ,3603) 
else 
Talk(1,"","Tr­íc mÆt nguy hiÓm , cßn lµ trë vÒ tu luyÖn mét c¸i !") 
SetPos(1411, 2913) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

end; 
