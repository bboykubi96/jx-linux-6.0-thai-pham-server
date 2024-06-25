-- �ƺ�« by bel at 20090409 10��04

Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");

local tb_putaojiu_award	=
{
	
};

local tb_putaojiu_exp	=
{
	{nExp = 20, 	nRate = 0.2},
	{nExp = 30, 	nRate = 0.65},
	{nExp = 40, 	nRate = 0.05},
	{nExp = 50, 	nRate = 0.04},
	{nExp = 60, 	nRate = 0.03},
	{nExp = 80, 	nRate = 0.02},
	{nExp = 100,	nRate = 0.01},
};

function main()
	local ndate = tonumber(GetLocalDate("%Y%m%d"));
	if (ndate >= jf0904_jiu_expiredtime) then
		Msg2Player("V�t ph�m n�y �� qu� h�n.");
		return 0;
	end
	
	if (GetLevel() < 50 or GetExtPoint(0) < 1) then
		Say("��i hi�p v�n ch�a �� c�p 50 ho�c v�n ch�a n�p th�, v� v�y kh�ng th� tham gia ho�t ��ng", 0);
		return 1;
	end
	
	if CalcFreeItemCellCount() < 10 then
		Say(format("�� b�o ��m an to�n t�i s�n, xin m�i �� tr�ng %d �.", 10), 0);
		return 1;
	end
	
	jf0904_InitTaskctrl();
	
	if (GetTask(jf0904_TSK_jiuexp) >= GetTask(jf0904_TSK_jiuexplt)) then
		Say("�� ��t ��n kinh nghi�m cao nh�t, kh�ng th� s� d�ng th�m r��u nho n�a.", 0);
		return 1
	end
	
	local nAddedExp = putaojiu_getexp();
	if (GetTask(jf0904_TSK_jiuexp) + nAddedExp > GetTask(jf0904_TSK_jiuexplt)) then
		nAddedExp = GetTask(jf0904_TSK_jiuexplt) - GetTask(jf0904_TSK_jiuexp);
	end	

	SetTask(jf0904_TSK_jiuexp, GetTask(jf0904_TSK_jiuexp) + nAddedExp);
	AddOwnExp(nAddedExp * 100000);
	tbAwardTemplet:GiveAwardByList(%tb_putaojiu_award, "B�u r��u");

end

function putaojiu_getexp()
	local nstep = random(1, 100000);
	local ncurstep = 0;
	for i = 1, getn(%tb_putaojiu_exp) do
		if (ncurstep + %tb_putaojiu_exp[i].nRate * 100000 >= nstep) then
			return %tb_putaojiu_exp[i].nExp;
		end
		ncurstep = ncurstep + %tb_putaojiu_exp[i].nRate * 100000;
	end
end
