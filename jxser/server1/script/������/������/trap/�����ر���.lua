-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n b�c m�n tr�ng th�i chi�n ��u thi�t ��i Trap 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
local zDate = tonumber(date("%Y%m%d%H%M"))
	if zDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		SetPos(1628, 3100)
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng��i ch�i ph�i gia nh�p m�n ph�i m�i c� th� ra kh�i th�nh.", 0);
		SetPos(1628, 3100)
		return 1
	end;

	if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � trong th�nh 
		SetPos(1631, 3096) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ngo�i th�nh 
		SetFightState(1) -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
		else -- script viet hoa By http://tranhba.com  nh� ch�i x� vu tr�ng th�i chi�n ��u , t�c � ngo�i th�nh 
			SetPos(1628, 3100) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � trong th�nh 
				SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
	end; 
AddStation(10) -- script viet hoa By http://tranhba.com  ghi ch�p vai tr� �� t�ng �� ��n ba l�ng huy�n 
SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi�y b�o v� th�i gian 
AddSkillState(963, 1, 0, 18*3) 
end;

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end