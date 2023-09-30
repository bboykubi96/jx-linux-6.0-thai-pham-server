function TestStall()
	local x,y,mapidx = GetPos();
	x = floor(x/8/32);
	y = floor(y/16/32);
	
	local tbSay = {};
	tbSay.msg = "Online: <color=green>"..GetPlayerCount().."<color>/1200.\nMap: <color=green>"..SubWorldName(mapidx).."<color> - Täa ®é: <color=green>"..x..", "..y.."<color>\nIP: <color=green>"..GetCurrentIpAddress().."<color>\nMac Address: <color=green>"..GetMacAddress().."<color>\nHWID: <color=green>"..GetHardwareID().."<color>\nClient Instance ID: <color=green>"..GetGameInstanceIdx().."<color>";
	tbSay.sel = {};
	tinsert(tbSay.sel, "XuÊt d÷ liÖu bµy b¸n/StallPrintData");
	tinsert(tbSay.sel, "§ång bé d÷ liÖu bµy b¸n/SyncStallCurrencyData");
	tinsert(tbSay.sel, "Xãa d÷ liÖu bµy b¸n/ResetStallCurrencyData");
	tinsert(tbSay.sel, "ChuyÓn ®æi kiÓu bµy b¸n/ChangeStallCurrencyType");
	tinsert(tbSay.sel, "KiÓm tra xu bµy b¸n/GetStallCoin");
	tinsert(tbSay.sel, "Rót xu bµy b¸n/WithdrawStallCoin");
	tinsert(tbSay.sel, "Trë l¹i/TestFunctionMain");
	
	Describe(tbSay.msg, getn(tbSay.sel), tbSay.sel);
end

function StallPrintData()
	Msg2Player("KiÓu b¸n hiÖn t¹i: "..GetStallCurrencyType())
	Msg2Player("Xu bµy b¸n hiÖn t¹i: "..GetStallCurrencyItemCoinValue().." xu")
	Msg2Player("§iÓm Danh Väng hiÖn t¹i: "..GetRepute())
	Msg2Player("§iÓm Phóc Duyªn hiÖn t¹i: "..GetTask(151))
	Msg2Player("§iÓm TÝch Lòy Tèng Kim hiÖn t¹i: "..GetTask(747))
	Msg2Player("§iÓm Vinh Dù hiÖn t¹i: "..GetTask(2501))
	Msg2Player("§iÓm Uy Danh hiÖn t¹i: "..GetRespect())
	Msg2Player("§iÓm Tinh Lùc hiÖn t¹i: "..GetEnergy())
end

function SyncStallCurrencyData()
	SyncStallCurrencyType()
	SyncStallCurrencyItemCoinValue()
end

function ResetStallCurrencyData()
	SetStallCurrencyType(0)
	SetStallCurrencyItemCoinValue(0)
	
	SyncStallCurrencyType()
	SyncStallCurrencyItemCoinValue()
end

function ChangeStallCurrencyType()
	local x,y,mapidx = GetPos();
	x = floor(x/8/32);
	y = floor(y/16/32);
	
	local tbSay = {};
	tbSay.msg = "Online: <color=green>"..GetPlayerCount().."<color>/1200.\nMap: <color=green>"..SubWorldName(mapidx).."<color> - Täa ®é: <color=green>"..x..", "..y.."<color>\nIP: <color=green>"..GetCurrentIpAddress().."<color>\nMac Address: <color=green>"..GetMacAddress().."<color>\nHWID: <color=green>"..GetHardwareID().."<color>\nClient Instance ID: <color=green>"..GetGameInstanceIdx().."<color>";
	tbSay.sel = {};
	tinsert(tbSay.sel, "Ng©n L­îng/#ChangeStallCurrencyTypeProcess(1)");
	tinsert(tbSay.sel, "§iÓm Phóc Duyªn/#ChangeStallCurrencyTypeProcess(2)");
	tinsert(tbSay.sel, "Xu/#ChangeStallCurrencyTypeProcess(3)");
	tinsert(tbSay.sel, "§iÓm TÝch Lòy Tèng Kim/#ChangeStallCurrencyTypeProcess(4)");
	tinsert(tbSay.sel, "§iÓm Vinh Dù/#ChangeStallCurrencyTypeProcess(11)");
	tinsert(tbSay.sel, "§iÓm Uy Danh/#ChangeStallCurrencyTypeProcess(13)");
	tinsert(tbSay.sel, "§iÓm Tinh Lùc/#ChangeStallCurrencyTypeProcess(14)");
	tinsert(tbSay.sel, "Trë l¹i/TestStall");
	
	Describe(tbSay.msg, getn(tbSay.sel), tbSay.sel);
end

function ChangeStallCurrencyTypeProcess(nType)
	nType = nType or 0
	
	SetStallCurrencyType(nType)
	-- SyncStallCurrencyType()
	
	if nType == 2 then
		Msg2Player("B¸n b»ng ®iÓm Phóc Duyªn")
	elseif nType == 3 then
		SyncStallCurrencyItemCoinValue()
		Msg2Player("B¸n b»ng xu")
	elseif nType == 4 then
		Msg2Player("B¸n b»ng ®iÓm TÝch Lòy Tèng Kim")
	elseif nType == 11 then
		Msg2Player("B¸n b»ng §iÓm Vinh Dù")
	elseif nType == 13 then
		Msg2Player("B¸n b»ng ®iÓm Uy Danh")
	elseif nType == 15 then
		Msg2Player("B¸n b»ng §iÓm Tinh Lùc")
	else
		Msg2Player("B¸n b»ng ng©n l­îng")
	end
	
	Msg2Player("KiÓu b¸n hiÖn t¹i: "..GetStallCurrencyType())
end

function GetStallCoin()
	Msg2Player("Xu bµy b¸n hiÖn t¹i: "..GetStallCurrencyItemCoinValue().." xu")
end

function WithdrawStallCoin()
	Msg2Player("B¹n ®· rót "..GetStallCurrencyItemCoinValue().." xu")
	SetStallCurrencyItemCoinValue(0)
	SyncStallCurrencyItemCoinValue()
end
