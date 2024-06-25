IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<color=yellow>N÷ HiÖp<color>";
	else
		return "<color=yellow>§¹i HiÖp<color>";
	end
end
--------------------------------------------------------------------------------------------
HUYETLINHDON			 = 5983
TSK_StartNhiemVu_TaskState	 = 5982;
--------------------------------------------------------------
function main()
	if GetTask(TSK_StartNhiemVu_TaskState) >= 1 then
		if GetLevel() >= 50 then
			SetTask(HUYETLINHDON,1) Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn §­îc X2 PhÇn Th­ëng NhiÖm Vô B¾c §Èu...!")
		else
			Say("<color=green>"..myplayersex().." Ch­a §ñ CÊp Sö Dông Hép Quµ Vui Lßng Quay L¹i Sau...!<color>") return 1
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a TiÕp NhËn NhiÖm Vô Cña B¾c §Èu L·o Nh©n Kh«ng ThÓ Sö Dông") return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
