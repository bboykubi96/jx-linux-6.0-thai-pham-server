----------------***Heart*Doldly***-------------------------
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\log.lua")
-----------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------------------------------------
NHANTHUONG		 = 5981
NHANTHUONG7NGAY	 = 5983
HOANTHANHGHK		 = 5987;
MOCGHK=5982
NHANTHUONGLB=5700
MOCNHANTHUONGLB=5701

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function main()
dofile("script/update_feature/item/ttlenh.lua")
local szTitlezs = "<color=green>N¨ng §éng Mçi Ngµy Th¨ng CÊp Nhanh Cïng<color>\n<color=violet>* * * * * * * * * * <color=fire>Vâ L©m LÖnh<color> * * * * * * * * * *<color>\n<color=yellow>S¨n Boss S¸t Thñ - S¨n Boss Hoµng Kim - NhiÖm Vô VLMC\nChiÕn Tr­êng Tèng Kim - Viªm §Õ B¶o Tµng - V­ît ¶i\nKiÕm Gia Mª Cung - NhiÖm Vô B¾c §Èu - Phong L¨ng §é\nVËn Tiªu Thanh Thµnh - Qu¶ Hoµng Kim - Qu¶ Huy Hoµng\n§Êu Tr­êng Sinh Tö - Hé Tèng C«ng Chóa - §ua Ngùa\nLo¹n ChiÕn Cöu Ch©u - Thiªn Tr× MËt C¶nh - TÝn Sø\nL«i §µi C«ng B×nh Tö H×nh Thøc §Æt C­îc Xu - KNB - KV<color>"
	local tbOpt = {
			{"NhiÖm Vô T¨ng CÊp Giang Hå Ký",NhiemVuGianHoKy},
			--{"NhËn Th­ëng 7 Ngµy §Çu Tiªn",NhanTanThu},
			 {"Hç Trî NhËn Tµi L·nh §¹o",NhanTaiLanhDaoThem},
			--{"NhËn miÔn phÝ ChiÕn Cæ + LÖnh Bµi + Phi Tèc",NhanChienCo},
			--{"§æi Mµu PK",trangthai},
			{"Hñy VËt PhÈm",DisposeItem},
			{"Tho¸t",},
		}
		CreateNewSayEx(szTitlezs, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhiemVuGianHoKy()


local kimbaivuotai= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49087,-1)



	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Vi S¬n §¶o\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Viªm §Õ\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu},
			{"Tho¸t",},
		}
		
		--if GetTask(5969)<=2 then
		--tinsert(tbOpt, 1, {"Ta C¶i L·o 2 vµ ta muèn dïng Kim Bµi cò.", NhiemVuGianHoKy_cl2}) 
		--end
	CreateNewSayEx(szTitle, tbOpt)

end

function NhiemVuGianHoKy_cl2()


local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)



	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Vi S¬n §¶o\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Viªm §Õ\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu_cl2},
			{"Tho¸t",},
		}
		
	CreateNewSayEx(szTitle, tbOpt)

end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu()

local kimbaivuotai= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49087,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
			if ConsumeEquiproomItem(3, 6,1, 49082,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49083,-1)>0 and ConsumeEquiproomItem(2, 6,1, 49084,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49085,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 49086,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 49087,-1)>0 then
					if GetTask(5969)==3 then
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);		
					else
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);		
					end
					SetTask(HOANTHANHGHK,1)
					WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhËn "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu_cl2()

local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
		if ConsumeEquiproomItem(3, 6,1, 4868,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4869,-1)>0 and ConsumeEquiproomItem(2, 6,1, 4870,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4871,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 4872,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 4873,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);	
			SetTask(HOANTHANHGHK,1)
			WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Hoµn thµnh HHK(kb cò) nhËn 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end
---------------------------------------
function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x7 « trèng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi Vi S¬n ®¶o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			--{szName="MÆt N¹ Tong Kim",tbProp={0,11,447,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=10,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
						--if nWeekday==6 or nWeekday==0 then
							--tbAwardTemplet:GiveAwardByList(tbAward_cuoituan,"NhËn Th­ëng Thµnh C«ng")
						--	end
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		end

end

function NhanLBPT()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
		tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
	--	SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
--------------------------------------------------------------------------------

------------------------------------------------------------------------------------
function NhanChienCo()
if CalcFreeItemCellCount() < 30 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang 30 cho")
	end
local tbAwardcc={
{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 100,nBindState = -2},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 100,nBindState = -2},
{szName="HPhong V©n Phi Tèc hoµn", tbProp={6,1,190,1,0,0},nCount = 100,nBindState = -2},
{szName="Phong V©n Chiªu Binh LÖnh",tbProp={6,1,4897,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
-------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)	
		local nBindState = GetItemBindState(nItemIndex)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","§¹i hiÖp cã thÓ s¾p xÕp l¹i r­¬ng chøa ®å råi!")
		Msg2Player("§¹i hiÖp võa hñy vËt phÈm thµnh c«ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Hñy item khãa "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------