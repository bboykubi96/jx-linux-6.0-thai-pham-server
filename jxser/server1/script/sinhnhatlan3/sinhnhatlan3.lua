IncludeLib("ITEM");
IncludeLib("TONG")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\resetbos.lua");
Include("\\Script\\lib\\string.lua");
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\lib\\awardtemplet.lua")

IncludeLib("RELAYLADDER");
IncludeLib("SETTING")



function main()
	---dofile("script/sinhnhatlan3/sinhnhatlan3.lua");
	
	local tbOpt = {}
	tinsert(tbOpt, "��i event Sinh nh�t/muaevent")
	tinsert(tbOpt, "Resr Event B�nh sinh nh�t/resetevent")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event Sinh Nh�t<color>\n B�n �ang s� d�ng\nB�nh sinh nh�t <color=red>"..GetTask(3911).."<color> L�n!!\nn�n v�ng<color=red>"..GetTask(3910).."<color> l�n!", getn(tbOpt), tbOpt)	
end


--------------------------------------------
--------------------------------------------------------------------------------------
function muaevent()
local tbSay = {}
		tinsert(tbSay,"Mua 50 ./event50")
		tinsert(tbSay,"Mua 10 ./event10")
       		tinsert(tbSay,"Mua 5 ./event5")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

function event50()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh sinh nh�t", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nBindState = -2}}, format("Get %s", "B�nh sinh nh�t"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 B�nh sinh nh�t><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>50 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event10()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh sinh nh�t", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nBindState = -2}}, format("Get %s", "B�nh sinh nh�t"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c  <color=yellow><10 B�nh sinh nh�t><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event5()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh sinh nh�t", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=5, nBindState = -2}}, format("Get %s", "B�nh sinh nh�t"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c m�t <color=yellow><5 B�nh sinh nh�t><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>5 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
--------------------------------------------------------------------------------------------------------------------------------------------

function resetevent()
	if GetTask(3905) >=1 then
		Say("M�i nh�n v�t ch� ���c reset 1 l�n",0)
	
	elseif CalcEquiproomItemCount(4,417,1,1) < 100 then
		Say("Reset Event b�nh sinh nh�t c�n t�n 100 xu",0)
	
	elseif GetTask(3911) < 2000 then
		Say("B�n ch�a m� 2k b�nh sinh nh�t n�n kh�ng th� reset",0)

	else
		ConsumeEquiproomItem(100, 4,417, 1,-1)
		SetTask(3905,1)

		SetTask(3911,0)
		Say("Rest th�nh c�ng event B�nh sinh nh�t. B�n c� th� d�ng th�m 2000 b�nh sinh nh�t",0)

	end
end
