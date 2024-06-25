Include("\\script\\gmscript.lua")


function gmnangcaptrangbi_hk()
	local tbOpt = {}
	tinsert(tbOpt,"N�ng c�p Huy�n Vi�n l�n T� M�ng./gmhvlentumang")
	tinsert(tbOpt,"N�ng c�p T� M�ng l�n Kim � ./gmtumanglenkimo")
	--tinsert(tbOpt,"N�ng c�p Kim � l�n B�ch H� ./gmkimolenbachho")
	--tinsert(tbOpt,"N�ng c�p B�ch H� l�n X�ch L�n ./gmbachholenxichlan")
	--tinsert(tbOpt,"N�ng c�p X�ch L�n l�n Minh Phu�ng ./gmxichlanlenminhphuong")
	--tinsert(tbOpt,"Demo ghi file ./logWrite")
	tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
	Say("Ta chuy�n n�ng c�p c�c lo�i trang b� Huy�n Vi�n, Kim �, T� M�ng, B�ch H�, X�ch L�n, Minh Phu�ng, ��i hi�p c�n n�ng c�p lo�i trang b� n�o?", getn(tbOpt), tbOpt)
end;

function logWrite()

str="con me may"

local gm_Log = "script/global/tieungao/toado.txt"

--local fs_log = openfile(gm_Log, "a");
--file = io.open(gm_Log, "r")
--Say(file:read())

write(fs_log, ""..str.."\n");
closefile(fs_log);

end

function gmhvlentumang()
GiveItemUI("N�ng c�p l�n trang b� T� M�ng", "�� n�ng c�p l�n trang b� T� M�ng ��i hi�p c�n 1 trang b� Huy�n Vi�n, 5 th�n b� kho�ng th�ch, 500 v�n", "TuMangUpConfirm", "onCancel", 1);
end

function gmtumanglenkimo()
GiveItemUI("N�ng c�p l�n trang b� Kim �", "�� n�ng c�p l�n trang b� Kim � ��i hi�p c�n 1 trang b� T� M�ng, 10 th�n b� kho�ng th�ch, 500 v�n", "KimOUpConfirm", "onCancel", 1);
end

function gmkimolenbachho()
GiveItemUI("N�ng c�p l�n trang b� B�ch H�", "�� n�ng c�p l�n trang b� B�ch H� ��i hi�p c�n 1 trang b� Kim �, 1 Nh�c vu�ng 10 th�n b� kho�ng th�ch, 500 v�n, 50 ti�n ��ng. K�t qu� s� nh�n �u�c 1 trang b� B�ch H� ng�u nhi�n", "BachHoUpConfirm", "onCancel", 1);
end

function TuMangUpConfirm1(nCount)

local thanbikthach_id = 398--than bi khoang thach
local sltienphaitra = 5000000

	if (nCount <= 0) then
		Talk(1, "", "Xin m�i b� v�o trang b� c� th� ��i ���c.");
		return
	end
	
	--if (nCount ~= 6) then
		--Talk(1, "", "��i hi�p �� b� kh�ng ��ng s� lu�ng quy ��nh");
		--return
	--end
	
	local nItemIndex = GetGiveItemUnit(1);
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)

	if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
		local slthanbi = CalcItemCount(-1,itemgenre,itemdetail,itemParticular,-1)
		Msg2Player("Dem 1 than bi khoang thach:"..slthanbi.."")
	end


	if (nItemIndex == nil or nItemIndex <= 0) then
		Talk(1, "", "Xin m�i b� v�o trang b� c� th� ��i ���c.");
		return
	end
	
	--local nBindState = GetItemBindState(nItemIndex);
	
	--if (nBindState ~= 0) then
		--Talk(1, "", "Ch� c� th� d�ng trang b� kh�ng kh�a v� kh�ng c� th�i h�n s� d�ng ��i th�nh h�n th�ch");
		--return
	--end
	
	--local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	--local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	--if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		--Talk(1, "", "Ch� c� th� d�ng trang b� kh�ng c� th�i h�n s� d�ng ��i th�nh h�n th�ch");
		--return
	--end

end

function TuMangUpConfirm(nCount)

	if (nCount <= 0) then
		Talk(1, "", "Xin m�i b� v�o �� v�t ph�m m�i c� th� ��i ���c.");
		return
	end

	if (nCount ~= 6) then
		Talk(1, "", "��i hi�p �� b� kh�ng ��ng s� lu�ng quy ��nh");
		return
	end

	local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		Talk(1, "", "Ch� c� th� d�ng trang b� kh�ng c� th�i h�n s� d�ng ��i th�nh h�n th�ch");
		return
	end

local thanbikthach_id = 398--than bi khoang thach
local slthanbi = 0
local slthanbiphaitra = 5
local slhuyenvien = 0
local slhuyenvienphaitra = 1
local sltien = GetCash()
local sltienphaitra = 5000000

	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)

		local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)--Dem khoang thach
		if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
			slthanbi = slthanbi + 1
		end

		local goldid = GetGlodEqIndex(nItemIndex)--dem hoang kim
		--Msg2Player("GoldID: "..goldid.."")
		if(goldid >= 1605 and goldid <=1824) then--Kiem tra id hv
			slhuyenvien = 1
		end

	end

	if(slthanbi < slthanbiphaitra) then
		Msg2Player("S� th�n b� kho�ng th�ch ��i hi�p b� v�o : "..slthanbi.." kh�ng �� v�i s� lu�ng y�u c�u: "..slthanbiphaitra.."")
		Say("S� th�n b� kho�ng th�ch ��i hi�p b� v�o : "..slthanbi.." kh�ng �� v�i s� lu�ng y�u c�u: "..slthanbiphaitra.."")
		return 1
	end

	if(slhuyenvien < slhuyenvienphaitra) then
		Msg2Player("S� trang b� huy�n vi�n ��i hi�p b� v�o: "..slhuyenvien.." kh�ng �� v�i s� lu�ng y�u c�u: "..slhuyenvienphaitra.."")
		Say("S� trang b� huy�n vi�n ��i hi�p b� v�o: "..slhuyenvien.." kh�ng �� v�i s� lu�ng y�u c�u: "..slhuyenvienphaitra.."")
		return 1
	end

	if(sltien < sltienphaitra) then
		Msg2Player("S� ti�n trong ru�ng ��i hi�p mang theo: "..sltien.." lu�ng kh�ng �� v�i s� ti�n y�u c�u: "..sltienphaitra.." lu�ng")
		Say("S� ti�n trong ru�ng ��i hi�p mang theo: "..sltien.." lu�ng kh�ng �� v�i s� ti�n y�u c�u: "..sltienphaitra.." lu�ng")
		return 1
	end

	for i=1, nCount do --Xoa vat pham sau khi nang cap
		nItemIndex = GetGiveItemUnit(i)
		RemoveItemByIndex(nItemIndex)
		--local strItem = GetItemName(nItemIndex)
		--WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end
	Pay(sltienphaitra)

	--AddGoldItem(0,1825)

	nItemIndex = AddItem(6,1,2350,0,0,0,0)--tu mang len bai

	Msg2Player("N�ng c�p trang b� th�nh c�ng, ��i hi�p �� nh�n �u�c 1 l�nh b�i T� M�ng, l�y n� ��n th� r�n th�n b� L�m An �� ��i, ki�m tra l�i h�nh trang!")
	Say("N�ng c�p trang b� th�nh c�ng, ��i hi�p �� nh�n �u�c 1 l�nh b�i T� M�ng, l�y n� ��n th� r�n th�n b� L�m An �� ��i, ki�m tra l�i h�nh trang!")
end

--=====================================

function KimOUpConfirm(nCount)

	local thanbikthach_id = 398--than bi khoang thach
	local slthanbi = 0
	local slthanbiphaitra = 10
	local slhuyenvien = 0
	local slhuyenvienphaitra = 1
	local sltien = GetCash()
	local sltienphaitra = 5000000

	if (nCount <= 0) then
		Talk(1, "", "Xin m�i b� v�o �� v�t ph�m m�i c� th� ��i ���c.");
		return
	end

	if (nCount ~= 11) then
		Talk(1, "", "��i hi�p �� b� kh�ng ��ng s� lu�ng quy ��nh, y�u c�u "..slhuyenvienphaitra.." trang b� T� M�ng v� "..slthanbiphaitra.." th�n b� kho�ng th�ch");
		return
	end

	local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		Talk(1, "", "Ch� c� th� d�ng trang b� kh�ng c� th�i h�n s� d�ng ��i th�nh h�n th�ch");
		return
	end

	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)

		local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)--Dem khoang thach
		if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
			slthanbi = slthanbi + 1
		end

		local goldid = GetGlodEqIndex(nItemIndex)--dem hoang kim
		if(goldid >= 1825 and goldid <=2054) then--Kiem tra id tu mang
			slhuyenvien = 1
		end

	end

	if(slthanbi < slthanbiphaitra) then
		Msg2Player("S� th�n b� kho�ng th�ch ��i hi�p b� v�o : "..slthanbi.." kh�ng �� v�i s� lu�ng y�u c�u: "..slthanbiphaitra.."")
		Say("S� th�n b� kho�ng th�ch ��i hi�p b� v�o : "..slthanbi.." kh�ng �� v�i s� lu�ng y�u c�u: "..slthanbiphaitra.."")
		return 1
	end

	if(slhuyenvien < slhuyenvienphaitra) then
		Msg2Player("S� trang b� t� m�ng ��i hi�p b� v�o: "..slhuyenvien.." kh�ng �� v�i s� lu�ng y�u c�u: "..slhuyenvienphaitra.."")
		Say("S� trang b� t� m�ng ��i hi�p b� v�o: "..slhuyenvien.." kh�ng �� v�i s� lu�ng y�u c�u: "..slhuyenvienphaitra.."")
		return 1
	end

	if(sltien < sltienphaitra) then
		Msg2Player("S� ti�n trong ru�ng ��i hi�p mang theo: "..sltien.." lu�ng kh�ng �� v�i s� ti�n y�u c�u: "..sltienphaitra.." lu�ng")
		Say("S� ti�n trong ru�ng ��i hi�p mang theo: "..sltien.." lu�ng kh�ng �� v�i s� ti�n y�u c�u: "..sltienphaitra.." lu�ng")
		return 1
	end

	for i=1, nCount do --Xoa vat pham sau khi nang cap
		nItemIndex = GetGiveItemUnit(i)
		RemoveItemByIndex(nItemIndex)
		--local strItem = GetItemName(nItemIndex)
		--WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end
	Pay(sltienphaitra)

	--AddGoldItem(0,1825)

	nItemIndex = AddItem(6,1,2349,0,0,0,0)--kim o lenh bai

	Msg2Player("N�ng c�p trang b� th�nh c�ng, ��i hi�p �� nh�n �u�c 1 l�nh b�i Kim �, l�y n� ��n th� r�n th�n b� L�m An �� ��i, ki�m tra l�i h�nh trang!")
	Say("N�ng c�p trang b� th�nh c�ng, ��i hi�p �� nh�n �u�c 1 l�nh b�i Kim �, l�y n� ��n th� r�n th�n b� L�m An �� ��i, ki�m tra l�i h�nh trang!")
end