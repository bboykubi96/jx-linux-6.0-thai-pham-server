Include("\\script\\activitysys\\config\\1008\\extend.lua")

function mainthehh()	
	
	local tbOpt = {}
	local xephanghoi = tbTop10:GetCurRank(GetName(),GetAccount())
	local hanghienthi = "?"
	if xephanghoi > 0 then
	hanghienthi = tostring(xephanghoi)
	end
	
	tinsert(tbOpt,"Xem thø h¹ng nh©n vËt ./XemThuHangNhanVat")
	tinsert(tbOpt,"Xem thø h¹ng nh÷ng ng­êi l©n cËn ./XemThuHangNguoiLanCan")
	tinsert(tbOpt,"KÕt thóc ./Quit")
	Say("Thø H¹ng Giang Hå: <color=red>"..hanghienthi.."<color>", getn(tbOpt), tbOpt)
	return 1
end;

function XemThuHangNguoiLanCan()
local gmPlayerIDX = PlayerIndex
local tbAllPlayer, nPlayerCount = GetAroundPlayerList(20)
for i = 1, nPlayerCount do
		PlayerIndex = tbAllPlayer[i];
		local nName = GetName()
		local xephanghoi = tbTop10:GetCurRank(GetName(),GetAccount())
		local hanghienthi = "?"
		if xephanghoi > 0 then
			hanghienthi = tostring(xephanghoi)
		end
		PlayerIndex = gmPlayerIDX;
		Msg2Player("Nh©n vËt <color=yellow>"..nName.."<color> XÕp h¹ng <color=pink>"..hanghienthi.."<color>")
end
PlayerIndex = gmPlayerIDX;
end

function XemThuHangNhanVat()
AskClientForString("XemThuHangNhanVatOK","",1,100,"Tªn Nh©n VËt")
end

function XemThuHangNhanVatOK(nVar)
	local gmPlayerIDX = PlayerIndex
	local searchPlayerIDX = SearchPlayer(nVar);
	PlayerIndex = searchPlayerIDX

	if searchPlayerIDX > 0 then
		local xephanghoi = tbTop10:GetCurRank(GetName(),GetAccount())
		local hanghienthi = "?"
		if xephanghoi > 0 then
			--print("Nhan vat "..GetName().." Tai khoan "..GetAccount().." Thu hang: " .. xephanghoi)
			--Msg2Player("Thø h¹ng giang hå: <color=pink>".. xephanghoi.."<color>")
			hanghienthi = tostring(xephanghoi)
		end
		PlayerIndex = gmPlayerIDX;
		Say("Nh©n vËt <color=red>"..nVar.."<color> XÕp h¹ng <color=pink>"..hanghienthi.."<color>")
	else
		PlayerIndex = gmPlayerIDX;
		Msg2Player(format("<color=orange>["..GetName().."]<color>: Cã thÓ b¹n ®· nhÇm tªn nh©n vËt :<color=orange>[%s]<color> kh«ng cã trong server.",nVar))
	end
end