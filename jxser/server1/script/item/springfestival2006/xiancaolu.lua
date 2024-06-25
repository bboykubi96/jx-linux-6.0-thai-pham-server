IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â
Include("\\script\\global\\g7vn\\g7configall.lua")

TLL_TASK = 3920
TLL_LIMIT= 8

function main()
--dofile("script/item/xiancaolu.lua")
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(TLL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(TLL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	if (nUseTimes >= TLL_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ sö dông 8 tll", TLL_LIMIT), 0)
		return 1;
	end


	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ sö dông Tiªn Th¶o Lé")
		return 1
	end
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 8,  nUseTimes);
		SetBitTask(TLL_TASK, 8, 24, nLastUseDate);


	AddSkillState(440, 1, 1, 64800);

end