IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\tieungao\\huyvatpham.lua")
Include("\\script\\global\\g7vn\\hotrotinhnang.lua")
Include("\\script\\global\\g7vn\\npctanthu.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")

local tbGMAccount = {"admingm","kimluyen2002","admin99","boquyx123","","",""} TENADMIN ={{"ADMINBACHKIM",99},{"KIMLUYEN",99},{"GameÙMaster",99},{"CuuTuoc",99},{"",99},{"",99},{"",99},{"",99}}


function main()
	
	dofile("script/global/g7vn/tuongdevuong.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªn mäi ng­êi ®Õn víi <color=yellow>http://vldevuong.com<color>"
	local Opt = 
	{
	
		{"Thuª §Õ V­¬ng H¹ng Liªn (100 xu - 2 tiÕng)", devuonghanglien},
		{"Thuª §Õ V­¬ng ChØ Hoµn (100 xu - 2 tiÕng)", devuongchihoang},
		{"Thuª §Õ V­¬ng Giíi ChØ (100 xu - 2 tiÕng)", devuonggioichi},
		{"Thuª §Õ V­¬ng Ngäc Béi (100 xu - 2 tiÕng)", devuongngocboi},
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
end
function devuonghanglien()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("Hµnh trang kh«ng cã ®ñ 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6234)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuongchihoang()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("Hµnh trang kh«ng cã ®ñ 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6235)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuonggioichi()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("Hµnh trang kh«ng cã ®ñ 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6237)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuongngocboi()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("Hµnh trang kh«ng cã ®ñ 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6236)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end

