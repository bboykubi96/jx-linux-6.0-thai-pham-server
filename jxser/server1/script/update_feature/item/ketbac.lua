function main(nItemIndex)
	local nCount = GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1);
	local nSoLan200k = GetItemParam(nItemIndex, 2);
	if nSoLan200k == nil then
		nSoLan200k = 0
		SetSpecItemParam(nItemIndex, 2, 0)
		SyncItem(nItemIndex)
	end
	local tb = {
	"C�t ti�n/#CatTien("..nCount..","..GetCash()..","..nItemIndex..")",
	"R�t ti�n/#RutTien("..nCount..","..nItemIndex..")",
	"Tho�t/Quit",
	}
	Say("<color=yellow>Xin Ch�o "..myplayersex().." C� Mu�n C�t Gi� Ti�n Kh�ng.\nTa S� Gi�p "..myplayersex().." C�t Gi� T�i S�n Kh�ng Lo S� M�t!<color>",getn(tb),tb)
	return 1
end

function myplayersex()
	if GetSex() == 1 then 
		return "<color=violet>N� Hi�p<color>";
	else
		return "<color=violet>��i Hi�p<color>";
	end
end

function CatTien(nCount,nCash,nItemIndex)
	local nCountStore = nCount + nCash --S� l��ng trong t�i b�ng s� hi�n c� c�ng v�i s� c� tr�n ng��i
		local nSoLan200k = floor(nCountStore/2000000000)
		local nSoTienLe = nCountStore - nSoLan200k*2000000000 --S� l�u s� ti�n n�y v�o param1,param2 s� l� s� l�n 200k
		SetSpecItemParam(nItemIndex, 2, nSoLan200k)
		SetSpecItemParam(nItemIndex, 1, nSoTienLe)
		SyncItem(nItemIndex)
		Pay(nCash)
		Msg2Player("�� c�t "..DocSoTien(nCash).." v�o trong t�i. Trong t�i c� "..DocSoTien((GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1)))..".")
end

function RutTien(nCount,nItemIndex)
	if nCount == 0 then --S� ti�n c� trong t�i.
		Say("B�n trong t�i tr�ng r�ng kh�ng c� ng�n l��ng.", 0) 
	return 0 
	end
	local	tb = {
	"Nh�p S� L��ng/#RutTien_Select(99,"..nCount..","..nItemIndex..")",
	"R�t 10.000 v�n/#RutTien_Select(1,"..nCount..","..nItemIndex..")",
	"R�t 20.000 v�n/#RutTien_Select(2,"..nCount..","..nItemIndex..")",
	"R�t 50.000 v�n/#RutTien_Select(5,"..nCount..","..nItemIndex..")",
	"R�t 100.000 v�n/#RutTien_Select(10,"..nCount..","..nItemIndex..")",
	"Tho�t./Quit",
	}
	Say("Xin ch� � n�u mu�n nh�p s� l��ng c�n r�t l� 10.000 v�n th� ch� c�n nh�p 10.000.",getn(tb),tb)
	 
end

function RutTien_Select(nSelect,nSoTienTrongTui,nItemIndex)
	if nSelect == 99 then
		SetTaskTemp(114, nItemIndex)
		AskClientForNumber("RutTien_StepNext", 0,200000,"Nh�p s� l��ng xu mu�n r�t.")
	else
		SoTienRut = nSelect * 100000000
		if SoTienRut > nSoTienTrongTui then --C�i bi�n nSoTienTrongTui �� ���c t�nh b�ng c� param1+param2
			Msg2Player("S� ti�n trong t�i kh�ng �� "..DocSoTien(SoTienRut)..". Kh�ng th� r�t.")
			return
		end
		local MoneyCalc = SoTienRut + GetCash()
		if MoneyCalc <= 2000000000 then
			Earn(SoTienRut)
			local SoTienConLaiSauKhiRut = nSoTienTrongTui - SoTienRut
			if SoTienConLaiSauKhiRut >= 2000000000 then
				nParam2 = floor(SoTienConLaiSauKhiRut/2000000000)
				nParam1 = SoTienConLaiSauKhiRut - nParam2*2000000000
				SetSpecItemParam(nItemIndex, 2, nParam2)
				SetSpecItemParam(nItemIndex, 1, nParam1)
				SyncItem(nItemIndex)
			else
				SetSpecItemParam(nItemIndex, 2, 0)
				SetSpecItemParam(nItemIndex, 1, SoTienConLaiSauKhiRut)
				SyncItem(nItemIndex)
			end
			Msg2Player("R�t th�nh c�ng "..DocSoTien(SoTienRut).." v�n. Trong t�i c�n l�i "..DocSoTien((GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1)))..".")
		else
			Msg2Player("S� ti�n c� tr�n ng��i v� s� ti�n mu�n r�t v��t qu� gi�i h�n. Xin h�y c�n th�n")
		end
	end
end

function RutTien_StepNext(nMoneyAskClient)
	local nPickup = nMoneyAskClient * 10000
	local nItemIndex = GetTaskTemp(114)
	local nMoneyInBag = GetItemParam(nItemIndex,2)*2000000000 + GetItemParam(nItemIndex,1);  --S� ti�n �ang c� trong t�i
	if nPickup <= 0 then 
		return 
	end
	if (nPickup + GetCash()) > 2000000000 then
		Msg2Player("S� ti�n c� tr�n ng��i v� s� ti�n mu�n r�t v��t qu� gi�i h�n. Xin h�y c�n th�n")
		return
	end
	if nPickup > nMoneyInBag then
		nPickup = nMoneyInBag
	end
	nMoneyInBag_ConLai = nMoneyInBag - nPickup --S� c�n l�i b�ng S� ban ��u tr� �i s� �� r�t
	Earn(nPickup)
	if nMoneyInBag_ConLai >= 2000000000 then
		nParam2 = floor(nMoneyInBag_ConLai/2000000000)
		nParam1 = nMoneyInBag_ConLai - nParam2*2000000000
		SetSpecItemParam(nItemIndex, 2, nParam2)
		SetSpecItemParam(nItemIndex, 1, nParam1)
		SyncItem(nItemIndex)
	else
		SetSpecItemParam(nItemIndex, 2, 0)
		SetSpecItemParam(nItemIndex, 1, nMoneyInBag_ConLai)
		SyncItem(nItemIndex)
	end
	local nTotalMoneyInBag = GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1);
	Msg2Player("R�t th�nh c�ng "..DocSoTien(nPickup)..". Trong t�i c�n l�i "..DocSoTien(nTotalMoneyInBag)..".")
end

function DocSoTien(nMoney)
	local Sotien = tostring(nMoney)
	local DoDai = strlen(Sotien)
	if DoDai <= 4 then
		return "<color=Yellow>"..Sotien.."<color> L��ng"
	elseif DoDai > 4 and DoDai <= 8 then--T� 1.0000(4 s�) ��n 9999.9999(8 s�) v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 4)
		local nY = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> V�n <color=White>"..nY.."<color> L��ng"
	elseif DoDai > 8 and DoDai <=10 then  --T� 10.000.0000(9 s�) ��n 999.999.9999(10 s�) v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 7)
		local nY = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nZ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> Ngh�n <color=White>"..nY.."<color> V�n <color=White>"..nZ.."<color> L��ng"
	elseif DoDai > 10 and DoDai <= 13 then--T� 1.000.000.0000(11 s�) v�n 999.999.999.9999(13 s�) v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 10)
		local nY = strsub(tostring(nMoney),DoDai - 9,DoDai - 7)
		local nZ = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nJ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> Tri�u <color=White>"..nY.."<color> Ngh�n <color=White>"..nZ.."<color> V�n <color=White>"..nJ.."<color> L��ng"
	end
end

function GetDesc(nItemIndex) 
	local nMoney= GetItemParam(nItemIndex,2)*2000000000 + GetItemParam(nItemIndex,1);
	local Sotien = tostring(nMoney)
	local DoDai = strlen(Sotien)
	if DoDai <= 4 then
		return "S� ti�n trong t�i<enter><color=Yellow>"..Sotien.."<color> L��ng"
	elseif DoDai > 4 and DoDai <= 8 then--T� 1.0000 ��n 9999.9999 v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 4)
		local nY = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "S� ti�n trong t�i<enter><color=yellow>"..nX.."<color> V�n <color=White>"..nY.."<color> L��ng"
	elseif DoDai > 8 and DoDai <=10 then  --T� 10.000.0000 ��n 999.999.9999 v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 7)
		local nY = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nZ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "S� ti�n trong t�i<enter><color=White>"..nX.."<color> Ngh�n <color=White>"..nY.."<color> V�n <color=White>"..nZ.."<color> L��ng"
	elseif DoDai > 10 and DoDai <= 13 then--T� 1.000.000.0000 v�n 999.999.999.9999 v�n
		local nX = strsub(tostring(nMoney),1,DoDai - 10)
		local nY = strsub(tostring(nMoney),DoDai - 9,DoDai - 7)
		local nZ = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nJ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "S� ti�n trong t�i<enter><color=yellow>"..nX.."<color> Tri�u <color=White>"..nY.."<color> Ngh�n <color=White>"..nZ.."<color> V�n <color=White>"..nJ.."<color> L��ng"
	end
	end