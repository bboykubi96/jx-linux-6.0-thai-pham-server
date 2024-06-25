Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")


function main()
dofile("script/global/g7vn/baoruonghk/ruongmax.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
sethkmp()
return 1; 	
end

function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu l©m quyÒn/#AddHoangKim(541,545)",
		"ThiÕu L©m c«n/#AddHoangKim(546,550)",
		"ThiÕu L©m ®ao/#AddHoangKim(551,555)",
		"Thiªn V­¬ng chïy/#AddHoangKim(556,560)",
		"Thiªn V­¬ng th­¬ng/#AddHoangKim(561,565)",
		"Thiªn V­¬ng ®ao/#AddHoangKim(566,570)",
		"Nga My kiÕm/#AddHoangKim(571,575)",
		"Nga My ch­ëng/#AddHoangKim(576,580)",
		"Nga My buff/#AddHoangKim(581,585)",
		"Thóy Yªn ®ao/#AddHoangKim(586,590)",
		"Thóy Yªn song ®ao/#AddHoangKim(591,595)",
		"Ngñ §éc ch­ëng/#AddHoangKim(596,600)",
		"Ngñ §éc ®ao/#AddHoangKim(601,605)",
		"Ngñ §éc bïa/#AddHoangKim(606,610)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#AddHoangKim(611,615)",
		"§­êng M«n tô tiÔn/#AddHoangKim(616,620)",
		"§­êng M«n phi tiªu/#AddHoangKim(621,625)",
		"§­êng M«n bÉy/#AddHoangKim(626,630)",
		"C¸i Bang rång/#AddHoangKim(631,635)",
		"C¸i Bang bæng/#AddHoangKim(636,640)",
		"Thiªn NhÉn kÝch/#AddHoangKim(641,645)",
		"Thiªn NhÉn ®ao/#AddHoangKim(651,655)",
		"Thiªn NhÉn bïa/#AddHoangKim(646,650)",
		"Vâ §ang khÝ /#AddHoangKim(656,660)",
		"Vâ §ang kiÕm/#AddHoangKim(661,665)",
		"C«n L«n ®ao/#AddHoangKim(666,670)",
		"C«n L«n kiÕm/#AddHoangKim(671,675)",
		"C«n L«n bïa/#AddHoangKim(676,680)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end



function AddHoangKim(x,y)
	if CalcFreeItemCellCount() < 4 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 4 « trèng råi h·y më.",0);
		return 1;
	end
	for i=(x-1),(y-1) do
			AddGoldItem(0, i);
	end
	ConsumeEquiproomItem(1, 6,1, 4371,-1)
end