Include("\\script\\missions\\yandibaozang\\trigger_include.lua")
Include("\\script\\missions\\yandibaozang\\readymap\\include.lua")

function YDBZ_OnTrigger()
		print("yandibaozang_tigger start...");
		YDBZ_ready_close_missions(YDBZ_MAP_MAP,YDBZ_MISSION_MATCH, YDBZ_VARV_STATE);
		YDBZ_ready_close_missions(YDBZ_READY_MAP, YDBZ_READY_MISSION, YDBZ_READY_STATE);
		YDBZ_ready_missions(YDBZ_READY_MAP, YDBZ_READY_MISSION);
		AddGlobalNews("<color=green>Vi�m �� B�o T�ng �� M� C�a B�o Danh, H�y Nhanh Ch�n ��n B�nh C� N��ng � Bi�n Kinh �� Tham Gia, Th�i Gian B�o Danh L� 5 Ph�t!<color>")
	end

--OnTrigger();