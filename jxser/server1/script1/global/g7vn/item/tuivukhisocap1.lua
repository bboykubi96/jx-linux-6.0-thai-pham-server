Include("\\script\\lib\\awardtemplet.lua")

IDRuong=4467

function main(nIndexItem)

	dofile("script/global/g7vn/item/tuivukhisocap1.lua")
	--do Say("T?th? t? T? th?ch? s?? d?c") return end
nhanvukhitrang()
return 1
end
function nhanvukhitrang()
if CalcFreeItemCellCount()<20 then
	Say("H�nh trang kh�ng �� 20 � tr�ng")
	return
end
local tbSay = {
"Ki�m./kiem",
"�ao./dao",
"B�ng./bong",
"Th��ng./thuong",
"Chu�./chuy",
"Song �ao./songdao",
"Ti�u./tieu",
"Phi �ao./phidao",
"T� Ti�n./tutien",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)

end
function kiem()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	local Index = AddItem(0, 0, 0, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function dao()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 0, 1, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function bong()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 0, 2, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function thuong()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 0, 3, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function chuy()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 0, 4, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function songdao()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 0, 5, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function tieu()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 1, 0, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function phidao()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 1, 1, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end
function tutien()
	if CalcEquiproomItemCount(6,1,IDRuong,-1)<1 then
		return
	end
	ConsumeEquiproomItem(1,6,1,IDRuong,-1)
	 local Index = AddItem(0, 1, 2, 5, random(0,4), 0, 0)  SyncItem(Index) SetItemBindState(Index, -2)
end



