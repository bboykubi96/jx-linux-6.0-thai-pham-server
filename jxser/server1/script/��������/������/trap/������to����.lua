-- script viet hoa By http://tranhba.com  t�y b�c nam khu v�nh nh�c tr�n to ph��ng t��ng ph� 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c nam khu 28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 
Include("\\script\\global\\g7vn\\g7configall.lua") 
function main(sel) 
local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		SetPos(1411, 2913)
		return 1
	end

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(1, 1800 ,3603) 
else 
Talk(1,"","Tr��c m�t nguy hi�m , c�n l� tr� v� tu luy�n m�t c�i !") 
SetPos(1411, 2913) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

end; 
