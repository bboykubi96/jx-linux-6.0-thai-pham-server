-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n d�ch tr�m phu xe ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

CurStation = 10; 
Include("\\script\\global\\station.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\global\\skills_table.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

--dofile("script/global/g7vn/g7configall.lua")

	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		return 1
	end

NewcomerStationCommon("Phu xe # n�i n�y m�c d� l� h� khu , nh�ng l� ���ng b� lui t�i c�ng r�t ph��ng ti�n , ng��i mu�n ng�i xe �i n�i n�o ? "); 
end; 
