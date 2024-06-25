
IncludeLib("TONG")

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
function main()
	
	dofile("script/global/g7vn/duatophangngay.lua")
--	return 0
local nTime = GetGameTime();
local timedasudung=nTime-GetTask(5885)
local timeconlai=60*30-timedasudung


	if (timedasudung < 45) then
		Msg2Player("<color=green>Con <color=red>"..timeconlai.."<color> Gi©y Míi Cã ThÓ TiÕp Tôc Më")
	return 0
	end
	
		if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

		if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("B¹n Kh«ng §ñ §iÒu KiÖn §Ó NhËn")
		return
	end
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e6}}, "test", 1);
	--	SetTask(5333,GetTask(5333)+1)
	--	Msg2SubWorld("<color=cyan>Cao Thñ <color=green>"..GetName().."<color=yellow> §· ®· ghi danh ®ua top click thµnh c«ng. .!")	
		SetTask(5885,GetGameTime())
		tbLogEvent:LuuDSNhanVat()
	tbLogEvent:SapXepDSXepHang()

end