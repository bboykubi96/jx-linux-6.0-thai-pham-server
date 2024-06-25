--ÖĞÔ­±±Çø ÖìÏÉÕò¶«ÃÅ Õ½¶·×´Ì¬ÇĞ»»Trap
--TrapID£º63

function main(sel)
if GetTask(5859)==1 then
Say("§ang VËn Tiªu, Kh«ng ThÓ Vµo Thµnh")
SetPos(1624, 2976)
 Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ch¬i ¨n gian cè g¾ng ®­a Tiªu vµo thµnh <color=green>Tiªu Bang héi<color=yellow> lËp tøc quay trë l¹i 203/186 Chu Tiªn TrÊn.!")
return 1
end
if ( GetFightState() == 0 ) then	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	SetPos(1729, 3246)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ
	SetPos(1727, 3242)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
	AddStation(15)			-- ¼ÇÂ¼½ÇÉ«Ôø¾­µ½¹ıÖìÏÉÕò
end;
