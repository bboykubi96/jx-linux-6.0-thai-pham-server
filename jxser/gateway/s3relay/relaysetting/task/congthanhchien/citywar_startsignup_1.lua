--------------------------------***Edit*By*Heart*Doldly***-------------------------------------------
Include("\\RelaySetting\\Task\\congthanhchien\\citywar_head.lua")
function TaskShedule()
	TaskName("Ghi danh bat dau");
	TaskInterval(1440);
	TaskTime(18, 0);
	TaskCountLimit(0);
	OutputMsg("================================================================================================")
	OutputMsg("                            THAT THANH DAI CHIEN BAT DAU BAO DANH                               ")
	OutputMsg("                     Vao Luc: 18h:00 - Ket Thuc Bao Danh Vao Luc: 19h:00                        ")
	OutputMsg("          Bat Dau Tham Gia Vao Luc 20h:00 - Ket Thuc Vao Luc 21h:30 Thu 6 Hang Tuan             ")
end

function TaskContent()
	local nCityId=getSigningUpCity(1)
	local nWeek=tonumber(date("%w"))

	if (HinhThucCongThanh == 0) then
		StartSignUp(nCityId);
	else
		cw_startsignup_fun(nWeek,nCityId);
	end;
	OutputMsg("=====> [Cong Thanh] Bat dau ghi danh <========")
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
