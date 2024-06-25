--Bien Kinh bac

function main(sel)
if GetTask(5859)==1 then
Say("§ang VËn Tiªu, Kh«ng ThÓ Vµo Thµnh")
SetPos(1563, 2967)
return 1
end

if ( GetFightState() == 0 ) then	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	SetPos(1888, 2905)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ
	SetPos(1885, 2909)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
	AddStation(4)			-- ¼ÇÂ¼½ÇÉ«Ôø¾­µ½¹ıãê¾©¸®
end;