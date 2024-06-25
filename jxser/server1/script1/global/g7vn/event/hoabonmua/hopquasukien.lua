
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20101114
NgayHetHanEventHLW = 20251105
function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/hopquasukien.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P ~= 4499 then
	Say("Event Æ∑ k’t thÛc.")
	return 1
	end
if CalcEquiproomItemCount(6,1,4499,-1) <1 then
	Say("Bug h∂??? Chim cÛt")
	return 1
	end
		local nDate = tonumber(date("%Y%m%d"))
	if nDate > 20220730 then
	Say("Event Æ∑ k’t thÛc.")
	return 1
	end
	local a=random(1,3)
	if a==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ph∏o Ti”u",tbProp={6,1,4524,1,1},nCount=1},}, "test", 1);
	end
	if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ph∏o Trung",tbProp={6,1,4525,1,1},nCount=1},}, "test", 1);
	end
	if a==3 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ph∏o ßπi",tbProp={6,1,4526,1,1},nCount=1},}, "test", 1);
	end
	return 0
--end

end

