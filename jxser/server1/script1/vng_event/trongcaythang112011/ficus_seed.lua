Include("\\script\\vng_event\\trongcaythang112011\\plant.lua")

DATE_START	= 20111124
DATE_END	= 20301201
CAYDA_TASK_NO = 3907
CAYDA_TASK_LIMIT = 10
function IsAcitve()
	local now = tonumber(GetLocalDate("%Y%m%d"));
	if (now >= DATE_END or now < DATE_START) then
		return 0;
	end
	return 1;	
end

function plant_tree()
	if (tbSeed:Check(2) == 0) then
		return 0
	end
--	local kind = tbSeed:RandomKind()
	if (tbSeed:Grow(2) == 1) then
		return 1
	else		
		return 0
	end
end

function main(nItemIndex)
	if IsAcitve() ~= 1 then
		Msg2Player("�� qu� th�i gian ho�t ��ng, kh�ng th� tr�ng c�y.")
		return 1
	end
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(CAYDA_TASK_NO, 0, 8) -- ʹ�ô���
	local nLastUseDate = GetBitTask(CAYDA_TASK_NO, 8, 24) -- �ϴ�ʹ��ʱ��
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	Msg2Player("H�m nay �� tr�ng ".. nUseTimes .. " c�y �a")
	if (nUseTimes >= CAYDA_TASK_LIMIT) then
		Say(format("M�t ng�y ch� c� th� tr�ng t�i �a 10 c�y �a", CAYDA_TASK_LIMIT), 0)
		return 1;
	end	
	if plant_tree() == 1 then
		nUseTimes = nUseTimes + 1;
		SetBitTask(CAYDA_TASK_NO, 0, 8,  nUseTimes);
		SetBitTask(CAYDA_TASK_NO, 8, 24, nLastUseDate);
		return 0
	end
	return 1
end
