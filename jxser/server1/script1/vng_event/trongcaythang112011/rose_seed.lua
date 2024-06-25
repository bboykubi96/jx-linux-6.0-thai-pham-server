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
	--	Say("��ng c�p 60 tr� l�n m�i ���c ph�p s� d�ng")
	--	return 1
	--end

	if IsAcitve() ~= 1 then
		Msg2Player("�� qu� th�i gian ho�t ��ng, kh�ng th� tr�ng c�y.")
		return 1
	end	
	
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(HOAHONG_TASK_NO, 0, 8) -- ʹ�ô���
	local nLastUseDate = GetBitTask(HOAHONG_TASK_NO, 8, 24) -- �ϴ�ʹ��ʱ��
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	Msg2Player("H�m nay �� tr�ng ".. nUseTimes .. " c�y Hoa H�ng")
	if (nUseTimes >= HOAHONG_TASK_LIMIT) then
		Say(format("M�t ng�y ch� c� th� tr�ng t�i �a 10 c�y hoa h�ng", HOAHONG_TASK_LIMIT), 0)
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
