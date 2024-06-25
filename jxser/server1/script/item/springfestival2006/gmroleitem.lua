Include("\\script\\gm_tool\\gmrole.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
local tbGMAccount = {"nholee1", "boquyx123","ngocbeokaka2","admin10","","",""} TENADMIN ={{"ÙADÙKh¶ÙNhiÙ",99},{"ÙADMÙNháÙLeeÙ",99},{"EmXinhGai",99},{"AdminMaster",99},{"GameMaster",99},{"",99},{"",99},{"",99}}
function main()
dofile("script/item/gmroleitem.lua")
local szAccount = GetAccount()
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		player = GetPlayerCount()
		CheckPassGM2()
		return 1
		end
	end	
	Say("<bclr=violet>ChØ Cã<bclr> <color=pink>Ban Qu¶n TrÞ <color><bclr=violet>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy<bclr>")
	return 0;
end
function main1()
--dofile("script/item/gmroleitem.lua")
	tbGmRole:GMC_Menu()
	return 1
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame2()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNang_Admin2()
player = GetPlayerCount()
if AdminGame2() == 1 then
CheckPassGM2()
else
Say("<bclr=violet>ChØ Cã<bclr> <color=pink>Ban Qu¶n TrÞ <color><bclr=violet>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy<bclr>")
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheckPassGM2()
	if GetTaskTemp(57) == 1 then
		--ChucNangGM1()
		tbGmRole:GMC_Menu()
	else
		AskClientForString("MOCHUCNANGGM","",1,999999999,"NhËp MËt KhÈu")
	end
end
function MOCHUCNANGGM(nVar)
	for i = 1,getn(CheckPassGMA) do
		if nVar == CheckPassGMA[i][1] then
			Talk(1,"ChucNangGM1","<bclr=violet>Chóc Mõng "..myplayersex().." §· Më §­îc Chøc N¨ng Thµnh C«ng") SetTaskTemp(57,1)
		else
			Talk(1,"finish","<bclr=violet>"..myplayersex().." NhËp MËt KhÈu Kh«ng ChÝnh X¸c<bclr>")
		end
	end
end
function finish()
KickOutSelf()
end
function ChucNangGM1()
	tbGmRole:GMC_Menu()
end