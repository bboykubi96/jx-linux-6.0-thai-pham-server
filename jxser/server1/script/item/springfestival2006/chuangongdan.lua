
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
		Say("VËt PhÈm HÕt H¹n SD")
		return 1
	end

local n_solan = GetTask(5969)
if n_solan>1 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
return 1
end


tbAwardTemplet:GiveAwardByList({{nExp_tl = 401e9}}, "test", 1);

	--Msg2Player("¡ì¡¤ s? d?ng l?n th?: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
