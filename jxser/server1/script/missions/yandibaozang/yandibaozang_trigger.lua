Include("\\script\\missions\\yandibaozang\\trigger_include.lua")
Include("\\script\\missions\\yandibaozang\\readymap\\include.lua")

function YDBZ_OnTrigger()
		print("yandibaozang_tigger start...");
		YDBZ_ready_close_missions(YDBZ_MAP_MAP,YDBZ_MISSION_MATCH, YDBZ_VARV_STATE);
		YDBZ_ready_close_missions(YDBZ_READY_MAP, YDBZ_READY_MISSION, YDBZ_READY_STATE);
		YDBZ_ready_missions(YDBZ_READY_MAP, YDBZ_READY_MISSION);
		AddGlobalNews("<color=green>Viªm §Õ B¶o Tµng §· Më Cöa B¸o Danh, H·y Nhanh Ch©n §Õn B×nh C« N­¬ng ë BiÖn Kinh §Ó Tham Gia, Thêi Gian B¸o Danh Lµ 5 Phót!<color>")
	end

--OnTrigger();