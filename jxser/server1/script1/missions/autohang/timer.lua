Include("\\script\\missions\\autohang\\head.lua");

g_nPassTimes = 0;
g_bFreeTime = 0; -- Ãâ·ÑÊ±¼ä

function OnTimer()


end;

-- Ôö¼ÓÄ³¸ö¹Ò»úÍæ¼ÒµÄ¾­ÑéÖµ
-- ´Ëº¯ÊýÔÚOnTimerÊ±±»AutoAddExpForAllPlayersµ÷ÓÃ
function AEXP_AddHangExp()

	nLevel = GetLevel();
	if (nLevel < AEXP_NEEDLEVEL) then
		Msg2Player("<#> C«ng lùc cña ng­¬i cßn kÐm qu¸! §Õn"..AEXP_NEEDLEVEL.."<#> cÊp trë lªn h·y quay l¹i ®©y nhÐ!");
		return -1;
	end
	
	nExp = 0;
	nPointTime = 0;
	-----------------------
	if (g_bFreeTime == 1) then-- Ãâ·Ñ¼Ó±¶¾­ÑéÈÕ×Ó
		-- ²»ÐèÒªÀ°°ËÖà
		-- ¾­Ñé¼Ó±¶
		nExp = GetAutoHangExpValue(nLevel);
		nExp = nExp * AEXP_FREEDATE_EXPFACTOR;
	else -- ÆÕÍ¨ÈÕ×Ó
		nPointTime = GetTask(AEXP_TASKID);
	
		if (nPointTime == 0) then
			Msg2Player("ChØ cã Ch¸o L¹p B¸t míi hÊp thu ®­îc tinh hoa cña ®¶o nµy, mêi b¹n ®Õn chç Èn SÜ §µo Hoa mua mét Ýt ch¸o."); -- Todo
			return -1;	
		elseif (nPointTime < AEXP_TIME_UPDATE) then
			Msg2Player("HiÖu lùc cña Ch¸o L¹p B¸t s¾p hÕt h¹n, b¹n cÇn ph¶i ®Õn chç Èn SÜ §µo Hoa mua thªm míi cã thÓ gia t¨ng c«ng lùc."); -- Todo
			return -1;
		end
		
		nExp = GetAutoHangExpValue(nLevel);
	end;
	-----------------------
	
	-- ·ÖÊ±¶Î - start
	szHour = date("%H");
	nHour = tonumber(szHour);
	
	if (nHour < 9) then -- Áè³¿(0~9)
		nExp = floor(nExp * 1.2);
	elseif (nHour < 18) then  -- °×Ìì(9~18)
		nExp = nExp;
	elseif (nHour < 24) then  -- ÍíÉÏ(18~24)
		nExp = floor(nExp * 0.8);
	end;
	-- ·ÖÊ±¶Î - end
	
	if (nExp > 0) then
		if (g_bFreeTime == 0) then -- ·ÇÃâ·Ñ£¬¿ÛÊ±¼ä
			SetTask(AEXP_TASKID, nPointTime - AEXP_TIME_UPDATE); -- ¿ÛÊ±¼ä
		end
		
		AddOwnExp(nExp); -- ¼Ó¾­Ñé
		Msg2Player("<#> Kinh nghiÖm cña b¹n t¨ng thªm"..nExp.."<#> ®iÓm."); -- Todo
	else
		WriteLog(GetLoop()..date("%m%d-%H:%M").."Auto AddExp Error!")
	end

	return 1;
end;
