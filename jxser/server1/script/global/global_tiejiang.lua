-----------------------------***Script*By*Heart*Doldly***--------------------------------------
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")
Include("\\script\\global\\recoin_goldenequip.lua") 
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\shenmi_chapman.lua"); 
Include("\\script\\activitysys\\npcdailog.lua") 
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapphiphong\\equip_nangcapphiphong.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapphiphong\\fftangsao.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\epdopho\\epdopho.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\equipment.lua")
------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-------------------------------------------------
function tiejiang_city(...)
	local nNpcIndex = GetLastDiagNpc(); 
	local szNpcName = "Th� r�n" 
	local tbDailog = DailogClass:new(szNpcName); 
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex) 
	local aryParam = arg; 
	if (getn(aryParam) == 0) then 
		tbDailog.szTitleMsg = TIEJIANG_DIALOG 
	else 
		for i = 1, getn(aryParam) do 
			if (i == 1) then 
				tbDailog.szTitleMsg = TIEJIANG_DIALOG 
			else 
				local _,_, szOpt, szFun = strfind(aryParam[i], "([^/]+)/([^/]+)")
				local fn = getglobal(szFun) 
				if fn then 
					tbDailog:AddOptEntry(szOpt, fn); 
				end 
			end 
		end 
	end
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg, "<dec>", "")
	tbDailog:AddOptEntry("Giao D�ch", yes);
		-- tbDailog:AddOptEntry("Phi Phong T�ng Sao - ��t Ph�", PhiPhongTangSao.Register, {PhiPhongTangSao});
		--tbDailog:AddOptEntry("N�ng C�p Phi Phong", tbNangCapPhiPhong.NangCapPhiPhong, {tbNangCapPhiPhong});
		--tbDailog:AddOptEntry("N�ng C�p �� Ph�", NangCapDoPho)
		-- tbDailog:AddOptEntry("��i ��i Tinh Ng�c", DoiDaiTinhNgoc)
		--tbDailog:AddOptEntry("��i Thi�n Tinh Ng�c", DoiThienTinhNgoc)
	tbDailog:AddOptEntry("��i Trang B�", DoiTrangBi)
	tbDailog:AddOptEntry("Tr�ng Luy�n trang b�", Kevin_trungluyentrangbi)
	tbDailog:AddOptEntry("V�t ph�m v�y quanh ", jewel_yes);
	tbDailog:AddOptEntry("X� L� < Trang b�  T�n H�i >", deal_brokenequip); 
	tbDailog:AddOptEntry("Ta ��n nh�n nhi�m v� s� nh�p ", education_tiejiang); 
	tbDailog:Show() 
end;

-- 3008 Ng�c Quy Nguy�n





function Kevin_trungluyentrangbi()
GiveItemUI("Tr�ng Luy�n Trang B�", "Tr�ng luy�n ng�c : 1", "Kevin_trungluyentrangbi_b1", "onCancel",1)
end

function Kevin_trungluyentrangbi_b1(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"Ch� ���c b� v�o 1 trang b� ", "� ta nh�m, �� ta b� v�o l�i./Kevin_trungluyentrangbi", "� ta nh�m, �� ta �i 1 l�c l�t quay l�i./onCancel"});
		return
	end
	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--Ʒ��
	local GetIdGoldItem = GetGlodEqIndex(nItemIndex)
	local idnew = GetIdGoldItem
	local Khoa = GetItemBindState(nItemIndex)
	local nExpiredTime 		= ITEM_GetExpiredTime(nItemIndex);
		-- print(idnew)
	if (Khoa == -2) then						
			Talk(1, "", "V�t ph�m kh�a r�i, kh�ng th� tr�ng luy�n !");
				return
			end
		if (nExpiredTime > 0) then 
			Talk(1, "", "V�t ph�m c�a nh� c� th�i h�n s� d�ng, kh�ng th� quy ��i!");
				return
			end
	if nQuality ~= 1 then
		Talk(1,"","Trang b� n�y �� b�  kh�ng th� tr�ng luy�n");
		return
	end
       if CalcEquiproomItemCount(6,1,8017,-1) < 1 then
		CreateTaskSay({"Ng��i kh�ng c� �� nguy�n li�u ", "�� ta b� v�o l�i./Kevin_trungluyentrangbi", "Ta kh�ng mu�n ��i n�a./onCancel"});
		return
	end
	k = RemoveItemByIndex(nItemIndex)
	if ( k ~= 1 ) then
		Say("Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0)
		return 0
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"��i m�n ph�i trang b� ho�ng kim",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"��i m�n ph�i trang b� ho�ng kim th�t b�i:\t"..GetItemName(nItemIndex)));
	end
       -- ConsumeEquiproomItem(50, 4, 417, 1, -1)
	ConsumeEquiproomItem(1, 6, 1, 8017, -1)
	local nItemIndex = AddGoldItem(0,idnew)
	logplayer("dulieu/TRUNGLUYEN_TRANGBI.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� r� th�nh c�ng trang b� id: "..idnew.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- SetItemBindState(nItemIndex,Khoa)
	Msg2Player("<color=yellow>Tr�ng luy�n trang b� th�nh c�ng<color>!");
end

function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end












-------------------------------------------------------------------------------------------------
function tiejiang_village(...) 
	local aryParam = arg; 
	local aryDescribe = { 
	"Giao D�ch /yes",
	"V�t ph�m ��c/onFoundry",
	"Ta ��n nh�n nhi�m v� s� nh�p /tboss", 
	"K�t th�c ��i tho�i /no", 
}; 

if (getn(aryParam) == 0) then 
	tinsert(aryDescribe, 1, TIEJIANG_DIALOG) 
else 
for i = 1, getn(aryParam) do 
if (i == 1) then 
tinsert(aryDescribe, 1, aryParam[i]); 
else 
tinsert(aryDescribe, 2, aryParam[i]); 
end; 
end; 
end; 
CreateTaskSay(aryDescribe); 
end; 
  
function jewel_yes() 
CreateTaskSay({"<dec><npc> th�y tinh v�y quanh thi�p c�p ng� h�nh th�ng b�ng # linh kh� v�n chuy�n ph��ng ph�p , tuy�t kh�ng ph�i nh�n l�c nh�ng tr�c , ch�a ch�c th�t c� th� nh� ng��i hy v�ng bi�n th�nh tuy�t th� c�c ph�m # m� v� kh� �� ph� c�ng v�c ngo�i k� tr�n l� c� th� th�nh c�ng s�a ��i trang b� ��ch c�p b�c . ng��i th�t quy�t ��nh v�y quanh trang b� c�a ng��i sao ? ","B�t ��u v�y quanh /jewel_yes1", " li�n quan t�i v�y quanh /help","Ta suy ngh� l�i m�t ch�t /no"}); 
end 

function jewel_yes1() 
EnchaseItem() 
end 
  
function no() 
end; 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function energy_sale() 
CreateStores();
AddShop2Stores(108,"C�a H�ng Tinh L�c", 15, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(107,"T�p H�a Cao C�p", 1, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(98,"T�ng Kim", 4, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(93,"Ph�c Duy�n", 2, 100, "fBuyCallBack(%d,%d)");
AddShop2Stores(101,"Li�n ��u", 11, 100, "fBuyCallBack(%d,%d)"); 
OpenStores(); 
end 

function fBuyCallBack(nItemIdx, nPrice) 
local nCount = 1 
local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx) 
if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then 

AddStatData("jlxiaohao_shiliantiegoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then 

AddStatData("jlxiaohao_xuantiangoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then 
 
AddStatData("jlxiaohao_qingjulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then 
 
AddStatData("jlxiaohao_yunlulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then 
 
AddStatData("jlsxiaohao_canglanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then 
 
AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then 
 
AddStatData("jlxiaohao_zimanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then 

AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then 
 
AddStatData("jlxiaohao_yandilinggoumai", nCount) 
end 
return 1 
end 
------------------------------------------------------------------------------------------------
function DoiDaiTinhNgoc()
	AskClientForNumber("DaiTinhNgoc",0,1000,"Nh�p S� L��ng")
end

function DaiTinhNgoc(num)
local nTinhNgoc = CalcEquiproomItemCount(6,1,4807,1)
local tbTinhNgoc = num*10
	if (nTinhNgoc >= tbTinhNgoc) then
		ConsumeEquiproomItem(tbTinhNgoc,6,1,4807,-1)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4873,1,0,0},},"��i Tinh Ng�c",num)
	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." ��i Tinh Ng�c , C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." Tinh Ng�c")
	end
end

function DoiThienTinhNgoc()
	AskClientForNumber("ThienTinhNgoc",0,1000,"Nh�p S� L��ng")
end

function ThienTinhNgoc(num)
local nDaiTinhNgoc = CalcEquiproomItemCount(6,1,4873,1)
local tbDaiTinhNgoc = num*10
	if (nDaiTinhNgoc >= tbDaiTinhNgoc) then
		ConsumeEquiproomItem(tbDaiTinhNgoc,6,1,4873,-1)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4806,1,0,0},},"Thi�n Tinh Ng�c",num)
	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Thi�n Tinh Ng�c , C�n Thi�u "..tbDaiTinhNgoc-nDaiTinhNgoc.." ��i Tinh Ng�c")
	end
end
----------------------------------------------------------------------------Che Tao Vu Khi Phat Sang-------------------------------------------------------------------------------------------------------------------------
function Make_Weapons()
	szDescription = format("+1 Lam Th�y Tinh\n+1 T� Th�y Tinh\n+1 L�c Th�y Tinh\n+100 Ti�n Xu")
	GiveItemUI("V� Kh� Ph�t S�ng",szDescription,"Run_MakeWeapons","",1)
end

function Run_MakeWeapons(nCount)

	local tbDatabase = {
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem = {
			[4] = {
				[238] = 1,
				[239] = 1,
				[240] = 1,                                                                                                                                                                                                                                                                                                             [417] = 1,
			},
		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1,"","Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1,"","Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			else
				Talk(1,"","Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
				return
			end
		end
		
		local TAB_WEAPONS = {
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}

		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then			--Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				else
					nSucces = 0
				end
			 elseif nFaction == 4 then			--Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				else
					nSucces = 0
				end
			 elseif nFaction == 9 then			--Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					else
						nSucces = 0
					end
				end
			 end
		elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then	--Thi�u L�m - Thi�n V��ng
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				else
					nSucces = 0
				end
			elseif nFaction == 3 then			--Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				else
					nSucces = 0
				end
			elseif nFaction == 5 then			--Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				else
					nSucces = 0
				end
			elseif nFaction == 9 then			--Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				else
					nSucces = 0
				end
			else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					else
						nSucces = 0
					end
				end
			end
		elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then			--Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				else
					nSucces = 0
				end
			 elseif nFaction == 6 then			--Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					else
						nSucces = 0
					end
				elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					else

						nSucces = 0
					end
				end
			end
		elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then			--Thien Nhan
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				else
					nSucces = 0
				end
			 elseif nFaction == 1 then			--Thien Vuong
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					else
						nSucces = 0
					end
				end
			end
		elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			else
				nSucces = 0
			end
		elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			else
				nSucces = 0
			end
		elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			else
				nSucces = 0
			end
		elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			else
				nSucces = 0
			end
		elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	
	if nItemTime ~= 0 then
		Talk(1,"","Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end

	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1,"","Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
	
	local nCountStone1 = getn(tbDatabase.tbStone1)
	local nCountStone2 = getn(tbDatabase.tbStone2)
	local nCountStone3 = getn(tbDatabase.tbStone3)
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1)
	if (nCountStone1 ~= 1 and nCountStone2 ~= 1 and nCountStone3 ~= 1 and nSilverCount ~= 100) then
		Say("<color=yellow>Ch� T�o V� Kh� Ph�t S�ng C�n Ph�i Thu Th�p ��<color>\n               <color=fire>* Nguy�n Li�u:<color>\n                 <color=blue>Lam Th�y Tinh<color>\n                 <color=pink>T� Th�y Tinh<color>\n                 <color=green>L�c Th�y Tinh<color>\n                 <color=orange>100 Ti�n Xu<color>")
		return
	end
	
	ConsumeEquiproomItem(100,4,417,1,1)
	RemoveItemByIndex(tbDatabase.tbStone1[1])
	RemoveItemByIndex(tbDatabase.tbStone2[1])
	RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])

	if nSucces == 0 then
		Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t quang.")
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------