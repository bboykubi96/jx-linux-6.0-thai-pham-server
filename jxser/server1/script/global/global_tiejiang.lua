-----------------------------***Script*By*Heart*Doldly***--------------------------------------
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")
Include("\\script\\global\\recoin_goldenequip.lua") 
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
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
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-------------------------------------------------
function tiejiang_city(...)
	local nNpcIndex = GetLastDiagNpc(); 
	local szNpcName = "Thî rÌn" 
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
	tbDailog:AddOptEntry("Giao DÞch", yes);
		-- tbDailog:AddOptEntry("Phi Phong T¨ng Sao - §ét Ph¸", PhiPhongTangSao.Register, {PhiPhongTangSao});
		--tbDailog:AddOptEntry("N©ng CÊp Phi Phong", tbNangCapPhiPhong.NangCapPhiPhong, {tbNangCapPhiPhong});
		--tbDailog:AddOptEntry("N©ng CÊp §å Phæ", NangCapDoPho)
		-- tbDailog:AddOptEntry("§æi §¹i Tinh Ngäc", DoiDaiTinhNgoc)
		--tbDailog:AddOptEntry("§æi Thiªn Tinh Ngäc", DoiThienTinhNgoc)
	tbDailog:AddOptEntry("§æi Trang BÞ", DoiTrangBi)
	tbDailog:AddOptEntry("Trïng LuyÖn trang bÞ", Kevin_trungluyentrangbi)
	tbDailog:AddOptEntry("VËt phÈm v©y quanh ", jewel_yes);
	tbDailog:AddOptEntry("Xö Lý < Trang bÞ  Tæn H¹i >", deal_brokenequip); 
	tbDailog:AddOptEntry("Ta ®Ðn nhËn nhiÖm vô s¬ nhËp ", education_tiejiang); 
	tbDailog:Show() 
end;

-- 3008 Ngäc Quy Nguyªn





function Kevin_trungluyentrangbi()
GiveItemUI("Trïng LuyÖn Trang BÞ", "Trïng luyÖn ngäc : 1", "Kevin_trungluyentrangbi_b1", "onCancel",1)
end

function Kevin_trungluyentrangbi_b1(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"ChØ ®­îc bá vµo 1 trang bÞ ", "µ ta nhÇm, ®Ó ta bá vµo l¹i./Kevin_trungluyentrangbi", "µ ta nhÇm, ®Ó ta ®i 1 lóc l¸t quay l¹i./onCancel"});
		return
	end
	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--Æ·ÖÊ
	local GetIdGoldItem = GetGlodEqIndex(nItemIndex)
	local idnew = GetIdGoldItem
	local Khoa = GetItemBindState(nItemIndex)
	local nExpiredTime 		= ITEM_GetExpiredTime(nItemIndex);
		-- print(idnew)
	if (Khoa == -2) then						
			Talk(1, "", "VËt phÈm khãa råi, kh«ng thÓ trïng luyÖn !");
				return
			end
		if (nExpiredTime > 0) then 
			Talk(1, "", "VËt phÈm cña nhµ cã thêi h¹n sö dông, kh«ng thÓ quy ®æi!");
				return
			end
	if nQuality ~= 1 then
		Talk(1,"","Trang bÞ nµy ®· bÞ  kh«ng thÓ trïng luyÖn");
		return
	end
       if CalcEquiproomItemCount(6,1,8017,-1) < 1 then
		CreateTaskSay({"Ng­¬i kh«ng cã ®ñ nguyªn liÖu ", "§Ó ta bá vµo l¹i./Kevin_trungluyentrangbi", "Ta kh«ng muèn ®æi n÷a./onCancel"});
		return
	end
	k = RemoveItemByIndex(nItemIndex)
	if ( k ~= 1 ) then
		Say("Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0)
		return 0
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"§æi m«n ph¸i trang bÞ hoµng kim",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"§æi m«n ph¸i trang bÞ hoµng kim thÊt b¹i:\t"..GetItemName(nItemIndex)));
	end
       -- ConsumeEquiproomItem(50, 4, 417, 1, -1)
	ConsumeEquiproomItem(1, 6, 1, 8017, -1)
	local nItemIndex = AddGoldItem(0,idnew)
	logplayer("dulieu/TRUNGLUYEN_TRANGBI.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· r· thµnh c«ng trang bÞ id: "..idnew.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- SetItemBindState(nItemIndex,Khoa)
	Msg2Player("<color=yellow>Trïng luyÖn trang bÞ thµnh c«ng<color>!");
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
	"Giao DÞch /yes",
	"VËt phÈm §óc/onFoundry",
	"Ta ®Õn nhËn nhiÖm vô s¬ nhËp /tboss", 
	"KÕt thóc ®èi tho¹i /no", 
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
CreateTaskSay({"<dec><npc> thñy tinh v©y quanh thiÖp cËp ngò hµnh th¨ng b»ng # linh khÝ vËn chuyÓn ph­¬ng ph¸p , tuyÖt kh«ng ph¶i nh©n lùc nh­ng tr¾c , ch­a ch¾c thËt cã thÓ nh­ ng­¬i hy väng biÕn thµnh tuyÖt thÕ cùc phÈm # mµ vò khÝ ®å phæ cïng vùc ngo¹i kú tr©n lµ cã thÓ thµnh c«ng söa ®æi trang bÞ ®Ých cÊp bËc . ng­¬i thËt quyÕt ®Þnh v©y quanh trang bÞ cña ng­¬i sao ? ","B¾t ®Çu v©y quanh /jewel_yes1", " liªn quan tíi v©y quanh /help","Ta suy nghÜ l¹i mét chót /no"}); 
end 

function jewel_yes1() 
EnchaseItem() 
end 
  
function no() 
end; 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function energy_sale() 
CreateStores();
AddShop2Stores(108,"Cöa Hµng Tinh Lùc", 15, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(107,"T¹p Hãa Cao CÊp", 1, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(98,"Tèng Kim", 4, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(93,"Phóc Duyªn", 2, 100, "fBuyCallBack(%d,%d)");
AddShop2Stores(101,"Liªn §Êu", 11, 100, "fBuyCallBack(%d,%d)"); 
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
	AskClientForNumber("DaiTinhNgoc",0,1000,"NhËp Sè L­îng")
end

function DaiTinhNgoc(num)
local nTinhNgoc = CalcEquiproomItemCount(6,1,4807,1)
local tbTinhNgoc = num*10
	if (nTinhNgoc >= tbTinhNgoc) then
		ConsumeEquiproomItem(tbTinhNgoc,6,1,4807,-1)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4873,1,0,0},},"§¹i Tinh Ngäc",num)
	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." §¹i Tinh Ngäc , Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." Tinh Ngäc")
	end
end

function DoiThienTinhNgoc()
	AskClientForNumber("ThienTinhNgoc",0,1000,"NhËp Sè L­îng")
end

function ThienTinhNgoc(num)
local nDaiTinhNgoc = CalcEquiproomItemCount(6,1,4873,1)
local tbDaiTinhNgoc = num*10
	if (nDaiTinhNgoc >= tbDaiTinhNgoc) then
		ConsumeEquiproomItem(tbDaiTinhNgoc,6,1,4873,-1)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4806,1,0,0},},"Thiªn Tinh Ngäc",num)
	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Thiªn Tinh Ngäc , Cßn ThiÕu "..tbDaiTinhNgoc-nDaiTinhNgoc.." §¹i Tinh Ngäc")
	end
end
----------------------------------------------------------------------------Che Tao Vu Khi Phat Sang-------------------------------------------------------------------------------------------------------------------------
function Make_Weapons()
	szDescription = format("+1 Lam Thñy Tinh\n+1 Tö Thñy Tinh\n+1 Lôc Thñy Tinh\n+100 TiÒn Xu")
	GiveItemUI("Vò KhÝ Ph¸t S¸ng",szDescription,"Run_MakeWeapons","",1)
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
					Talk(1,"","Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1,"","Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			else
				Talk(1,"","ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
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
			if nFaction == 0 or nFaction == 1 then	--ThiÕu L©m - Thiªn V­¬ng
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
		Talk(1,"","Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end

	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1,"","Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	local nCountStone1 = getn(tbDatabase.tbStone1)
	local nCountStone2 = getn(tbDatabase.tbStone2)
	local nCountStone3 = getn(tbDatabase.tbStone3)
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1)
	if (nCountStone1 ~= 1 and nCountStone2 ~= 1 and nCountStone3 ~= 1 and nSilverCount ~= 100) then
		Say("<color=yellow>ChÕ T¹o Vò KhÝ Ph¸t S¸ng CÇn Ph¶i Thu ThËp §ñ<color>\n               <color=fire>* Nguyªn LiÖu:<color>\n                 <color=blue>Lam Thñy Tinh<color>\n                 <color=pink>Tö Thñy Tinh<color>\n                 <color=green>Lôc Thñy Tinh<color>\n                 <color=orange>100 TiÒn Xu<color>")
		return
	end
	
	ConsumeEquiproomItem(100,4,417,1,1)
	RemoveItemByIndex(tbDatabase.tbStone1[1])
	RemoveItemByIndex(tbDatabase.tbStone2[1])
	RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])

	if nSucces == 0 then
		Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------