-- script viet hoa By http://tranhba.com ##�#�### ###��###3�� �####��#####Trap

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		SetPos(1759, 3237)
		return 1
	end

if ( GetFightState() == 0 ) then	-- script viet hoa By http://tranhba.com  �##ߴ#��##�####��####���#��
	SetPos(1761, 3245)		-- script viet hoa By http://tranhba.com  ��#�##�#Trap#�##Ŀ#�#���#ݩ	
	SetFightState(1)		-- script viet hoa By http://tranhba.com  ######�####��#
else			       		-- script viet hoa By http://tranhba.com  �##ߴ#���####��####���#ݩ
	SetPos(1759, 3237)		-- script viet hoa By http://tranhba.com  ��#�##�#Trap#�##Ŀ#�#���#��	
	SetFightState(0)		-- script viet hoa By http://tranhba.com  ########�####��#
end;
	AddStation(13)			-- script viet hoa By http://tranhba.com  ##�###�#�######�###��#
end;

 
