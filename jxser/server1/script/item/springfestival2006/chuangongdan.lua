
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")
startdate= 20180803
enddate=20211230
function main()
	dofile("script/item/chuangongdan.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	if (nDate <= startdate or nDate >= enddate) then
		Say("V�t Ph�m H�t H�n SD")
		return 1
	end

local n_solan = GetTask(5969)
if n_solan>1 then 
Say("C�ng L�c C�a B�n �� Th��ng Th�a, Kh�ng Th� S� D�ng Th�m")
return 1
end


tbAwardTemplet:GiveAwardByList({{nExp_tl = 401e9}}, "test", 1);

	--Msg2Player("�졤 s? d?ng l?n th?: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
