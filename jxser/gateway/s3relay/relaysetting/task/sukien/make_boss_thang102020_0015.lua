QY_GOLDBOSS_APOS_INFO = {
	--{"Tuy�n Th�t Th�", random( 1989, 1997), 95, 3, {"Chi�n Long ��ng","Chi�n Long ��ng","Chi�n Long ��ng"}},
                   {"Ch� V��n ��o", 1992, 95, 3, {"��i Chi�n V��n ��o","��i Chi�n V��n ��o","��i Chi�n V��n ��o"}},
	-- {"�ng Gi� Noel", 2000, 95, 3, {"Tr��ng B�ch s�n B�c","Tr��ng B�ch s�n Nam"}},
	-- {"�ng Gi� Noel", 2001, 95, 3, {"Tr��ng B�ch s�n B�c","Tr��ng B�ch s�n Nam"}},
	-- {"�ng Gi� Noel", 2002, 95, 3, {"Tr��ng B�ch s�n B�c","Tr��ng B�ch s�n Nam"}},
	-- {"���ng B�t Nhi�m", 741, 95, 1, {"Phong L�ng ��","Phong L�ng ��","Phong L�ng ��"}},
	--{"����ѩҢ", 564, 95, 3, 227, 1504, 3144, "��˵����߹�������ѩҢ׷���ľ�ȥ�����Ĺ��ػ�ɳĮ�Թ���"},
}

Include("\\RelaySetting\\Task\\sukien\\callboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	-- ���÷�������
	TaskName( "BOSS SU KIEN THANG 10 2020" );
	TaskInterval( 1440 );
	-- TaskInterval( 10 );
	TaskTime( 0, 15 );
	TaskCountLimit( 0 );
	-- ���������Ϣ
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
