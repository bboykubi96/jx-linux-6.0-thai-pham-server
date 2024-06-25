Include("\\script\\lib\\awardtemplet.lua")

tbPirateBoxNewAward = 
{	
}

day=3
function main()
dofile("script/global/g7vn/baoruonghanche/baoruongluachon3ngay_max.lua")
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
"Méng Long Tö Kim B¸t Nh· Giíi/#addhkmp(686)",
"Phôc Ma V« L­îng Kim Cang UyÓn/#addhkmp(687)",
"Tø Kh«ng §¹t Ma T¨ng Hµi/#addhkmp(688)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmptv1()

local tbSay = {
"Ngù Long TÊn Phong Ph¸t C¬/#addhkmp(689)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpnm1()

local tbSay = {
"V« Gian Thanh Phong NhuyÔn KÞch/#addhkmp(690)",
"V« YÓm Thu Thñy L­u Quang §¸i/#addhkmp(691)",
"V« TrÇn TÞnh ¶nh L­u T«/#addhkmp(692)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpty1()

local tbSay = {
"Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu/#addhkmp(693)",
"BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n/#addhkmp(694)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpnd1()

local tbSay = {
"Minh Hoan Song Hoµn Xµ KhÊu/#addhkmp(695)",
"Chó Phäc Trïng Cèt Ngäc Béi/#addhkmp(696)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpdm1()

local tbSay = {
"Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa/#addhkmp(697)",
"§Þa Ph¸ch Phong Hµn Thóc Yªu/#addhkmp(698)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpcb1()

local tbSay = {
"§ång Cõu Ngù Long Ngäc Béi/#addhkmp(699)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end
function hkmptn1()

local tbSay = {
"Ma S¸t Cö Háa Liªu Thiªn Hoµn/#addhkmp(700)",
"Ma Hoµng Dung Kim §o¹n NhËt Giíi/#addhkmp(701)",
"Ma ThÞ LÖ Ma PhÖ T©m §¸i/#addhkmp(702)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpcl1()

local tbSay = {
"S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu/#addhkmp(705)",
"L«i Khung Linh Ngäc Èn L«i UyÓn/#addhkmp(706)",
"Vô Hoan Th¸i Uyªn Ch©n Vò Liªn/#addhkmp(707)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmpvd1()

local tbSay = {
"L¨ng Nh¹c V« Ng· Thóc §¸i/#addhkmp(703)",
"CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn/#addhkmp(704)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end
function addhkmp(idgold)
if 	ConsumeEquiproomItem(1, 6,1, 4458,-1)>0 then
		local Index = AddGoldItem(0,idgold) ITEM_SetExpiredTime(Index,day*24*60) SetItemBindState(Index,-2) SyncItem(Index) 
	end
end