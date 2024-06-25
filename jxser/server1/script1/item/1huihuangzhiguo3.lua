
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
	--	{szName="Â§Ã¥ phÃ¦ HoÂµng Kim",tbProp={6,1,random(239,391),1,1,0},nCount=1};
	--	tbAwardTemplet:GiveAwardByList({{szName = "Bã Cá",tbProp={6,1,4415,1,1},nCount=1},}, "test", 1);
			--	tbAwardTemplet:GiveAwardByList({{szName = "G¹o NÕp",tbProp={6,1,4454,1,0,0},nCount=1},}, "test", 1);
			--	tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=1},}, "test", 1);
--	tbAwardTemplet:GiveAwardByList({{szName = "Tinh ngÃ¤c",tbProp={6,1,4409,1,1,0},nCount=20},}, "test", 1);
		SetTask(NHANTHUONG, GetTask(NHANTHUONG)+1)
	
		else
		Say("Mçi Ngµy ChØ ¡n §­îc 1 Qu¶ Th«i!")
		return 1;
	end


end
