
Include("\\script\\lib\\awardtemplet.lua")

function main1()
dofile("script/item/huihuangzhiguo3.lua")
Say("Chøc n¨ng Nµy T¹m §ãng")
return 1;
end
function main()
dofile("script/item/huihuangzhiguo2.lua")
local NHANTHUONG7NGAY=3917
local NHANTHUONG=3918
local tbaward = {
	[1] = {		
	{szName="§¹i Kim Nguyªn b¶o",tbProp={4,1496,1,1,0,0},nCount=1},
--		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=1},
	--	{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=1},
	--	{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=1},
	
	},
	[2] = {
	--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=1,nRate=10},
	--	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=1,nRate=10},
	},
	}
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) < 1) then
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e6}}, "test", 1);
	tbAwardTemplet:Give(tbaward, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})
		SetTask(NHANTHUONG, GetTask(NHANTHUONG)+1)
		else
		Say("Mçi Ngµy ChØ Sö Dông 1 Qu¶")
		return 1;
	end



--
--AddContribution(100000)
-- else Say("Kh«ng thÓ dïng qu¸ 5 qu¶ 1 ngµy")
end
