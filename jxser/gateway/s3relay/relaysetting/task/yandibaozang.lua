	-- vi™m Æ’ b∂o tµng bÿ t∏i ÆÛng giÍ kh›

	-- chi“u nµo ng‰ 2 Æi”m khi Æ’n ng‰ 12 Æi”m chÿnh Æi”m g©y ra

	--by ti”u l∑ng nhi“u h¨n

	--2007. 10. 22

	INTERVAL_TIME = 60	-- mÁi ti’ng ÆÂng hÂ g©y ra

	Include( "\\script\\gb_modulefuncs.lua")

	Include( "\\script\\leaguematch\\timetable.lua")

	Include( "\\script\\leaguematch\\head.lua")

	function GetNextTime()	-- chi“u nµo ng‰ 1 Æi”m 55 Æ’n tËi 23 Æi”m 55 g©y ra b∏o danh

	-- c∂i bi’n vi™m Æ’ t›nh n®ng tham gia b∏o danh thÍi gian -Modifiled by AnhHH - 20110802

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

	-- 60 phÛt mÈt l«n

	TaskInterval(INTERVAL_TIME);

	-- thi’t tr› g©y ra thÍi gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( "[YANDIBAOZANG] Task Start At %d:%d...", h, m));

	-- ch p hµnh v´ hπn th¯

	TaskCountLimit(0);

	-- OutputMsg( "KhÎi ÆÈng t˘ ÆÈng cuÈn th´ng c∏o. . .");

	end

	function TaskContent()

	local TB_YDBZ_DATE_START =	-- khÎi ÆÈng buÊi di‘n (th◊)

	{

	14,16,18,20,22,

	}

	local nhour = tonumber(date( "%H "))

	for nindex,ndate_hour in TB_YDBZ_DATE_START do

	-- c∂i bi’n vi™m Æ’ t›nh n®ng tham gia b∏o danh thÍi gian -Modifiled by AnhHH - 20110802

	if (nhour == ndate_hour) then

	--			if gb_GetModule( "YANDIBAOZANG ") == 1 and gb_GetModule( "YANDIBAOZANG_TALK ") == 1 then

	OutputMsg( "[YANDIBAOZANG] ".. tonumber(date( "%H "))..":55 StartSignUp...");

	-- g©y ra GameServer th≠Óng ch©n cÒa b∂n

	--GlobalExecute( "dw LoadScript([[\\settings\\trigger_challengeoftime.lua]]) ");

	GlobalExecute( "dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger() ");

	szMsg = "Vi™m Æ’ b∂o tµng hoπt ÆÈng Æ∑ bæt Æ«u b∏o danh, c∏c nh©n s¸ nhanh ch©n tÌi Bi÷n Kinh - L©m Am g®p b◊nh b◊nh c´ n≠¨ng chÁ Æ®ng k˝, b∏o danh thÍi gian lµ 5 phÛt ÆÂng hÂ."

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


