--Tong kim le bao phan thuong khi dat top 1,2,3 tong kim edit by mcteam

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");
IncludeLib("ITEM")

SONGJIN_LIBAO_TASK_NO = 2619
SONGJIN_LIBAO_LIMIT   = 5


if not TB_QIANQIU_YINGLIE0904 then
	Include("\\script\\event\\jiefang_jieri\\200904\\qianqiu_yinglie\\head.lua");
end

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nItemIdx)
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if n_cur_date > n_item_date then
		Msg2Player("V�t ph�m qu� h�n s� d�ng, t� ��ng m�t �i.")
		return 0;
	end
	
	--TB_QIANQIU_YINGLIE0904:reset_task()

	--dofile("script/global/g7vn/g7configall.lua")

	if DangDuaTop == 1 then
		Say("�ang trong qu� tr�nh �ua top, kh�ng th� th�c hi�n thao t�c n�y")
		return 1
	end
	
	if IsCharged() == 0 or GetLevel() < 90 then
		Say("Ch� c� ng��i ch�i c�p tr�n 90  m�i c� th� s� d�ng.", 0)
		return 1;
	end
	
	if (CalcFreeItemCellCount() < 5) then
		Say(format("�� tr�nh m�t m�t t�i s�n, h�y b�o ��m h�nh trang c�n �� %d � tr�ng.", 5), 0);
		return 1;
	end
			local checkexp = GetExpPercent()
if checkexp < -50 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -50% ch� c� th� s� d�ng b�n nh��c r�i h�y ti�p t�c.")
return 1
end
	local tb_award = {
			{szName="Ng�n l��ng", nJxb=100000, nRate = 5},
			{szName="Ng�n l��ng", nJxb=200000, nRate = 5},

		{szName = "Thi�t la h�n", tbProp = {6,1,23,1,1,0}, nRate = 0.1},
		{szName = "�i�m kinh nghi�m", nExp = 1000000, nRate = 40},
		{szName = "�i�m kinh nghi�m", nExp = 3000000, nRate = 40},
		--{szName = "�i�m kinh nghi�m", nExp = 3000000, nRate = 10},
		{szName = "ti�n th� l�", tbProp={6,1,71,1,0,0}, nCount=1, nRate=0.1},
	}
	
	local rtotal = 10000000
	local rcur=random(1,rtotal);
	local rstep=0;
	local n_award_idx = 0;
	for i=1,getn(tb_award) do
		rstep=rstep+floor(tb_award[i].nRate*rtotal/100);
		if(rcur <= rstep) then
			n_award_idx = i;
			break
		end
	end
	
	if (n_award_idx == 0 or n_award_idx > getn(tb_award)) then
		return 1;
	end
	
	-- ����ÿ��ʹ��20��
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8) -- ʹ�ô���
	local nLastUseDate = GetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24) -- �ϴ�ʹ��ʱ��
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	
	if (nUseTimes >= SONGJIN_LIBAO_LIMIT) then
		Say(format("M�t ng�y ch� c� th� s� d�ng %d T�ng Kim l� bao", SONGJIN_LIBAO_LIMIT), 0)
		return 1;
	end
		
	nUseTimes = nUseTimes + 1;
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8,  nUseTimes);
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24, nLastUseDate);
	
	tbAwardTemplet:GiveAwardByList(tb_award[n_award_idx], "T�ng Kim l� bao");

	Msg2SubWorld("��i hi�p <color=white>"..GetName().."<color> �� s� d�ng T�ng Kim L� Bao nh�n ���c r�t nhi�u ph�n qu� h�p d�n.")
end
