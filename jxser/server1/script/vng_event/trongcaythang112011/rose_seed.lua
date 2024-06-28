Include("\\script\\vng_event\\trongcaythang112011\\plant.lua")

DATE_START	= 20111124
DATE_END	= 20301201
HOAHONG_TASK_NO = 3908
HOAHONG_TASK_LIMIT = 10

function IsAcitve()
	local now = tonumber(GetLocalDate("%Y%m%d"));
	if (now >= DATE_END or now < DATE_START) then
		return 0;
	end
	return 1;	
end

function plant_tree()
	if (tbSeed:Check(1) == 0) then
		return 0
	end
--	local kind = tbSeed:RandomKind()
	if (tbSeed:Grow(1) == 1) then
		return 1
	else		
		return 0
	end
end

function main(nItemIndex)
	--if GetLevel() < 60 then
	--	Say("§¼ng cÊp 60 trë lªn míi ®­îc phÐp sö dông")
	--	return 1
	--end

	if IsAcitve() ~= 1 then
		Msg2Player("§· qu¸ thêi gian ho¹t ®éng, kh«ng thÓ trång c©y.")
		return 1
	end	
	
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(HOAHONG_TASK_NO, 0, 8) -- Ê¹ÓÃ´ÎÊý
	local nLastUseDate = GetBitTask(HOAHONG_TASK_NO, 8, 24) -- ÉÏ´ÎÊ¹ÓÃÊ±¼ä
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	Msg2Player("H«m nay ®· trång ".. nUseTimes .. " c©y Hoa Hång")
	if (nUseTimes >= HOAHONG_TASK_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ trång tèi ®a 10 c©y hoa hång", HOAHONG_TASK_LIMIT), 0)
		return 1;
	end
	
	if plant_tree() == 1 then
		nUseTimes = nUseTimes + 1;
		SetBitTask(HOAHONG_TASK_NO, 0, 8,  nUseTimes);
		SetBitTask(HOAHONG_TASK_NO, 8, 24, nLastUseDate);
		return 0
	end
	return 1
end
