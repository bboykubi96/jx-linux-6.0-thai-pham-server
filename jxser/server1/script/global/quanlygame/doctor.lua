Include("\\script\\battles\\battleinfo.lua")
--�����
function main(sel)
--Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","T�m hi�u quy t�c T�ng Kim ��i chi�n/help_sjbattle","Kh�ng c�n ��u! C�m �n!/cancel")
Say("Ng��i c� c�n gi�p �� g� kh�ng?",2,"Mua d��c ph�m/salemedicine","Kh�ng c�n ��u! C�m �n!/cancel")
end;

function salemedicine(sel)
Sale(21)
end
function muamatna()
if CalcEquiproomItemCount(4,417,1,1)<10 then
	Say("H�nh Trang kh�ng �� 10 Ti�n ��ng")
	return
end
if CalcFreeItemCellCount() < 2 then
	Say("H�nh Trang kh�ng �� 2 � tr�ng")
	return
end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName = "Chi�n C�",tbProp={6,1,156,1,1},nCount=100},}, "test", 1);
end
function muamautongkim()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=10 then
	ConsumeEquiproomItem(10,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "M�u t�ng kim ��i",tbProp={6,1,215,1,1},nCount=300},}, "test", 1);
		--Msg2SubWorld("<color=green> ��i Gia <color=yellow>"..GetName().." <color>�� mua <color=cyan>100 Chi�n C�<color> � Qu�n Nhu Quan.")
	else
	Say("H�nh trang kh�ng �� 3 � tr�ng ho�c kh�ng �� 10 xu.")
end
end
function buymaunhanh()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
	return
	end
	if moneymin >= totalcount then
		tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
		Pay(totalcount * pri)
	else
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= moneymin }}, format("Get %s", "Than pham 1"))
		Pay(moneymin * pri)
end
end