--description: ������ �ݸ��� ҩ��ϰ�Ի���������40������Т������С������Ĳ���
--author: yuanlan	
--date: 2003/4/26
-- Update: Dan_Deng(2003-08-10)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\lib\\awardtemplet.lua");	
function main(sel)
	UTask_tw = GetTask(3)
	UTask_world18 = GetTask(46)
	if (UTask_tw == 40*256+20) then						-- ����40������
		Talk(5, "L40_tw_talk2", "ht1", "ht2", "ht3<color=Red>4<color> 5<color=Red>6<color>.7", "ht8")
	elseif(UTask_world18 == 1) then				-- Т�ִ�С������
		Talk(1,"","H�?B� c�a Ti�u Ng� b�nh �? Ng��i ��n ch�m r�i! Ta v�a b�n vi�n T� B� ho�n cu�i c�ng cho �� t� Thi�n V��ng. Hay l� ng��i h�i th� �ng ta xem. ")
		Msg2Player("Ch� d��c �i�m cho bi�t: T� B� Ho�n �� b�n h�t. B�n h�y �i h�i th� �� t� Thi�n V��ng Bang. ")
		AddNote("Ch� d��c �i�m cho bi�t: T� B� Ho�n �� b�n h�t. B�n h�y �i h�i th� �� t� Thi�n V��ng Bang. ")
	elseif (UTask_tw == 40*256+50) then
		Say("ht12<color=Red>13�<color> 14<olor=Red>115<color> 16<color=Red>17<color>, 18<color=Red>19<color>20", 2, "21/yes", "22/no")
	else							-- ������״̬
		--Say("B�n ti�m ��u l� th�n d��c! C� b�nh s� kh�i b�nh, kh�ng b�nh s� kh�e, gi� c� ph�i ch�ng. Mua m�t �t ch�? ", 4, "Giao d�ch/yes", "Ta ��n nh�n nhi�m v� s� nh�p/yboss","Mua M�u Nhanh/muamauquanhanh","Kh�ng giao d�ch/no");
		Say("B�n ti�m ��u l� th�n d��c! C� b�nh s� kh�i b�nh, kh�ng b�nh s� kh�e, gi� c� ph�i ch�ng. Mua m�t �t ch�? ", 3, "Giao d�ch/yes", "Mua T�i M�u T�n Th� (100 V�n)/tuimautanthu","Mua M�u Nhanh (2000 l��ng -1 b�nh)/muamauquanhanh","Kh�ng giao d�ch/no");
	end
end;

function L40_tw_talk2()
	Talk(2,"","ht23<color=Red>24<color> 26<color=Red>27<color>28<color=Red>29<color>,30<color=Red>31<color>32", "33")
	SetTask(3, 40*256+50)								-- ����40������
	AddNote("ht34")
	Msg2Player("ht35.")
end;

function yes()
	Sale(12);  			--�������׿�
end;

function no()
end;
function tuimautanthu()
	if GetCash()>=1000000 then
		Pay(1000000)
		tbAwardTemplet:GiveAwardByList({{szName = "T�i M�u",tbProp={6,1,4461,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng c� �� 100 V�n")
		return
	end
end
function muamauquanhanh()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount}}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("��i hi�p kh�ng �� ng�n l��ng �� mua m�u nhanh.")
		return
	end
end
