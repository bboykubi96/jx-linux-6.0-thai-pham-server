Include("\\script\\lib\\awardtemplet.lua")

tbPirateBoxNewAward = 
{	
}

day=7
function main()
dofile("script/global/g7vn/baoruonghanche/baoruongluachon7ngay.lua")
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return 1;
	end
Say("H·y Lùa Chän M«n Ph¸i Cña B¹n",7,"Nga Mi/hkmpnm1","Thóy Yªn/hkmpty1","§­êng M«n/hkmpdm1","Ngò §éc/hkmpnd1","Thiªn V­¬ng/hkmptv1","Trang Sau/GhepManhHKMP2","KÕt thóc ®èi tho¹i/no") 	
return 1;
end
function GhepManhHKMP2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl1","Vâ §ang/hkmpvd1","C«n L«n/hkmpcl1","Thiªn NhÉn/hkmptn1","C¸i Bang/hkmpcb1","Trang Tr­íc/main","KÕt thóc ®èi tho¹i/no") 
end

function hkmptl1()

local tbSay = {
"Méng Long Tö Kim B¸t Nh· Giíi/#addhkmp(769)",
"Phôc Ma V« L­îng Kim Cang UyÓn/#addhkmp(771)",
"Tø Kh«ng §¹t Ma T¨ng Hµi/#addhkmp(776)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmptv1()

local tbSay = {
"Ngù Long TÊn Phong Ph¸t C¬/#addhkmp(793)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpnm1()

local tbSay = {
"V« Gian Thanh Phong NhuyÔn KÞch/#addhkmp(796)",
"V« YÓm Thu Thñy L­u Quang §¸i/#addhkmp(801)",
"V« TrÇn TÞnh ¶nh L­u T«/#addhkmp(808)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpty1()

local tbSay = {
"Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu/#addhkmp(811)",
"BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n/#addhkmp(816)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpnd1()

local tbSay = {
"Minh Hoan Song Hoµn Xµ KhÊu/#addhkmp(829)",
"Chó Phäc Trïng Cèt Ngäc Béi/#addhkmp(834)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpdm1()

local tbSay = {
"Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa/#addhkmp(843)",
"§Þa Ph¸ch Phong Hµn Thóc Yªu/#addhkmp(854)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpcb1()

local tbSay = {
"§ång Cõu Ngù Long Ngäc Béi/#addhkmp(855)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end
function hkmptn1()

local tbSay = {
"Ma S¸t Cö Háa Liªu Thiªn Hoµn/#addhkmp(868)",
"Ma Hoµng Dung Kim §o¹n NhËt Giíi/#addhkmp(874)",
"Ma ThÞ LÖ Ma PhÖ T©m §¸i/#addhkmp(876)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpcl1()

local tbSay = {
"S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu/#addhkmp(891)",
"L«i Khung Linh Ngäc Èn L«i UyÓn/#addhkmp(898)",
"Vô Hoan Th¸i Uyªn Ch©n Vò Liªn/#addhkmp(901)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpvd1()

local tbSay = {
"L¨ng Nh¹c V« Ng· Thóc §¸i/#addhkmp(881)",
"CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn/#addhkmp(888)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end
function addhkmp(idgold)
		ConsumeEquiproomItem(1, 6,1, 4369,-1)
		local Index = AddGoldItem(0,idgold) ITEM_SetExpiredTime(Index,day*24*60) SyncItem(Index)
end