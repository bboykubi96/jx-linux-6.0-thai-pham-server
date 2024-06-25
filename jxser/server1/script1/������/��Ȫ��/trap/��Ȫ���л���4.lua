--½­ÄÏÇø ÁúÈª´å Õ½¶·×´Ì¬ÇĞ»»Trap
--Trap Id 93
--By ËÕÓî 2003Äê10ÔÂ15ÈÕ

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
		SetPos(1657, 3198)
		return 1
	end

if ( GetFightState() == 0 ) then	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	SetPos(1664, 3191)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ
	SetPos(1657, 3198)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
end;