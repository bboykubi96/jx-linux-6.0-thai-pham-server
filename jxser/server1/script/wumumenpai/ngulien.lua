Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function main()
dofile("script/wumumenpai/ngulien.lua")
local UTask_wh = GetTask(12)
	if (UTask_wh == 10*256 and GetLevel() >= 10) then
		Say("Ngò Liªn: HiÖp SÜ §Õn Bæn §­êng Cã ChuyÖn G× Kh«ng",3,"Ta CÇn Gióp §ì/TimHieuMonPhai","Ta Cã ViÖc Kh¸c/nv1x1","KÕt Thóc §èi Tho¹i/No")
	elseif (UTask_wh == 30*256 and GetLevel() >= 10) then
		Say("Ngò Liªn: HiÖp SÜ §Õn Bæn §­êng Cã ChuyÖn G× Kh«ng",3,"Ta CÇn Gióp §ì/TimHieuMonPhai","Ta Cã ViÖc Kh¸c/nv1x3","KÕt Thóc §èi Tho¹i/No")
	else
		Say("Ngò Liªn: HiÖp SÜ §Õn Bæn §­êng Cã ChuyÖn G× Kh«ng",3,"Ta CÇn Gióp §ì/TimHieuMonPhai","KÕt Thóc §èi Tho¹i/No")
	end
end

function nv1x1()
	Say("Ngò Liªn: Chµo Mõng Gia NhËp Bæn §­êng, §©y Lµ TÕ PhÈm, H·y CÇm LÊy §i B¸i TÕ Nh¹c Phi T­íng Qu©n!",3,"Ta §i Ngµy/nv1x2","Ta Cã ViÖc Kh¸c Ph¶i Lµm/No")
end

function nv1x2()
	if (CalcEquiproomItemCount(6,1,4307,1) == 0) then
		local nIndex = AddItem(6,1,4307,1,0,0) SetItemBindState(nIndex, -2) SetTask(12,20*256) NewWorld(989, 1648, 3024)
	else
		NewWorld(989, 1648, 3024)
	end
end

function nv1x3()
AddMagic(1849)
AddMagic(1850)
SetRank(91)
SetTask(12,40*256)
Msg2Player("Chóc Mõng §¹i HiÖp §· Hoµn Thµnh NhiÖm Vô B¸i TÕ Nh¹c Phi Häc §­îc Vâ C«ng Vò Hån §ao Ph¸p Vµ Vò Hån ThuÉn Ph¸p §­îc Phong Lµ Trung Qu©n!")
end

function TimHieuMonPhai()
	Say("Ngò Liªn: Th× Ra Lµ S­ §iÖp, CÇn Gióp G× Kh«ng",3,"T×m HiÓu §ång M«n/TimDongMon","T×m HiÓu NhiÖm Vô M«n Ph¸i/TimHieuNhiemVu","KÕt Thóc §èi Tho¹i/No")
end

function TimDongMon()
Say("Ngò Liªn: Ng­¬i Muèn T×m Ai",14,
	"Ta BiÕt Råi/No","T×m Nh¹c L«i/#TimViTriNpc(1)",
	"T×m Ng­u Th«ng/#TimViTriNpc(2)",
	"T×m Hµn Th­îng §øc/#TimViTriNpc(3)",
	"T×m Thi Phong/#TimViTriNpc(4)",
	"T×m Thang Anh/#TimViTriNpc(5)",
	"Hµn Khëi Ph­îng/#TimViTriNpc(6)",
	"T×m Nh¹c §×nh/#TimViTriNpc(7)",
	"T×m C¸t Khang/#TimViTriNpc(8)",
	"T×m Th­ NhuÖ/#TimViTriNpc(9)",
	"T×m Y S­/#TimViTriNpc(10)",
	"T×m D­ §¹i Chïy/#TimViTriNpc(11)",
	"T×m Nh¹c NhÞ N­¬ng/#TimViTriNpc(12)")
end

function TimViTriNpc(NpcPos)
	if (NpcPos == 1) then
		Say("<color=yellow>Nh¹c L«i:<color>\n<color=red>VÞ TrÝ Tr­íc Trung Dòng §­êng Täa §é: 211,190!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(1)")
	elseif (NpcPos == 2) then
		Say("<color=yellow>Ng­u Th«ng:<color>\n<color=red>VÞ TrÝ Tr­íc Trung Dòng §­êng Täa §é: 210,190!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(2)")
	elseif (NpcPos == 3) then
		Say("<color=yellow>Hµn Th­îng §øc:<color>\n<color=red>VÞ TrÝ Tr­íc Trung Dòng §­êng Täa §é: 211,191!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(3)")
	elseif (NpcPos == 4) then
		Say("<color=yellow>Thi Phong:<color>\n<color=red>T¹c Dông NhiÖm Vô Täa §é: 218,203!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(4)")
	elseif (NpcPos == 5) then
		Say("<color=yellow>Thang Anh:<color>\n<color=red>VÞ TrÝ Giíi §­êng Täa §é: 211,199!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(5)")
	elseif (NpcPos == 6) then
		Say("<color=yellow>Hµn Khëi Ph­îng:<color>\n<color=red>VÞ TrÝ Bµn Long §µi Täa §é: 200,188!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(6)")
	elseif (NpcPos == 7) then
		Say("<color=yellow>Nh¹c §×nh:<color>\n<color=red>VÞ TrÝ Bµn Long §µi Täa §é: 199,187!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(7)")
	elseif (NpcPos == 8) then
		Say("<color=yellow>C¸t Khang:<color>\n<color=red>VÞ TrÝ Cù T­îng §µi Täa §é: 190,202!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(8)")
	elseif (NpcPos == 9) then
		Say("<color=yellow>Th­ NhuÖ:<color>\n<color=red>VÞ TrÝ Cù T­îng §µi Täa §é: 190,202!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(9)")
	elseif (NpcPos == 10) then
		Say("<color=yellow>Y S­:<color>\n<color=red>VÞ TrÝ Giíi §­êng Täa §é: 223,200!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(10)")
	elseif (NpcPos == 11) then
		Say("<color=yellow>D­ §¹i Chïy:<color>\n<color=red>VÞ TiÖm Binh KhÝ Täa §é: 226,202!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(11)")
	elseif (NpcPos == 12) then
		Say("<color=yellow>Nh¹c NhÞ N­¬ng:<color>\n<color=red>VÞ TiÖm Trang BÞ Täa §é: 208,206!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(12)")
	end
end

function TimHieuNhiemVu()
Say("Ngò Liªn: Ng­¬i Muèn T×m HiÓu NhiÖm Vô Nµo",10,
	"Ta BiÕt Råi/No",
	"NhiÖm Vô CÊp 10 Vò Hån §­êng/#NhiemVuMonPhai(1)",
	"NhiÖm Vô CÊp 20 Vò Hån §­êng/#NhiemVuMonPhai(2)",
	"NhiÖm Vô CÊp 30 Vò Hån §­êng/#NhiemVuMonPhai(3)",
	"NhiÖm Vô CÊp 40 Vò Hån §­êng/#NhiemVuMonPhai(4)",
	"NhiÖm Vô CÊp 50 Vò Hån §­êng/#NhiemVuMonPhai(5)",
	"NhiÖm Vô XuÊt S­ Vò Hån §­êng/#NhiemVuMonPhai(6)",
	"NhiÖm Vô Trïng Ph¶n S­ M«n Vò Hån §­êng/#NhiemVuMonPhai(7)",
	"NhiÖm Vô Ký Danh §Ö Tö Vò Hån §­êng/#NhiemVuMonPhai(8)",
	"NhiÖm Vô CÊp 90 Vò Hån §­êng/#NhiemVuMonPhai(9)")
end

function NhiemVuMonPhai(nNV)
	if (nNV == 1) then
		Say("<color=yellow>NhiÖm Vô CÊp 10 TÕ B¸i Anh Hån:<color>\n<color=red>§èi Tho¹i Ngò Liªn TiÕp NhËn NhiÖm Vô B¸i TÕ Nh¹c Phi!<color>")
	elseif (nNV == 2) then
		Say("<color=yellow>NhiÖm Vô CÊp 20 Trõ Gian DiÖt ¸c:<color>\n<color=red>§èi Tho¹i C¸t Khang HoÆc Th­ NhuÖ TiÕp NhËn NhiÖm Vô Gi¸o HuÊn Du TÈu Mai Hoa L¨ng!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(8)")
	elseif (nNV == 3) then
		Say("<color=yellow>NhiÖm Vô CÊp 30 ChiÕn HËu C«ng Sù:<color>\n<color=red>§èi Tho¹i Thang Anh TiÕp NhËn NhiÖm Vô Thu ThËp Qu©n Giíi Vµ TrÞ LiÖu Cho C¸c §Ö Tö Bæn M«n<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(5)")
	elseif (nNV == 4) then
		Say("<color=yellow>NhiÖm Vô CÊp 40 MËt Trõ NÞnh ThÇn:<color>\n<color=red>§èi Tho¹i Thi Phong TiÕp NhËn NhiÖm Vô Tiªu DiÖt La HiÕn Thµnh Tr¶ Thï Cho Nh¹c Phi<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(4)")
	elseif (nNV == 5) then
		Say("<color=yellow>NhiÖm Vô CÊp 50 Kh¶o NghiÖm Vâ NghÖ:<color>\n<color=red>§èi Tho¹i Ng­u Th«ng TiÕp NhËn NhiÖm Vô TØ ThÝ DiÔn Vâ Tr­êng<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(2)")
	elseif (nNV == 6) then
		Say("<color=yellow>NhiÖm Vô XuÊt S­ Vò Môc Di Th­ ThËt Gi¶:<color>\n<color=red>§èi Tho¹i Hµn Khëi Ph­îng TiÕp NhËn NhiÖm Vô §i T×m Vò Môc Di Th­!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(6)")
	elseif (nNV == 7) then
		Say("<color=yellow>NhiÖm Vô Trïng Ph¶n S­ M«n:<color>\n<color=red>§èi Tho¹i Nh¹c L«i TiÕp NhËn NhiÖm Vô Xin Gia NhËp L¹i Bæn M«n<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(1)")
	elseif (nNV == 8) then
		Say("<color=yellow>NhiÖm Vô Ký Danh §Ö Tö:<color>\n<color=red>§èi Tho¹i Hµn Th­îng §øc TiÕp NhËn NhiÖm Vô Gi¸o HuÊn C­êng Gi¶!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(3)")
	elseif (nNV == 9) then
		Say("<color=yellow>NhiÖm Vô CÊp 90 DiÖt Gi¸n §iÖp:<color>\n<color=red>§èi Tho¹i Nh¹c §×nh TiÕp NhËn NhiÖm Vô Tiªu DiÖt T­íng LÜnh §· §Çu Qu©n Cho Bän Kim Quèc!<color>",2,"KÕt Thóc §èi Tho¹i/#SetMovePos(7)")
	end
end

function SetMovePos(nPos)
local nMap,_,_ = GetWorldPos()
	if (nMap == 989) then
		if (nPos == 1) then
			ST_SyncMiniMapObj(1688*32,3040*32)
		elseif (nPos == 2) then
			ST_SyncMiniMapObj(1680*32,3040*32)
		elseif (nPos == 3) then
			ST_SyncMiniMapObj(1688*32,3056*32)
		elseif (nPos == 4) then
			ST_SyncMiniMapObj(1744*32,3248*32)
		elseif (nPos == 5) then
			ST_SyncMiniMapObj(1688*32,3184*32)
		elseif (nPos == 6) then
			ST_SyncMiniMapObj(1600*32,3008*32)
		elseif (nPos == 7) then
			ST_SyncMiniMapObj(1592*32,2992*32)
		elseif (nPos == 8) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 9) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 10) then
			ST_SyncMiniMapObj(1784*32,3200*32)
		elseif (nPos == 11) then
			ST_SyncMiniMapObj(1808*32,3232*32)
		elseif (nPos == 12) then
			ST_SyncMiniMapObj(1664*32,3296*32)
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------