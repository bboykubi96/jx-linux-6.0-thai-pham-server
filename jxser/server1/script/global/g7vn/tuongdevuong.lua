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

local tbGMAccount = {"admingm","kimluyen2002","admin99","boquyx123","","",""} TENADMIN ={{"ADMINBACHKIM",99},{"KIMLUYEN",99},{"Game�Master",99},{"CuuTuoc",99},{"",99},{"",99},{"",99},{"",99}}


function main()
	
	dofile("script/global/g7vn/tuongdevuong.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan ngh�n m�i ng��i ��n v�i <color=yellow>http://vldevuong.com<color>"
	local Opt = 
	{
	
		{"Thu� �� V��ng H�ng Li�n (100 xu - 2 ti�ng)", devuonghanglien},
		{"Thu� �� V��ng Ch� Ho�n (100 xu - 2 ti�ng)", devuongchihoang},
		{"Thu� �� V��ng Gi�i Ch� (100 xu - 2 ti�ng)", devuonggioichi},
		{"Thu� �� V��ng Ng�c B�i (100 xu - 2 ti�ng)", devuongngocboi},
		{"K�t th�c ��i tho�i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
end
function devuonghanglien()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("H�nh trang kh�ng c� �� 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6234)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuongchihoang()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("H�nh trang kh�ng c� �� 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6235)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuonggioichi()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("H�nh trang kh�ng c� �� 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6237)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end
function devuongngocboi()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)<100 then
		Say("H�nh trang kh�ng c� �� 100 xu.")
		return
	end
	ConsumeEquiproomItem(100,4,417,1,1)
	local Index = AddGoldItem(0,6236)	 ITEM_SetExpiredTime(Index,2*60) SyncItem(Index)
end

