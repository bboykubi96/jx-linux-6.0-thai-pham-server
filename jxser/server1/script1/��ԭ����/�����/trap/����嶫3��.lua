-- script viet hoa By http://tranhba.com ##¤#Ä### ###·´###3·Å â####´×#####Trap

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		SetPos(1759, 3237)
		return 1
	end

if ( GetFightState() == 0 ) then	-- script viet hoa By http://tranhba.com  Ý##ß´#ãó##â####´×####´¤ó³#Äó
	SetPos(1761, 3245)		-- script viet hoa By http://tranhba.com  ÐÌ#·##³#Trap#·##Ä¿#Ä#·¤ó³#Ý©	
	SetFightState(1)		-- script viet hoa By http://tranhba.com  ######â####´×#
else			       		-- script viet hoa By http://tranhba.com  Ý##ß´#ãóâ####´×####´¤ó³#Ý©
	SetPos(1759, 3237)		-- script viet hoa By http://tranhba.com  ÐÌ#·##³#Trap#·##Ä¿#Ä#·¤ó³#Äó	
	SetFightState(0)		-- script viet hoa By http://tranhba.com  ########â####´×#
end;
	AddStation(13)			-- script viet hoa By http://tranhba.com  ##¢###Ð#¤######ý###·´#
end;

 
