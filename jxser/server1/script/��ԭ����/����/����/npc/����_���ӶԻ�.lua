--��ԭ���� ������ ���ӶԻ�
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
function main(sel)
Say("M� phi�n t�: C� l� thi�n l� m�, c�ng ph�i c� Nh�c b� m�i ���c, ��ng ti�c tr�n ��i ng��i nhi�u d� m�o l�y v�t, thi�t gi� ch�ng ph�n bi�t ���c, b�t k� ��ng sai , th�t l� bu�n c��i !", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");--,"��i M�nh Ra Ng�a/doimanhrangua","N�ng C�p Phi V�n/nangcapphivan"

end;


function yes()
Sale(46);  			--�������׿�
end;
function nangcapphivan()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Ng�a.", "B� ng�a Chi�u D� ho�c X�ch Th� v�o.\nKh�ng b� nguy�n li�u v�o.\n- 8 M�nh ��ch L�\n- 8 M�nh Tuy�t �nh \n- 8 M�nh � V�n ��p Tuy�t\n- 2 KNB\n- 2000 V�n L��ng \nT� l� th�nh c�ng 10%", "nangcapphivan_ok", "no", 1)
end

function nangcapphivan_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Ng�a V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local manhdichlo= CalcEquiproomItemCount(4,1645,1,1)
local manhtuyetan= CalcEquiproomItemCount(4,1646,1,1)
local manhovan= CalcEquiproomItemCount(4,1649,1,1)
local knb= CalcEquiproomItemCount(4,343,1,1)
local nItemIndex = GetGiveItemUnit(1)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
local nCurTime = GetCurServerTime()
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end	
	if (nD==10 and nP==5 and nL==7) or (nD==10 and nP==5 and nL==5) then

			local tbItem = 
	{	
		{szName = "Phi V�n", tbProp = {0,10,8,10,0,0,0}, nCount = 1},	
	}
	if manhdichlo>=8 and manhovan>=8 and manhtuyetan>=8 and knb>=2 and GetCash()>=20000000 then
				local a=random(1,100)
				if a<=10  then
				RemoveItemByIndex(nItemIndex)
					ConsumeEquiproomItem(8, 4,1645,1,1)
					ConsumeEquiproomItem(8, 4,1646,1,1)
					ConsumeEquiproomItem(8, 4,1649,1,1)
					ConsumeEquiproomItem(2, 4,343,1,1)
					Pay(20000000)
--local Index = AddGoldItem(0,710) SyncItem(Index) 
					tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
					Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� luy�n th�nh c�ng <color=cyan> Phi V�n.")
				--	WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  �p th�nh cong Xich Long Cau\n");	
				else
					RemoveItemByIndex(nItemIndex)
					ConsumeEquiproomItem(8, 4,1645,1,1)
					ConsumeEquiproomItem(8, 4,1646,1,1)
					ConsumeEquiproomItem(8, 4,1649,1,1)
					ConsumeEquiproomItem(2, 4,343,1,1)
					Pay(20000000)
					Msg2SubWorld("<color=green>Th� Ch� <color=yellow>"..GetName().."<color> V�a luy�n x�t ng�a <color=red> Phi V�n<color><color=green>Xin chia bu�n c�ng gia quy�n.")
				end
				else 
				Say("Kh�ng �� Nguy�n Li�u.");
		end
	else
	Say("Th� ng��i b� v�o kh�ng ph�i l� Ng�a X�ch Th� ho�c Ng�a Chi�u D�.")
	end
end
function doimanhrangua()
			local tbSay = {
"��i Ng�a ��ch L�./#doinguadichlo()",
"��i Ng�a Tuy�t �nh./#doinguatuyetanh()",
"��i Ng�a Chi�u D�./#doinguachieuda()",
"��i Ng�a X�ch Th�./#doinguaxichtho()",
"��i Ng�a � V�n ��p Tuy�t./#doinguaovan()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doinguaovan()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1649,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1649,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a � V�n ��p Tuy�t c�n thi�t �� �p.")
		return
	end
end
function doinguaxichtho()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1648,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1648,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a X�ch Th� c�n thi�t �� �p.")
		return
	end
end
function doinguachieuda()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1647,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1647,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Chi�u D� Ng�c S� T�",tbProp={0,10,5,5,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a Chi�u D� c�n thi�t �� �p.")
		return
	end
end
function doinguatuyetanh()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1646,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1646,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ng�a Tuy�t �nh",tbProp={0,10,5,8,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a Tuy�t �nh c�n thi�t �� �p.")
		return
	end
end
function doinguadichlo()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1645,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1645,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ng�a ��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a ��ch L� c�n thi�t �� �p.")
		return
	end
end
function no()
end;

