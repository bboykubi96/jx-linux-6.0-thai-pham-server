Include("\\script\\activitysys\\config\\1008\\extend.lua")

function mainthehh()	
	
	local tbOpt = {}
	local xephanghoi = tbTop10:GetCurRank(GetName(),GetAccount())
	local hanghienthi = "?"
	if xephanghoi > 0 then
	hanghienthi = tostring(xephanghoi)
	end
	
	tinsert(tbOpt,"Xem th� h�ng nh�n v�t ./XemThuHangNhanVat")
	tinsert(tbOpt,"Xem th� h�ng nh�ng ng��i l�n c�n ./XemThuHangNguoiLanCan")
	tinsert(tbOpt,"K�t th�c ./Quit")
	Say("Th� H�ng Giang H�: <color=red>"..hanghienthi.."<color>", getn(tbOpt), tbOpt)
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
		Msg2Player("Nh�n v�t <color=yellow>"..nName.."<color> X�p h�ng <color=pink>"..hanghienthi.."<color>")
end
PlayerIndex = gmPlayerIDX;
end

function XemThuHangNhanVat()
AskClientForString("XemThuHangNhanVatOK","",1,100,"T�n Nh�n V�t")
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
			--Msg2Player("Th� h�ng giang h�: <color=pink>".. xephanghoi.."<color>")
			hanghienthi = tostring(xephanghoi)
		end
		PlayerIndex = gmPlayerIDX;
		Say("Nh�n v�t <color=red>"..nVar.."<color> X�p h�ng <color=pink>"..hanghienthi.."<color>")
	else
		PlayerIndex = gmPlayerIDX;
		Msg2Player(format("<color=orange>["..GetName().."]<color>: C� th� b�n �� nh�m t�n nh�n v�t :<color=orange>[%s]<color> kh�ng c� trong server.",nVar))
	end
end