IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â
Include("\\script\\global\\g7vn\\g7configall.lua")

TLL_TASK = 3792
TLL_LIMIT= 1


function main()
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(TLL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(TLL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
if (nUseTimes >= TLL_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ sö dông 8 tiªn thæ lé th­êng vµ 1 tiªn thæ lé quµ tÆng tõ gãi tÝch lòy", TLL_LIMIT), 0)
	return 1;
	end
	if GetLevel() < 10 then
		Say("CÊp ®é nhá h¬n 10, kh«ng thÓ sö dông Tiªn Th¶o Lé")
		return 1
	end


	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ sö dông Tiªn Th¶o Lé")
		return 1
	end
	if GetSkillState(440) == 1 then 
		Say("C¸c h¹ vÉn thêi gian tõ hiÖu øng Tiªn th¶o lé, kh«ng thÓ dïng nhiÒu b×nh cïng lóc xin h·y chê ®îi cho ®Õn hÕt t¸c dông.!", 0, "Ta biÕt råi!/OnCancel")
		return 1
	else
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 8,  nUseTimes);
		SetBitTask(TLL_TASK, 8, 24, nLastUseDate);
		AddSkillState(440, 1, 1, 64800, 1);
		return 0
	end
end

function OnCancel() return end