
Include("\\script\\lib\\awardtemplet.lua")
function main()
dofile("script/item/huihuangzhiguo3.lua")
local NHANTHUONG7NGAY=3915
local NHANTHUONG=3916
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) < 1) then
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 10000000}}, "test", 1);
	--	{szName="§å phæ Hoµng Kim",tbProp={6,1,random(239,391),1,1,0},nCount=1};
	--	tbAwardTemplet:GiveAwardByList({{szName = "B� C�",tbProp={6,1,4415,1,1},nCount=1},}, "test", 1);
			--	tbAwardTemplet:GiveAwardByList({{szName = "G�o N�p",tbProp={6,1,4454,1,0,0},nCount=1},}, "test", 1);
			--	tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=1},}, "test", 1);
--	tbAwardTemplet:GiveAwardByList({{szName = "Tinh ngäc",tbProp={6,1,4409,1,1,0},nCount=20},}, "test", 1);
		SetTask(NHANTHUONG, GetTask(NHANTHUONG)+1)
	
		else
		Say("M�i Ng�y Ch� �n ���c 1 Qu� Th�i!")
		return 1;
	end


end
