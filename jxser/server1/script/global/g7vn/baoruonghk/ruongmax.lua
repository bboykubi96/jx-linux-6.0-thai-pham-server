Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")


function main()
dofile("script/global/g7vn/baoruonghk/ruongmax.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
sethkmp()
return 1; 	
end

function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u l�m quy�n/#AddHoangKim(541,545)",
		"Thi�u L�m c�n/#AddHoangKim(546,550)",
		"Thi�u L�m �ao/#AddHoangKim(551,555)",
		"Thi�n V��ng ch�y/#AddHoangKim(556,560)",
		"Thi�n V��ng th��ng/#AddHoangKim(561,565)",
		"Thi�n V��ng �ao/#AddHoangKim(566,570)",
		"Nga My ki�m/#AddHoangKim(571,575)",
		"Nga My ch��ng/#AddHoangKim(576,580)",
		"Nga My buff/#AddHoangKim(581,585)",
		"Th�y Y�n �ao/#AddHoangKim(586,590)",
		"Th�y Y�n song �ao/#AddHoangKim(591,595)",
		"Ng� ��c ch��ng/#AddHoangKim(596,600)",
		"Ng� ��c �ao/#AddHoangKim(601,605)",
		"Ng� ��c b�a/#AddHoangKim(606,610)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#AddHoangKim(611,615)",
		"���ng M�n t� ti�n/#AddHoangKim(616,620)",
		"���ng M�n phi ti�u/#AddHoangKim(621,625)",
		"���ng M�n b�y/#AddHoangKim(626,630)",
		"C�i Bang r�ng/#AddHoangKim(631,635)",
		"C�i Bang b�ng/#AddHoangKim(636,640)",
		"Thi�n Nh�n k�ch/#AddHoangKim(641,645)",
		"Thi�n Nh�n �ao/#AddHoangKim(651,655)",
		"Thi�n Nh�n b�a/#AddHoangKim(646,650)",
		"V� �ang kh� /#AddHoangKim(656,660)",
		"V� �ang ki�m/#AddHoangKim(661,665)",
		"C�n L�n �ao/#AddHoangKim(666,670)",
		"C�n L�n ki�m/#AddHoangKim(671,675)",
		"C�n L�n b�a/#AddHoangKim(676,680)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end



function AddHoangKim(x,y)
	if CalcFreeItemCellCount() < 4 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 4 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	for i=(x-1),(y-1) do
			AddGoldItem(0, i);
	end
	ConsumeEquiproomItem(1, 6,1, 4371,-1)
end