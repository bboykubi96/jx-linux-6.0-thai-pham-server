-- ս��ϵͳ
-- Fanghao_Wu 2004-12-6

function TaskShedule()
	-- ���÷�������
	TaskName( "T��ng D��ng (T�ng Kim) 09:50" );
	TaskInterval( 1440 );
	TaskTime( 9, 50 );
	TaskCountLimit( 0 );
	-- ���������Ϣ
	OutputMsg( "CHIEN TRUONG TONG KIM 09:50 BAT DAU..." );
end

function TaskContent()
	Battle_StartNewRound( 1, 1 );	-- GMָ������ͼ���ս��
	Battle_StartNewRound( 1, 2 );	-- GMָ������м���ս��
	Battle_StartNewRound( 1, 3 );	-- GMָ������߼���ս��
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
