function TestStall()
	local x,y,mapidx = GetPos();
	x = floor(x/8/32);
	y = floor(y/16/32);
	
	local tbSay = {};
	tbSay.msg = "Online: <color=green>"..GetPlayerCount().."<color>/1200.\nMap: <color=green>"..SubWorldName(mapidx).."<color> - T�a ��: <color=green>"..x..", "..y.."<color>\nIP: <color=green>"..GetCurrentIpAddress().."<color>\nMac Address: <color=green>"..GetMacAddress().."<color>\nHWID: <color=green>"..GetHardwareID().."<color>\nClient Instance ID: <color=green>"..GetGameInstanceIdx().."<color>";
	tbSay.sel = {};
	tinsert(tbSay.sel, "Xu�t d� li�u b�y b�n/StallPrintData");
	tinsert(tbSay.sel, "��ng b� d� li�u b�y b�n/SyncStallCurrencyData");
	tinsert(tbSay.sel, "X�a d� li�u b�y b�n/ResetStallCurrencyData");
	tinsert(tbSay.sel, "Chuy�n ��i ki�u b�y b�n/ChangeStallCurrencyType");
	tinsert(tbSay.sel, "Ki�m tra xu b�y b�n/GetStallCoin");
	tinsert(tbSay.sel, "R�t xu b�y b�n/WithdrawStallCoin");
	tinsert(tbSay.sel, "Tr� l�i/TestFunctionMain");
	
	Describe(tbSay.msg, getn(tbSay.sel), tbSay.sel);
end

function StallPrintData()
	Msg2Player("Ki�u b�n hi�n t�i: "..GetStallCurrencyType())
	Msg2Player("Xu b�y b�n hi�n t�i: "..GetStallCurrencyItemCoinValue().." xu")
	Msg2Player("�i�m Danh V�ng hi�n t�i: "..GetRepute())
	Msg2Player("�i�m Ph�c Duy�n hi�n t�i: "..GetTask(151))
	Msg2Player("�i�m T�ch L�y T�ng Kim hi�n t�i: "..GetTask(747))
	Msg2Player("�i�m Vinh D� hi�n t�i: "..GetTask(2501))
	Msg2Player("�i�m Uy Danh hi�n t�i: "..GetRespect())
	Msg2Player("�i�m Tinh L�c hi�n t�i: "..GetEnergy())
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
	tbSay.msg = "Online: <color=green>"..GetPlayerCount().."<color>/1200.\nMap: <color=green>"..SubWorldName(mapidx).."<color> - T�a ��: <color=green>"..x..", "..y.."<color>\nIP: <color=green>"..GetCurrentIpAddress().."<color>\nMac Address: <color=green>"..GetMacAddress().."<color>\nHWID: <color=green>"..GetHardwareID().."<color>\nClient Instance ID: <color=green>"..GetGameInstanceIdx().."<color>";
	tbSay.sel = {};
	tinsert(tbSay.sel, "Ng�n L��ng/#ChangeStallCurrencyTypeProcess(1)");
	tinsert(tbSay.sel, "�i�m Ph�c Duy�n/#ChangeStallCurrencyTypeProcess(2)");
	tinsert(tbSay.sel, "Xu/#ChangeStallCurrencyTypeProcess(3)");
	tinsert(tbSay.sel, "�i�m T�ch L�y T�ng Kim/#ChangeStallCurrencyTypeProcess(4)");
	tinsert(tbSay.sel, "�i�m Vinh D�/#ChangeStallCurrencyTypeProcess(11)");
	tinsert(tbSay.sel, "�i�m Uy Danh/#ChangeStallCurrencyTypeProcess(13)");
	tinsert(tbSay.sel, "�i�m Tinh L�c/#ChangeStallCurrencyTypeProcess(14)");
	tinsert(tbSay.sel, "Tr� l�i/TestStall");
	
	Describe(tbSay.msg, getn(tbSay.sel), tbSay.sel);
end

function ChangeStallCurrencyTypeProcess(nType)
	nType = nType or 0
	
	SetStallCurrencyType(nType)
	-- SyncStallCurrencyType()
	
	if nType == 2 then
		Msg2Player("B�n b�ng �i�m Ph�c Duy�n")
	elseif nType == 3 then
		SyncStallCurrencyItemCoinValue()
		Msg2Player("B�n b�ng xu")
	elseif nType == 4 then
		Msg2Player("B�n b�ng �i�m T�ch L�y T�ng Kim")
	elseif nType == 11 then
		Msg2Player("B�n b�ng �i�m Vinh D�")
	elseif nType == 13 then
		Msg2Player("B�n b�ng �i�m Uy Danh")
	elseif nType == 15 then
		Msg2Player("B�n b�ng �i�m Tinh L�c")
	else
		Msg2Player("B�n b�ng ng�n l��ng")
	end
	
	Msg2Player("Ki�u b�n hi�n t�i: "..GetStallCurrencyType())
end

function GetStallCoin()
	Msg2Player("Xu b�y b�n hi�n t�i: "..GetStallCurrencyItemCoinValue().." xu")
end

function WithdrawStallCoin()
	Msg2Player("B�n �� r�t "..GetStallCurrencyItemCoinValue().." xu")
	SetStallCurrencyItemCoinValue(0)
	SyncStallCurrencyItemCoinValue()
end
