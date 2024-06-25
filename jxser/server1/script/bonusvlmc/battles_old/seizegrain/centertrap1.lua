IncludeLib("BATTLE");
Include("\\script\\battles\\seizegrain\\head.lua")
function main()
	
	--Èç¹û´¦ÓÚ±¨Ãû½×¶ÎÊ±,Íæ¼Ò²»ÄÜ×ßµ½¶Ô·½µÄÁìµØÖĞÈ¥£¬ËùÒÔ»á½«Íæ¼ÒÈÓµ½´óÓªÄÚ
	if(GetMissionV(MS_STATE) == 1) then
		if(GetCurCamp() == 1) then
			SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1))
			SetFightState(0)
			Say("ChiÕn tr­êng tèng kim ch­a b¾t ®Çu ch­a thÓ rêi ®¹i doanh.! ", 0)
		elseif (GetCurCamp() == 2) then
			SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2))
			SetFightState(0)
			Say("ChiÕn tr­êng tèng kim ch­a b¾t ®Çu ch­a thÓ rêi ®¹i doanh.! ", 0)
		end;
	else
		SetFightState(1)
		SetPunish(0);
	
		ForbidEnmity( 1 )
	
		--SetPKFlag(1)

		if (GetCurCamp() == 1 and BT_GetData(PL_PARAM3) == 1) then
			sf_addgrain_point(1)			-- Èç¹ûÊÇÍ¬ÊôÕóÓªµÄ£¬Ôò¼ì²éÊÇ·ñÔËÁ¸½ÇÉ«²¢¸øÓë½±Àø
		end
	end;
end;


