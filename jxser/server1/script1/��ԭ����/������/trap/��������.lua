--ÖĞÔ­±±Çø ÖìÏÉÕò±±ÃÅ Õ½¶·×´Ì¬ÇĞ»»Trap
--TrapId£º66

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
if GetTask(5859)==1 then
Say("§ang VËn Tiªu, Kh«ng ThÓ Vµo Thµnh")
SetPos(1624, 2976)
 Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ch¬i ¨n gian cè g¾ng ®­a Tiªu vµo thµnh <color=green>Tiªu Bang héi<color=yellow> lËp tøc quay trë l¹i 203/186 Chu Tiªn TrÊn.!")
return 1
end
	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
		SetPos(1697, 3097)
		return 1
	end

if ( GetFightState() == 0 ) then
	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	SetPos(1697, 3097)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ
	SetPos(1695, 3099)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
	AddStation(15)			-- ¼ÇÂ¼½ÇÉ«Ôø¾­µ½¹ıÖìÏÉÕò
end;

 