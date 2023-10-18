
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20101114
NgayHetHanEventHLW = 20251105
function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/hopquasukien.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P ~= 4449 then
	Say("Event ®· kÕt thóc vµo 00h00 ngµy 31-12-2020")
	return 1
	end
if CalcEquiproomItemCount(6,1,4449,-1) <1 then
	Say("Bug h¶??? Chim cót")
	return 1
	end
		local nDate = tonumber(date("%Y%m%d"))
	if nDate > 20210206 then
	Say("Event ®· kÕt thóc vµo 00h00 ngµy 06-02-2021")
	return 1
	end
	local a=random(1,3)
	if a==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "ThÞt Chã",tbProp={6,1,4452,1,1},nCount=1},}, "test", 1);
	end
	if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "L¸ M¬ Xanh",tbProp={6,1,4453,1,1},nCount=1},}, "test", 1);
	end
	if a==3 then
	tbAwardTemplet:GiveAwardByList({{szName = "§Ëu Xanh",tbProp={6,1,4451,1,1},nCount=1},}, "test", 1);
	end
	return 0
--end

end

