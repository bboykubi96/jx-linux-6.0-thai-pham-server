-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n to v� l�ng ��ng 
-- script viet hoa By http://tranhba.com TrapID# hai h� khu 80 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng��i ch�i ph�i gia nh�p m�n ph�i m�i c� th� ra kh�i th�nh.", 0);
		return 1
	end;
SetFightState(1); 
NewWorld(199, 1644 ,2906) 
AddTermini(218) 
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