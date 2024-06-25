
Include("\\script\\lib\\awardtemplet.lua")

function main1()
dofile("script/item/huihuangzhiguo3.lua")
Say("Chøc n¨ng Nµy T¹m §ãng")
return 1;
end
function main()
dofile("script/item/huihuangzhiguo3.lua")
local NHANTHUONG7NGAY=3915
local NHANTHUONG=3916
local tbaward = {
	[1] = {		
--		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=5},
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
	if (GetTask(NHANTHUONG) < 5) then
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
		SetTask(NHANTHUONG, GetTask(NHANTHUONG)+1)
		else
		Say("M�i Ng�y Ch� S� D�ng 1 Qu�")
		return 1;
	end



--tbAwardTemplet:Give(tbaward, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})
--AddContribution(100000)
-- else Say("Kh«ng thÓ dïng qu¸ 5 qu¶ 1 ngµy")
end
