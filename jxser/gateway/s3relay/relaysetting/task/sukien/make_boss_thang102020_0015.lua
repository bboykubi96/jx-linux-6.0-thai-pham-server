QY_GOLDBOSS_APOS_INFO = {
	--{"Tuyªn ThËt Thµ", random( 1989, 1997), 95, 3, {"ChiÕn Long §éng","ChiÕn Long §éng","ChiÕn Long §éng"}},
                   {"Chñ V­ên §µo", 1992, 95, 3, {"§¹i ChiÕn V­ên §µo","§¹i ChiÕn V­ên §µo","§¹i ChiÕn V­ên §µo"}},
	-- {"¤ng Giµ Noel", 2000, 95, 3, {"Tr­êng B¹ch s¬n B¾c","Tr­êng B¹ch s¬n Nam"}},
	-- {"¤ng Giµ Noel", 2001, 95, 3, {"Tr­êng B¹ch s¬n B¾c","Tr­êng B¹ch s¬n Nam"}},
	-- {"¤ng Giµ Noel", 2002, 95, 3, {"Tr­êng B¹ch s¬n B¾c","Tr­êng B¹ch s¬n Nam"}},
	-- {"§­êng BÊt NhiÔm", 741, 95, 1, {"Phong L¨ng ®é","Phong L¨ng ®é","Phong L¨ng ®é"}},
	--{"ÍêÑÕÑ©Ò¢", 564, 95, 3, 227, 1504, 3144, "ÌýËµ½ð¹úÆß¹«Ö÷ÍêÑÕÑ©Ò¢×·Ëæ¶ËÄ¾î£È¥µ½Î÷ÏÄ¹ú¶Ø»ÍÉ³Ä®ÃÔ¹¬¡£"},
}

Include("\\RelaySetting\\Task\\sukien\\callboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName( "BOSS SU KIEN THANG 10 2020" );
	TaskInterval( 1440 );
	-- TaskInterval( 10 );
	TaskTime( 0, 15 );
	TaskCountLimit( 0 );
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg( "BOSS SU KIEN THANG 10 2020" );
end

function TaskContent()
	-- if (GetProductRegion() ~= "vn") then
		-- qy_makeboss_fixure(1)
		-- return 0;
	-- end;
	BigBoss.gold_boss_count = 0;
	TAB_CITY_EMPTY = {}
	sukien_thang10_2020()
	--qy_makeboss_lotsof_pos()
	OutputMsg( "=====> BOSS SU KIEN THANG 10 2020 <=======" );
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
