-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n to nam nh�c tr�n 
-- script viet hoa By http://tranhba.com TrapID# hai h� khu 80 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(date("%Y%m%d%H%M"))
	if nDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		SetPos(1808, 3456)
		return 1
	end
	if GetLastFactionNumber() < 0 then
		Say("Ng��i ch�i ph�i gia nh�p m�n ph�i m�i c� th� ra kh�i th�nh.", 0);
		SetPos(1808, 3456)
		return 1
	end;
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(54, 1471 ,2992) 
else 
Talk(1,"","Th�t xin l�i , kh�ng t�i c�p n�m ��ch tay m�i kh�ng th� ra th�n . ") 
SetPos(1808, 3456) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

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