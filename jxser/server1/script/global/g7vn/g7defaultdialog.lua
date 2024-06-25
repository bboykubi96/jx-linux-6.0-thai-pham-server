IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("TONG")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\doitennv.lua")
Include("\\script\\global\\g7vn\\resetbox.lua")
Include("\\data\\codevip.lua")
Include("\\script\\global\\titlefuncs.lua")

function main1()
	
	dofile("script/global/g7vn/g7defaultdialog.lua")
	--dofile("script/global/g7vn/resetbox.lua")
ResetBox:ShowDialog()
end

function main()
	
	-- dofile("script/global/g7vn/g7defaultdialog.lua")
	-- dofile("data/codevip.lua")
	-- dofile("data/codesupervip.lua")


	local szTitle = "<npc><color=gold>"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color>\n"
	local Opt = 
	{	
	    {"Mua combo 50 LÖnh Bµi & Phi Tèc & ChiÕn Cæ (50Xu)", Kv_buy_LBPT},
		{"T¨ng §iÓm Nhanh",TangDiem},
		-- {"PhÇn Th­ëng Tiªu DiÖt Boss §¹i KiÕm Tiªn + Tiªu Phong",NhiemVuSatThu1},
		{"TÈy Tñy Nhanh",DoPhoThanhCau},
		-- {"NhËn Th­ëng 1 Con Boss ThÕ Giíi", bosstieu},
		--{"Shop Xu Th­êng LÔ Quan.", ShopTienXuLeQuan},
		{"Më réng r­¬ng", moruong},
		{"Code VIP", phanthuongcodenew},
		-- {"Khãa §å VÜnh ViÔn", khoadovinhvien},
		{"NhËn KiÕn ThiÕt", kienthiet},
			-- {"Xãa Pass r­¬ng ", mokhoa1},
		{"Göi TiÒn V¹n Lªn Bang Héi", dongtienbanghoi},
		{"KÕt thóc ®èi tho¹i. ", End}
	}

	
	CreateNewSayEx(szTitle,Opt)

end


function dongtienbanghoi()
	local tbOpt =
	{
		{"§ong 1000 v¹n.", guitien100n},
		{"§ong 5000 v¹n.", guitien500n},
		
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän sè l­îng", tbOpt)
end

function guitien100n()
	local sltien = GetCash()
	local nAdd = 10000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nAdd) then
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nAdd.." l­îng vµo ng©n quü bang héi"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
	logplayer("dulieu/dong1000van.txt",format("Thêi gian : %s  -  Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] ®ãng tiÒn bang håi ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end
function guitien500n()
	local sltien = GetCash()
	local nAdd = 50000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nAdd) then
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nAdd.." l­îng vµo ng©n quü bang héi"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
	logplayer("dulieu/dong5000van.txt",format("Thêi gian : %s  -  Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] ®ãng tiÒn bang håi ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end

function Kv_buy_LBPT()
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y mua",0);
		return
end
	local nCountBN = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCountBN < 50) then
		Say("Kh¸ch quan ch­a ®ñ 50 xu",0);
		return
	end
	ConsumeEquiproomItem(50, 4, 417, 1, 1)
	-- tbAwardTemplet:GiveAwardByList({{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,1},nCount=1,nExpiredTime=10080,nBindState = -2,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,1},nCount=1,nExpiredTime=10080,nBindState = -2,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Phi Tèc",tbProp={6,1,190,1,1},nCount=50},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="LÖnh Bµi",tbProp={6,1,157,1,1},nCount=50},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="ChiÕn cæ ",tbProp={6,1,156,1,1},nCount=50},}, "test", 1);
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 50 Phi Tèc & LÖnh Bµi");
end








function NhiemVuSatThu1()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
	if GetTask(5128) >= 1 then
      local  tbAwaZrd = {
           
                {szName="KNB",tbProp={4,1496,1,1,0,0},nCount=800},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=1000},
                {szName="KNB",tbProp={4,417,1,1,0,0},nCount=10000},

     }
		  tbAwardTemplet:GiveAwardByList(tbAwaZrd, "PhÇn th­ëng Tiªu DiÖt Bos §¹i")
		SetTask(5128,GetTask(5128)- 1)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." <color=green>§· NhËn Th­ëng Tiªu DiÖt Boss §¹i KiÕm Tiªn + Tiªu Phong <color>")
WriteLogPro("dulieu/hoatdongxu/boss_kiemtien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5128).."  cai   \n");

	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt §­îc <color=red>"..GetTask(5128).."/1<color> Boss §¹i Cña Sever...!<color>")
	end
end
function bosstieu()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5129) >= 1 then
	 tbAwardV = {
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=1000}, 
{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=15},
}
		tbAwardTemplet:GiveAwardByList(tbAwardV, "PhÇn th­ëng 10 boss tiÓu")
		SetTask(5129,GetTask(5129)- 1)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng  Tiªu DiÖt  boss ThÕ Giíi<color>")
WriteLogPro("dulieu/hoatdongxu/thongtinbosstieu"..date("%d_%m_%Y").."thuong_Bos_HK.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\tso luong bos con "..GetTask(5129).." \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt<color=red>"..GetTask(5129).."/1<color> Con")
	end
end	
function kienthiet()
if CalcFreeItemCellCount() < 40 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
local tbAwardczc={
                    
            -- {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5067,1,0,0},nCount=10},

           -- {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5071,1,0,0},nCount=10},
             {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5069,1,0,0},nCount=10},

}
tbAwardTemplet:GiveAwardByList(tbAwardczc, "PhÇn Th­ëng");
end
-------------------------------
function layvatpham() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
--end
--local Index = AddGoldItem(0, ""..idgq.."") ITEM_SetExpiredTime(Index,1440) SyncItem(Index) SetItemBindState(Index, -2) 
--WriteLogPro("dulieu/adtien/sonphatlaydo.txt","["..GetIP().."]  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t da lay trang bi 0,"..idgq.." \n");     
end

---------------------------------------------------------------------
function DoPhoThanhCau()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","B¹n CÇn  300 Xu §©u ThÓ TÈy Tñy, TÈy §­îc Míi MÊt TiÒn!")
	return 
	end 
	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
ConsumeEquiproomItem(300,4,417,1,-1)
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
ConsumeEquiproomItem(300,4,417,1,-1)
end

------------------------------------












function AdminDenBu()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x4 « trèng");
		return 1;
	end
	local tbAward100k ={

		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
	{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
	--{szName="HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
		
		}
	if GetTask(5993) <=21 then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e9}}, "test", 1);
		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ 30-4 T¹i LÔ Quan")
		SetTask(5993,22) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end


function NhanQuaMungNamMoi()
if (CountFreeRoomByWH(4,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x10 « trèng");
		return 1;
	end

	local tbAward100k ={

		{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=200,nBindState = -2,nExpiredTime=60*24*30},
		{szName="HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,0,0},nCount=2,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2},
		--{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="H·n HuyÕt Long C©u",tbProp={0,6731},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},
	--	{szName="Siªu Quang",tbProp={0,6732},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},


		}
	if (GetTask(5996) <=1) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")

		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ Chóc Mõng N¨m Míi 2021 T¹i LÔ Quan Thµnh C«ng")
		SetTask(5996,2) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end


function khoadovinhvien()
	szDescription = format("ChØ bá tõng mãn 1 th«i nhÐ\n!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_khoadovinhvien", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_khoadovinhvien(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.")
		return 1;
	end
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -2)
		end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaXuKhoa()
if (CountFreeRoomByWH(1,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 1x2 « trèng");
		return 1;
	end



			if CalcEquiproomItemCount(4,417,1,-1)>=10 then 
			if 	ConsumeEquiproomItem(10,4,417,1,-1)>0 then
					tbAwardTemplet:GiveAwardByList({{szName = "Xu Khãa",tbProp={6,1,4893,1,1},nCount=50,nBindState=-2},} ,"test", 1);--Xu Khoa
				WriteLogPro("dulieu/muaxukhoa.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua 50 xu khoa\n");		
			end
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ 10 Xu.")	
				end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaMacBacTruyenTongLenh()
if (CountFreeRoomByWH(1,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 1x2 « trèng");
		return 1;
	end

		if CalcEquiproomItemCount(4,417,1,-1)>=3 then 
			if 	ConsumeEquiproomItem(5,4,417,1,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{szName = "M¹c B¾c TruyÒn Tèng LÖnh",tbProp={6,1,1448,1,1},nCount=1,nExpiredTime=60*24*30,},} ,"test", 1);--M¹c B¾c TruyÒn Tèng LÖnh
				WriteLogPro("dulieu/muamacbacok.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua mac bac 5 xu\n");		
				Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> ®· mua M¹c B¾c TruyÒn Tèng LÖnh víi gi¸ 3 xu t¹i LÔ Quan")
			end
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ 5 Xu.")	
				end
end
-----------------------------------------------------------------------------
function NhanQua195Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,1)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl2\n");	
end

function NhanQua200Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,2)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl2\n");	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanQuaPhuNuVietNam()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

	if (GetTask(3906) == 0) or (GetTask(3906) == 1) or (GetTask(3906) == 2)then

		tbAwardTemplet:GiveAwardByList({{szName = "Xu khãa",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Quµ 100 Xu Khãa Thµnh C«ng")
			WriteLogPro("dulieu/nhandenbu_2010.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan Qua 20-10\n");		
		SetTask(3906,3) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	
	end
end
function NhanDenBuSuCoRotMang()
if (CountFreeRoomByWH(4,6,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x6 « trèng");
		return 1;
	end
	local tbAward100k ={

		{szName="B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4696,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4697,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4698,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4699,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4700,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4703,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4704,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
		}
	if GetTask(5998) == 0 or GetTask(5998)==1 or GetTask(5998)==2 or GetTask(5998)==3 then

	tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 900e9}}, "test", 1); 
--		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Kinh NghiÖm Thµnh C«ng")
			WriteLogPro("dulieu/nhandenbu_matmang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 900 Ty exp\n");		
		SetTask(5998,4) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x4 « trèng");
		return 1;
	end
	local tbAward100k ={

		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
		{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
	{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*30},
	{szName="HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
		
		}
	if GetTask(5999) <=20 then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e9}}, "test", 1);
		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Th­ëng Thµnh C«ng")
		SetTask(5999,21) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo_2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

	local tbAward100k ={

	--	{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2},
		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=3,nBindState = -2,nExpiredTime=60*24*7},
		--{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
--		{szName="H·n HuyÕt Long C©u",tbProp={0,6731},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},
--		{szName="Siªu Quang",tbProp={0,6732},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},


		}
	if (GetTask(5997) <=5) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")

		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ 300 Xu Khãa Thµnh C«ng")
		SetTask(5997,6) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end
function ShopTienXuLeQuan()
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>VoLamVietPK<color> 4 Acc/1PC\n"
	local Opt = 
	{	
		{"Mua R­¬ng Tinh S­¬ng (10xu).", MuaRuongTinhSuong},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)

end
function MuaRuongTinhSuong()
local tbSay1 = {
"B¶o R­¬ng Tinh S­¬ng H¹ng Liªn/#addruongtinhsuong(4504,1,10)",
"B¶o R­¬ng Tinh S­¬ng Kh«i/#addruongtinhsuong(4505,2,10)",
"B¶o R­¬ng Tinh S­¬ng Th­îng Giíi/#addruongtinhsuong(4506,3,10)",
"B¶o R­¬ng Tinh S­¬ng Hé UyÓn/#addruongtinhsuong(4507,4,10)",
"B¶o R­¬ng Tinh S­¬ng Yªu §¸i/#addruongtinhsuong(4508,5,10)",
--"B¶o R­¬ng Tinh S­¬ng Kh¶i(150xu)/#addruongtinhsuong(4509,6,150)",
--"B¶o R­¬ng Tinh S­¬ng Vò KhÝ(200xu)/#addruongtinhsuong(4510,7,200)",
"B¶o R­¬ng Tinh S­¬ng Hµi/#addruongtinhsuong(4511,8,10)",
"B¶o R­¬ng Tinh S­¬ng Béi/#addruongtinhsuong(4512,9,10)",
"B¶o R­¬ng Tinh S­¬ng H¹ Giíi/#addruongtinhsuong(4513,10,10)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Mua G× Nµo",getn(tbSay1),tbSay1)

end

function addruongtinhsuong(id,para,xu)
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
	
local tbAward100k = {

		{szName="B¶o R­¬ng Tinh S­¬ng",tbProp={6,1,id,1,0,0},nCount=1,tbParam={para,0,0,0,0,0}},
		
		}
		if CalcEquiproomItemCount(4,417,1,-1)>=xu then 
			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng §¹t M«c 100 Ngµn")
			ConsumeEquiproomItem(xu,4,417,1,-1);
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ "..xu.." Xu.")	
				end

end
function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end


function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phanthuongcode()
	local tbOpt =
	{
		{"NhËp GirtCode",QuaTanThuChe},
		{"Tho¸t",}
	}
	CreateNewSayEx("<npc><color=yellow>PhÇn Th­ëng GirtCode Dµnh Cho Ng­êi Ch¬i:<color>\n", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function QuaTanThuChe()

	if GetTask(Task_GiftCode) == 0 then
		AskClientForString("CHECKCODE","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
	end
end
function CHECKCODE(nVar)
GiftTanThu = {
	{"AEHGFUKNSYGN",1},
	{'volam1acc',1},
}
	local tbAwardgift1 = {
		{szName = "Vo lam mat tich", tbProp = {6,1,22,1,0,0}, nCount = 5, nBindState = -2},
		{szName = "Tay tuy kinh", tbProp = {6,1,26,1,0,0}, nCount = 5, nBindState = -2},
		{szName = "Nhat Ky Can Khon Phu 1 ngay", tbProp = {6,1,4362,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "Tay tuy kinh", tbProp = {0,10,6,10,0,0,0}, nCount = 1, nBindState = -2,nExpiredTime=60*24*7},
	
	}
if CalcFreeItemCellCount() >= 20 then
	for i = 1,getn(GiftTanThu) do
		if nVar == GiftTanThu[i][1] then
			SetTask(Task_GiftCode,1) tbAwardTemplet:GiveAwardByList(tbAwardgift1,"PhÇn Th­ëng GiftCode")	
			Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §· NhËn Thµnh C«ng Gift Code")
			return
		end
		--Talk(1,"","<bclr=violet>"..myplayersex().." NhËp Th«ng Tin Kh«ng ChÝnh X¸c")
	end
	else Talk(1,"","<bclr=violet>"..myplayersex().." §Ó R­¬ng Trèng 20 nhÐ")
	end
end

--------------------------------------------code-------------------
function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end 
--------------------------------------------code-------------------
tbKandy = {}
tbKandy.szFile = "\\dulieu\\checkcodenew2.dat"
server_loadfile(tbKandy.szFile)
CodeVipShare_che = {
{'XVEYQRUKCP',1},
{'JBSMMJPWLI',1},
{'NBLYAXZSXC',1},
{'LVAGEMWTDI',1},
{'MNWLPQBJXV',1},
{'IECPKPLTLT',1},
{'HCBVFTMIGO',1},
{'OATPKMMIQI',1},
{'BLEPOVQFQA',1},
{'MRHZGCQTLU',1},
{'EQYHOPNVLZ',1},
{'SADQPESAYF',1},
{'LAJHBNRXDT',1},
{'AJVNKWBMHX',1},
{'MJAVYVPIKI',1},
{'SGWHGNXKKV',1},
{'UWFUWQZFEU',1},
{'SLOCXQSAEW',1},
{'JWKPQOJEED',1},
{'CTBUWAXQZO',1},
{'KQGGJXLXFF',1},
{'CPRPOOASBD',1},
{'SKIGCAKHQO',1},
{'JOEFKLMWPY',1},
{'QQLVAVMMZL',1},
{'KCMNHUILOG',1},
{'JNMXOVFDUR',1},
{'VFCTKKWCMI',1},
{'XIJWBUZMYR',1},
{'UDOCAYSJKK',1},
{'NDKZFOQKNG',1},
{'JBQTBTEUIR',1},
{'IEBYSCXTTE',1},
{'YPDNZGRLED',1},
{'HSZEDXZSBG',1},
{'ZZTFKESBAW',1},
{'JJOLRVKTWQ',1},
{'HXWXMZIPOX',1},
{'YNTMZACWWH',1},
{'PTPBHQHENX',1},
{'MZKQSEDUKB',1},
{'EJFZTDYQXQ',1},
{'TMIOTYOBII',1},
{'XGHZYNFDEI',1},
{'LQOGMKTQTW',1},
{'FVWPQPAUSY',1},
{'ADZICHTPVS',1},
{'GXQVPWYMWN',1},
{'FAMTAHDXLL',1},
{'JKBNWBQFRU',1},
{'CHWOJIRQLR',1},
{'FXTIUECCNA',1},
{'RCMHQFNDPG',1},
{'BVTFKUCQIN',1},
{'ODYMKEAIRZ',1},
{'XSCPQSFTTE',1},
{'ODIMEAQMTV',1},
{'NFLOUTFEWR',1},
{'GCRURVFBOY',1},
{'MVOFPNNCFC',1},
{'NSPDAVPVSP',1},
{'REWMAJJTXJ',1},
{'VTBRTAPRBI',1},
{'WQZDHSWEQL',1},
{'SZUYIAKRGC',1},
{'OWOPAZFOYS',1},
{'XJZYKIHFRK',1},
{'JOHOIKUGXW',1},
{'SBOQDWODZH',1},
{'ASZFPUFNKV',1},
{'LORYPZLIXQ',1},
{'UZEMPIOMFY',1},
{'PGFDMIQQWV',1},
{'OWCFMURUHG',1},
{'HYKXCJBCAN',1},
{'KAWYXSZCPX',1},
{'XHNFOPRLAM',1},
{'OJBOISHSOC',1},
{'RAPEHLPZHQ',1},
{'ZZZSRZDPVA',1},
{'HZEBBLDAKI',1},
{'HXYHVYWRMN',1},
{'CBBFUZIZCN',1},
{'YDOYVIUXNC',1},
{'HWSUUAIDMS',1},
{'SKWJMJGYDQ',1},
{'SFQYMWPGDS',1},
{'VCARUVLKDG',1},
{'NFENQWDKSH',1},
{'WHOQRHXKBE',1},
{'TIRNHOICCV',1},
{'QEUQXQZDVS',1},
{'NWFKQFDIFZ',1},
{'JRBCLSLACE',1},
{'TOYUXOMRJK',1},
{'ZEVBEDBLFS',1},
{'RVPVYCECGM',1},
{'RUHDSMRLWR',1},
{'WIQVMDKHHN',1},
{'MDUVQBVMBZ',1},
{'WYSYMGIUHT',1},
{'BIRVFYGMZR',1},
{'BXXXLUFWBX',1},
{'ICWBHORVBB',1},
{'LCRUFTEOCY',1},
{'CCAEIPQEMO',1},
{'CGTVVVQVIR',1},
{'LBWLBRIVTW',1},
{'HUPIJFOUKS',1},
{'GHKCYNLIFP',1},
{'ZZPBFEPGIK',1},
{'UPUQNSBNLF',1},
{'UXPQEWKSLT',1},
{'JVYPJNWMPR',1},
{'JAETXMCIRF',1},
{'MSSXBBAMIY',1},
{'NUYJDOEUZI',1},
{'EXJTMWMVCB',1},
{'UXLYQGSIJJ',1},
{'VCMPLXXURS',1},
{'IEMJWVWUHD',1},
{'JSKSILAJDB',1},
{'HOBYTVLGWU',1},
{'VHYMUCYCVX',1},
{'DKKAMKBLKD',1},
{'GVUXRALNJN',1},
{'XNCSPPTGSR',1},
{'GVXRWFNSIJ',1},
{'BVXBQBLZYE',1},
{'XZHLGZOHFY',1},
{'OWYCFFGHWL',1},
{'AQYUXGUCYV',1},
{'KABDFGPOII',1},
{'OIDFCEGSSM',1},
{'FOWUJGPPIT',1},
{'OFEKOZFORJ',1},
{'UUWXINSEWC',1},
{'YHALTVZBBL',1},
{'AZDKMBHJQO',1},
{'PHQUCHMSKZ',1},
{'KUEVAEXVRC',1},
{'TWEIPDFPSD',1},
{'NLHYMCESLG',1},
{'TGLEUAOYZT',1},
{'RKWZIOTPYV',1},
{'NEFWPENYTL',1},
{'ZKRPBDZFYX',1},
{'WUAAEIRZBI',1},
{'GQXPWLCITU',1},
{'ZDZIQMLDMO',1},
{'BSPXPLCCZK',1},
{'LCHMCAEQZA',1},
{'YPQOMUEHOA',1},
{'VFOEWZAGQX',1},
{'THLRNKOMRI',1},
{'SEUSBYQWNR',1},
{'WUGJCQNHCO',1},
{'MWIBZPTKFS',1},
{'OJPZNXTRRQ',1},
{'RNIDEXBXTA',1},
{'SALCYEBBQY',1},
{'RWSFSENKOH',1},
{'HGUMSZDZFE',1},
{'WOSZZPSREK',1},
{'SQEYACEGIN',1},
{'YLKYKXMLED',1},
{'WJYMLVXFOA',1},
{'PGASLVOEJN',1},
{'DENARQTRBW',1},
{'SSWJKFEFCC',1},
{'VFVUNOJABQ',1},
{'ITBMMUVOHO',1},
{'DKYGAVDLRG',1},
{'JPDIBKZIDP',1},
{'LMLNGMNQVC',1},
{'MCCLPAHZYX',1},
{'CFZPLWOZWA',1},
{'BBBKOUAXUW',1},
{'DOXZYNIFFI',1},
{'XWFMSVLIHM',1},
{'FPNGFZIEXW',1},
{'CBPRJZZHZA',1},
{'WLBSRZTPMZ',1},
{'XFUYUZHPJW',1},
{'CXUPXASDTC',1},
{'DAFANSBQSC',1},
{'KGURRYKEAO',1},
{'RVCGDGSCQJ',1},
{'CDSWDIDEPO',1},
{'INDRXKWKXV',1},
{'ZYOWGVDWOS',1},
{'LGFNQZSRTD',1},
{'FGZYDTKHIH',1},
{'FWBTKBRKXR',1},
{'LHXSWNGMTW',1},
{'XYZCADSKMQ',1},
{'DZNJACFSPZ',1},
{'LKNZJKWNLE',1},
{'IJLYLVWHBK',1},
{'ZLCXWLGCVT',1},
{'KYAHPYMBYT',1},
{'JSFEKKXXYT',1},
{'HACZWRIYUQ',1},
{'ZDLEZSMFEC',1},
{'IAMCKVOYSU',1},
{'JXVQNQWYBL',1},
{'AGPSSUUJYS',1},
{'GHFKEHMPLBSX',1},
{'GHOZORYOOSMS',1},
{'GHOCFLXRGGBW',1},
{'GHCEJQUKOYAY',1},
{'GHAXADZEVRMK',1},
{'GHCDKGASEGCD',1},
{'GHFABVWKNZDX',1},
{'GHNCRAWEYFXP',1},
{'GHJDQNKJQWKY',1},
{'GHUHIGMBQOVR',1},
{'GHRHMMWUZYDZ',1},
{'GHSSYYSMYXFV',1},
{'GHLIKBNWIYDH',1},
{'GHDFUDPRSQQK',1},
{'GHKSQDXFEKHZ',1},
{'GHXPWRRUCAOT',1},
{'GHQIQFOEEQHL',1},
{'GHUXNAKBSTRM',1},
{'GHLDTLUHLTCF',1},
{'GHUGCDRNIZFB',1},
{'GHUHVXFHGILH',1},
{'GHRVHUFASTZI',1},
{'GHKWNCOUCNHH',1},
{'GHTYNFGAFTUM',1},
{'GHXFFAQZEFIG',1},
{'GHSVFIBQMCQW',1},
{'GHOTVZOMBTZX',1},
{'GHYWZQNSBOPN',1},
{'GHIWOZIGISIO',1},
{'GHWCXYECNYRG',1},
{'GHTSYLIXYOWU',1},
{'GHLKGCMYDRGE',1},
{'GHZKUFYFOCSK',1},
{'GHJZGLFSYVEV',1},
{'GHBOOUZXCHXS',1},
{'GHYGKVPRLTYR',1},
{'GHTACIASGNYK',1},
{'GHAIFLSAZJFZ',1},
{'GHWXSECZRLHI',1},
{'GHAXGHKUVRZE',1},
{'GHHZBAHOFEXI',1},
{'GHXWQPNRZFYD',1},
{'GHGAYKNQOHMD',1},
{'GHJFAIRBDHOM',1},
{'GHXQXFCFJAWW',1},
{'GHIMGUABUPLX',1},
{'GHVWKSQHPAEO',1},
{'GHZWXERNEFBU',1},
{'GHWMXXAVQXPN',1},
{'GHRFOSWCXSMQ',1},
{'GHOGPRUWTZCV',1},
{'GHUSPQCKSPXO',1},
{'GHAQDASGPHCS',1},
{'GHLHARMQOTOH',1},
{'GHYSFEFSBFYN',1},
{'GHAQMRBPLHTA',1},
{'GHVGGTSAITGR',1},
{'GHAALDWUDAYO',1},
{'GHPAVFDQTXCV',1},
{'GHTWNSCTFNSV',1},
{'GHCNSOKVZVIX',1},
{'GHZCLHJTZYHB',1},
{'GHCNFOCWQRPL',1},
{'GHGLYJYJISPV',1},
{'GHOVGTXQEIVT',1},
{'GHCEZXDFBQMG',1},
{'GHSRDRNXWUXI',1},
{'GHSCXNBKXEME',1},
{'GHIEIXUZOVSF',1},
{'GHBOGGVCZCMC',1},
{'GHEVMUWRFMQZ',1},
{'GHKFPTCVQUNP',1},
{'GHNYVFLYJHFF',1},
{'GHDIYACGKIAZ',1},
{'GHPPDZZXUWNC',1},
{'GHFQDWYMSACK',1},
{'GHGHGNTIBPJN',1},
{'GHQCZBRGISEW',1},
{'GHOCDFUMLTOZ',1},
{'GHUKZSJYQUJO',1},
{'GHMQPCNTVTKH',1},
{'GHJDHIBAGVLV',1},
{'GHUUQXSPJWDP',1},
{'GHXWNWWZCWSS',1},
{'GHWTVLSFEFVE',1},
{'GHAZPTEQBZXB',1},
{'GHSYDYZTGJQU',1},
{'GHKFVEAIBTQM',1},
{'GHQLDTIJBQEH',1},
{'GHDEMPIKDOWA',1},
{'GHWRWAKQVOXL',1},
{'GHTHBRDTDBBG',1},
{'GHQCIEYIIXOO',1},
{'GHVUIUTOWFCY',1},
{'GHNXHRJTBHOI',1},
{'GHANTEXAIBAI',1},
{'GHGOVLRVVMXQ',1},
{'GHJPZMGKFTHS',1},
{'GHFRGKCUKTXG',1},
{'GHZXJWQJQDWN',1},
{'GHYGVFIITBEE',1},
{'GHQJSSHTLACZ',1},
{'GHRDPXYXZWHO',1},
{'GHJLWEYBTCXB',1},
{'GHYDTIKMZXLX',1},
{'GHHLFEZRWHOD',1},
{'GHJTEDHJSTAY',1},
{'GHJLIZVIRJCE',1},
{'GHJHSMTSJUOB',1},
{'GHUVWUMCLTFB',1},
{'GHBHQXNGXOZR',1},
{'GHQGMEVAWGGH',1},
{'GHCIVWASWWNZ',1},
{'GHNBPYLMCKOV',1},
{'GHAJFVNZCFOW',1},
{'GHQTLUDWJNJG',1},
{'GHCJQJKZJTNP',1},
{'GHEHCAVTUAFS',1},
{'GHACQCYSPWTU',1},
{'GHYNCWUJCUBD',1},
{'GHWHJFGLXJJR',1},
{'GHPYZBXNNXDU',1},
{'GHACERTHMFYX',1},
{'GHLEEHSJUEBE',1},
{'GHIZNLDYSRMR',1},
{'GHWCCKURCTCA',1},
{'GHVGOBUDKZCP',1},
{'GHOGWCRWVPTA',1},
{'GHHXPKCTOOXX',1},
{'GHUJWGSJPOCF',1},
{'GHTBWMHOBKMW',1},
{'GHRFQEZBNRKP',1},
{'GHQZNJMDJZQT',1},
{'GHOVWWPCUEXM',1},
{'GHYMXAKGCRSU',1},
{'GHSHTPKJHESJ',1},
{'GHCOJJAQOQLW',1},
{'GHXVCTWFZOFE',1},
{'GHOTPPWTYTER',1},
{'GHFENRHYFBXI',1},
{'GHSZODFTPNNS',1},
{'GHXDOKZNLREV',1},
{'GHEWBUCOBCGU',1},
{'GHRDFKSNYUSQ',1},
{'GHATQAVRTCOG',1},
{'GHLGIUTZEDJW',1},
{'GHWMLDKZIZOS',1},
{'GHPVBIJACZCN',1},
{'GHOIGHCKKBMZ',1},
{'GHTJTECNQNDY',1},
{'GHJLFTOZUFLZ',1},
{'GHNVQGOSJHKD',1},
{'GHHYTLSHUTXB',1},
{'GHQSSRTXTKFC',1},
{'GHTAIMVLBYFR',1},
{'GHJREIYZCAKN',1},
{'GHSBUWXEUYOO',1},
{'GHXJTMDLBMAN',1},
{'GHKUZRUKUSJJ',1},
{'GHZYWHXTTYLZ',1},
{'GHEJTRAGZXIU',1},
{'GHKTEWKYAVZW',1},
{'GHFZQQAPZTFW',1},
{'GHGLHTJGOQRT',1},
{'GHEMUWRUXYXB',1},
{'GHBPJKBVUREZ',1},
{'GHWUXVFCBTUV',1},
{'GHYRZKXBCHXU',1},
{'GHZBPOIAJCRR',1},
{'GHEXSQKXMIJK',1},
{'GHHTORXMPWRS',1},
{'GHRXEXKNJSNJ',1},
{'GHXWHAQTBQNX',1},
{'GHYRMJVROQWJ',1},
{'GHFJIRPFZUJE',1},
{'GHSGMNCFKDAC',1},
{'GHTTMFXYMEKP',1},
{'GHNZGLAWCSXW',1},
{'GHMGQDAKKXOJ',1},
{'GHNVSLJZPTRH',1},
{'GHYPHZIJRZOY',1},
{'GHUXQMYWSJCT',1},
{'GHPTIDKXCZHX',1},
{'GHNNTOCJLPQE',1},
{'GHRNOQHCEZVP',1},
{'GHVQMXRXOIKX',1},
{'GHHVZZMYJJTP',1},
{'GHASWIBNKJJI',1},
{'GHZRUMUSBJUJ',1},
{'GHMLITVWANZC',1},
{'GHMSWJIBTYDS',1},
{'GHRLPFVHOYFL',1},
{'GHNRKGVDDGFI',1},
{'GHVJMMXRRMTS',1},
{'GHXYMYUXYXOI',1},
{'GHHMGLXACVAV',1},
{'GHCWYAOPJZTK',1},
{'GHUHHGGQZRBY',1},
{'GHOGCKCCVMMB',1},
{'GHVDLBVXTHVQ',1},
{'GHKDRWECVPZV',1},
{'GHQKEROKZOOE',1},
{'GHCIPYGDQSAL',1},
{'GHLBTXOSPNTW',1},
{'GHODIGPZXGJX',1},
{'GHQASDNDMZPS',1},
{'GHOMWKXERWFQ',1},
{'GHCDCEBALSQB',1},
{'GHGDLFEWVGXX',1},
{'GHOJNXAUMNND',1},
{'GHZMMRZDCUIT',1},
{'GHBJAKAQJYWH',1},
{'GHMATVJESYTW',1},
{'GHDJUTWLONKU',1},
{'GHGAQUHXVIFA',1},
{'GHEVMVMKWAVU',1},
{'GHTIUMUBLVBW',1},
{'GHLAUNOPROTI',1},
{'GHLMYQYKIVYT',1},
{'GHVJOTVOVVMA',1},
{'GHEAXHPOXBIH',1},
{'GHUJSARJKUBC',1},
{'GHJJDTIQYGPK',1},
{'GHRRNHVGUMSM',1},
{'GHYQLEUCEISA',1},
{'GHEBZCEVAUFI',1},
{'GHDSNYEJRMYA',1},
{'GHVLBNILIZSB',1},
{'GHLZMFYVLMOZ',1},
{'GHOIGRAPDRDQ',1},
{'GHTKQFIISRLB',1},
{'GHUIRUFJTONM',1},
{'GHYPBEICLWSH',1},
{'GHTRDOWFWMIN',1},
{'GHFCLCYARHLU',1},
{'GHFHQPWOVVRV',1},
{'GHJBJNUVXWMH',1},
{'GHSOKUONSITP',1},
{'GHYTTXFVUZTL',1},
{'GHMVDPMVJOHA',1},
{'GHWQZQWRSDSL',1},
{'GHFWMMKHIIJB',1},
{'GHICRJEZBDOE',1},
{'GHJUAFQQXJXY',1},
{'GHUYWBKWSHPJ',1},
{'GHVSKMWEFUJX',1},
{'GHPEOOGICKFI',1},
{'GHLCIHTROBAS',1},
{'GHWFMLAAMNLS',1},
{'GHKQIDJSWOPD',1},
{'GHLHXCPFXYKO',1},
{'GHJOAVXYJCKK',1},
{'GHZYZFHHBJJM',1},
{'GHCIPUHIQKMV',1},
{'GHXSAGQOYYQS',1},
{'GHEVFLVRISUG',1},
{'GHQQMUNHVTRV',1},
{'GHQJEOEZKSHW',1},
{'GHECTUBEZOWP',1},
{'GHTKYGKNLJWA',1},
{'GHLRJLRITBEC',1},
{'GHPBTUKWNYAB',1},
{'GHMJZBFYHJJJ',1},
{'GHQZSQCZEUQR',1},
{'GHGDBCITQDVR',1},
{'GHKTAYLNAOGH',1},
{'GHLWTYDAWWMC',1},
{'GHFAWADEDNJU',1},
{'GHJLRUPGEPXI',1},
{'GHIYSEWZCTPR',1},
{'GHCNGPMPLWOI',1},
{'GHYXEXPXAPBH',1},
{'GHHMETXWTGKZ',1},
{'GHOMEHVWBEQV',1},
{'GHNVKRVVQUOL',1},
{'GHJEGPSXBKWD',1},
{'GHGGSAATBTRI',1},
{'GHWSWEHSQVOB',1},
{'GHIUZLOESUFP',1},
{'GHWHWLAPEWAK',1},
{'GHRDGAJFKROE',1},
{'GHPBCLAVLQGG',1},
{'GHSMDJBTYMBO',1},
{'GHYCYQPCZTGH',1},
{'GHDTDSDZNWFX',1},
{'GHAPVSIADBCA',1},
{'GHUKUCVPQQZT',1},
{'GHYCAZNGHOMH',1},
{'GHUTLCYJDEIV',1},
{'GHYLBNYDRNTF',1},
{'GHAUMFPQWLFL',1},
{'GHGCWEWDEGZS',1},
{'GHNYUHBBYJWO',1},
{'GHXEXIVNQMXU',1},
{'GHKCFPZPWAYK',1},
{'GHRYUQIOZJFF',1},
{'GHSBEYZCXJDK',1},
{'GHXVVSOCZVAB',1},
{'GHJNFDCOVOKD',1},
{'GHMALBFQYUUG',1},
{'GHSDFRIHSEWP',1},
{'GHKZVUBWUVKQ',1},
{'GHDLXGDZGMXX',1},
{'GHQVIVEUHNRY',1},
{'GHJCBUWGZNSY',1},
{'GHCISLWXYOFW',1},
{'GHOTPLFUEQUI',1},
{'GHBCRFYRNGOK',1},
{'GHMIXAJKAUMH',1},
{'GHWWJYRBYDQR',1},
{'GHPVBVWVXBBY',1},
{'GHYLEGAUZLZW',1},
{'GHKYHZHJADRB',1},
{'GHVVMQYUEWIJ',1},
{'GHTQRGXLWBJY',1},
{'GHGDRWUXBNEU',1},
{'GHMVKWHIAGCD',1},
{'GHESUYIQTWFN',1},
{'GHGXXHIIQXET',1},
{'GHQHZYUQTFDA',1},
{'GHATFCPIFDSX',1},
{'GHQDQHWVSGPI',1},
{'GHPADTTDNIFG',1},
{'GHDKGQFEOCRT',1},
{'GHORQTBVLBQX',1},
{'GHTFUNUCRVWN',1},
{'GHVXNFHXDNYM',1},
{'GHGFOFWKNWAP',1},
{'GHQUYRXMCOFS',1},
{'GHDOPKPGGJYP',1},
{'GHZSTRGRUGSP',1},
{'GHGGVZXFAKAP',1},
{'GHBYFPHAYBBS',1},
{'GHCSWFOTWGQN',1},
{'GHKVCUSHZZVY',1},
{'GHPOTXPEFBFF',1},
{'GHHZVXPXJXCR',1},
{'GHTREVHMLNHI',1},
{'GHQGCROEFANK',1},
{'GHXVVMEBMONC',1},
{'GHJRTIKFEDSP',1},
{'GHAHZQPAVMZY',1},
{'GHZLVOOKCNJV',1},
{'GHDKUKDEGAYH',1},
{'GHDHIBUKWZKI',1},
{'GHSCSISCAHTF',1},
{'GHBSVFHJYRDD',1},
{'GHASZYJQYOWH',1},
{'GHHVYVGANYIV',1},
{'GHPBNEILZENP',1},
{'GHOJHEBJIGTN',1},
{'GHCGVHVJKHBB',1},
{'GHAGHRJNDNXQ',1},
{'GHYCBKTESSHQ',1},
{'GHYKXBTREEID',1},
{'GHVRKYGBFGHE',1},
{'GHNGUWDXWZFU',1},
{'GHMEVVIAJMFB',1},
{'GHOWZMSDYENX',1},
{'GHGRDDPLTCEZ',1},
{'GHGVSCUJVIKS',1},
{'GHGXEATOSOCE',1},
{'GHBWJVBQLELQ',1},
{'GHZWKKZOBAIF',1},
{'GHILPBUYBAYF',1},
{'GHXXYJNFKWQS',1},
{'GHOLDIRLIVWQ',1},
{'GHCQQPHIRQJN',1},
{'GHVXCPNYPNNX',1},
{'GHNJPPJZYJOL',1},
{'GHAHWWYCXATL',1},
{'GHQAHMOHYHDA',1},
{'GHEEWWWQGOOR',1},
{'GHCUQIOWKWBG',1},
{'GHQDWNVYFMOI',1},
{'GHTSXTBHPHCI',1},
{'GHSFTSJFOVLY',1},
{'GHDGOYUPETBK',1},
{'GHUASGGJFIGK',1},
{'GHJQXWQNFFVT',1},
{'GHHVXNFKNYKR',1},
{'GHYODVGIMLAJ',1},
{'GHVSSCEDLYRT',1},
{'GHMOYVIPCEKW',1},
{'GHVCODITNKPK',1},
{'GHFIOVECSWTR',1},
{'GHMXHLOCUJJN',1},
{'GHEAQZUBJXMS',1},
{'GHRZEUVZZESE',1},
{'GHBUNXYADIYK',1},
{'GHQINIQVXITJ',1},
{'GHFJMXNPICWM',1},
{'GHPPAKSDURHI',1},
{'GHADYPFLJAEZ',1},
{'GHRUAWLRUOIP',1},
{'GHYBPFSDBXDM',1},
{'GHKXUAXNAAVX',1},
{'GHSVFFWAFTRM',1},
{'GHWWFJXMMWRZ',1},
{'GHSFCOWDFAKU',1},
{'GHXVVGSZZXWW',1},
{'GHWTIDLZIMCX',1},
{'GHYWKDQAIAUT',1},
{'GHATVDNTDMBX',1},
{'GHYTFBPUBMML',1},
{'GHVAFHJBASYB',1},
{'GHINBXGOGEME',1},
{'GHTUIPRSXDFR',1},
{'GHIWTARLHUNW',1},
{'GHEYXXVOWROK',1},
{'GHYMGOOXZCKN',1},
{'GHAMILLFYRBY',1},
{'GHDERPOYACJW',1},
{'GHULRHGGCJEL',1},
{'GHSTCUZSKBGJ',1},
{'GHWLZIIGUXAP',1},
{'GHXUHTMUJIGG',1},
{'GHMYZXYQGJJY',1},
{'GHBVKXOEZTWR',1},
{'GHMTAGLFUFLT',1},
{'GHUFRLVTFIQB',1},
{'GHWKZWLEPLHO',1},
{'GHUAQNIPUSED',1},
{'GHDTCFNLWVIW',1},
{'GHBIMFAQOLEE',1},
{'GHHXUGIFXPFM',1},
{'GHQVOFFQJOYM',1},
{'GHQKRLOVQQOI',1},
{'GHWKKHXMFFMD',1},
{'GHEBBSSMLRGX',1},
{'GHZFHFTBSTTU',1},
{'GHFVOLSWRKPO',1},
{'GHIRPMDCHWLL',1},
{'GHXUBDDCJTYU',1},
{'GHRYOODFXJZK',1},
{'GHXUBXZFPAWK',1},
{'GHAOGDYAVQZE',1},
{'GHIEEWGDZFCG',1},
{'GHKEWJVPJDRF',1},
{'GHLUNCOZGEBL',1},
{'GHUOJGLQKBSV',1},
{'GHWGSKVGGTRV',1},
{'GHSILHVYOZZW',1},
{'GHYNBTEEVZTE',1},
{'GHDEOOCHXDDZ',1},
{'GHYIGOTUBYQJ',1},
{'GHTCDSEKCSYQ',1},
{'GHOQKCMIIVOU',1},
{'GHNWKDUGNQPL',1},
{'GHTLBBWTEAXZ',1},
{'GHYCVKEKVLPG',1},
{'GHITQQJUZUCW',1},
{'GHFTHNRNRPKV',1},
{'GHJRYAZWYAJH',1},
{'GHFSDQNPUETR',1},
{'GHDTWUNXPEOG',1},
{'GHZIKZGXSZCC',1},
{'GHZMOURLRXKF',1},
{'GHJVVFQMQEAF',1},
{'GHSYZDECVNVJ',1},
{'GHUKSHHBBQOZ',1},
{'GHTFADIFJYVY',1},
{'GHKRSGMMTXKM',1},
{'GHGFEQWDXEMZ',1},
{'GHHCYQNDOFVD',1},
{'GHTLVZNUBJHZ',1},
{'GHHKLVIDUSZZ',1},
{'GHTXQSEUHFRI',1},
{'GHVENDRXNWMQ',1},
{'GHRIYLAPQIQO',1},
{'GHIOHIPKDPHT',1},
{'GHSGWCOSYRNS',1},
{'GHANJOGKPAWP',1},
{'GHSHLDVGKJIP',1},
{'GHNDWXIFWINL',1},
{'GHRKCJTAOKSX',1},
{'GHBYGJUVTRZN',1},
{'GHHWPCYEGVKY',1},
{'GHXMSDQKOLUW',1},
{'GHIKBXOKJLRC',1},
{'GHPSMZNLIDFR',1},
{'GHRBQFUPFRIJ',1},
{'GHGYSPORYUOM',1},
{'GHXPKNXDGZSI',1},
{'GHOELANKOBLN',1},
{'GHHQIKWSXGZG',1},
{'GHQRPGDIOUSE',1},
{'GHBGJSKMUHWE',1},
{'GHXMJSKUTULZ',1},
{'GHZFQRBYNUYV',1},
{'GHKSHFBUFYGL',1},
{'GHNDQIEAPNYW',1},
{'GHRARABCYTLV',1},
{'GHMEAVIYSEVN',1},
{'GHIUFBEZLWZL',1},
{'GHMEJPPYSNRJ',1},
{'GHYNZUQSQIMS',1},
{'GHYWDSJAONYU',1},
{'GHKEOARUFYCC',1},
{'GHMZGHBIVAMD',1},
{'GHVRTHBBUDIO',1},
{'GHHFNMYSTLTA',1},
{'GHNCFSSDFKXR',1},
{'GHISQCWFPBYC',1},
{'GHFZHQBZBXVO',1},
{'GHQKABNALHGM',1},
{'GHTLDZUHTOCP',1},
{'GHBEMVERXURM',1},
{'GHZUSBVQUCWE',1},
{'GHNPDZIRGLUC',1},
{'GHJRLZVJKVBR',1},
{'GHCNSQWDMGSB',1},
{'GHGGTFNQACAF',1},
{'GHVKSYECHTCF',1},
{'GHLOJMLFGIHX',1},
{'GHYEGLICZHEW',1},
{'GHRJYRDUCPQC',1},
{'GHLVWMQEZGQZ',1},
{'GHFXYVWREHSI',1},
{'GHDBLOQWKEQY',1},
{'GHXEQKXDYLVN',1},
{'GHZOVTAYTYXE',1},
{'GHFVHQUBMRYW',1},
{'GHUNCTXMRKZA',1},
{'GHJCLKQYNERD',1},
{'GHBCXUGXHXZB',1},
{'GHBUBAAKEOGF',1},
{'GHSCJVKIXCMY',1},
{'GHJGJQKTSUXK',1},
{'GHAMIVXYFVLU',1},
{'GHLJWOMNDAGH',1},
{'GHEBEYOKQYRA',1},
{'GHCWDIDIGIGR',1},
{'GHCBQQQMSYYR',1},
{'GHHMZTQFYIBW',1},
{'GHMYPPDBAIVN',1},
{'GHBBRZBQNVTA',1},
{'GHCRIWZTYLKB',1},
{'GHDOGVIZZYOA',1},
{'GHBORJCJHWMX',1},
{'GHOVAGDKTMOE',1},
{'GHZFCEMLWMFD',1},
{'GHSXIGJNVVHF',1},
{'GHZCYXXLFBIA',1},
{'GHNXGOMWZZWY',1},
{'GHCJNTFZOGIT',1},
{'GHYOBJWJAIKR',1},
{'GHBSVALUVVXR',1},
{'GHXOOCXPBMTA',1},
{'GHWFZWEGZCWN',1},
{'GHGEHTPKIGRR',1},
{'GHHUDDHMBLHI',1},
{'GHNRGZKJUDWC',1},
{'GHDWCHPYNFXD',1},
{'GHPHJRCSGCPA',1},
{'GHFJTBHCINIE',1},
{'GHRXFBPJOBWT',1},
{'GHNTYWZQCULP',1},
{'GHGDCTUEDCSZ',1},
{'GHJQRQBLTZOG',1},
{'GHHRTOEYSVMB',1},
{'GHDCQAFBRHQA',1},
{'GHOUQXXHGNYI',1},
{'GHJYSCMGGJJN',1},
{'GHQOFARIDEJL',1},
{'GHGNFMUHBGDI',1},
{'GHLBHWIVAAAC',1},
{'GHDTZBCWZOGS',1},
{'GHGXSKPDNOUJ',1},
{'GHPYTMWDUJTE',1},
{'GHKLDROUTIWC',1},
{'GHLTSJVHZQSK',1},
{'GHBMIMHAOYZM',1},
{'GHGUHRJZWOYE',1},
{'GHGIFBBDZAYF',1},
{'GHUTKFQTVACX',1},
{'GHVZWCLGQICS',1},
{'GHJRVOMAXXGQ',1},
{'GHAMQACXXFLZ',1},
{'GHCNCKLFCUNG',1},
{'GHDBNPDMYDMJ',1},
{'GHSQXBZFZMPX',1},
{'GHBJNBCTIJCL',1},
{'GHKGJNKGPANE',1},
{'GHYHKODCYJHU',1},
{'GHIEGHTJBLED',1},
{'GHGHSZHTSWUA',1},
{'GHHSUSKKTTEK',1},
{'GHLZOJRSUFOT',1},
{'GHOATDOQDYJL',1},
{'GHXSRMCPJCJW',1},
{'GHPOBARVCUZP',1},
{'GHUENCEPDOUI',1},
{'GHOUKYGFXPKS',1},
{'GHKXYYKFZIYF',1},
{'GHNNWRKFYGBE',1},
{'GHQTQBUIDUUZ',1},
{'GHLQYUBZOQAZ',1},
{'GHQGHHTHYFDT',1},
{'GHEYOOEYPHAG',1},
{'GHWTWVGSDFOJ',1},
{'GHFNOSFLHIAL',1},
{'GHXDCUDEPLLM',1},
{'GHVKZLFXHBWE',1},
{'GHASXLJLQGOG',1},
{'GHSOUKVXLVMR',1},
{'GHIJPHFWRUTE',1},
{'GHPDAOONXDEF',1},
{'GHKANQJJLQUH',1},
{'GHKRHIASSHKD',1},
{'GHKYZKGXMHDT',1},
{'GHRKEJLUFPSX',1},
{'GHZLEUZGGXIP',1},
{'GHFEUOUIQXHB',1},
{'GHVOHINYIFBU',1},
{'GHLIBCDNWUOI',1},
{'GHLGBKNMPXEM',1},
{'GHOGCOSKBCUG',1},
{'GHSDEWMDFEPH',1},
{'GHDABHQXAPYS',1},
{'GHUXFAZEVTWW',1},
{'GHFFLGGFYCQX',1},
{'GHAAMPAHSEEB',1},
{'GHLWDGDQYVUD',1},
{'GHPFNGGXVNOV',1},
{'GHXQWYPSATMM',1},
{'GHFTHIBMBDIF',1},
{'GHEXIWPIPMDV',1},
{'GHJLSGNTLXQP',1},
{'GHCKIBCGCJNT',1},
{'GHJAZPLDNLYL',1},
{'GHCCZSGMIJDB',1},
{'GHHRUPGPFYKL',1},
{'GHDYEKRHFNTQ',1},
{'GHRQGDYGGHVI',1},
{'GHGOSAVWNIOU',1},
{'GHWNBYMLNDDD',1},
{'GHVQUMJLODZN',1},
{'GHLOKYWHNHXB',1},
{'GHQUVUVYHHGX',1},
{'GHUBFSPVAVMH',1},
{'GHCPKFKBNRWX',1},
{'GHNUGUGHKDRM',1},
{'GHAEDMUCPSJA',1},
{'GHRCJERXGFIH',1},
{'GHIGQJUJLVPN',1},
{'GHZKFFIRVMCI',1},
{'GHTFCBVTGBUY',1},
{'GHANXQLEBFZD',1},
{'GHDZLDSRCCRT',1},
{'GHQBQSJMRVSK',1},
{'GHTYXYWZNZLL',1},
{'GHLNXDPQVGCB',1},
{'GHSAUAJFLQFR',1},
{'GHPZEDJIHGMX',1},
{'GHDUOHFETBHS',1},
{'GHLFTOILXVMJ',1},
{'GHIAVLIKQGXE',1},
{'GHOLNCJDLNTL',1},
{'GHNQUGKTCIPY',1},
{'GHSTOLGPSNAH',1},
{'GHSAFNENVULG',1},
{'GHBNCKFUXVAX',1},
{'GHNDFCDAATRJ',1},
{'GHYBPVTEUQFB',1},
{'GHNPJUKYPZZJ',1},
{'GHEFEVFJPRBY',1},
{'GHLNNJIKAPTP',1},
{'GHBJDZQGJKQI',1},
{'GHIMACTGXRYD',1},
{'GHODVZSJWORL',1},
{'GHUSLMTBYUSR',1},
{'GHFIYTVIKJFJ',1},
{'GHPCNTWVDIYA',1},
{'GHKHFAQCYXWO',1},
{'GHAGQEOGHVRV',1},
{'GHIHOMKTCUGY',1},
{'GHRAUALAFFVO',1},
{'GHIDLKWLQXYA',1},
{'GHUOXZESEACJ',1},
{'GHTXDNKNVUAZ',1},
{'GHKKXYKXJZIE',1},
{'GHXFVGVMTLBV',1},
{'GHNMTZUIESBL',1},
{'GHSPASHXSZUC',1},
{'GHACQDHKPJLC',1},
{'GHQYTOGMIHIO',1},
{'GHEYAFZHFFFZ',1},
{'GHTURGPSQDMK',1},
{'GHBXMJWOSYDW',1},
{'GHROKOYXCZMS',1},
{'GHDLCGBDTACG',1},
{'GHHISKPSVVJN',1},
{'GHBGQMXWUPKK',1},
{'GHCFPZOJSFIM',1},
{'GHXQFVQLQPHN',1},
{'GHRDWXKDPLJA',1},
{'GHUWHLGVSUSV',1},
{'GHDTTVBBSBRN',1},
{'GHUSOIXDLKVA',1},
{'GHDRNMCOCWHN',1},
{'GHIMICMNYXAX',1},
{'GHYNPENJCZGA',1},
{'GHKDJDLEMYBG',1},
{'GHHWCJFAVYYB',1},
{'GHSLLPVAUYES',1},
{'GHZJIRTWYBFN',1},
{'GHHQYQENGKHQ',1},
{'GHVGTKDNNKKW',1},
{'GHTVGNBHURUR',1},
{'GHZRHRIGSIOW',1},
{'GHMITPNZIPUO',1},
{'GHRGXNWRJJUM',1},
{'GHQYXHXIWBVN',1},
{'GHFIZVXHBMPI',1},
{'GHZDDVWQZEDM',1},
{'GHWMSVKSYHWJ',1},
{'GHSKUGHPCQSR',1},
{'GHBUTNYVWXMH',1},
{'GHKYORDIZJDS',1},
{'GHMBYEOHWAYL',1},
{'GHOOAWJJRMJN',1},
{'GHWURGCFEHFZ',1},
{'GHPQXYACSSDL',1},
{'GHYTKXHAZAFA',1},
{'GHIZYRCURWNK',1},
{'GHWMNPFHPRFG',1},
{'GHGYRBZEOIOQ',1},
{'GHPUCZOJQDUA',1},
{'GHHHRSKJTHGB',1},
{'GHLIYDDXYVCV',1},
{'GHEVGAPNZFHW',1},
{'GHRJSEVWRQES',1},
{'GHWTZFPKVVEV',1},
{'GHUOBHQFWISR',1},
{'GHJUCWLCDEGQ',1},
{'GHBJYWNKTVZN',1},
{'GHSACUYLCQJP',1},
{'GHSZKATUDSAR',1},
{'GHIVGMRPUXNJ',1},
{'GHOXCAXVWUKG',1},
{'GHOAZQMBIDQV',1},
{'GHXDEPBPKJQG',1},
{'GHDAJDCLARPK',1},
{'GHDMNEWNJENJ',1},
{'GHPZDAMJPLUX',1},
{'GHKATJEPBFMZ',1},
{'GHVAIEGXNTZO',1},
{'GHUZCPDJXCFJ',1},
{'GHPCVTMCMENN',1},
{'GHNUVOIWWDJP',1},
{'GHTKEGJXHTIV',1},
{'GHHRXDNZNMLW',1},
{'GHCYGRMMXOII',1},
{'GHWJBLEIDRUW',1},
{'GHNBOZJINKVJ',1},
{'GHLXQOVBHXRD',1},
{'GHQFKPJHZKIS',1},
{'GHMGOBHEHQQY',1},
{'GHQZNDEHVLJB',1},
{'GHZBOILBUWUK',1},
{'GHHXNQIMEBEU',1},
{'GHHRJTDQQTPU',1},
{'GHRRMJJFSZPU',1},
{'GHUVFMUKEXLO',1},
{'GHOSVCOBUPIF',1},
{'GHHFBFATWWXG',1},
{'GHKFPLTZHCZW',1},
{'GHIZYLIVILAC',1},
{'GHMCQFYRDRYL',1},
{'GHPRPRDLHTPO',1},
{'GHGBBZGTNVGI',1},
{'GHNVHNTUIKAG',1},
{'GHATUESNBOUD',1},
{'GHSETJVLANEG',1},
{'GHFLUQRPMOFJ',1},
{'GHBYRNEPHPWE',1},
{'GHWWLGCMNWDM',1},
{'GHOAXYUOGNIT',1},
{'GHOAPIDWKFWJ',1},
{'GHVIGPYZQOZA',1},
{'GHRZBRYQDLGE',1},
{'GHEZEBBSHHXL',1},
{'GHTLASOMOXWY',1},
{'GHHKOMNHBEUM',1},
{'GHKEIIMOGHKW',1},
{'GHQNGXCPGGML',1},
{'GHTBYWRPJBUP',1},
{'GHEIKSKQKZOG',1},
{'GHETWSNETOCA',1},
{'GHHOUDPNMFJA',1},
{'GHBSTJFFNKWK',1},
{'GHXSWGFCUTBQ',1},
{'GHRHXGQHRGAX',1},
{'GHITFRTMXIEN',1},
{'GHCPNZWAXVKB',1},
{'GHNKUXIALQYR',1},
{'GHFVYUHUQRXD',1},
{'GHKMUNTADCVC',1},
{'GHBAZHOHAYGL',1},
{'GHRSKFMPXVHQ',1},
{'GHXKRUYWVGNQ',1},
{'GHPSJSYEQASQ',1},
{'GHOMCDKQXUAD',1},
{'GHUGRVGVUKSO',1},
{'GHQHSZCXMNKB',1},
{'GHIUUZVTYCMW',1},
{'GHARAKICZOLE',1},
{'GHTEPIIDYZEK',1},
{'GHGHNJDNKEDI',1},
{'GHOURHIRSJPB',1},
{'GHBQHORFMQTD',1},
{'GHZEELYQVLJI',1},
{'GHGHKJLVBRYH',1},
{'GHNPZQROUPDN',1},
{'GHZVANGWJLKL',1},
{'GHLMCMMQUGXX',1},
{'GHPBEBVGTNTH',1},
{'GHIMDIATEUER',1},
{'GHHSVSNUULYK',1},
{'GHIRGKEPKCSC',1},
{'GHTWVDPJGLWC',1},
{'GHDKKQAAAMHQ',1},
{'GHDCQVZPNJQQ',1},
{'GHAKYLYKTUPG',1},
{'GHBOITAPIAJW',1},
{'GHLKSIJMPLNW',1},
{'GHJEGVGAXCUF',1},
{'GHFPPCWCRSXX',1},
{'GHLNHXIYFDWL',1},
{'GHPSAIFBUZSN',1},
{'GHGEFBGGEHCU',1},
{'GHPFNSWRRLAB',1},
{'GHITDCXSYFNR',1},
{'GHCNMFRLWVKW',1},
{'GHFPKEMBBABS',1},
{'GHIHLFPOKPVC',1},
{'GHCFOIPXANUG',1},
{'GHBZDZFFBFKF',1},
{'GHBXCIUQNDXT',1},
{'GHUMQKUCMQSG',1},
{'GHDAFUDDGUFL',1},
{'GHZFZKYQEKQK',1},
{'GHBYFANXKLDN',1},
{'GHCAVWQFTWRM',1},
{'GHVZYLPULCDO',1},
{'GHGSSHLHFVLV',1},
{'GHWPNBMLRIDJ',1},
{'GHXSFFTQKQPQ',1},
{'GHFQWBPOTFJL',1},
{'GHIDCXFNGXPB',1},
{'GHECIJYYHVLF',1},
{'GHUZLEBQVERS',1},
{'GHJLTENHHMDO',1},
{'GHQHFTCDLARZ',1},
{'GHREHQKBSECI',1},
{'GHXUULOTVIJZ',1},
{'GHBEUVYSBKZB',1},
{'GHLLUOIAMQDY',1},
{'GHMCBMGBLOLX',1},
{'GHCYWIHTAZQO',1},
{'GHUGYRQUXNLM',1},
{'GHJXROQUGOGC',1},
{'GHVRDSLEHTMK',1},
{'GHLCTJMRFLMW',1},
{'GHOJKNJQZFPM',1},
{'GHYSUDBKVFGM',1},
{'GHXSHFOJYNDJ',1},
{'GHBXHEHVJFHY',1},
{'GHWGOCAXDLPB',1},
{'GHJOUCEIULMM',1},
{'GHMWFKHOCYGH',1},
{'GHOCSFZJZWIC',1},
{'GHUJNPDENXJW',1},
{'GHAUCQGGICES',1},
{'GHQNOZRCCJQL',1},
{'GHYPGLRQAQXN',1},
{'GHFMMOSJQJHN',1},
{'GHXISDNHLOMS',1},
{'GHMMUABHAJIS',1},
{'GHPSLFVZVFCG',1},
{'GHZLPQYDOPEA',1},
{'GHRBDGQFHBWQ',1},
{'GHBUIDDSGGFD',1},
{'GHIOAPDYWCUF',1},
{'GHOGIAZIPKSM',1},
{'GHGJXAVYONYU',1},
{'GHKRZIRLBLYB',1},
{'GHGBJHMXNJSD',1},
{'GHFGYZRZVCSP',1},
{'GHGYOVFZSJLF',1},
{'GHKVQXJWUPGX',1},
{'GHRVDIAOCQGV',1},
{'GHVZVTKLKQKA',1},
{'GHRJBIBKAKML',1},
{'GHQMPLRMJMDU',1},
{'GHVCSCMKNYOU',1},
{'GHKOGWNAIEFJ',1},
{'GHPASYEEBAMX',1},
{'GHMKTCZTHBBR',1},
{'GHGVNYXOUNTH',1},
{'GHGFROELUPRB',1},
{'GHGFMEGZFVDQ',1},
{'GHLMKMURHUPV',1},
{'GHWRKMYATQAH',1},
{'GHDBMTZHVQLD',1},
{'GHQHHILYZJPE',1},
{'GHKSJIVHQOAO',1},
{'GHCUKRXUXWKM',1},
{'GHESTMITRDAF',1},
{'GHKVGFCXYAIU',1},
{'GHIUIPPOBQMK',1},
{'GHPIGOLYDRLZ',1},
{'GHIBHTTKKZZF',1},
{'GHFTYIBVDXSF',1},
{'GHDDEFUZBCYU',1},
{'GHYLZHBMJIVI',1},
{'GHAPWGOSQSRB',1},
{'GHVZURVWUKOS',1},
{'GHRVJXRWZSAD',1},
{'GHNKRLSFIZZT',1},
{'GHQBNISNJDLP',1},
{'GHJQQODFTVZY',1},
{'GHEUFJEGYLSH',1},
{'GHKDKSZVQZIH',1},
{'GHTGVOQBHQOX',1},
{'GHVPHSUXWIHG',1},
{'GHRFFQRAWVPI',1},
{'GHEBUWSHEOXF',1},
{'GHNLDDKBZVQL',1},
{'GHXDMDUKAPPR',1},
{'GHFJXDFNQRWL',1},
{'GHMVGHPWNUGG',1},
{'GHKKUHRZEEVT',1},
{'GHJHTVHBAZRJ',1},
{'GHQFLQSWOPWU',1},
{'GHOQIFBANNKP',1},
{'GHKWQPHYHSDN',1},
{'GHRBTUBXDNOY',1},
{'GHJAJCTSOSRH',1},
{'GHLFHSCHMXUS',1},
{'GHLUVJSUIXJP',1},
{'GHQBAIFKONGP',1},
{'GHMMFZYRSUYE',1},
{'GHKAURPHQUNO',1},
{'GHBNYMYDEIUW',1},
{'GHICMJWGBZGV',1},
{'GHOOPBBNDCDZ',1},
{'GHZGKVLWCWUR',1},
{'GHPARQEZBARH',1},
{'GHQTVFTSNXYX',1},
{'GHBEZYKMCULM',1},
{'GHUFWYPJOUGW',1},
{'GHROCMLXMWAR',1},
{'GHHMTNMXCAOF',1},
{'GHFYURKOSRIU',1},
{'GHOVDXBFRGTV',1},
{'GHTDTPLGTGUC',1},
{'GHRGVDGVICJN',1},
{'GHWNYYCSNNFG',1},
{'GHCRJSARIWRX',1},
{'GHWWNICNSDMC',1},
{'GHVOFQSPIJCY',1},
{'GHVHIINHPEXA',1},
{'GHQKKEOHSTCR',1},
{'GHPTNYCNGIOD',1},
{'GHQUJOZOHJRD',1},
{'GHJQLIIORBBW',1},
{'GHXTTQGCPLZO',1},
{'GHZVHBQUFDHM',1},
{'GHCCRNFPWKSN',1},
{'GHWZTOYEREGS',1},
{'GHLZZUAFDEXI',1},
{'GHXMRFQCXUCW',1},
{'GHHIHADRWIUT',1},
{'GHLKAHGDXTQA',1},
{'GHGTNTDRZGYQ',1},
{'GHNKHMUBQBWS',1},
{'GHGIWXVGEPXC',1},
{'GHXQGZJKPGEG',1},
{'GHQJBPVLXFQM',1},
{'GHJVQDCGGZXR',1},
{'GHNWRRTWZRJD',1},
{'GHYWEYBZPQKV',1},
{'GHIFNOLVCWNH',1},
{'GHANHSWDMZLY',1},
{'GHUNGBJBJRYO',1},
{'GHMUQNNGLKVI',1},
{'GHVFRCWBEPQZ',1},
{'GHBLJDYXFJWP',1},
{'GHACPCKINCTQ',1},
{'GHXTXVVKCUCC',1},
{'GHFEUHQSWIOI',1},
{'GHKGUMXKJCVE',1},
{'GHESQTMUXTOT',1},
{'GHOEDOVMGOVT',1},
{'GHOXVGOIGOYG',1},
{'GHXUNTGBUPSC',1},
{'GHXUODSOZCXL',1},
{'GHJEJEKQRLLS',1},
{'GHDZJFJJNUCD',1},
{'GHEMXHAHJUNL',1},
{'GHJORECIOHLW',1},
{'GHFYMNNZPONU',1},
{'GHVRBMLYOUZZ',1},
{'GHHZXJLPBJWG',1},
{'GHCVBMPNNIZO',1},
{'GHMQOTDNWGCN',1},
{'GHKFGHHIWTKA',1},
{'GHTNXFHUDNTV',1},
{'GHVYXAANHQQM',1},
{'GHATNPMKCULE',1},
{'GHECUPBSOYEL',1},
{'GHDXNWZNSZKI',1},
{'GHUONGIGZPIF',1},
{'GHKACVBMLYOG',1},
{'GHMQPAIJRYOR',1},
{'GHJPKORPPUAH',1},
{'GHYNPFFVRORE',1},
{'GHIYTYPNYTJG',1},
{'GHCNBOUONKRQ',1},
{'GHDDWMNZPHJZ',1},
{'GHMLHYZCYULM',1},
{'GHNXUAGSYJML',1},
{'GHPSIASDUQLW',1},
{'GHBGVQOUBTTB',1},
{'GHHBEUQSPXKU',1},
{'GHJMLJAOEKAW',1},
{'GHQKVNZRNBAC',1},
{'GHWZFDYFNACR',1},
{'GHZLEZXBRSIR',1},
{'GHLUHQBTEINJ',1},
{'GHLCTESSTJQT',1},
{'GHHTUQKQKRUM',1},
{'GHVZAOGRTFNX',1},
{'GHRQULGUUTLR',1},
{'GHXMTNGQMNYX',1},
{'GHDGQMTKBICU',1},
{'GHYXGWSCSJXH',1},
{'GHKMJHORAIVY',1},
{'GHFRMTFDJRIW',1},
{'GHPZSPSZVGWE',1},
{'GHUZYKOATCWL',1},
{'GHIKNVZVOIFL',1},
{'GHEVSTNFDQWS',1},
{'GHGDHNJANCMG',1},
{'GHYRJDYWUIPU',1},
{'GHINQTLHBZPH',1},
{'GHVOEPGMVCDA',1},
{'GHDUNLGITATU',1},
{'GHFIBEQXKYCL',1},
{'GHOCDVUOGSIZ',1},
{'GHQJRXSUCMHZ',1},
{'GHDOIGYZFTRE',1},
{'GHQGKYNDIAVW',1},
{'GHQBUTNJGPZJ',1},
{'GHNZEMDYRXHK',1},
{'GHYUOVXVDNHS',1},
{'GHAIZLSPZVXY',1},
{'GHRJRNWKSSPB',1},
{'GHWILYUPFCIJ',1},
{'GHCDTMJANDZT',1},
{'GHAJCLWVIPEZ',1},
{'GHGHDOPGZSHD',1},
{'GHNFBXUAHQYL',1},
{'GHMVSXAULRHW',1},
{'GHRFONSBTHJY',1},
{'GHUDBNVGGLMB',1},
{'GHXMTUCKOGLV',1},
{'GHJDXYZNCRDY',1},
{'GHGGHTYGKPGC',1},
{'GHVQBEZBNIAS',1},
{'GHVQWWOFTGGK',1},
{'GHQTEFHXTDCG',1},
{'GHEVEFLFMGJN',1},
{'GHGDGJHNLQYZ',1},
{'GHEAGDYHKAWZ',1},
{'GHRHCQHYQSVW',1},
{'GHFOYHEBVLGR',1},
{'GHGHXNKATOFI',1},
{'GHEDELZZBRUE',1},
{'GHVROYRSZWHY',1},
{'GHXPLZHEKCKF',1},
{'GHCEVQDIPRTH',1},
{'GHDVIBGNDFVI',1},
{'GHZSYWWRJFIZ',1},
{'GHZISSTKQBGM',1},
{'GHGZJWGATMJT',1},
{'GHKGOXDMMDWY',1},
{'GHTENBSLGXTC',1},
{'GHSRTJDRPMRP',1},
{'GHYTSAKONZIO',1},
{'GHKAOGWHCDIL',1},
{'GHBVXGVWRMFX',1},
{'GHXSJZCZYZUT',1},
{'GHUPDCUWUBCF',1},
{'GHTTHTDXJCQG',1},
{'GHAZNECKLQIH',1},
{'GHLUFCDUYKWJ',1},
{'GHXBWMYJGXEY',1},
{'GHRORBANHYJR',1},
{'GHLQKGSHBLBF',1},
{'GHPEUUWFKRNS',1},
{'GHRGUIUFOVCJ',1},
{'GHANWZPAOFIK',1},
{'GHDMMAKUXXBF',1},
{'GHLEPFPCXEUI',1},
{'GHQXUETBUGSI',1},
{'GHKOGRXLJJVM',1},
{'GHMMIWZCPZPM',1},
{'GHQFDTDCIYMR',1},
{'GHVOGBPBECLR',1},
{'GHUGOTIISBPN',1},
{'GHEQUYIOFOXA',1},
{'GHWWSASJUGPM',1},
{'GHTIAZFFOHBD',1},
{'GHQDMFUZDPQQ',1},
{'GHWUZRJEANNI',1},
{'GHECXCDQVJSS',1},
{'GHOYYVQMRJDR',1},
{'GHYQBFHZEEYC',1},
{'GHSYDJPVUWRX',1},
{'GHLWYCDOEVTN',1},
{'GHQJXIGTOPGT',1},
{'GHWDBUFIYOER',1},
{'GHXMTZXLWOMK',1},
{'GHESLEFYWZYW',1},
{'GHPGAFGPTKDR',1},
{'GHKLEUWLNVKK',1},
{'GHPWMTAYZUTX',1},
{'GHUIINVKRLVO',1},
{'GHDSMIMIDNER',1},
{'GHYBOWNRQWPX',1},
{'GHVCMHQPPRYR',1},
{'GHDYFKARSJCL',1},
{'GHLVFKRZQQJL',1},
{'GHIJFZXRIQME',1},
{'GHWNZEDFIMMX',1},
{'GHJXGMPDAXHN',1},
{'GHRTASWKWOJP',1},
{'GHQAHTZVKIIN',1},
{'GHNEJGXQJJAH',1},
{'GHELWLNZHODQ',1},
{'GHEWNBEPRWEJ',1},
{'GHNXWIXWDRSD',1},
{'GHNXUGZTDKRC',1},
{'GHUGTWTHDEEV',1},
{'GHZSETRHPIFB',1},
{'GHLONQLSKOCM',1},
{'GHMLZWSJJZMI',1},
{'GHYACBRXHNLN',1},
{'GHEPTHTPCFNZ',1},
{'GHGIHMVTADDY',1},
{'GHRHZOCVYHGF',1},
{'GHKUHJENGITS',1},
{'GHZRDSNAIEAH',1},
{'GHEHWLMPGLXS',1},
{'GHGSPBAVGQKY',1},
{'GHGFQVXQSFVH',1},
{'GHJSYDMPXZEB',1},
{'GHDSYCOTFDMU',1},
{'GHAKRNXKUSRH',1},
{'GHDBGVDRYOXI',1},
{'GHGTRAWWLJUZ',1},
{'GHOCHIYOLTNS',1},
{'GHEUBJYSBFJL',1},
{'GHYQBTRKRHHJ',1},
{'GHNYNMGKOAXP',1},
{'GHKPIAZPIABF',1},
{'GHUTVSKFUHUR',1},
{'GHAENLGSNWBJ',1},
{'GHEESVNPCFCF',1},
{'GHKKEZMAHSTC',1},
{'GHCVJINWBCIY',1},
{'GHHGULNSRWDQ',1},
{'GHQBJYPCOKGH',1},
{'GHEZNZUPMIVF',1},
{'GHWFIOMWOJMF',1},
{'GHBZWSBNJEYH',1},
{'GHJKZZFDYJFB',1},
{'GHCUWTCSPJZC',1},
{'GHDARJQXDGPH',1},
{'GHASYIAQBUIO',1},
{'GHCQVKPLXAYN',1},
{'GHFUBGLMQJSL',1},
{'GHSHRWGUPXZI',1},
{'GHOQFURQNRMV',1},
{'GHLZTBMMZJLR',1},
{'GHTLGEEMUNWP',1},
{'GHVMATSTDMUL',1},
{'GHZTFKPQDYHS',1},
{'GHVLUWPXKCTH',1},
{'GHGOYIUEMGRP',1},
{'GHOULMEEXAFE',1},
{'GHVXGJZHJBBW',1},
{'GHSEVJSHZMBV',1},
{'GHLLEZIYAYDX',1},
{'GHAOCWSDQJBF',1},
{'GHAJRHFRJCTU',1},
{'GHJRZPFMFSXM',1},
{'GHGLPFFWFLQY',1},
{'GHHWFPTDHGFM',1},
{'GHSTBNTIXVIJ',1},
{'GHLTXQICOHAA',1},
{'GHHQHPZDDCYW',1},
{'GHTIAJNOEAPH',1},
{'GHMOYCZWYVDB',1},
{'GHGYDHEIKYXX',1},
{'GHHTWZQBZFUJ',1},
{'GHWSUINIRSGF',1},
{'GHWTRMJBFLCN',1},
{'GHCSOBTTFUHZ',1},
{'GHCCBSPWKQCC',1},
{'GHNATCVRYBGW',1},
{'GHMJGVYBPBRI',1},
{'GHBTNXXYKUPC',1},
{'GHLVVQSTAKXB',1},
{'GHVRIRCVBZAP',1},
{'GHRVUQLEXFWH',1},
{'GHBUEUZHVPUY',1},
{'GHPHEUUKULHE',1},
{'GHRWECWLUETR',1},
{'GHUOHBYUJLEH',1},
{'GHDTZOZIOMJC',1},
{'GHUULKWAPXGQ',1},
{'GHBEUOMWWQTT',1},
{'GHBAKHKRLHTI',1},
{'GHVKXYKPYOVU',1},
{'GHYDTIVBCKXC',1},
{'GHEVFGDMLVRQ',1},
{'GHESMRRDKTVU',1},
{'GHOOLJDIPWHY',1},
{'GHARGKCDJPZT',1},
{'GHQUZHFQZFZY',1},
{'GHGHXASNPRZT',1},
{'GHJJUTTZXEPN',1},
{'GHWVRXVPQXOF',1},
{'GHLNHKAPIEFJ',1},
{'GHHNJXRTTEPI',1},
{'GHKVFPTDVFAK',1},
{'GHEHBABPWTXX',1},
{'GHKXIFUXZCOP',1},
{'GHQSLYSMCOOL',1},
{'GHSJBFYOBCJD',1},
{'GHTAQYSTZUGH',1},
{'GHEXNUDBZADI',1},
{'GHPNQBDGISPC',1},
{'GHBZGIJHTAGQ',1},
{'GHLWOANWKXCK',1},
{'GHMANYAZPJXG',1},
{'GHOZDBXDPUJB',1},
{'GHGGQUVBCPQW',1},
{'GHAHBXVWUEXJ',1},
{'GHYTVNMXYPOD',1},
{'GHMZYROKOHYW',1},
{'GHCDRYJLPZXM',1},
{'GHBUIAVYZMOR',1},
{'GHBFYRAHDTNO',1},
{'GHTFAIBVKRZQ',1},
{'GHITHKPMARND',1},
{'GHUQYQFGJOSK',1},
{'GHFVKVBOJSFO',1},
{'GHEIRCOJIEAW',1},
{'GHEHTXIRRKWX',1},
{'GHOAPQHDXVAQ',1},
{'GHVSCXGBKPHT',1},
{'GHGLBVTBSAML',1},
{'GHQICMVAWWDC',1},
{'GHNZJFORNMRU',1},
{'GHQJLEROQODP',1},
{'GHDEPEGWAKBC',1},
{'GHTBWEZBBTJF',1},
{'GHEFYXJIUJRL',1},
{'GHQQFLEFLPJO',1},
{'GHVMXRHLQPZQ',1},
{'GHYRGWXFFBLV',1},
{'GHSEYKKVJCFY',1},
{'GHLSOIZTQEKD',1},
{'GHSNJDXGPWKJ',1},
{'GHNKFGYFDDAV',1},
{'GHMIBFWPKEDI',1},
{'GHTVYOZXKJNG',1},
{'GHTSSLGLZVNF',1},
{'GHDKQLNMGKPC',1},
{'GHEILBOXGIPS',1},
{'GHOWLLFKYAMQ',1},
{'GHWACPVFVWQR',1},
{'GHDAJZUIPKZE',1},
{'GHJPFUOZNWRZ',1},
{'GHCOBZJTIMWT',1},
{'GHEUYJHPLBDE',1},
{'GHIAFUDTSBHK',1},
{'GHYCVAPZTFGO',1},
{'GHNSPBGGKDYK',1},
{'GHSPRRCHULYV',1},
{'GHBMRPWEBXQB',1},
{'GHLHVSDAVVVU',1},
{'GHZMHQTQXSAF',1},
{'GHTHHMHIVYPT',1},
{'GHLKNEAVMYCO',1},
{'GHHXRCKQOMUK',1},
{'GHPQODXNJDSQ',1},
{'GHKZQZFSSURK',1},
{'GHGQGMIODGVS',1},
{'GHLHNIQXRNRA',1},
{'GHKJEHDVSNLR',1},
{'GHYRHIJNWSRD',1},
{'GHVEDIDHHIRP',1},
{'GHHFIMHIHDEN',1},
{'GHGTMNYEVLRL',1},
{'GHGTSNEFCEUA',1},
{'GHWBMQSJTNMG',1},
{'GHSOEFZHFHUA',1},
{'GHLOYMKLCJRY',1},
{'GHZAUFUNXQHM',1},
{'GHMYJNNTWCYX',1},
{'GHJMGSQYRHKA',1},
{'GHSCPODEWDQX',1},
{'GHSMVTVATEPX',1},
{'GHBPMHSWBZWL',1},
{'GHMSATAOXKXY',1},
{'GHKHHBYAHFEX',1},
{'GHLVKYLOPEFQ',1},
{'GHMVOOFSHDTY',1},
{'GHLRBTHMAPSG',1},
{'GHWYFRLAZVGI',1},
{'GHDLKQDBWFTU',1},
{'GHYYSBSJFNPT',1},
{'GHQPVHUWKAUB',1},
{'GHBMKECFQPQX',1},
{'GHYOOZUFHMXD',1},
{'GHBQOQNNFQIT',1},
{'GHIXQWXNARFF',1},
{'GHYWXTZARGUJ',1},
{'GHURDJVJNEAA',1},
{'GHFAJCGDMPYQ',1},
{'GHVOEVVIYZGT',1},
{'GHEWYREAWPUF',1},
{'GHDIDJDFXEVH',1},
{'GHERKMGFNJFU',1},
{'GHDZGOCDDREK',1},
{'GHORVJSGHCSD',1},
{'GHGXACHGGKIB',1},
{'GHVVEIRZDIZZ',1},
{'GHVTINAQJRTO',1},
{'GHRBBPAUHPSK',1},
{'GHCLYXCRJSXG',1},
{'GHONNOVYIAHJ',1},
{'GHPBJDFOUNYD',1},
{'GHOMAFAKPASL',1},
{'GHMENZZQRPRV',1},
{'GHNIMCIEKQMX',1},
{'GHGQFYAVGDNU',1},
{'GHIMFLSJMTYZ',1},
{'GHWCEDSYEAPF',1},
{'GHENIRLGOXPE',1},
{'GHUIHMQWJQAL',1},
{'GHEUVNYKMRBB',1},
{'GHDQCBTWNWTF',1},
{'GHLEIPOZEFBR',1},
{'GHUCNGDMBBTT',1},
{'GHJMSIAQMNOG',1},
{'GHLKGIZVMFTA',1},
{'GHIQKDFSFUUW',1},
{'GHLNCECHHWTC',1},
{'GHVYFHBVKFZE',1},
{'GHPBHJFBUQRG',1},
{'GHAWFSVMQPMC',1},
{'GHXGMUPUYACF',1},
{'GHWWGZBNDAPJ',1},
{'GHDSUBTVRWPW',1},
{'GHZCBBXWLZTJ',1},
{'GHZSXEQYVSDJ',1},
{'GHDJKSZMPXTN',1},
{'GHUCWLZSGNFG',1},
{'GHBXRFXQJVTQ',1},
{'GHXKAXLBJDMS',1},
{'GHYMQLRZJRON',1},
{'GHRQMFUUBBNV',1},
{'GHELZAPZMXMK',1},
{'GHVBIOGGSIQW',1},
{'GHUAZDQPUOEC',1},
{'GHXVSUEQIPVK',1},
{'GHQISPJSOLJO',1},
{'GHNUVKMWUDPZ',1},
{'GHGLXLHUPFPS',1},
{'GHPOQYUAICDG',1},
{'GHKQMPOWTPGK',1},
{'GHUBXYPWXCXI',1},
{'GHWEGFOPZZME',1},
{'GHTIFNQOOCKS',1},
{'GHKAFWUHHKMD',1},
{'GHZFTQTPXPQJ',1},
{'GHRMSYBWWYJW',1},
{'GHHQCZPIVCHE',1},
{'GHJPEXNFNMIJ',1},
{'GHQWHBOMYOFO',1},
{'GHTJDEDFDCNG',1},
{'GHPWZCNBWMTZ',1},
{'GHHJKQOGQQWQ',1},
{'GHEBWLCQAFXU',1},
{'GHMCKWVQEFBD',1},
{'GHLIKUEMCHBM',1},
{'GHNVSVFAYUTV',1},
{'GHRBJWNBXEFF',1},
{'GHCAZPKRNLSX',1},
{'GHSVXQKUPPNP',1},
{'GHYGEVVDNFAX',1},
{'GHWZHASCMGKJ',1},
{'GHEMNRXNPMNI',1},
{'GHVTQSCWRUZD',1},
{'GHJCPEKPKOSW',1},
{'GHUECVIGXBAA',1},
{'GHZQZFNKFLIT',1},
{'GHYBRSGDYXPO',1},
{'GHLEUMGFHDGN',1},
{'GHWJEBDVAEMH',1},
{'GHQSMDQOHDVR',1},
{'GHBUUBNGPTAW',1},
{'GHVXYYGURTBV',1},
{'GHAAJXAHJTVR',1},
{'GHWQTENWQNYI',1},
{'GHYZVQXKCZOQ',1},
{'GHUJHGAHSAZM',1},
{'GHYPHGSFORTE',1},
{'GHKTKSRQHNIM',1},
{'GHASWULRXLEH',1},
{'GHZEDBNIICWP',1},
{'GHFVNLRHNYIW',1},
{'GHKJUBPSXSWE',1},
{'GHGBYLAAPDPB',1},
{'GHUSPGAEFERE',1},
{'GHXWZVBDCFEB',1},
{'GHIONPBPURID',1},
{'GHIMCFXXVWRF',1},
{'GHVHVKQZYZCF',1},
{'GHGBGYRQDKZF',1},
{'GHCNUICGBNPK',1},
{'GHFXQMJGUDGB',1},
{'GHDGPACLZCLV',1},
{'GHZOQPQKTSUU',1},
{'GHZEVNOAWGSR',1},
{'GHPPGIKUYOQF',1},
{'GHWMTJUCSEIA',1},
{'GHGMQAHYIAGS',1},
{'GHPLOTIGHKBS',1},
{'GHNJOMUDNACH',1},
{'GHKALVTLVBXG',1},
{'GHBJYNNDTOUD',1},
{'GHYHTQMQDLMW',1},
{'GHIQJAWYOJMS',1},
{'GHJFPSQZRPKM',1},
{'GHQOWSQKGNUB',1},
{'GHFKHLDTECHW',1},
{'GHXQCJHGPOAI',1},
{'GHYVAXXLLEXM',1},
{'GHXBMPQGCTYJ',1},
{'GHHXYIEEKYSV',1},
{'GHVEOXKJPLZM',1},
{'GHPLGDEPGVML',1},
{'GHVMQXKOITKK',1},
{'GHYUFVIFOLJH',1},
{'GHSWCOUWXMFU',1},
{'GHVVCXYRDBPM',1},
{'GHJRWZVKCWAB',1},
{'GHINSQUCFGRN',1},
{'GHDSBLQMFKKX',1},
{'GHETRBIILSRR',1},
{'GHHFWRYCBOGL',1},
{'GHLZBGTSRMWW',1},
{'GHOTLCADHFTB',1},
{'GHJXNBCQCGMS',1},
{'GHASQKJZRQKB',1},
{'GHMPTGKTRKPI',1},
{'GHBNIKCJHOSV',1},
{'GHYTVXKGPLFU',1},
{'GHQHDFHROKDC',1},
{'GHUNTYRQDIOQ',1},
{'GHFGVJGJQXLW',1},
{'GHWMGLDYIZOG',1},
{'GHWHZGORGRCF',1},
{'GHKQJWYLSDQU',1},
{'GHXGXCQLIWEN',1},
{'GHEYTUVGMISU',1},
{'GHVUMKOSXXYV',1},
{'GHYFYLOOMADV',1},
{'GHVHCXCOTGTL',1},
{'GHGKHWINACTF',1},
{'GHCGZEMIAGAH',1},
{'GHXVOZCOFUDZ',1},
{'GHBPMKNVRAFP',1},
{'GHVSQARYOQDI',1},
{'GHVMAQKRXWQQ',1},
{'GHNWSZIDJUXS',1},
{'GHMSYKQOTIUC',1},
{'GHGZJSQVYWKA',1},
{'GHRUUDJCDWTD',1},
{'GHQEPGVTHWLS',1},
{'GHDBHNNKKFYD',1},
{'GHHUQJPQPWKN',1},
{'GHCQTBNXAYPD',1},
{'GHOSSJLVGELJ',1},
{'GHCQPTOOJFVQ',1},
{'GHLGEAWFQFGY',1},
{'GHEOQGIUIHLC',1},
{'GHEYOPYMPCWD',1},
{'GHGIWGGQQCPX',1},
{'GHRQKWPECKNE',1},
{'GHLWIYDMTYRQ',1},
{'GHJZUKUFHXJJ',1},
{'GHOZFLBFPWAK',1},
{'GHOPQJVGCLRM',1},
{'GHOVFLPUTVZK',1},
{'GHRFEDACWRFJ',1},
{'GHBAKLVLDAGB',1},
{'GHYNAPCPORSC',1},
{'GHHPAXPSHSDB',1},
{'GHKSQXTWQJOR',1},
{'GHOIIJEOTWLQ',1},
{'GHMPNPQOJJYK',1},
{'GHBKTIMYCBWT',1},
{'GHKQJXGSPVYD',1},
{'GHQOYWWFGPAY',1},
{'GHKDPSQUCJDL',1},
{'GHDJDQOYQYYE',1},
{'GHKNCTAJSPHV',1},
{'GHCIVDWSJXQO',1},
{'GHPUBDKSAMRL',1},
{'GHDURJYVKVMO',1},
{'GHDLAIHSNMCR',1},
{'GHXSJHIFENWO',1},
{'GHDNMZJOXGMN',1},
{'GHJWXSLOEEMG',1},
{'GHIRRZBTXGDV',1},
{'GHGTQEGTRXUS',1},
{'GHMKSOSYJZYL',1},
{'GHJZYNUGIDCL',1},
{'GHWWQNVMVDOW',1},
{'GHMRDGFHKEGC',1},
{'GHTEIBNBOIOU',1},
{'GHTZCWMEMWJX',1},
{'GHCCPWZZMXEH',1},
{'GHJGIRFRNHKZ',1},
{'GHQTWSVJAZJY',1},
{'GHLRDABIBOIZ',1},
{'GHOSSGFHCFAZ',1},
{'GHVYOBZKHSAA',1},
{'GHCIZUIWLJZY',1},
{'GHDKRQFEUKDM',1},
{'GHEFACKIROHT',1},
{'GHPWVOXUOTWI',1},
{'GHWKLPGBCNVG',1},
{'GHUQOKZKFZVP',1},
{'GHBVZVGTOSEA',1},
{'GHBJVOJYMPOQ',1},
{'GHRBKSZOXQVX',1},
{'GHXFIFYNHXFO',1},
{'GHLGEDFIZJRG',1},
{'GHERINDGVWOD',1},
{'GHDBOPKMBAWQ',1},
{'GHIOFHBNKXDT',1},
{'GHHUNYCGWNSB',1},
{'GHVAPVWESBAN',1},
{'GHQHLBPPCDBJ',1},
{'GHYEIXRHIWDA',1},
{'GHRWTMGKJLUV',1},
{'GHXSSKZWJBMA',1},
{'GHOJHKOZXGXY',1},
{'GHLBMLGNEKJX',1},
{'GHUFRRCRKKJA',1},
{'GHGVMCYLOOTW',1},
{'GHWGPAZYASFU',1},
{'GHMWNLBSSMVH',1},
{'GHKRHFPXQTFD',1},
{'GHAWDHJMDNJL',1},
{'GHFGSUQCLDMD',1},
{'GHUNPUPQKJZI',1},
{'GHWPOJZWNSEE',1},
{'GHDYCXTCERHJ',1},
{'GHNGUWMNLKMA',1},
{'GHLXJBUJFTSL',1},
{'GHZTZIZVJQHE',1},
{'GHBASVVCCILK',1},
{'GHRDSPCXHXBR',1},
{'GHRTCFQMWXLZ',1},
{'GHGMWMOOWHNO',1},
{'GHYGBZJLSCIB',1},
{'GHVBYELNAOOW',1},
{'GHWXMDFUBRXW',1},
{'GHLZWRQNNWSU',1},
{'GHTKCSGDGLNL',1},
{'GHKXWPGNXXGW',1},
{'GHIICWMJKHCK',1},
{'GHRGDREVPIDE',1},
{'GHAUIRIETHMW',1},
{'GHENIXVDEUGJ',1},
{'GHLWYZTFPBVH',1},
{'GHKNWIWNEDTD',1},
{'GHWQCTMLDSRJ',1},
{'GHRJRHFJNSWK',1},
{'GHEPEEIRAHJW',1},
{'GHPQUCHKPFQI',1},
{'GHDRWRMGKEGX',1},
{'GHLWJMBLJQDS',1},
{'GHKHCULMKYHK',1},
{'GHAMGBZNURPM',1},
{'GHXDKTCZUMLM',1},
{'GHDIUUALOXUZ',1},
{'GHOIMBUYXFLI',1},
{'GHVOPSYWEAAO',1},
{'GHUXDVILCPUS',1},
{'GHGPKVIRCEWA',1},
{'GHFVIDIZPNPO',1},
{'GHOHUNFHCVNF',1},
{'GHTHUITOGLEK',1},
{'GHPAKMUNBGUF',1},
{'GHHFCTXARPVE',1},
{'GHHUTDOVTZGZ',1},
{'GHBLHXEZNKVV',1},
{'GHMXZAQHKUJF',1},
{'GHVEMPFELOCK',1},
{'GHZGACUJIISZ',1},
{'GHLLXJYZTJDR',1},
{'GHDVVBPJDYVX',1},
{'GHSZHYJYTONH',1},
{'GHCOBVFSHUWZ',1},
{'GHOLGDWMMDNM',1},
{'GHWASNTNTHSE',1},
{'GHMDSLIHZPXF',1},
{'GHBYEEVNCTIR',1},
{'GHKSRHXNLQZI',1},
{'GHQGRURVCZOK',1},
{'GHOXEKBLTQGA',1},
{'GHFSTPILKZXQ',1},
{'GHDAMEOLRZTP',1},
{'GHWBZDXYFIRX',1},
{'GHLUOYTBICOL',1},
{'GHMYRIJGXKJW',1},
{'GHWVBDZQXJET',1},
{'GHIDCELFANHI',1},
{'GHLAVNBJSTVR',1},
{'GHDINCPBMCIG',1},
{'GHAUMCUWXBAX',1},
{'GHNRXAZWEJJB',1},
{'GHCUEFEBLCKY',1},
{'GHTBRFZWUYKL',1},
{'GHMZJTDIMKCE',1},
{'GHARMRJTBBGH',1},
{'GHDHPOCLPNDT',1},
{'GHRPUOODZYRS',1},
{'GHJVGVAZQBGV',1},
{'GHWZGORYUFOQ',1},
{'GHAYNLGGREQC',1},
{'GHGNRSSZVPWS',1},
{'GHULAJOYYTXE',1},
{'GHKYQECYLBED',1},
{'GHIYCKUJVCZC',1},
{'GHGLBHUSRQGV',1},
{'GHCAWKKRVMTP',1},
{'GHCCBGKYCADU',1},
{'GHVLXPLYZBZJ',1},
{'GHALCKDPGQJI',1},
{'GHNLLVMWVPAK',1},
{'GHJVXWFBATMO',1},
{'GHVZRZGTWHBL',1},
{'GHFJRBWZOXLF',1},
{'GHGMNUBFGVGV',1},
{'GHBKGCTEASMT',1},
{'GHEOWLIGHVXH',1},
{'GHBPSXYCBJQY',1},
{'GHOAUEIZXKHW',1},
{'GHUVSKUZWZWM',1},
{'GHTEAAKTHXEZ',1},
{'GHSXUBDOFSCM',1},
{'GHSKSXECUNNN',1},
{'GHRIPNDUDPQQ',1},
{'GHXJSLEVFCQA',1},
{'GHXIUMEFRYYI',1},
{'GHTUCKQOEUED',1},
{'GHDNIACEBUOQ',1},
{'GHIIFOLNVHXH',1},
{'GHQQSAFUMBMW',1},
{'GHXUCHTWHXLM',1},
{'GHSPFIEPKQKS',1},
{'GHWRSEATUNAV',1},
{'GHYKWGKAIDLY',1},
{'GHMTAUNZQIUL',1},
{'GHMPNBXSQFJH',1},
{'GHWIANIBCKJB',1},
{'GHNBHPXSJWFE',1},
{'GHJGXLUAXPYG',1},
{'GHVAGYFOILSD',1},
{'GHEQYVGJQJEL',1},
{'GHZEDBRXUGOR',1},
{'GHZZLWIJVWUO',1},
{'GHHKRSDKHNJH',1},
{'GHSTHHHINJTO',1},
{'GHYETZYQLQJL',1},
{'GHRPCZIFWRJC',1},
{'GHPJEDYYFRDT',1},
{'GHGNFAFILRSC',1},
{'GHXJJWJTTVWU',1},
{'GHTMVGYVJMEC',1},
{'GHWGDNFSSTDT',1},
{'GHFDJHETTGYX',1},
{'GHHZYAIZXOHT',1},
{'GHHOBTEPHNQF',1},
{'GHBPYQWTDKPD',1},
{'GHDBQSJPJJXJ',1},
{'GHBFSJJBGWBF',1},
{'GHIPCVYISBAE',1},
{'GHIHMWIHMTFI',1},
{'GHGJFSKJGSWM',1},
{'GHDAMUKATKSC',1},
{'GHLMQNOEUGAY',1},
{'GHROHCTKYRCE',1},
{'GHXVJCJAEIUF',1},
{'GHUTDVJIMXNI',1},
{'GHYFNYVAXQYD',1},
{'GHTIPIDAQLBQ',1},
{'GHEEWKJTDQVW',1},
{'GHJHBAMIMESG',1},
{'GHWDMEWAOUXL',1},
{'GHSSLSGICEAA',1},
{'GHNMUCJYSDGY',1},
{'GHQIWAICXFCP',1},
{'GHGLXLEZZXTW',1},
{'GHQXUTYSWJYC',1},
{'GHKGNIGSKXFQ',1},
{'GHZFPNCPOFPG',1},
{'GHFBNNOAFSUI',1},
{'GHPFMYSNIBGF',1},
{'GHVUPVMLACJM',1},
{'GHYOQJKNQLUF',1},
{'GHUUXLGJTZFW',1},
{'GHWRRWBXOIQU',1},
{'GHYWPYTEAAGY',1},
{'GHGIILXQUZPA',1},
{'GHOACNFQKBHQ',1},
{'GHOHUSMMVJMX',1},
{'GHHVMFDUBAPL',1},
{'GHBNRDLFUXTD',1},
{'GHGODNQBXEIW',1},
{'GHKYXWYOJCIE',1},
{'GHSUAQJRDLTS',1},
{'GHABYEDMCAMK',1},
{'GHISMAZHWUGE',1},
{'GHRDZFTXGYBL',1},
{'GHEGEPCSRDTN',1},
{'GHXLZIDPYCQT',1},
{'GHSCNMCQLVYM',1},
{'GHEUGLMAVFIR',1},
{'GHTAVMRBNLJA',1},
{'GHRHVAZFGYOX',1},
{'GHUKEYZSZOSZ',1},
{'GHZRULBFKVXL',1},
{'GHHTYUMORYZC',1},
{'GHLCEIQMIMSK',1},
{'GHBNWCZNCMYA',1},
{'GHURLIRKSGEN',1},
{'GHCEPFSYMJKM',1},
{'GHSLRSRXQVAO',1},
{'GHCYRYOIKOCT',1},
{'GHVRGRTAKYJM',1},
{'GHFOHHATNGAW',1},
{'GHWIIWMGIISX',1},
{'GHTKXYBCEEIZ',1},
{'GHCYJNCYMKAZ',1},
{'GHPTHBDGSWVD',1},
{'GHOZEBIJGQTG',1},
{'GHKVCOIGRBUW',1},
{'GHFLIJCAKMMC',1},
{'GHRQCTRKUYJO',1},
{'GHMGNYWGITFT',1},
{'GHUMKNZRZYYK',1},
{'GHMIBJCRWJXG',1},
{'GHPBVZYGQKKE',1},
{'GHREXVSXFIUH',1},
{'GHLLFLAIFCJB',1},
{'GHEYVAZOXZWE',1},
{'GHLPTVLXHVYI',1},
{'GHESQADAIWTR',1},
{'GHIGEQQCJQWR',1},
{'GHBGSAGBSGMF',1},
{'GHCQZYBPZZUA',1},
{'GHAUKVACTVND',1},
{'GHLGQDEGEZGQ',1},
{'GHYRNMDDZWSQ',1},
{'GHLHDELRBLIB',1},
{'GHJWCADWPGRY',1},
{'GHPAMWILMODT',1},
{'GHGXIAHXVCUZ',1},
{'GHPDAPZKQXXN',1},
{'GHOMNRJZOEXL',1},
{'GHHVJFAEMYCK',1},
{'GHITQUPEBBTT',1},
{'GHNDVSBQOVIV',1},
{'GHLOVENXYVTM',1},
{'GHWHTGPQIDJI',1},
{'GHSFCKYUVGPU',1},
{'GHCKJYHRUUHI',1},
{'GHLEWXWLSTKL',1},
{'GHFVXFENGQRL',1},
{'GHSBVQKZRVIE',1},
{'GHZHMBAPYKBN',1},
{'GHMGQYIXJFGF',1},
{'GHEXBARGROIP',1},
{'GHYRWZDCUOZD',1},
{'GHVDFMPFLMKH',1},
{'GHIVEKWAVMUM',1},
{'GHSBDSPWNZVK',1},
{'GHCWBSCKUVQS',1},
{'GHXZVWCBRHIX',1},
{'GHCBTGLXBTYC',1},
{'GHYYARJFCSWR',1},
{'GHSVLRNATYVC',1},
{'GHDZKXMDEXAG',1},
{'GHQWVNXHIEEI',1},
{'GHBABFZUVBKF',1},
{'GHFHQDLZOBBP',1},
{'GHSVLRJBVVCG',1},
{'GHQNWUWSWTVK',1},
{'GHOCVPGJCCMF',1},
{'GHZIKKIRKVQV',1},
{'GHMTMPIKUQMZ',1},
{'GHUBJBCVICUL',1},
{'GHPFXPABVHNW',1},
{'GHJYFTRBGDXU',1},
{'GHWXGGFMEYHF',1},
{'GHIHXLYFNOCE',1},
{'GHXLXZTNEDRG',1},
{'GHSYFJYYIXNH',1},
{'GHOZRHQNBAAL',1},
{'GHWPXRJSNJBA',1},
{'GHSLYHXCPBUH',1},
{'GHSVDGVYUVKN',1},
{'GHBCBACLADPB',1},
{'GHCHFMKVDBCL',1},
{'GHJTHBJWBMBJ',1},
{'GHBJCGRZUNVM',1},
{'GHSNGISXYFFD',1},
{'GHSPIPSWQHJE',1},
{'GHUGCOYCBKED',1},
{'GHVZQPICZMSK',1},
{'GHXBVMYELKVE',1},
{'GHYRUTMVCZUE',1},
{'GHEHPVHWDWWE',1},
{'GHKIVLVYAORZ',1},
{'GHLYAWPSIQZE',1},
{'GHDXVXFYWVAI',1},
{'GHQJHLLATPXN',1},
{'GHYJMQRWPBPS',1},
{'GHYEKSILXQII',1},
{'GHIXGRPTTPEM',1},
{'GHJQFESVSNOC',1},
{'GHMJCZUPNAKN',1},
{'GHBQBQIJVEEG',1},
{'GHZHUCFIVRSZ',1},
{'GHAIAVANLWRG',1},
{'GHIBUFYFMYTG',1},
{'GHKHZUBAIKCR',1},
{'GHUWGXSYRRIM',1},
{'GHJARZXREJMO',1},
{'GHLBPMDXVWOH',1},
{'GHRWZOEEDNUA',1},
{'GHGQRNJLTAUW',1},
{'GHDPYFLNQHOE',1},
{'GHPZKTHMSJKA',1},
{'GHKFGGSSTJRJ',1},
{'GHTIELRMQJCO',1},
{'GHPOMZSJXLVG',1},
{'GHHUOUHAQNMU',1},
{'GHFSAZUQESGF',1},
{'GHFTGEKMGTPI',1},
{'GHVWCCZYPHZU',1},
{'GHQQRMLEOFHR',1},
{'GHJCNQCRUXFY',1},
{'GHJORNMCKLDR',1},
{'GHBSCKYDJTVT',1},
{'GHXJRJWYUGFZ',1},
{'GHHTSIROHWZN',1},
{'GHOYQICZJUWW',1},
{'GHZZWIDUPOIO',1},
{'GHSVGCTIUVDA',1},
{'GHCADBFRRBVD',1},
{'GHYDZXMOJEIS',1},
{'GHFZTANYCOPE',1},
{'GHKYZNCTHBTQ',1},
{'GHQYQMXTNUSV',1},
{'GHRMFIEWMKTI',1},
{'GHMFZKHITPZE',1},
{'GHBWIKKVZFMH',1},
{'GHKKGUBGTZZA',1},
{'GHPGMSNEFUBT',1},
{'GHPAZWYVHOGI',1},
{'GHUPMTJJOMCP',1},
{'GHFGDYNABDYT',1},
{'GHRJCWRRZVYF',1},
{'GHDFUPMJFGSA',1},
{'GHBFCFVHOZCW',1},
{'GHDOVQFZLXDT',1},
{'GHQPDQNQFIFH',1},
{'GHTNTYJZVHCN',1},
{'GHDPEGKOAYCO',1},
{'GHSQBDPDAWEO',1},
{'GHIDIUXSIKCZ',1},
{'GHEQPRGTQWFN',1},
{'GHOKMMKOWONC',1},
{'GHTVHMOUDKKK',1},
{'GHNVXVNQUZWZ',1},
{'GHSPNTSQGQKO',1},
{'GHRCXUQABQBX',1},
{'GHHTKOPTRQYD',1},
{'GHDCTSBMLHOW',1},
{'GHQRHWXOQUGV',1},
{'GHBBROQVWFMB',1},
{'GHYOVRJCFAEA',1},
{'GHYGMJIWUJTB',1},
{'GHWTQVZJNSQV',1},
{'GHGUJZYWSRMT',1},
{'GHGUEESMUGUN',1},
{'GHCJLMGEFXNV',1},
{'GHNSBUSZVUKP',1},
{'GHSMRLEMSXOO',1},
{'GHEQXHCLKFMD',1},
{'GHPOBEFWVTWJ',1},
{'GHMFNTAEMLVY',1},
{'GHQTIQLWESCI',1},
{'GHYBNHGKWSBR',1},
{'GHQHZHWSVPPW',1},
{'GHPDBAXOUPZG',1},
{'GHZCGCCZBROW',1},
{'GHICQRDLWODC',1},
{'GHODKLZBAKSE',1},
{'GHIHZNSLLMJY',1},
{'GHJCEOAUBLWC',1},
{'GHXXDUUIJFVG',1},
{'GHVAZNPCZORT',1},
{'GHITNVUIASBN',1},
{'GHJWCGSGERFU',1},
{'GHQXGIOAEGOL',1},
{'GHWHMWRKRFOB',1},
{'GHSSOBWUIVZN',1},
{'GHHPMCUCJZNZ',1},
{'GHOFXIFBKRLP',1},
{'GHRBBIUXOAFX',1},
{'GHDZDMDONVCV',1},
{'GHVOEMICXEVR',1},
{'GHQETWXDHZZG',1},
{'GHPRHTZDDIQH',1},
{'GHDTDETUJASH',1},
{'GHTRMXUCRBNY',1},
{'GHPXUMLEPOXA',1},
{'GHQJQLPKLHNL',1},
{'GHUFAVAMRNEF',1},
{'GHSRDNAFYEXG',1},
{'GHCWTWOJBESA',1},
{'GHHPPIUZAMTA',1},
{'GHHYEIHZYCXW',1},
{'GHWGRPSSLARI',1},
{'GHFVUYRETRIM',1},
{'GHZJNKPMIQKY',1},
{'GHGOMITJESOC',1},
{'GHOYSZDUXOYO',1},
{'GHVULNNPQDZS',1},
{'GHGKBJGOGHYK',1},
{'GHIMZSIOCHJU',1},
{'GHKVDUUKOREX',1},
{'GHBYBUEAXAVD',1},
{'GHBYVSAMBFIJ',1},
{'GHEVJZBAVGPA',1},
{'GHGJEZKPZJWB',1},
{'GHKSDZUPQGQQ',1},
{'GHFHECYAEADB',1},
{'GHEVDRBERDPK',1},
{'GHSYZFKXAPMH',1},
{'GHHUQUGWEEVC',1},
{'GHLAMYJIJXAR',1},
{'GHLIMPSYTKBG',1},
{'GHQCLJYWYMSL',1},
{'GHNUNPRURCYB',1},
{'GHCEMFHZGQPW',1},
{'GHXPCPPKKAEG',1},
{'GHSHBYXHAERE',1},
{'GHZXFMRSTOMO',1},
{'GHOTQVXDDNAI',1},
{'GHMAZJWARWVX',1},
{'GHFHYCBGMJHH',1},
{'GHRWGJAJYTIU',1},
{'GHKTUZPYYDUJ',1},
{'GHNBYMVFNFHP',1},
{'GHYPLIKPOZZX',1},
{'GHDXXHKNOVSX',1},
{'GHMDOTVBTREW',1},
{'GHXHXALMBNSM',1},
{'GHLWAIBJHBKF',1},
{'GHYPLFIOYTFM',1},
{'GHDTGOOOETJW',1},
{'GHJIRPCGQWCF',1},
{'GHJONLHDPCXE',1},
{'GHVSJSIWALNL',1},
{'GHSIOHPDDIDC',1},
{'GHJSLNNEGSFS',1},
{'GHOISCOCEQBZ',1},
{'GHGUTIMCCFKS',1},
{'GHBMTDUUMIUM',1},
{'GHEMGQUHPFND',1},
{'GHJWSZJVSLJK',1},
{'GHXUPSEEMQIC',1},
{'GHCSFFSKBFXQ',1},
{'GHHUMDQBKKUC',1},
{'GHVLDVXNWWJY',1},
{'GHITOJYUWCTN',1},
{'GHFJBYTFLRVR',1},
{'GHTNSJHFQEHR',1},
{'GHJDXQPFFXOC',1},
{'GHQJKRQJTPSK',1},
{'GHVMAPNHQEDB',1},
{'GHDENYOORSXD',1},
{'GHAILFIGDQHN',1},
{'GHRKFFBSOHYY',1},
{'GHYJJWGUXNSD',1},
{'GHOOXJXZJVVO',1},
{'GHODMPKUHHJK',1},
{'GHSQDWCVVPWQ',1},
{'GHQUMZWEBQOD',1},
{'GHJROJKUCBND',1},
{'GHIZIPYJEMJA',1},
{'GHFRJLQNFYXJ',1},
{'GHQEJTRPIZRB',1},
{'GHPHKMAMCFXA',1},
{'GHUYKSQCDZJZ',1},
{'GHFGNRBNQKHB',1},
{'GHJQWHGPPEAT',1},
{'GHBZKVNLDECO',1},
{'GHTJEKOTWQUT',1},
{'GHXFPOKDIBLV',1},
{'GHVPKGFAMFKB',1},
{'GHPQWINONKAP',1},
{'GHZJDRZQYVIX',1},
{'GHJKLXIFHITV',1},
{'GHANZHJJXIJK',1},
{'GHLRVVFHQMKU',1},
{'GHNLXGXJXHDS',1},
{'GHWNVNJOSRMH',1},
{'GHWENUNPDSLD',1},
{'GHELRNSZUMEY',1},
{'GHFYZPMSQDPX',1},
{'GHWOPAIKOJOU',1},
{'GHDTACGGRPVN',1},
{'GHITBAJZBBXW',1},
{'GHWOXTXYDYKT',1},
{'GHOVHQHLYEAK',1},
{'GHQWMJTIMAAL',1},
{'GHDPITZYJHBL',1},
{'GHUSYWAYHBGJ',1},
{'GHAOBDNABWZE',1},
{'GHFILCLEVANJ',1},
{'GHJUIRKARIYG',1},
{'GHHDFWJZBNAC',1},
{'GHEGLBNXGZMY',1},
{'GHCNHUEAYKDD',1},
{'GHXKAXKUZGOU',1},
{'GHHJDEWLTVKQ',1},
{'GHDGVZXTPFDZ',1},
{'GHLECQKULYUF',1},
{'GHPJWEHFPOHT',1},
{'GHDCTTEVDGAK',1},
{'GHBUMNEMGXDH',1},
{'GHICQWTFIRUV',1},
{'GHWGUFSRBHOJ',1},
{'GHWLZRGVEMQD',1},
{'GHLBVVNVVTRT',1},
{'GHMMOGYHPICF',1},
{'GHAGYFZCXSVQ',1},
{'GHHFLPAICKJM',1},
{'GHQGWYUHSADY',1},
{'GHWKFOEBAKJQ',1},
{'GHPIYWHKUHNW',1},
{'GHJDUWSCTPHX',1},
{'GHMBPSWYGBJP',1},
{'GHTEPAWGNICS',1},
{'GHISJQKDVXDP',1},
{'GHLXNPHTCSJG',1},
{'GHXGUHCVQRFV',1},
{'GHMVXDNDCIIY',1},
{'GHMVNQDXMAWP',1},
{'GHOUZRJYCIEG',1},
{'GHWDRTZDRZOG',1},
{'GHJROHUKLMEH',1},
{'GHCWYAMFNBDA',1},
{'GHUWOQALVACP',1},
{'GHFIHHYXVCQL',1},
{'GHVBRSNHTWUZ',1},
{'GHUEHEDCQPEP',1},
{'GHFMWVZTNUKD',1},
{'GHSGIEISOMIS',1},
{'GHNFNHGVFWZZ',1},
{'GHIRZEHIFLFO',1},
{'GHNKHUEPQTOP',1},
{'GHHHLZTLWBGJ',1},
{'GHWTIZBISAUC',1},
{'GHTAIMGHITMV',1},
{'GHEYNOBNDVRW',1},
{'GHOFNCDOBRKO',1},
{'GHDFBMQNLYFH',1},
{'GHMCWKPSTVNH',1},
{'GHQLKUXEKHKF',1},
{'GHKIXMFSPMWT',1},
{'GHZNUJGGUANA',1},
{'GHUYQTKHKUHN',1},
{'GHZVYYWNFDZK',1},
{'GHCAUOBXNBHG',1},
{'GHVLYNLCPKGK',1},
{'GHMHHCZZPVBK',1},
{'GHLODRKOYVDF',1},
{'GHUFEIRQYVVW',1},
{'GHOTETKBAYFX',1},
{'GHCQNVMYJMQZ',1},
{'GHHSUXYKRPHF',1},
{'GHLUXVQVXYQA',1},
{'GHTEDKNQUNXV',1},
{'GHDYVNBYSZZS',1},
{'GHYXXHBEMHQB',1},
{'GHRLZSPPJBRA',1},
{'GHJNQZLYBQFL',1},
{'GHLJMDIQOMYQ',1},
{'GHYUTQUNGXSA',1},
{'GHBRBTRDUGZQ',1},
{'GHQXUGSOCSLR',1},
{'GHWOWZPBWDAX',1},
{'GHOYLBKFXADI',1},
{'GHZHTBWFBDZI',1},
{'GHYLIVUGIWGW',1},
{'GHQYDYNKNEYV',1},
{'GHCFMMYFDPJS',1},
{'GHHODUKKKAXA',1},
{'GHYOMEPUVIDJ',1},
{'GHUDQJDSARVE',1},
{'GHQKSCKJDUSB',1},
{'GHORIDOSOZHX',1},
{'GHEPDVYLJXHF',1},
{'GHHPQCGEODGG',1},
{'GHHPRSQHADFG',1},
{'GHOPXFKCGCWQ',1},
{'GHPAVCCOTJYN',1},
{'GHRMQHTYGXJX',1},
{'GHYWNHFHTYND',1},
{'GHWZKXALYARO',1},
{'GHGQKPJJHVXN',1},
{'GHUHCUOPHASA',1},
{'GHKRZRZVYMIF',1},
{'GHDYGKLRQTRC',1},
{'GHHERYXABINJ',1},
{'GHRZKGVPGWLN',1},
{'GHAGZWPSACBR',1},
{'GHWBXTTYKDZB',1},
{'GHHELAHUITIA',1},
{'GHJOMBTEGWKB',1},
{'GHJMCJDHSZYO',1},
{'GHZMQBDUYSNM',1},
{'GHJJMCHLGGGZ',1},
{'GHFSIYMQLDDC',1},
{'GHFOFXYZJKXB',1},
{'GHDNVUIIVRIH',1},
{'GHZQDMESZHUF',1},
{'GHVJQBGHKDAT',1},
{'GHGNQDGENTZR',1},
{'GHHERQOUHUYD',1},
{'GHWIPLGBOGBG',1},
{'GHYRPUPUECGQ',1},
{'GHDGNOXSFCQU',1},
{'GHPEGBFFWNZF',1},
{'GHFYHMMARRGX',1},
{'GHVEQRXFGNWX',1},
{'GHRSMXYGTMCY',1},
{'GHODOMYELQJD',1},
{'GHDTBJVCWTXU',1},
{'GHAMDRHLCDNM',1},
{'GHKXRYKCWCRA',1},
{'GHRGYAWURWLJ',1},
{'GHJEXFPQHLLK',1},
{'GHQOPNNYXCJF',1},
{'GHSDPKHYLVWS',1},
{'GHUGAFRTPVOC',1},
{'GHXGDCGCDWJH',1},
{'GHUDWYJUHNTF',1},
{'GHFDUUTPOILX',1},
{'GHMZSSVCWOYT',1},
{'GHEHPKRHZIOO',1},
{'GHSHAHMPMKVI',1},
{'GHWBPWLURQEM',1},
{'GHYUYJLUBRBD',1},
{'GHGJCGGOHAMI',1},
{'GHKCIJYKXHOH',1},
{'GHOBBVFNYNCT',1},
{'GHSPUHGHNTSI',1},
{'GHHJRMLBTJAY',1},
{'GHGALYQFPRUD',1},
{'GHEIUKELAYOY',1},
{'GHTQSCIIUNNF',1},
{'GHAOJSNDXIOI',1},
{'GHAIFDDJAWCJ',1},
{'GHYVSEESJAIV',1},
{'GHLEPGECUKZK',1},
{'GHKQDYVHFQXA',1},
{'GHQNVWYPJEUU',1},
{'GHCYUTRHHCHZ',1},
{'GHAZSWCCBOOV',1},
{'GHZEERMRLTKR',1},
{'GHHVTOTJRHIT',1},
{'GHYGLEQTMKOK',1},
{'GHLSHDALIMVQ',1},
{'GHHUOVFCVCNV',1},
{'GHCCQHRCEERF',1},
{'GHMFYYMDCFVG',1},
{'GHSHPYICNZSE',1},
{'GHPOEHZXGLHM',1},
{'GHQRVOGCSKKQ',1},
{'GHPNGXOSIWOJ',1},
{'GHQXQLZKDLVW',1},
{'GHQRJHVAIOWY',1},
{'GHWAQBSTOLZR',1},
{'GHTUZFVSATKL',1},
{'GHDKDOAYIKIF',1},
{'GHNWCZYMCJIP',1},
{'GHCXGXSFITWS',1},
{'GHXOTKBGGVRL',1},
{'GHOQTDNDKQTS',1},
{'GHALLLHJJUUJ',1},
{'GHYGDBZBGRWB',1},
{'GHZZHILVQSNO',1},
{'GHTPHCUZALYT',1},
{'GHDRKWSTLQPD',1},
{'GHJOGEHPSPKZ',1},
{'GHCNNLIUOYSQ',1},
{'GHUBIPNRAHZS',1},
{'GHQGBLCXSCMK',1},
{'GHXPNCFYQTPO',1},
{'GHMGNIBSTAKD',1},
{'GHJRPUTFVXNE',1},
{'GHAUUYHRUDFF',1},
{'GHYTDDKXDFNX',1},
{'GHZGYDYKBKUV',1},
{'GHZAXLYNXWJH',1},
{'GHBWVDDGXKEL',1},
{'GHAEXOOUNDCB',1},
{'GHQVDTBRNIQL',1},
{'GHFAIQOJEQQG',1},
{'GHAVMOEDZGPS',1},
{'GHLTVAJWGFEU',1},
{'GHYIPYAQDIUJ',1},
{'GHLNJYLWDQCV',1},
{'GHXPNTPMXZQK',1},
{'GHFAINTMGQOV',1},
{'GHOOWJXPPZXW',1},
{'GHVBJSCWILKR',1},
{'GHKFOPISLPND',1},
{'GHNDSCPAUQKO',1},
{'GHMMGXMQADHG',1},
{'GHPPSDMJGHTV',1},
{'GHQUIUZHDCIC',1},
{'GHBTBCGBMGUE',1},
{'GHHRCHTXOLIC',1},
{'GHSHSDTRNTFE',1},
{'GHORNJXTBOUY',1},
{'GHPFOJCYHNKW',1},
{'GHVCYKFCOFQI',1},
{'GHUJGWLXYUVX',1},
{'GHAEZNMXLGWX',1},
{'GHJBWOJDFKZX',1},
{'GHXWFZECMGDC',1},
{'GHHHIOXBSDQK',1},
{'GHYJHBLXCXVC',1},
{'GHGULVFQZWKQ',1},
{'GHYONDRLQYGL',1},
{'GHNMFYOIOMXZ',1},
{'GHRPXUKXHSAV',1},
{'GHCLXFHTPFMK',1},
{'GHPPRFMUTCPP',1},
{'GHKSAFWRGRCS',1},
{'GHFBIJLNHHRO',1},
{'GHQCNQQHHWUC',1},
{'GHVNVDQRFCGG',1},
{'GHBWXNEFTTSN',1},
{'GHZABUOWDCED',1},
{'GHDPPJFBWIHF',1},
{'GHTCAVGWRUBE',1},
{'GHKSIHEDOEGZ',1},
{'GHTVYFYZZDQW',1},
{'GHOHBGUUJRYM',1},
{'GHKETIGZTCMH',1},
{'GHBCROCVQZIX',1},
{'GHRMELXFPXBR',1},
{'GHNTZRSWWBDW',1},
{'GHVSWHCQEGAQ',1},
{'GHBVLSRZOZXX',1},
{'GHCBFGPXGGLU',1},
{'GHEJPXGPPXOC',1},
{'GHMGYZKBWSIU',1},
{'GHRIXTVDKMML',1},
{'GHRBERAAKWDV',1},
{'GHXQOGKKUKWR',1},
{'GHVHKWZXCOAK',1},
{'GHANTWNTJTIA',1},
{'GHRTTFCNUNJP',1},
{'GHQEDOQICPDK',1},
{'GHFTSGUKPDEU',1},
{'GHOIKYZNTQGP',1},
{'GHDKPGWJDZLU',1},
{'GHLVADNPWXHT',1},
{'GHDORRDHUJYR',1},
{'GHEHCSPYKOGX',1},
{'GHAAOSIIVWOU',1},
{'GHQRZIEJRTUA',1},
{'GHQPKKDCJQJA',1},
{'GHSAOEYXVLQP',1},
{'GHEMFCIJCVDD',1},
{'GHSGZDUDSSUC',1},
{'GHIDXEDRBHQX',1},
{'GHOPGHNQMOZW',1},
{'GHJTNXQHBHAV',1},
{'GHYCTBUPGUIU',1},
{'GHEDDEJAKUWN',1},
{'GHCZLGIHWALC',1},
{'GHGRZWVGGGPH',1},
{'GHUCLHWFKWCL',1},
{'GHLOOWNNTQDL',1},
{'GHUXGYQTOCWJ',1},
{'GHLFWEDUKEAV',1},
{'GHYLNQJTDLWV',1},
{'GHGEODKQHTVW',1},
{'GHNQFIQNRMLU',1},
{'GHAHONTRZGKT',1},
{'GHKLQEZALOUL',1},
{'GHXHMAOKWRTS',1},
{'GHQNSVTQWIPZ',1},
{'GHLYATOBFKXI',1},
{'GHXDFFYLORGD',1},
{'GHZEBKDPHTMX',1},
{'GHAJVAPQHRZW',1},
{'GHRCXATWZQAZ',1},
{'GHETZJCDIDAP',1},
{'GHHNBPEPXKYI',1},
{'GHVNGYUBIFCB',1},
{'GHGVJLNVPUTE',1},
{'GHARKINVVALC',1},
{'GHSFZZSTXPQW',1},
{'GHTILAXDPSSV',1},
{'GHFCSJZNLENG',1},
{'GHZXPUMDTPUV',1},
{'GHIRGOKAGYNC',1},
{'GHVPTZGEYVLL',1},
{'GHEHXPTLIZWU',1},
{'GHCWIGTAEWKU',1},
{'GHDDGHBCSOKN',1},
{'GHWDPSBFYMKG',1},
{'GHJAMLTYAQXT',1},
{'GHRVFBFUCJIJ',1},
{'GHQOKLNKDTOF',1},
{'GHYSDSOXCFHY',1},
{'GHPDWMOZIYAG',1},
{'GHGVOXLYJBDW',1},
{'GHWTJZSNJOJI',1},
{'GHOWELRYRVCC',1},
{'GHTVZNMLGOWX',1},
{'GHKBYSHJEZQC',1},
{'GHLQSPTSGXPF',1},
{'GHGJJXKAIVMK',1},
{'GHRJPXXFXZUX',1},
{'GHIVUSZDJMFK',1},
{'GHCMYAOYATRV',1},
{'GHOCDWTMJJUG',1},
{'GHDVAZNHVEQP',1},
{'GHFDIYLRIGZS',1},
{'GHOVLUNQWEQB',1},
{'GHKWHVDWGMXM',1},
{'GHEUTJEMXFZX',1},
{'GHAFNCGTNDDC',1},
{'GHYEUJPLYBEG',1},
{'GHLHFSQXAHFA',1},
{'GHJDMXBITKYO',1},
{'GHIGGZWYLISS',1},
{'GHWIRSXCZNOC',1},
{'GHZTUGBDZHKH',1},
{'GHHRDEYCRZJC',1},
{'GHAEBSDAZUWA',1},
{'GHIYNJLYPHWI',1},
{'GHYGTLVSFICC',1},
{'GHBREULKFVCQ',1},
{'GHAZWAYCIAEJ',1},
{'GHXWTEKCIOON',1},
{'GHBOMASZGZCA',1},
{'GHORNTPUAYTB',1},
{'GHHAGNLUDFMT',1},
{'GHZEXJCIBKCK',1},
{'GHGRZNHABZMW',1},
{'GHXCLCPTZMUR',1},
{'GHEHQYLQGLQN',1},
{'GHUWWAJTAXEG',1},
{'GHZTNLLIHFPS',1},
{'GHDMQOAJFWEX',1},
{'GHUCEGIJTLVB',1},
{'GHQSMTIYOKJJ',1},
{'GHBPLBWOXZBX',1},
{'GHKOGMSBZZCN',1},
{'GHPRYLTOTLJL',1},
{'GHRURTEEWXWH',1},
{'GHTTFDWETITU',1},
{'GHQMZPIHLUBH',1},
{'GHKKZQFPVSKI',1},
{'GHZDQRMBWIGM',1},
{'GHAFISSVTNEA',1},
{'GHEFZOZXQEDW',1},
{'GHCEGSPQKMCE',1},
{'GHVXLZJBXLQP',1},
{'GHMASOYLTFAH',1},
{'GHOTDEJYDOJS',1},
{'GHWNBFKVHWQA',1},
{'GHTZNOSEFQCL',1},
{'GHUUWGSKYCYE',1},
{'GHTIZPAIDVFY',1},
{'GHYYSFSCCWBE',1},
{'GHBCAHYERIKQ',1},
{'GHXGVIPSJEFV',1},
{'GHLOIYGDJNZF',1},
{'GHEAVHOIXGYO',1},
{'GHFNLEKLBQHT',1},
{'GHHQPFJKMSPA',1},
{'GHQLMRLSGPPE',1},
{'GHLMPUQRXJNU',1},
{'GHZYCKQDGGMX',1},
{'GHYAFCZLZMGJ',1},
{'GHGRTXZQWNJW',1},
{'GHQJVNZFMGQZ',1},
{'GHFQSDRTKNZS',1},
{'GHYLNZQPLDDB',1},
{'GHQCYBQRGXAU',1},
{'GHBGMQAWNJOD',1},
{'GHDOHLTIYOTP',1},
{'GHBOKLITUIRK',1},
{'GHNVZYJVHPOG',1},
{'GHTAPRKHJRPP',1},
{'GHROWSIDOYRQ',1},
{'GHMKLTEJPYCL',1},
{'GHHRGGRWTEUV',1},
{'GHHDXSCZURJR',1},
{'GHDZUKYZEOHG',1},
{'GHQGLVTZHOBF',1},
{'GHPORJNUVKUU',1},
{'GHNKAOLTYQVT',1},
{'GHLVXSRRNNLP',1},
{'GHVJGIYAFJIP',1},
{'GHLBHJHGCCUU',1},
{'GHOGMXVRECJX',1},
{'GHBZCQQDQBGX',1},
{'GHBZDZSRFZJP',1},
{'GHALOOHXQAFP',1},
{'GHCSSQSQSQXD',1},
{'GHKYBRXQTWPG',1},
{'GHAUUZZFKTYO',1},
{'GHQYUMARWWWL',1},
{'GHYDWOSUIDVJ',1},
{'GHFMHKBDIAOD',1},
{'GHFTZHDIAYES',1},
{'GHVOAPYMOYED',1},
{'GHOXQYYKJQLB',1},
{'GHYGVNFVENQL',1},
{'GHZSBEFXDNDO',1},
{'GHATKAMSMBOT',1},
{'GHVRZRATOBHY',1},
{'GHKWTPEDSZCG',1},
{'GHKORFHWTLFF',1},
{'GHXIQEQEDUUE',1},
{'GHLLXFBNKBCD',1},
{'GHSLQGRQMHZP',1},
{'GHONRHQRRAWQ',1},
{'GHONMIUEKEZL',1},
{'GHQNBECBSUHW',1},
{'GHDNQPTTDKIE',1},
{'GHTGWXBYOFCU',1},
{'GHACMAVCNGBC',1},
{'GHXLDTRKVINQ',1},
{'GHJILJVOZGYR',1},
{'GHELCWLDEXZK',1},
{'GHQWCOGFFKKB',1},
{'GHDACCRKOZVS',1},
{'GHAZKGLOPOSX',1},
{'GHMKZCAYLMKQ',1},
{'GHVDLNTSWDRI',1},
{'GHGNXZSGLWWC',1},
{'GHQAMAAFYGUD',1},
{'GHTWEHUGOUPX',1},
{'GHBYBNGJMZTX',1},
{'GHGKUVPBZURK',1},
{'GHQHDSOEQHCO',1},
{'GHQAPWZVKSTQ',1},
{'GHJXODZPVKSO',1},
{'GHCCOBREQTUJ',1},
{'GHAAJNKJXOVT',1},
{'GHPRJJLWBLPO',1},
{'GHQWKRGTYEGR',1},
{'GHRPZUQXFNRW',1},
{'GHZOIGDUJPOD',1},
{'GHQGHZDHZKFS',1},
{'GHAVKIPJKSVK',1},
{'GHNTCSKAWMFC',1},
{'GHPUXHJYMKKT',1},
{'GHIDUENOBZIC',1},
{'GHVRNYZIBSEW',1},
{'GHAQLURLURDR',1},
{'GHNHOCOQZGUL',1},
{'GHPAMPFQZAWQ',1},
{'GHLXDFWVRAGA',1},
{'GHYCDPSSEKDB',1},
{'GHJOJAMLXQAT',1},
{'GHJBIMYBDKPA',1},
{'GHFPFTVUOGDI',1},
{'GHXCTDZTZTYM',1},
{'GHSPBDVNZVOE',1},
{'GHOZPHXLRNUB',1},
{'GHUQLKJHZBZK',1},
{'GHNNFLJWGWHD',1},
{'GHHTOTGLMTHD',1},
{'GHCAPOVKRZPK',1},
{'GHSJSPLJDZLB',1},
{'GHILJFYDVHLJ',1},
{'GHKUXCIYTGAG',1},
{'GHXSDMUHQRXB',1},
{'GHEQWPYBCEBO',1},
{'GHRCOXYGDWOS',1},
{'GHNICFWCQIUB',1},
{'GHZVDUIPLJRY',1},
{'GHBCVJVKKBAH',1},
{'GHSOOSIEPERG',1},
{'GHGXCNYVGFWH',1},
{'GHVCKGPYUGTR',1},
{'GHFPTSEBZMTT',1},
{'GHXIHNWHLIWQ',1},
{'GHYWOHFICDQK',1},
{'GHXFVDMWGBPK',1},
{'GHSOJIIIBLPL',1},
{'GHJGQWLRERBK',1},
{'GHAHWORAUVDG',1},
{'GHWYBQJONCDT',1},
{'GHPTMBMAMYBO',1},
{'GHZDJYVUSYIM',1},
{'GHKCRIHTGFXV',1},
{'GHNVPUHADSPQ',1},
{'GHNLXYPYZDFI',1},
{'GHPFDDSCDORA',1},
{'GHLFICINAUBR',1},
{'GHLQRRFRHQSK',1},
{'GHLQJVCRRDQY',1},
{'GHOFOOGYIQLG',1},
{'GHTVDDBHQRBB',1},
{'GHYAPXPTVUXG',1},
{'GHXRZVUWDMCO',1},
{'GHKCHUKNYECG',1},
{'GHBNFROAGKZU',1},
{'GHKFVLJTKBSD',1},
{'GHMWWPRYCWLE',1},
{'GHTEAWPOKGTD',1},
{'GHHHJDXCOTWE',1},
{'GHCIXFNPRVIZ',1},
{'GHLBIBPMNKJM',1},
{'GHMTYGIEKUQZ',1},
{'GHAOIPGZBEQQ',1},
{'GHXPQBHKWIRG',1},
{'GHQNQJJJVFJD',1},
{'GHTNUSFBDNTY',1},
{'GHNBHYLTGSUQ',1},
{'GHVQESUSWEMX',1},
{'GHQZGZAOGKZH',1},
{'GHAKIOKJTLIZ',1},
{'GHXPODOTZAOG',1},
{'GHUMQPECSLHG',1},
{'GHHYOVWFSTPU',1},
{'GHVRPWKZODEK',1},
{'GHRQACFNOFHF',1},
{'GHDWZJIELZEV',1},
{'GHNPNMEWKBUR',1},
{'GHFJCAHIPVLO',1},
{'GHJRJMDBBLKG',1},
{'GHJIFJQHMJVT',1},
{'GHLLFVXUGVHB',1},
{'GHDUXKQYQQGZ',1},
{'GHCFONYKBNBC',1},
{'GHFODIEFAPYX',1},
{'GHRBLWLXTMKE',1},
{'GHVBJKEIVJNE',1},
{'GHRMXHAXZVOH',1},
{'GHZYTCBPLOOO',1},
{'GHBCYUAKXNKB',1},
{'GHVSBRUTEUJR',1},
{'GHPVGZWLBFYI',1},
{'GHOIXJHJGTWX',1},
{'GHLEIIGLEXWZ',1},
{'GHPLNZFKZSHH',1},
{'GHAPXPEPNJHR',1},
{'GHIPUOVBUEZH',1},
{'GHSXITKIJGCV',1},
{'GHAIJIHYSUDU',1},
{'GHXLDIIENJBB',1},
{'GHWCJGNDXKSH',1},
{'GHCIUHTKZHLK',1},
{'GHXOFPQOXKSZ',1},
{'GHCEAUIIRTWE',1},
{'GHXWNNBLCFCL',1},
{'GHBKSZOCHABY',1},
{'GHLXOJGHFOQF',1},
{'GHOPMRGFQKIS',1},
{'GHKOGQWZWGGM',1},
{'GHWQGMHFMQNX',1},
{'GHHIWRLKVHWT',1},
{'GHVUEXJWNIOF',1},
{'GHBCWKEEUHDR',1},
{'GHUEGAGOIXMZ',1},
{'GHHNVEOOLOKK',1},
{'GHEWZEOXWOPW',1},
{'GHTKIEZYXQEX',1},
{'GHHVRGDZLKRZ',1},
{'GHVZEQKEWXCM',1},
{'GHEOVIZYUNID',1},
{'GHDMLAGOLMED',1},
{'GHUQSHJSZQMR',1},
{'GHKSKBYCYZOL',1},
{'GHVXMIORXZQS',1},
{'GHJJIWYSYUIJ',1},
{'GHWMSRBJVDFP',1},
{'GHVUIKREIBCP',1},
{'GHGDLAQSSAWY',1},
{'GHOPEXOLWFPL',1},
{'GHIPCCMXHRRS',1},
{'GHVQCIHXQUSG',1},
{'GHSQTZLGYTCS',1},
{'GHCBFLQUXYSP',1},
{'GHPJFKQIPDCF',1},
{'GHOHYDXDDNRP',1},
{'GHDOORYZGZCI',1},
{'GHLOFHRXAAXR',1},
{'GHJWDHZTUZEM',1},
{'GHNXBSAUIPJQ',1},
{'GHFGLGJCCOCF',1},
{'GHPRANVUKVJB',1},
{'GHMOAFZCQACS',1},
{'GHFOPCOYFMUO',1},
{'GHOAHKPAMBUF',1},
{'GHBSDLVZVSPH',1},
{'GHYAUIAYJSTM',1},
{'GHLKVKXXIFHW',1},
{'GHRNQDWVHWDU',1},
{'GHIJKPMKYTCB',1},
{'GHRGHILQHOMB',1},
{'GHUVAJOSWFAS',1},
{'GHHIJYQBXAMZ',1},
{'GHDVTEYYIQGM',1},
{'GHZVBPMXKYDB',1},
{'GHRJTQWXGZOC',1},
{'GHHBXEPLCGCD',1},
{'GHRKGUOXGEHR',1},
{'GHBRALHEDZDA',1},
{'GHELHHVQBXOZ',1},
{'GHUUPEODGLHH',1},
{'GHTXOPZNJGDA',1},
{'GHXZHGEWZQYV',1},
{'GHLFFCJHVCOM',1},
{'GHVDWHHBFDGL',1},
{'GHQJNOVPJUOO',1},
{'GHKWFCFTQMWW',1},
{'GHPLFECAFBHR',1},
{'GHOEXHDATDKU',1},
{'GHBJHZBBWNYJ',1},
{'GHBAPVJDUOAH',1},
{'GHYENQKWMHKT',1},
{'GHJNBOHYHMST',1},
{'GHEOQJCATITO',1},
{'GHRHDAIGOAXJ',1},
{'GHJYWLXULKUX',1},
{'GHDITOSXZVHI',1},
{'GHCIYANULORZ',1},
{'GHRQUYQTEQEG',1},
{'GHPMADXQQBWN',1},
{'GHKNPDMPJAOE',1},
{'GHRJEZQYQCYL',1},
{'GHXKHFSAPSQP',1},
{'GHREUNVFJRBM',1},
{'GHDBMNSBUGAM',1},
{'GHRPIMSNQXDY',1},
{'GHNVFHFDOZCP',1},
{'GHTEWYJDTTJA',1},
{'GHNFLWSKOGEH',1},
{'GHYQBWRMYUMD',1},
{'GHIYFJINWZFL',1},
{'GHXCAAXETLCN',1},
{'GHNODSXNVPTF',1},
{'GHOVYHHQBXHW',1},
{'GHCIUGHIROKV',1},
{'GHBGHYHMLFXO',1},
{'GHJCGBWRKKCZ',1},
{'GHXJXWLOSASG',1},
{'GHSRRLUITHKW',1},
{'GHFEKMQRYICI',1},
{'GHPAHIEJHFOP',1},
{'GHEAYNIMKATE',1},
{'GHPFSGEHAYNR',1},
{'GHGEDGDBTCKU',1},
{'GHRBXYCYOYEO',1},
{'GHMGSXCWTABF',1},
{'GHOPLLCQPBZZ',1},
{'GHTXHHLDKNEY',1},
{'GHRDCJNWRPOC',1},
{'GHUUJCXGCPTO',1},
{'GHCDHFDVDNFN',1},
{'GHJBSTVUKHFX',1},
{'GHPNMDRTQTCR',1},
{'GHSIZGRDFAJO',1},
{'GHXQNOWOULJW',1},
{'GHCTCMHWXRTH',1},
{'GHDGCAWFNNYO',1},
{'GHOJPDUOOKPY',1},
{'GHVYYCQFKYTR',1},
{'GHRUYHQAPOHI',1},
{'GHLJYGENHEYT',1},
{'GHJSSASCLLKQ',1},
{'GHGNNPYMJJYP',1},
{'GHKAKLSLXCOF',1},
{'GHSXBZWLMEJV',1},
{'GHZOVVXTMPVD',1},
{'GHYBTCQRGTUL',1},
{'GHJFXKQNMZRN',1},
{'GHTLWJWETMAA',1},
{'GHIKDUJIBSHW',1},
{'GHNEBCVOSTHF',1},
{'GHFGXSOVBANK',1},
{'GHYBWOTEXTST',1},
{'GHSSXSKYBYLU',1},
{'GHKPFFKAXAWX',1},
{'GHMTUOODTSZW',1},
{'GHYZOCHGVVCR',1},
{'GHBPPBWBJGFM',1},
{'GHEEEYOISZKX',1},
{'GHVGNBMVSJRA',1},
{'GHZFUKOGAYEY',1},
{'GHXOGDJPMDTW',1},
{'GHLEPUUOXPCD',1},
{'GHSFWUXTGAMH',1},
{'GHXBPRNKLTQY',1},
{'GHZZLPKFHRVI',1},
{'GHIAMVMUSMSU',1},
{'GHFXXFKSYUTJ',1},
{'GHJFDAADKOSD',1},
{'GHCUWKKDOXOJ',1},
{'GHJIPKQYUEVA',1},
{'GHGPTWIKDMLP',1},
{'GHQFIPIWUVWU',1},
{'GHMRKXEWBVRA',1},
{'GHMQIOQIHUPW',1},
{'GHQZFHHWTCKX',1},
{'GHSPFDKNRUNL',1},
{'GHEEBAQXLPAJ',1},
{'GHYHHHSDIVTS',1},
{'GHLJHVWGPZXV',1},
{'GHZHXEAKOCVD',1},
{'GHLUJVVSUXMF',1},
{'GHFTZZEUMUIK',1},
{'GHLBZMQIALBB',1},
{'GHBXLPZYFGWL',1},
{'GHUFSRYWHXYO',1},
{'GHIYOZEQCDBT',1},
{'GHWUPOHGRSQA',1},
{'GHLEZPLIRPFX',1},
{'GHHDDNGSIZVD',1},
{'GHNTTBUGMXDX',1},
{'GHNRRWJKKFLA',1},
{'GHWNSCASFEKV',1},
{'GHAZSPUWFDPW',1},
{'GHNETTLMZDXF',1},
{'GHFJOKKMUZVO',1},
{'GHIDADPDQIZH',1},
{'GHYELEWUEMGE',1},
{'GHAWBJZYOFWU',1},
{'GHJRCWWQUZVE',1},
{'GHYTFXHFXBFN',1},
{'GHSWTIPUUOZB',1},
{'GHAORFGWJVYJ',1},
{'GHOTJFGWHJDW',1},
{'GHZPAVMUFBBC',1},
{'GHIQCMUOKHTB',1},
{'GHZZVMKCZKFC',1},
{'GHRSRAJYGCKC',1},
{'GHKHXVBRBOHF',1},
{'GHBAWDYCQAKV',1},
{'GHQTFTHUWXBX',1},
{'GHPAWWWXEUNH',1},
{'GHVCWHXWPRLG',1},
{'GHUNSPQSWEGK',1},
{'GHZDAKRQVGCU',1},
{'GHIMCFQPYRUL',1},
{'GHRDONQIFRYX',1},
{'GHNSLKILXRNO',1},
{'GHCIQIDLHOYY',1},
{'GHICLKLMCEXV',1},
{'GHVHFLWCOIWM',1},
{'GHYGSZOLXAZG',1},
{'GHCQYMJQWBYH',1},
{'GHCNNKQRPLJK',1},
{'GHPZVLCPUHGW',1},
{'GHJZIBROMCZR',1},
{'GHAUPGIMCKOF',1},
{'GHSRWGLDGGID',1},
{'GHYEANTOVQAX',1},
{'GHTARVBQDTZA',1},
{'GHWSXFZKKVMQ',1},
{'GHHKAKBJNYSB',1},
{'GHXFANOHOPLI',1},
{'GHVRJMEWBFPT',1},
{'GHBDHLLHKEDE',1},
{'GHYGZYOSRJVU',1},
{'GHHEIXLMUXGC',1},
{'GHMJPEWPQDLF',1},
{'GHVCAESNXLEV',1},
{'GHHMWKQCLMZE',1},
{'GHLKWVFRPNCO',1},
{'GHISZOGNCBRI',1},
{'GHDUXRUTVCTN',1},
{'GHRVRBXKUKOV',1},
{'GHGJUOEJVDLV',1},
{'GHGSBYFGSCBU',1},
{'GHNETTUZVHED',1},
{'GHTRNGMIPQYH',1},
{'GHTXJONIEUQH',1},
{'GHABWIPLOLOU',1},
{'GHBCHBEVURZF',1},
{'GHQQUXYNYKGM',1},
{'GHJMUFKWHBTM',1},
{'GHRXBOSDKOIV',1},
{'GHTGSLUJTIXF',1},
{'GHOEAXYPWHNK',1},
{'GHYMYQHSQBXV',1},
{'GHXROFIKRBXR',1},
{'GHNANFACOZMN',1},
{'GHKGOGGNXAAD',1},
{'GHCZFSRDUSOA',1},
{'GHFVLYXXHYNG',1},
{'GHVUHCZOQQMR',1},
{'GHUALCNHCTAJ',1},
{'GHYRWKCYSTLN',1},
{'GHAIOKPHVIBA',1},
{'GHPHENLIERUB',1},
{'GHRLOVSLTQQN',1},
{'GHVHVDSZAVQW',1},
{'GHXSSCYQMLXQ',1},
{'GHIHFBLCZJYG',1},
{'GHAMALRONDWX',1},
{'GHZLCXUBUPHT',1},
{'GHUQHFBUMASJ',1},
{'GHBYXJPRIAOQ',1},
{'GHHLAWEXODEY',1},
{'GHDRFIPUPXKS',1},
{'GHHFURODTQCP',1},
{'GHORZQGMMAQR',1},
{'GHAJHQOPAIHH',1},
{'GHKYIMOBCZTU',1},
{'GHJRWXGTYLBT',1},
{'GHYTBXCKIRMD',1},
{'GHCYHYFZJLIW',1},
{'GHEXDNQWAQKL',1},
{'GHRWIEDCHQYD',1},
{'GHICQZFPDXDE',1},
{'GHBMSXPCLSFI',1},
{'GHAZRJRGBQHX',1},
{'GHNINBTHSHRA',1},
{'GHJATUMDISQM',1},
{'GHSEQVFSKXFO',1},
{'GHPXYSVYGKEV',1},
{'GHGAPCAAVVBB',1},
{'GHQXWKHOTIOB',1},
{'GHSKPIFHOFMZ',1},
{'GHFSBDKDZPWE',1},
{'GHCWBRUARITA',1},
{'GHUQQDWLVEQI',1},
{'GHUXXHPHZKEB',1},
{'GHJSJHQBFAAT',1},
{'GHEEPSXZRUTE',1},
{'GHLTFGXDUAKQ',1},
{'GHYHVDTWUDCD',1},
{'GHFRLRBOGAQF',1},
{'GHWLEWKUDFKB',1},
{'GHZPGDROJGKC',1},
{'GHYPLIXJLLEK',1},
{'GHOIJQRFTLCK',1},
{'GHLNWNKVOHIA',1},
{'GHEVLNOLXAVZ',1},
{'GHPLTFAFCVFT',1},
{'GHDLXOAIKGVN',1},
{'GHJLGQYUGPNU',1},
{'GHNIATFTKJUT',1},
{'GHUKLBXKWCSD',1},
{'GHPXCLMGEJPF',1},
{'GHCZZQXLDLTA',1},
{'GHYXODFSRTWK',1},
{'GHZGAZOTHLGU',1},
{'GHVKMLWHIDUU',1},
{'GHWMBTVUUXUQ',1},
{'GHCXAKHQURDV',1},
{'GHVRGWTBFETW',1},
{'GHLCVNAUFXTS',1},
{'GHLXIDBIMEUY',1},
{'GHCMROYORVBI',1},
{'GHAKAEAYWZAP',1},
{'GHNHWNKJVAQQ',1},
{'GHOTFCFKMBWO',1},
{'GHQXWBRDPCJK',1},
{'GHZUPEVDDDJU',1},
{'GHEYUFELHYQO',1},
{'GHBMPQYRSBYL',1},
{'GHDQHSKQWYHH',1},
{'GHWAKRELAATF',1},
{'GHRWACUCYOHL',1},
{'GHGURRZGTPHN',1},
{'GHCBSVMFJIYB',1},
{'GHBRVKWSNLFN',1},
{'GHGIODTISKKT',1},
{'GHKRBFAGXQTH',1},
{'GHOGTQOSPOCF',1},
{'GHALASPPTRAV',1},
{'GHDKBGEBWRRA',1},
{'GHJTQEAEVRNJ',1},
{'GHXTJSGWTDVV',1},
{'GHYAPMEFMHUR',1},
{'GHPCWVDGXDYM',1},
{'GHFHUHZERQVI',1},
{'GHKJBHHUXNIH',1},

}
function phanthuongcodenew()
-- Msg2Player("---"..GetTask(4102).."----------------------------"); 
	if GetTask(4102) == 0  then
		AskClientForString("CODEVIPLIKE","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a1")
		
	end
end
function CODEVIPLIKE(nVar)
	local tbAwardgift = {
-- 
		
			{szName="S¸t Thñ Gi¶n lÔ hép", tbProp={6,1,2339,1,0,0},nCount = 1,nBindState = -2},
			{szName="Håi thiªn t¸i t¹o lÔ bao Vip", tbProp={6,1,4832,1,0,0},nCount = 1,nBindState = -2},
			{szName="Viªm §Õ LÖnh", tbProp={6,1,1617,1,0,0},nCount = 1,nBindState = -2},
			{szName="LÖnh Bµi Thñy TÆc", tbProp={6,1,2745,1,0,0},nCount = 1,nBindState = -2},
			{szName="Cµn Kh«n Song TuyÖt Béi(3 Ngµy)", tbProp={6,1,43060,1,0,0},nCount = 1,nExpiredTime=3*24*60,nBindState = -2},
			 {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200,nBindState = -2},
			 {szName="LB phong lang do",tbProp={4,489,1,1,0,0},nCount=1,nBindState = -2},
			
			
			-- {szName="cangkhon", tbProp={6,1,2129,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
			-- {szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount = 1000,nExpiredTime=7*24*60,nBindState = -2},
			-- {szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount = 1000,nExpiredTime=7*24*60,nBindState = -2},
			-- {szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount = 1000,nExpiredTime=7*24*60,nBindState = -2},
			-- {szName="KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,2952,1,0,0},nCount=1000,nExpiredTime=7*24*60,nBindState = -2},
			-- {szName="¢m d­¬ng ho¹t huyÕt ®¬n",tbProp={6,1,2953,1,0,0},nCount=1000,nExpiredTime=7*24*60,nBindState = -2},
		
			{szName="Ng©n L­îng",nJxb=1000000,nCount=1},
		
	}
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if CalcFreeItemCellCount() >= 20 then
		for k=1,getn(CodeVipShare_che) do
			if nVar == CodeVipShare_che[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(4102, 1) 
				--SetTask(3002, GetTask(3002) + 150000) --150k diem huyet chienn
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode VIP Like Share Bµi ViÕt")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 20 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;
--------------------------------------------------------------------------------------------
CodeTanThuGift = {
	{'AEHGFUKNSYGN2',1},
	{'volamviet',1},
	{'volamvietpk',1},
}
function QuaTanThuongHangNgay()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end
	local tbAwardgift = {

	
	
		{szName="B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4696,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4697,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4698,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4699,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4700,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4703,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4704,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
	

		{szName="Thanh Hanh Phu", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Tho Dia Phu", tbProp={6,1,438,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Lenh Bai Tan Thu", tbProp={6,1,4265,1,0,0},nCount = 1,nBindState = -2},	
		{szName="MT 180", tbProp={6,1,4804,1,0,0},nCount = 1,nBindState = -2},	
	--	{szName="MT 180", tbProp={6,1,4875,1,0,0},nCount = 1,nBindState = -2},	
		
		{szName="Hµnh HiÖp Ký", tbProp={6,1,4875,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
		{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4832,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
		{szName="Phi phong Ngù Phong",tbProp={0,6036},nQuality=1,nCount=1},

		
	}
	
	if GetTask(3901) == 0 then
	--	AskClientForString("CODECHECKLQ","",1,99999999999,"NhËp GiftCode")
					SetTask(3901, 1) 
				--SetTask(3902, GetTask(3902)+1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				--local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,60*24) SyncItem(Index)
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
	end
end
function CODECHECKLQ(nVar)
	local tbAwardgift = {

	
	
		{szName="B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4696,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4697,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4698,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4699,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4700,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4703,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4704,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
	

		{szName="Thanh Hanh Phu", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Tho Dia Phu", tbProp={6,1,438,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Lenh Bai Tan Thu", tbProp={6,1,4265,1,0,0},nCount = 1,nBindState = -2},	
		{szName="MT 180", tbProp={6,1,4804,1,0,0},nCount = 1,nBindState = -2},	
	--	{szName="MT 180", tbProp={6,1,4875,1,0,0},nCount = 1,nBindState = -2},	
		
		{szName="Hµnh HiÖp Ký", tbProp={6,1,4875,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
		{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4832,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
		{szName="Phi phong Ngù Phong",tbProp={0,6036},nQuality=1,nCount=1},

		
	}
--	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
--	local nillVar = 0
--	if IsClone ~= "" then 
--		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
--	end
	if CalcFreeItemCellCount() >= 40 then
		for k=1,getn(CodeTanThuGift) do
			if nVar == CodeTanThuGift[k][1] then
		--	Msg2Player("---"..GetTask(3902).."----------------------------"); 
				--if GetTask(3902)>9 then 
				--server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			--	server_savedata(tbKandy.szFile);
			--	Msg2Player("---"..GetTask(3902).."--"); 
					--	end
				SetTask(3901, 1) 
				--SetTask(3902, GetTask(3902)+1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				--local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,60*24) SyncItem(Index)
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 30 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;
-----------------------------------------------------------------------------------------------------------
-- function moruong()
	-- if CalcEquiproomItemCount(4,417,1,-1)>=40 then 
		-- ConsumeEquiproomItem(40,4,417,1,-1);
		-- OpenStoreBox(1);
		-- OpenStoreBox(2);
		-- OpenStoreBox(3);
		-- SaveNow();
	-- else
		-- Talk(1,"no","<color=red>B¹n kh«ng ®ñ 40 Xu.")	
	-- end
-- end



function moruong()
local szTitle = "<color=orange>§¹i hiÖp muèn më réng r­¬ng nµo<color>.<enter><color=yellow><pic=104><color> "
	local tbOpt =
	{
		{"Ta muèn më réng r­¬ng 1 ( 300 xu )", moruong1},
		{"Ta muèn më réng r­¬ng 2 ( 500 xu )", moruong2},
        {"Ta muèn më réng r­¬ng 3 ( 500 xu )", moruong3},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function moruong1()
	local nCount = CalcEquiproomItemCount(4,417,1,-1)
	if nCount < 300 then
		Say("<color=green>CÇn 300 tiÒn ®ång míi më ®­îc r­¬ng <color>1",0)
		return
	end
	ConsumeEquiproomItem(300,4,417,1,1)	
	OpenStoreBox(1)
end

function moruong2()
	local nCount = CalcEquiproomItemCount(4,417,1,-1)
	if nCount < 500 then
		Say("<color=green>CÇn 500 tiÒn ®ång míi më ®­îc r­¬ng <color>2",0)
		return
	end
	ConsumeEquiproomItem(500,4,417,1,1)
	OpenStoreBox(2)
end

function moruong3()
	local nCount = CalcEquiproomItemCount(4,417,1,-1)
	if nCount < 500 then
		Say("<color=green>CÇn 500 tiÒn ®ång míi më ®­îc r­¬ng <color>3",0)
		return
	end
	ConsumeEquiproomItem(500,4,417,1,1)
	OpenStoreBox(3)
end





function MenuChuyen()
AddItem(6,1,1670,1,1,0,0)
ChuyenPhaiMenu()
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function nhanvonglh()
	local th = GetSkillState(1546)
	if th >= 1 then Say("B¹n ®ang cã vßng s¸ng Th­¬ng H«ng råi") return end
	local lh = GetSkillState(1547)
	if lh >= 1 then Say("B¹n ®ang cã vßng s¸ng Lang H¹o råi") return end
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("B¹n ®ang cã vßng s¸ng TriÔu m¶nh råi") return end


	if GetTask(4100) == 0   then
			local ntime = 18*60*60*24*6
			local n_title = 255	
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
			PlayerFunLib:AddSkillState(1547,1,3,18*60*60*24*6,1)
			SetTask(4100,1)
	
	else
		Say("B¹n ®· nhËn råi")
		return
	end
end

tbKandy_sp = {}
tbKandy_sp.szFile = "\\dulieu\\checkcodenew2.dat"
server_loadfile(tbKandy_sp.szFile)

function phanthuongcodenewsuper()
--Msg2Player("---"..GetTask(3905).."----------------------------"); 
	if GetTask(3906) == 0 or GetTask(3906) == 1 or GetTask(3906) == 2 or GetTask(3906) == 3 then
		AskClientForString("CODEVIPLIKE_SP","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a11")
	end
end
function CODEVIPLIKE_SP(nVar)

	local IsClone = server_getdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
		end
	if CalcFreeItemCellCount() >= 10 then
		for k=1,getn(CodeVipShare_sp) do
			if nVar == CodeVipShare_sp[k][1] then

				SetTask(3906, 4) 
			--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
			tbAwardTemplet:GiveAwardByList({{szName = "Xu khãa",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Kim Bµi LÔ Hép",tbProp={6,1,4874,1,1},nCount=50,nBindState = -2,nExpiredTime=15*24*60},}, "test", 1);
			PlayerFunLib:AddSkillState(1531,1,3,18*60*60*24*7,1)
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode Super VIP Like Share Bµi ViÕt")
				server_setdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			server_savedata(tbKandy_sp.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 10 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;
----------------------------------------------------T¨ng §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------------------------
function TangDiem()
	local tbOpt = {
		{"T¨ng §iÓm TiÒm N¨ng.", add_prop},
		{"T¨ng §iÓm Kü N¨ng.", Tangdiem_kynang},
		{"Th«i Ta Kh«ng CÇn N÷a",},
	}
	CreateNewSayEx("<npc>Xin Mêi "..myplayersex().." Chän Chøc N¨ng Hç Trî", tbOpt)
end

function add_prop()
	local tbOpt = 
	{
		{"T¨ng søc m¹nh.", add_prop_str},
		{"T¨ng th©n ph¸p.", add_prop_dex},
		{"T¨ng sinh khÝ.", add_prop_vit},
		{"T¨ng néi c«ng.", add_prop_eng},
		{"Trë l¹i.", dialog_main},
		{"Tho¸t."}
	}
	CreateNewSayEx("<npc>Xin mêi chän tiÒm n¨ng cÇn t¨ng !", tbOpt)
end
function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khÝ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end
----------------------------------------------------------------------------T¨ng §iÓm Kü N¨ng---------------------------------------------------------------------
tb_skill_add = {    [0] = { --thiÕu l©m
        [1] = {10,14,4,6,8,15,16,20,11,19,271,21,273},
        [2] = {"ThiÕu L©m QuyÒn","QuyÒn Ph¸p",14,8,271,273},
        [3] = {"ThiÕu L©m §ao","§ao Ph¸p",6,19,273},
        [4] = {"ThiÕu L©m C«n","C«n Ph¸p",10,4,11,273},
    },
    [1] = { --thiªn v­¬ng
        [1] = {29,30,34,23,24,26,33,31,35,3740,42,32,36,41,324},
        [2] = {"Thiªn V­¬ng Th­¬ng","Th­¬ng Ph¸p",30,23,35,41,36},
        [3] = {"Thiªn V­¬ng Chïy","Chïy Ph¸p",29,26,31,324,36},
        [4] = {"Thiªn V­¬ng §ao","§ao Ph¸p",34,24,32,37,36},
    },
    [2] = { --®­êng m«n
        [1] = {45,43,347,303,47,50,54,343,345,349,48,58,249,341},
        [2] = {"§­êng M«n - Phi Tiªu","Phi Tiªu ThuËt",45,43,47,341,48},
        [3] = {"§­êng M«n - Phi §ao","Phi §ao ThuËt",45,43,50,249,48},
        [4] = {"§­êng M«n - Tô TiÔn","Tô TiÔn ThuËt",45,43,54,58,48},
        [5] = {"§­êng M«n - BÉy","H·m TÜnh ThuËt",303,347,343,349,345,48},
    },
    [3] = { --ngò ®éc
        [1] = {63,65,60,62,67,66,70,64,68,69,384,73,356,72,71,74,75},
        [2] = {"Ngò §éc §ao","§ao Ph¸p",65,60,384,74,75},
        [3] = {"Ngò §éc Ch­ëng","Ch­ëng Ph¸p",63,62,68,71,75},
        [4] = {"Ngò §éc Bïa","Bïa Chó",67,70,64,356,72,75},
    },
    [4] = { --nga mi
        [1] = {80,85,77,79,93,82,89,385,86,92,88,91,252,282},
        [2] = {"Nga Mi KiÕm","KiÕm Ph¸p",85,77,385,88,252},
        [3] = {"Nga Mi Ch­ëng","Ch­ëng Ph¸p",80,79,82,91,252},
        [4] = {"Nga Mi Phô Trî","Phô Trî",93,89,86,92,282,252},
    },
    [5] = { --thóy yªn
        [1] = {99,102,95,97,269,105,113,100,109,108,111,114},
        [2] = {"Thóy Yªn §ao","§ao Ph¸p",99,95,105,109,108,114},
        [3] = {"Thóy Yªn Song §ao","Ch­ëng Ph¸p",102,97,113,111, 114},
    },
    [6] = { --c¸i bang
        [1] = {119,122,115,116,129,124,274,277,125,128,130,360},
        [2] = {"C¸i Bang Bæng","Bæng Ph¸p",119,115,124,125,360,130},
        [3] = {"C¸i Bang Rång","Ch­ëng Ph¸p",122,116,274,128,360,130},
    },
    [7] = { --thiªn nhÉn
        [1] = {135,145,131,132,136,137,138,140,141,364,143,142,148,150},
        [2] = {"Thiªn NhÉn M©u","M©u Ph¸p",135,132,141,142,150},
        [3] = {"Thiªn NhÉn §ao Ph¸p","§ao Ph¸p",145,131,138,148,150},
        [4] = {"Thiªn NhÉn Bïa","Bïa Chó",136,137,140,364,143,150},
    },
    [8] = { --vâ ®ang
        [1] = {153,155,151,152,159,158,164,160,157,165,166,267},
        [2] = {"Vâ §ang KiÕm","KiÕm Ph¸p",155,151,158,267,166},
        [3] = {"Vâ §ang KhÝ","QuyÒn Ph¸p",153,152,164,165,166},
    },
    [9] = { --c«n l«n
        [1] = {169,179,167,168,171,392,174,172,173,178,393,175,181,90,176,182,275,630},
        [2] = {"C«n L«n §ao","§ao Ph¸p",169,167,178,176,275},
        [3] = {"C«n L«n KiÕm","KiÕm Ph¸p",179,168,172,182,275},
        [4] = {"C«n L«n Bïa","Bïa Chó",392,174,393,175,90,275},
    },
    [10] = { --Hoa s¬n
        [1] = {1347,1350,1349,1374,1375,1372,1351,1376,1354,1378,1355,1379,1358,1380,1360},
        [2] = {"Hoa S¬n KiÕm","KiÕm Ph¸p",1347,1351,1355,1360,1358},
        [3] = {"Hoa S¬n KhÝ","Ch­ëng ph¸p",1372,1376,1380,1358},
	[4] = {"KiÕm Ph¸p Hç Trî","Hç Trî",1350,1374,1349,1375,1354,1379,1378,1358},
    },
    [11] = { --Vò Hån
        [1] = {1963,1964,1965,1971,1972,1974,1975,1976,1977,1979,1980,1981,1982},
        [2] = {"Vò Hån ThuÉn","ThuÉn Ph¸p",1964,1971,1975,1977,1981},
        [3] = {"Vò Hån §ao","§ao Ph¸p",1963,1965,1972,1974,1976,1979,1980,1982},
    },
}
NpcName = "<color=yellow>Hç Trî:<color><bclr=blue>Céng §iÓm Kü N¨ng<color>"
function Tangdiem_kynang()
    local nFaction = GetLastFactionNumber()
    local tab_Content = {
        "Céng ®iÓm kü n¨ng/#add_magic("..nFaction..")",
        "Tho¸t./Quit",
    }
    Say(NpcName, getn(tab_Content), tab_Content);
end

function add_magic(nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch­a Gia NhËp Ph¸i"
    elseif nFaction == 0 then
        nMonPhai = "ThiÕu L©m"
    elseif nFaction == 1 then
        nMonPhai = "Thiªn V­¬ng"
    elseif nFaction == 2 then
        nMonPhai = "§­êng M«n"
    elseif nFaction == 3 then
        nMonPhai = "Ngò §éc"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Thóy Yªn"
    elseif nFaction == 6 then
        nMonPhai = "C¸i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thiªn NhÉn"
    elseif nFaction == 8 then
        nMonPhai = "Vâ §ang"
    elseif nFaction == 9 then
        nMonPhai = "C«n L«n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S¬n"
    elseif nFaction == 11 then
        nMonPhai = "Vò Hån"
    end
    if GetLevel()< 90 or nFaction < 0 then
        local tab_Content = {
        "Quay l¹i/main",
        "Tho¸t/Quit",
        }
        Say(NpcName.."Nh©n vËt ®¹t ®¼ng cÊp 90 trë lªn ®· gia nhËp m«n ph¸i míi cã thÓ sö dông chøc n¨ng nµy.", getn(tab_Content),tab_Content);
    return
    end
    local tab_Content = {
    "Céng theo tõng kü n¨ng/#Add_PointMagic(1,"..nFaction..")",
    "Céng theo h­íng luyÖn c«ng/#Add_PointMagic(2,"..nFaction..")",
    "Céng toµn bé kü n¨ng lªn cÊp cao nhÊt./#Add_PointMagic(3,"..nFaction..")",
    "Quay l¹i/main",
    "Tho¸t/Quit",
    }
    Say(NpcName.."Ng­¬i ®· gia nhËp m«n ph¸i <color=yellow>"..nMonPhai.."<color>, ng­¬i muèn céng kü n¨ng thÕ nµo?", getn(tab_Content),tab_Content);
end
function Add_PointMagic(nId,nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch­a Gia NhËp Ph¸i"
    elseif nFaction == 0 then
        nMonPhai = "ThiÕu L©m"
    elseif nFaction == 1 then
        nMonPhai = "Thiªn V­¬ng"
    elseif nFaction == 2 then
        nMonPhai = "§­êng M«n"
    elseif nFaction == 3 then
        nMonPhai = "Ngò §éc"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Thóy Yªn"
    elseif nFaction == 6 then
        nMonPhai = "C¸i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thiªn NhÉn"
    elseif nFaction == 8 then
        nMonPhai = "Vâ §ang"
    elseif nFaction == 9 then
        nMonPhai = "C«n L«n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S¬n"
    elseif nFaction == 11 then
        nMonPhai = "Vò Hån"
    end
    if nId == 1 then
        local tb_Desc = {}; 
        for i = 1, getn(tb_skill_add[nFaction][1]) do
            local skillcur = HaveMagic(tb_skill_add[nFaction][1][i]);
            local skillmax = GetSkillMaxLevel(tb_skill_add[nFaction][1][i]) + GetSkillMaxLevelAddons()
            if skillcur >= 0 and skillcur < skillmax then
                local nPointAdd = skillmax - skillcur
                tinsert(tb_Desc, format("Th¨ng cÊp ".."%s".."[Max: ".."%s".."]/#Add_PointMagic_Type1(%d,%d,%d,%d,%d)", GetSkillName(tb_skill_add[nFaction][1][i]),skillmax, tb_skill_add[nFaction][1][i],nPointAdd,nFaction,i,skillmax)); 
            end
        end
        tinsert(tb_Desc, 1,NpcName.."Lùa chän kü n¨ng th¨ng cÊp"); 
        tinsert(tb_Desc,"Quay l¹i/#add_magic("..nFaction..")"); 
        tinsert(tb_Desc,"Tho¸t/OnCancel"); 
        CreateTaskSay(tb_Desc); 
    elseif nId == 2 then
        local HuongLC = getn(tb_skill_add[nFaction])-1
        local TongSkill1 = 0
        local TongSkill2 = 0
        for i=3,getn(tb_skill_add[nFaction][2]) do
            TongSkill1 = TongSkill1 + GetSkillMaxLevel(tb_skill_add[nFaction][2][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][2][i]);
        end
        for i=3,getn(tb_skill_add[nFaction][3]) do
            TongSkill2 = TongSkill2 + GetSkillMaxLevel(tb_skill_add[nFaction][3][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][3][i]);
        end
        if HuongLC == 2 then
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "..tb_skill_add[nFaction][2][2].." vµ "..tb_skill_add[nFaction][3][2]..".<enter>"..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.",getn(tab_Content),tab_Content);
        elseif HuongLC == 3 then
            --local TongSkill3 = (    (getn(tb_skill_add[nFaction][4])-3)*20+30    ) + (getn(tb_skill_add[nFaction][4])-2)*GetSkillMaxLevelAddons()
            local TongSkill3 = 0
            for i=3,getn(tb_skill_add[nFaction][4]) do
                TongSkill3 = TongSkill3 + GetSkillMaxLevel(tb_skill_add[nFaction][4][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][4][i]);
            end
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Céng theo "..tb_skill_add[nFaction][4][2]..", cÇn tæng céng ["..TongSkill3.."] ®iÓm Kü N¨ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..".vµ "..tb_skill_add[nFaction][4][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao gåm "..(getn(tb_skill_add[nFaction][4])-2).." Kü N¨ng.",
            getn(tab_Content),tab_Content
            );
        elseif HuongLC == 4 then
            --local TongSkill3 = (    (getn(tb_skill_add[nFaction][4])-3)*20+30    ) + (getn(tb_skill_add[nFaction][4])-2)*GetSkillMaxLevelAddons()
            --local TongSkill4 = (    (getn(tb_skill_add[nFaction][5])-3)*20+30    ) + (getn(tb_skill_add[nFaction][5])-2)*GetSkillMaxLevelAddons()
            local TongSkill3 = 0
            local TongSkill4 = 0
            for i=3,getn(tb_skill_add[nFaction][4]) do
                TongSkill3 = TongSkill3 + GetSkillMaxLevel(tb_skill_add[nFaction][4][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][4][i]);
            end
            for i=3,getn(tb_skill_add[nFaction][5]) do
                TongSkill4 = TongSkill4 + GetSkillMaxLevel(tb_skill_add[nFaction][5][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][5][i]);
            end
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Céng theo "..tb_skill_add[nFaction][4][2]..", cÇn tæng céng ["..TongSkill3.."] ®iÓm Kü N¨ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "Céng theo "..tb_skill_add[nFaction][5][2]..", cÇn tæng céng ["..TongSkill4.."] ®iÓm Kü N¨ng/#AddHuongLC(5,"..nFaction..","..TongSkill4..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..", "..tb_skill_add[nFaction][4][2].." vµ "..tb_skill_add[nFaction][5][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao gåm "..(getn(tb_skill_add[nFaction][4])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][5][2].." bao gåm "..(getn(tb_skill_add[nFaction][5])-2).." Kü N¨ng.",
            getn(tab_Content),tab_Content
            );
        end
    elseif nId == 3 then
        local nTongSoSkill = getn(tb_skill_add[nFaction][1])
        local nTongSoPoint_Need = 0
        local CheckFullSkill = 0
        for i=1,nTongSoSkill do
        local nSkillHienTai = HaveMagic(tb_skill_add[nFaction][1][i]);
            if nSkillHienTai >= 0 then
                CheckFullSkill = CheckFullSkill + 1
            end
        local nSkillToiDa = GetSkillMaxLevel(tb_skill_add[nFaction][1][i]) + GetSkillMaxLevelAddons()
        local nPointNeed = nSkillToiDa - nSkillHienTai
            nTongSoPoint_Need = nTongSoPoint_Need + nPointNeed
        end
        if CheckFullSkill < nTongSoSkill then --NÕu ch­a häc ®ñ skill
            local tab_Content = {
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."Ng­¬i lµ mét ®Ö tö cña ph¸i <color=yellow>"..nMonPhai.."<color>. M«n ph¸i cã tæng céng <color=green>"..nTongSoSkill.."<color> Kü n¨ng cã thÓ th¨ng cÊp. Ng­¬i míi chØ l·nh gi¸o ®­îc <color=green>"..CheckFullSkill.."<color> Kü n¨ng. H·y cè g¾ng tu luyÖn thªm, khi nµo ®Çy ®ñ <color=green>"..nTongSoSkill.."<color> Kü N¨ng míi cã thÓ sö dông chøc n¨ng nµy.", getn(tab_Content),tab_Content);
            return
        end
        if GetMagicPoint() < nTongSoPoint_Need then --NÕu sè ®iÓm yªu cÇu kh«ng ®ñ ®Ó céng.
            local tab_Content = {
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."Ng­¬i lµ mét ®Ö tö cña ph¸i <color=yellow>"..nMonPhai.."<color>. M«n ph¸i cã tæng céng <color=green>"..nTongSoSkill.."<color> Kü n¨ng, yªu cÇu ph¶i cã Ýt nhÊt <color=green>"..nTongSoPoint_Need.."<color> ®iÓm Kü N¨ng míi cã thÓ n©ng cÊp. H·y tu luyÖn thªm ®i.", getn(tab_Content),tab_Content);
            return
        end
        for i=1,nTongSoSkill do
            local nIdSkill = tb_skill_add[nFaction][1][i]
            local SkillCaoNhat = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons()
            local SkillPointNeed = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons() - HaveMagic(nIdSkill);
            AddMagic(nIdSkill,SkillCaoNhat)
            AddMagicPoint(-SkillPointNeed)
            Msg2Player("N©ng thµnh c«ng <color=yellow>"..GetSkillName(nIdSkill).."<color> lªn cÊp <color=green>"..SkillCaoNhat.."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
        end
    end
end

function AddHuongLC(nId,nFaction,nTotalSkillNeed)
    if GetMagicPoint() < nTotalSkillNeed then
        local tab_Content = {
        "Quay l¹i/#Add_PointMagic(2,"..nFaction..")",
        "Tho¸t/Quit",
        }
        Say(NpcName.."L­îng ®iÓm Kü N¨ng cßn l¹i kh«ng ®ñ ®Ó n©ng kü n¨ng theo h­íng <color=yellow>"..tb_skill_add[nFaction][nId][2].."<color>. CÇn tèi thiÓu "..nTotalSkillNeed.." ®iÓm kü n¨ng", getn(tab_Content),tab_Content);
        return
    end
    for i=3,getn(tb_skill_add[nFaction][nId]) do
        local Id_Skill = tb_skill_add[nFaction][nId][i]
        if HaveMagic(Id_Skill) < 0 then
            Msg2Player("Ch­a häc ®Çy ®ñ c¸c kÜ n¨ng ch­a sö dông ®­îc chøc n¨ng nµy.")
        return
        end
        local DiemCong = GetSkillMaxLevel(Id_Skill) - HaveMagic(Id_Skill);
        local TenSkill = GetSkillName(Id_Skill)
        local Skill_CaoNhat = GetSkillMaxLevel(Id_Skill) + GetSkillMaxLevelAddons()
        AddMagic(Id_Skill,Skill_CaoNhat)
        AddMagicPoint(-DiemCong)
        Msg2Player("N©ng thµnh c«ng <color=yellow>"..TenSkill.."<color> lªn cÊp <color=green>"..GetSkillMaxLevel(Id_Skill).."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
    end
end

function Add_PointMagic_Type1(nIdSkill,nPointAdd,nFaction,nViTri,nMaxSkill)
    local SkillName = GetSkillName(tb_skill_add[nFaction][1][nViTri])
    if GetMagicPoint() < nPointAdd then
        local tab_Content = {
        "Quay l¹i/#Add_PointMagic(1,"..nFaction..")",
        "Tho¸t/Quit",
        }
        Say(NpcName.."L­îng ®iÓm Kü N¨ng cßn l¹i kh«ng ®ñ ®Ó n©ng <color=yellow>"..SkillName.."<color> lªn cÊp <color=yellow>"..nMaxSkill.."<color>.", getn(tab_Content),tab_Content);
    else
        AddMagic(nIdSkill,nMaxSkill)
        AddMagicPoint(-nPointAdd)
        Msg2Player("N©ng thµnh c«ng <color=yellow>"..SkillName.."<color> lªn cÊp <color=green>"..nMaxSkill.."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
    end
end