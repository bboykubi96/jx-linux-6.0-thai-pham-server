-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn dÞch tr¹m phu xe ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

CurStation = 10; 
Include("\\script\\global\\station.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\global\\skills_table.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

--dofile("script/global/g7vn/g7configall.lua")

	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		return 1
	end

NewcomerStationCommon("Phu xe # n¬i nµy mÆc dï lµ hå khu , nh­ng lµ ®­êng bé lui tíi còng rÊt ph­¬ng tiÖn , ng­¬i muèn ngåi xe ®i n¬i nµo ? "); 
end; 
