function main(nItemIndex)
	local nCount = GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1);
	local nSoLan200k = GetItemParam(nItemIndex, 2);
	if nSoLan200k == nil then
		nSoLan200k = 0
		SetSpecItemParam(nItemIndex, 2, 0)
		SyncItem(nItemIndex)
	end
	local tb = {
	"CÊt tiÒn/#CatTien("..nCount..","..GetCash()..","..nItemIndex..")",
	"Rót tiÒn/#RutTien("..nCount..","..nItemIndex..")",
	"Tho¸t/Quit",
	}
	Say("<color=yellow>Xin Chµo "..myplayersex().." Cã Muèn CÊt Gi÷ TiÒn Kh«ng.\nTa SÏ Gióp "..myplayersex().." CÊt Gi÷ Tµi S¶n Kh«ng Lo Sî MÊt!<color>",getn(tb),tb)
	return 1
end

function myplayersex()
	if GetSex() == 1 then 
		return "<color=violet>N÷ HiÖp<color>";
	else
		return "<color=violet>§¹i HiÖp<color>";
	end
end

function CatTien(nCount,nCash,nItemIndex)
	local nCountStore = nCount + nCash --Sè l­îng trong tói b»ng sè hiÖn cã céng víi sè cã trªn ng­êi
		local nSoLan200k = floor(nCountStore/2000000000)
		local nSoTienLe = nCountStore - nSoLan200k*2000000000 --SÏ l­u sè tiÒn nµy vµo param1,param2 sÏ lµ sè lÇn 200k
		SetSpecItemParam(nItemIndex, 2, nSoLan200k)
		SetSpecItemParam(nItemIndex, 1, nSoTienLe)
		SyncItem(nItemIndex)
		Pay(nCash)
		Msg2Player("§· cÊt "..DocSoTien(nCash).." vµo trong tói. Trong tói cã "..DocSoTien((GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1)))..".")
end

function RutTien(nCount,nItemIndex)
	if nCount == 0 then --Sè tiÒn cã trong tói.
		Say("Bªn trong tói trèng rçng kh«ng cã ng©n l­îng.", 0) 
	return 0 
	end
	local	tb = {
	"NhËp Sè L­îng/#RutTien_Select(99,"..nCount..","..nItemIndex..")",
	"Rót 10.000 v¹n/#RutTien_Select(1,"..nCount..","..nItemIndex..")",
	"Rót 20.000 v¹n/#RutTien_Select(2,"..nCount..","..nItemIndex..")",
	"Rót 50.000 v¹n/#RutTien_Select(5,"..nCount..","..nItemIndex..")",
	"Rót 100.000 v¹n/#RutTien_Select(10,"..nCount..","..nItemIndex..")",
	"Tho¸t./Quit",
	}
	Say("Xin chó ý nÕu muèn nhËp sè l­îng cÇn rót lµ 10.000 v¹n th× chØ cÇn nhËp 10.000.",getn(tb),tb)
	 
end

function RutTien_Select(nSelect,nSoTienTrongTui,nItemIndex)
	if nSelect == 99 then
		SetTaskTemp(114, nItemIndex)
		AskClientForNumber("RutTien_StepNext", 0,200000,"NhËp sè l­îng xu muèn rót.")
	else
		SoTienRut = nSelect * 100000000
		if SoTienRut > nSoTienTrongTui then --C¸i biÕn nSoTienTrongTui ®· ®­îc tÝnh b»ng c¶ param1+param2
			Msg2Player("Sè tiÒn trong tói kh«ng ®ñ "..DocSoTien(SoTienRut)..". Kh«ng thÓ rót.")
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
			Msg2Player("Rót thµnh c«ng "..DocSoTien(SoTienRut).." v¹n. Trong tói cßn l¹i "..DocSoTien((GetItemParam(nItemIndex, 2)*2000000000 + GetItemParam(nItemIndex, 1)))..".")
		else
			Msg2Player("Sè tiÒn cã trªn ng­êi vµ sè tiÒn muèn rót v­ît qu¸ giíi h¹n. Xin h·y cÈn thËn")
		end
	end
end

function RutTien_StepNext(nMoneyAskClient)
	local nPickup = nMoneyAskClient * 10000
	local nItemIndex = GetTaskTemp(114)
	local nMoneyInBag = GetItemParam(nItemIndex,2)*2000000000 + GetItemParam(nItemIndex,1);  --Sè tiÒn ®ang cã trong tói
	if nPickup <= 0 then 
		return 
	end
	if (nPickup + GetCash()) > 2000000000 then
		Msg2Player("Sè tiÒn cã trªn ng­êi vµ sè tiÒn muèn rót v­ît qu¸ giíi h¹n. Xin h·y cÈn thËn")
		return
	end
	if nPickup > nMoneyInBag then
		nPickup = nMoneyInBag
	end
	nMoneyInBag_ConLai = nMoneyInBag - nPickup --Sè cßn l¹i b»ng Sè ban ®Çu trõ ®i sè ®· rót
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
	Msg2Player("Rót thµnh c«ng "..DocSoTien(nPickup)..". Trong tói cßn l¹i "..DocSoTien(nTotalMoneyInBag)..".")
end

function DocSoTien(nMoney)
	local Sotien = tostring(nMoney)
	local DoDai = strlen(Sotien)
	if DoDai <= 4 then
		return "<color=Yellow>"..Sotien.."<color> L­îng"
	elseif DoDai > 4 and DoDai <= 8 then--Tõ 1.0000(4 sè) ®Õn 9999.9999(8 sè) v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 4)
		local nY = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> V¹n <color=White>"..nY.."<color> L­îng"
	elseif DoDai > 8 and DoDai <=10 then  --Tõ 10.000.0000(9 sè) ®Õn 999.999.9999(10 sè) v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 7)
		local nY = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nZ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> Ngh×n <color=White>"..nY.."<color> V¹n <color=White>"..nZ.."<color> L­îng"
	elseif DoDai > 10 and DoDai <= 13 then--Tõ 1.000.000.0000(11 sè) v¹n 999.999.999.9999(13 sè) v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 10)
		local nY = strsub(tostring(nMoney),DoDai - 9,DoDai - 7)
		local nZ = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nJ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "<color=White>"..nX.."<color> TriÖu <color=White>"..nY.."<color> Ngh×n <color=White>"..nZ.."<color> V¹n <color=White>"..nJ.."<color> L­îng"
	end
end

function GetDesc(nItemIndex) 
	local nMoney= GetItemParam(nItemIndex,2)*2000000000 + GetItemParam(nItemIndex,1);
	local Sotien = tostring(nMoney)
	local DoDai = strlen(Sotien)
	if DoDai <= 4 then
		return "Sè tiÒn trong tói<enter><color=Yellow>"..Sotien.."<color> L­îng"
	elseif DoDai > 4 and DoDai <= 8 then--Tõ 1.0000 ®Õn 9999.9999 v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 4)
		local nY = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "Sè tiÒn trong tói<enter><color=yellow>"..nX.."<color> V¹n <color=White>"..nY.."<color> L­îng"
	elseif DoDai > 8 and DoDai <=10 then  --Tõ 10.000.0000 ®Õn 999.999.9999 v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 7)
		local nY = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nZ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "Sè tiÒn trong tói<enter><color=White>"..nX.."<color> Ngh×n <color=White>"..nY.."<color> V¹n <color=White>"..nZ.."<color> L­îng"
	elseif DoDai > 10 and DoDai <= 13 then--Tõ 1.000.000.0000 v¹n 999.999.999.9999 v¹n
		local nX = strsub(tostring(nMoney),1,DoDai - 10)
		local nY = strsub(tostring(nMoney),DoDai - 9,DoDai - 7)
		local nZ = strsub(tostring(nMoney),DoDai - 6,DoDai - 4)
		local nJ = strsub(tostring(nMoney),DoDai - 3,DoDai)
		return "Sè tiÒn trong tói<enter><color=yellow>"..nX.."<color> TriÖu <color=White>"..nY.."<color> Ngh×n <color=White>"..nZ.."<color> V¹n <color=White>"..nJ.."<color> L­îng"
	end
	end