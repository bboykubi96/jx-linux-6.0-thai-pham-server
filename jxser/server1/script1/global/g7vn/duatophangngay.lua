
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
		Msg2Player("<color=green>Con <color=red>"..timeconlai.."<color> Gi�y M�i C� Th� Ti�p T�c M�")
	return 0
	end
	
		if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

		if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("B�n Kh�ng �� �i�u Ki�n �� Nh�n")
		return
	end
Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e6}}, "test", 1);
	--	SetTask(5333,GetTask(5333)+1)
	--	Msg2SubWorld("<color=cyan>Cao Th� <color=green>"..GetName().."<color=yellow> �� �� ghi danh �ua top click th�nh c�ng. .!")	
		SetTask(5885,GetGameTime())
		tbLogEvent:LuuDSNhanVat()
	tbLogEvent:SapXepDSXepHang()

end