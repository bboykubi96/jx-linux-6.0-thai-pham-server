	-- vi�m �� b�o t�ng b� t�i ��ng gi� kh�

	-- chi�u n�o ng� 2 �i�m khi ��n ng� 12 �i�m ch�nh �i�m g�y ra

	--by ti�u l�ng nhi�u h�n

	--2007. 10. 22

	INTERVAL_TIME = 60	-- m�i ti�ng ��ng h� g�y ra

	Include( "\\script\\gb_modulefuncs.lua")

	Include( "\\script\\leaguematch\\timetable.lua")

	Include( "\\script\\leaguematch\\head.lua")

	function GetNextTime()	-- chi�u n�o ng� 1 �i�m 55 ��n t�i 23 �i�m 55 g�y ra b�o danh

	-- c�i bi�n vi�m �� t�nh n�ng tham gia b�o danh th�i gian -Modifiled by AnhHH - 20110802

	local hour = tonumber(date( "%H "));

	if (hour == 24) then

	hour = 13;

	elseif(hour <= 14) then

	hour = 14

	else

	hour = hour + 1;

	end

	return hour, 25;

	end

	function TaskShedule()

	TaskName( "YANDIBAOZANG ");

	-- 60 ph�t m�t l�n

	TaskInterval(INTERVAL_TIME);

	-- thi�t tr� g�y ra th�i gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( "[YANDIBAOZANG] Task Start At %d:%d...", h, m));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	-- OutputMsg( "Kh�i ��ng t� ��ng cu�n th�ng c�o. . .");

	end

	function TaskContent()

	local TB_YDBZ_DATE_START =	-- kh�i ��ng bu�i di�n (th�)

	{

	14,16,18,20,22,

	}

	local nhour = tonumber(date( "%H "))

	for nindex,ndate_hour in TB_YDBZ_DATE_START do

	-- c�i bi�n vi�m �� t�nh n�ng tham gia b�o danh th�i gian -Modifiled by AnhHH - 20110802

	if (nhour == ndate_hour) then

	--			if gb_GetModule( "YANDIBAOZANG ") == 1 and gb_GetModule( "YANDIBAOZANG_TALK ") == 1 then

	OutputMsg( "[YANDIBAOZANG] ".. tonumber(date( "%H "))..":55 StartSignUp...");

	-- g�y ra GameServer th��ng ch�n c�a b�n

	--GlobalExecute( "dw LoadScript([[\\settings\\trigger_challengeoftime.lua]]) ");

	GlobalExecute( "dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger() ");

	szMsg = "Vi�m �� b�o t�ng ho�t ��ng �� b�t ��u b�o danh, c�c nh�n s� nhanh ch�n t�i Bi�n Kinh - L�m Am g�p b�nh b�nh c� n��ng ch� ��ng k�, b�o danh th�i gian l� 5 ph�t ��ng h�."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	--			end

	break;

	end

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


