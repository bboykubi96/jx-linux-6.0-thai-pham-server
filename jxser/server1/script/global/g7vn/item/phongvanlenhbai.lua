Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\seasonnpc.lua");

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(sel)
	
	--dofile("script/global/g7vn/item/phongvanlenhbai.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--do Say("T¹m thêi ch­a sö ®ông d­îc") return 1 end

	local tichdiem = GetTask(1403)
	local danglam = "Ch­a hoµn thµnh nhiÖm vô CODE t©n thñ, like trang, share bµi viÕt , tag 10 ng­êi b¹n inbox gÆp Admin ®Ó nhËn CODE t¹i http://facebook.com/volamg7vn"
	if GetTask(1403) == 1 then
		danglam = "§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi"
	end
	if GetTask(1403) == 2 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô nhËp m«n, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>LuyÖn c«ng lªn cÊp 50<color>"
	end
	if GetTask(1403) == 3 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 4 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 1, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 1000 con qu¸i t¹i Thiªn TÇm Th¸p TÇng 1<color>"
	end
	if GetTask(1403) == 5 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 2 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 6 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 2, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 2000 con qu¸i t¹i Thiªn TÇm Th¸p TÇng 3<color>"
	end
	if GetTask(1403) == 7 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 3 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 8 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 3, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 3000 con qu¸i t¹i L©m Du Quan, vµ hoµn thµnh 20 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) == 9 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 4 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 10 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 4, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 4000 con qu¸i t¹i Ch©n Nói Tr­êng B¹ch, vµ tham gia trËn Tèng Kim 20h00 ®¹t 1000 ®iÓm tİch lòy trë lªn<color>"
	end
	if GetTask(1403) == 11 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 5 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 12 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 5, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 5000 con qu¸i t¹i Sa M¹c 3, mua trong KTC T©n Thñ §¬n bÊm chuét ph¶i ®Ó sö dông, vµ hoµn thµnh 40 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) == 13 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 5, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 5000 con qu¸i t¹i Sa M¹c 3, mua trong KTC T©n Thñ §¬n bÊm chuét ph¶i ®Ó sö dông, vµ hoµn thµnh 40 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) >= 14 then
		danglam = "§¹i hiÖp ®· hoµn thµnh Chuçi nhiÖm vô Phong V©n LÖnh Bµi ®· ®ñ søc ®Ó cã thÓ TiÕu Ng¹o Giang Hå"
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbSay = {}
	tinsert(tbSay,"<NhËn nhiÖm vô NhËp M«n> ./#NhanNhiemVuNhapMon()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô NhËp M«n> ./#HoanThanhNhiemVuNhapMon()")
	tinsert(tbSay,"+ Hoµn thµnh nhanh nhiÖm vô NhËp M«n 1 <víi 1 KNB> ./#HoanThanhNhiemVuNhapMon100xu()")
	tinsert(tbSay,"<NhËn nhiÖm vô T©n Thñ 1> ./#NhanNhiemVuTanThu1()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô T©n Thñ 1> ./#HoanThanhNhiemVuTanThu1()")
	tinsert(tbSay,"+ Hoµn thµnh ngay T©n Thñ 1 <víi 1 KNB> ./#HoanThanhNhiemVuTanThu1100xu()")
	tinsert(tbSay,"<NhËn nhiÖm vô T©n Thñ 2> ./#NhanNhiemVuTanThu2()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô T©n Thñ 2> ./#HoanThanhNhiemVuTanThu2()")
	tinsert(tbSay,"+ Hoµn thµnh ngay T©n Thñ 2 <víi 2 KNB> ./#HoanThanhNhiemVuTanThu2200xu()")
	tinsert(tbSay,"Trang sau ./trang2pvlb")
	tinsert(tbSay,"KÕt thóc ./Oncancel")

	Say("Phong V©n LÖnh Bµi vËt phÈm hç trî ®¾c lùc cho t©n thñ míi tham gia vµo Game Vâ L©m G7VN <color=red>"..danglam.."<color>", getn(tbSay), tbSay)
	return 1
end

function trang2pvlb()
	local tichdiem = GetTask(1403)
	local danglam = "Ch­a hoµn thµnh nhiÖm vô CODE t©n thñ, like trang, share bµi viÕt , tag 10 ng­êi b¹n inbox gÆp Admin ®Ó nhËn CODE t¹i http://facebook.com/volamg7vn"
	if GetTask(1403) == 1 then
		danglam = "§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi"
	end
	if GetTask(1403) == 2 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô nhËp m«n, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>LuyÖn c«ng lªn cÊp 50<color>"
	end
	if GetTask(1403) == 3 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 4 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 1, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 1000 con qu¸i t¹i Thiªn TÇm Th¸p TÇng 1<color>"
	end
	if GetTask(1403) == 5 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 2 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 6 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 2, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 2000 con qu¸i t¹i Thiªn TÇm Th¸p TÇng 3<color>"
	end
	if GetTask(1403) == 7 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 3 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 8 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 3, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 3000 con qu¸i t¹i L©m Du Quan, vµ hoµn thµnh 20 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) == 9 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 4 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 10 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 4, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 4000 con qu¸i t¹i Ch©n Nói Tr­êng B¹ch, vµ tham gia trËn Tèng Kim 20h00 ®¹t 1000 ®iÓm tİch lòy trë lªn<color>"
	end
	if GetTask(1403) == 11 then
		danglam = "TiÕp theo ®¹i hiÖp nhËn nhiÖm vô T©n Thñ 5 trong Phong V©n lÖnh bµi"
	end
	if GetTask(1403) == 12 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 5, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 5000 con qu¸i t¹i Sa M¹c 3, mua trong KTC T©n Thñ §¬n bÊm chuét ph¶i ®Ó sö dông, vµ hoµn thµnh 40 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) == 13 then
		danglam = "§¹i hiÖp ®ang thùc hiÖn nhiÖm vô T©n Thñ 5, h·y mau mau hoµn thµnh nhiÖm vô <color=yellow>Tiªu diÖt 5000 con qu¸i t¹i Sa M¹c 3, mua trong KTC T©n Thñ §¬n bÊm chuét ph¶i ®Ó sö dông, vµ hoµn thµnh 40 nhiÖm vô D· TÈu<color>"
	end
	if GetTask(1403) >= 14 then
		danglam = "§¹i hiÖp ®· hoµn thµnh Chuçi nhiÖm vô Phong V©n LÖnh Bµi ®· ®ñ søc ®Ó cã thÓ TiÕu Ng¹o Giang Hå"
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbSay = {}
	tinsert(tbSay,"Trang tr­íc ./main")
	tinsert(tbSay,"<NhËn nhiÖm vô T©n Thñ 3> ./#NhanNhiemVuTanThu3()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô T©n Thñ 3> ./#HoanThanhNhiemVuTanThu3()")
	tinsert(tbSay,"+ Hoµn thµnh ngay T©n Thñ 3 <víi 3 KNB> ./#HoanThanhNhiemVuTanThu3KNB()")
	tinsert(tbSay,"<NhËn nhiÖm vô T©n Thñ 4> ./#NhanNhiemVuTanThu4()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô T©n Thñ 4> ./#HoanThanhNhiemVuTanThu4()")
	tinsert(tbSay,"+ Hoµn thµnh ngay T©n Thñ 4 <víi 4 KNB> ./#HoanThanhNhiemVuTanThu4400xu()")
	tinsert(tbSay,"<NhËn nhiÖm vô T©n Thñ 5> ./#NhanNhiemVuTanThu5()")
	tinsert(tbSay,"<Hoµn thµnh nhiÖm vô T©n Thñ 5> ./#HoanThanhNhiemVuTanThu5()")
	tinsert(tbSay,"+ Hoµn thµnh ngay T©n Thñ 5 <víi 5 KNB> ./#HoanThanhNhiemVuTanThu5500Xu()")
	tinsert(tbSay,"KÕt thóc ./Oncancel")
	Say("Phong V©n LÖnh Bµi vËt phÈm hç trî ®¾c lùc cho t©n thñ míi tham gia vµo Game Vâ L©m G7VN <color=red>"..danglam.."<color>", getn(tbSay), tbSay)
	return 1
end

function NhanNhiemVuNhapMon()
	local tasktanthu = 1401 -- id task ho tro tan thu
	local gt_tasktanthu = GetTask(tasktanthu);
	if gt_tasktanthu ~= 1 then
		Say("Ch­a hoµn thµnh nhiÖm vô CODE t©n thñ, share, tag 10 ng­êi b¹n inbox ®Ó nhËn CODE, sau ®ã nhËp vµo NPC Hç Trî T©n Thñ ®Ó nhËn quµ")
		return 1
	end
	if GetTask(1403) > 1 then--da nhan nhiem vu nhap mon
		Say("§¹i hiÖp ®· nhËn nhiÖm vô nµy råi")
		return 1
	end
	if GetTask(1403) == 1 then--da nhan phong van lenh bai
		SetTask(1403,2)--da nhan nhiem vu nhap mon
		Say("§¹i hiÖp ®· nhËn nhiÖm vô nhËp m«n, ®i luyÖn c«ng ®Õn cÊp 50 råi hoµn thµnh nhiÖm vô")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô NhËp M«n")
		return 1
	end
end

function HoanThanhNhiemVuNhapMon100xu()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) > 2 then--Da hoan thanh nhiem vu nhap mon
		Say("§¹i hiÖp ®· hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 2 then--da nhan nhiem vu nhap mon
		--if GetLevel() >= 50 then--dang cap lon hon = 50
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 1) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 1 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
					DelItemEx(1503);
			end
			if GetLevel()<50 then
				local nAddLevel = 50 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) hoµn thµnh nhiÖm vô NhËp M«n")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông 1 KNB<color=yellow>hoµn thµnh nhiÖm vô NhËp M«n lªn ngay level 50 nhËn ®­îc 100 v¹n")
			SetTask(1403,3)--da hoan thanh nhiem vu nhap mon
			Earn(1000000)
		--	else
		--	Say("§¹i hiÖp ®· nhËn nhiÖm vô nhËp m«n, nh­ng ®¼ng cÊp kh«ng lín h¬n 50 ch­a thÓ hoµn thµnh nhiÖm vô")
		--	return 1
		--end
	end
end

function HoanThanhNhiemVuNhapMon()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) > 2 then--Da hoan thanh nhiem vu nhap mon
		Say("§¹i hiÖp ®· hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 2 then--da nhan nhiem vu nhap mon
		if GetLevel() >= 50 then--dang cap lon hon = 50
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) hoµn thµnh nhiÖm vô NhËp M«n")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) hoµn thµnh nhiÖm vô NhËp M«n")
			SetTask(1403,3)--da hoan thanh nhiem vu nhap mon
			else
			Say("§¹i hiÖp ®· nhËn nhiÖm vô nhËp m«n, nh­ng ®¼ng cÊp kh«ng lín h¬n 50 ch­a thÓ hoµn thµnh nhiÖm vô")
			return 1
		end
	end
end

function NhanNhiemVuTanThu1()

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) > 3 then
		Say("§¹i hiÖp nhËn nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 3 then--da hoan thanh nhiem vu nhap mon
		Say("§¹i hiÖp ®· nhËn nhiÖm vô T©n Thñ 1, ®Õn Thiªn TÇm Th¸p TÇng 1 tiªu diÖt 1000 con qu¸i sau ®ã hoµn thµnh nhiÖm vô")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô T©n Thñ 1")
		SetTask(1403,4)--nhan nhiem vu tan thu 1
	end
end

function HoanThanhNhiemVuTanThu1()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 4 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 4 then--da nhan nhiem vu tan thu 1
		local tongquai = GetTask(1404)
		if tongquai >= 1000 then
			if GetLevel()<60 then
				local nAddLevel = 60 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,5)--da hoan thanh nhiem vu tan thu 1
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 1 lËp tøc lªn ngay level 60")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 1 lËp tøc lªn ngay level 60")
			else
			Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 1000 con qu¸i ë Thiªn TÇm Th¸p TÇng 1 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		end
	end
end

function HoanThanhNhiemVuTanThu1100xu()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 4 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 4 then--da nhan nhiem vu tan thu 1
		--local tongquai = GetTask(1404)
		--if tongquai >= 1000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 1) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 1 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,1 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<60 then
				local nAddLevel = 60 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,5)--da hoan thanh nhiem vu tan thu 1
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 1 lËp tøc lªn ngay level 60")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>1 KNB<color> hoµn thµnh nhanh nhiÖm vô T©n Thñ 1 lËp tøc lªn ngay level 60 vµ 100 v¹n")
			Earn(1000000)
			--else
			--Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 1000 con qu¸i ë Thiªn TÇm Th¸p TÇng 1 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		--end
	end
end

function NhanNhiemVuTanThu2()

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) > 5 then
		Say("§¹i hiÖp nhËn nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 5 then--da hoan thanh nhiem vu tan thu 1
		Say("§¹i hiÖp ®· nhËn nhiÖm vô T©n Thñ 2, ®Õn Thiªn TÇm Th¸p TÇng 3 tiªu diÖt 2000 con qu¸i sau ®ã hoµn thµnh nhiÖm vô")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô T©n Thñ 2")
		SetTask(1403,6)--nhan nhiem vu tan thu 2
	end
end

function HoanThanhNhiemVuTanThu2()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 6 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 6 then--da nhan nhiem vu tan thu 1
		local tongquai = GetTask(1404)
		if tongquai >= 2000 then
			if GetLevel()<70 then
				local nAddLevel = 70 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,7)--da hoan thanh nhiem vu tan thu 1
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 2 lËp tøc lªn ngay level 70")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 2 lËp tøc lªn ngay level 70")
			else
			Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 2000 con qu¸i ë Thiªn TÇm Th¸p TÇng 3 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		end
	end
end

function HoanThanhNhiemVuTanThu2200xu()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 6 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 6 then--da nhan nhiem vu tan thu 1
		--local tongquai = GetTask(1404)
		--if tongquai >= 2000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 2) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 2 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,2 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<70 then
				local nAddLevel = 70 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,7)--da hoan thanh nhiem vu tan thu 1
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 2 lËp tøc lªn ngay level 70")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>2 KNB<color> hoµn thµnh nhanh nhiÖm vô T©n Thñ 2 lËp tøc lªn ngay level 70 vµ nhËn ®­îc 200 v¹n")
			Earn(2000000)
			--else
			--Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 2000 con qu¸i ë Thiªn TÇm Th¸p TÇng 3 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		--end
	end
end

function NhanNhiemVuTanThu3()

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 7 then
		Say("§¹i hiÖp nhËn nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 7 then--da hoan thanh nhiem vu tan thu 2
		Say("§¹i hiÖp ®· nhËn nhiÖm vô T©n Thñ 1, ®Õn L©m Du Quan tiªu diÖt 3000 con qu¸i, vµ hoµn thµnh 20 nhiÖm vô d· tÈu liªn tiÕp kh«ng hñy sau ®ã hoµn thµnh nhiÖm vô")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô T©n Thñ 3")
		SetTask(1403,8)--nhan nhiem vu tan thu 3
	end
end

function HoanThanhNhiemVuTanThu3()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 8 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 8 then--da nhan nhiem vu tan thu 3
		local nhiemvudatau = tl_counttasklinknum(1);--Task PVLB1 nhiem vu da tau da lam
		if nhiemvudatau < 20 then
			Say("§¹i hiÖp ®· hoµn thµnh <color=yellow>"..nhiemvudatau.."<color> nhiÖm vô d· tÈu ph¶i hoµn thµnh thªm <color=green>"..20 - nhiemvudatau.."<color> nhiÖm vô D· TÉu n÷a míi cã thÓ hoµn thµnh nhiÖm vô nµy")
			return 1
		end
		local tongquai = GetTask(1404)
		if tongquai >= 3000 then
			if GetLevel()<80 then
				local nAddLevel = 80 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "ChiÕu D¹ Ngäc S­ Tö"	,tbProp={0,10,5,5,0,0},nCount=1, nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 3");
			SetTask(1404,0)
			SetTask(1403,9)--da hoan thanh nhiem vu tan thu 3
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 3 lËp tøc lªn ngay level 80")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 3 lËp tøc lªn ngay level 80")
			else
			Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 3000 con qu¸i ë L©m Du Quan kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		end
	end
end

function HoanThanhNhiemVuTanThu3KNB()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 8 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 8 then--da nhan nhiem vu tan thu 3
		local nhiemvudatau = tl_counttasklinknum(1);--Task PVLB1 nhiem vu da tau da lam
		if nhiemvudatau < 20 then
			Say("§¹i hiÖp ®· hoµn thµnh <color=yellow>"..nhiemvudatau.."<color> nhiÖm vô d· tÈu ph¶i hoµn thµnh thªm <color=green>"..20 - nhiemvudatau.."<color> nhiÖm vô D· TÉu n÷a míi cã thÓ hoµn thµnh nhiÖm vô nµy")
			return 1
		end
		--local tongquai = GetTask(1404)
		--if tongquai >= 3000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 3) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 3 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,3 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<80 then
				local nAddLevel = 80 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "ChiÕu D¹ Ngäc S­ Tö"	,tbProp={0,10,5,5,0,0},nCount=1, nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 3");
			SetTask(1404,0)
			SetTask(1403,9)--da hoan thanh nhiem vu tan thu 3
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 3 lËp tøc lªn ngay level 80")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>3 KNB<color> hoµn thµnh nhanh nhiÖm vô T©n Thñ 3 lËp tøc lªn ngay level 80 vµ nhËn ®­îc 300 v¹n")
			Earn(3000000)
		--	else
		--	Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 3000 con qu¸i ë L©m Du Quan kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		--end
	end
end

function NhanNhiemVuTanThu4()

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 9 then
		Say("§¹i hiÖp nhËn nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 9 then--da hoan thanh nhiem vu tan thu 3
		Say("§¹i hiÖp ®· nhËn nhiÖm vô T©n Thñ 4, ®Õn Ch©n Nói Tr­êng B¹ch tiªu diÖt 4000 con qu¸i, vµ ®îi ®Õn 20h00 tham gia 1 trËn Tèng Kim ®¹t ®­îc 1000 ®iÓm tİch lòy sau ®ã hoµn thµnh nhiÖm vô")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô T©n Thñ 4")
		SetTask(1403,10)--nhan nhiem vu tan thu 4
	end
end

function HoanThanhNhiemVuTanThu4400xu()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 10 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end
	--local diemtk = GetTask(747)
	--if diemtk < 1000 then
	--	Say("§¹i hiÖp míi chØ ®¹t ®­îc <color=green>"..diemtk.." ®iÓm tİch lòy<color> Tèng Kim, cÇn ph¶i ®¹t ®ñ 1000 ®iÓm míi cã thÓ hoµn thµnh nhiÖm vô nµy")
	--	return 1
	--end

	if GetTask(1403) == 10 then--da nhan nhiem vu tan thu 4
		--local tongquai = GetTask(1404)
		--if tongquai >= 4000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 4) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 4 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,4 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<90 then
				local nAddLevel = 90 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1, nBindState = -2,},
				{szName = "Vâ L©m MËt TŞch"	,tbProp={6,1,26,1,0,0},nCount=1, nBindState = -2,},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 4");
			SetTask(1404,0)
			SetTask(1403,11)--da hoan thanh nhiem vu tan thu 4
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 4 lËp tøc lªn ngay level 90")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>4 KNB<color> hoµn thµnh nhanh nhiÖm vô T©n Thñ 4 lËp tøc lªn ngay level 90 vµ nhËn 400 v¹n")
			Earn(4000000)
			--else
			--Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 4000 con qu¸i ë Ch©n Nói Tr­êng B¹ch kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		--end
	end
end

function HoanThanhNhiemVuTanThu4()
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 10 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end
	local diemtk = GetTask(747)
	if diemtk < 1000 then
		Say("§¹i hiÖp míi chØ ®¹t ®­îc <color=green>"..diemtk.." ®iÓm tİch lòy<color> Tèng Kim, cÇn ph¶i ®¹t ®ñ 1000 ®iÓm míi cã thÓ hoµn thµnh nhiÖm vô nµy")
		return 1
	end

	if GetTask(1403) == 10 then--da nhan nhiem vu tan thu 4
		local tongquai = GetTask(1404)
		if tongquai >= 4000 then
			if GetLevel()<90 then
				local nAddLevel = 90 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1, nBindState = -2,},
				{szName = "Vâ L©m MËt TŞch"	,tbProp={6,1,26,1,0,0},nCount=1, nBindState = -2,},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 4");
			SetTask(1404,0)
			SetTask(1403,11)--da hoan thanh nhiem vu tan thu 4
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 4 lËp tøc lªn ngay level 90")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 4 lËp tøc lªn ngay level 90")
			else
			Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 4000 con qu¸i ë Ch©n Nói Tr­êng B¹ch kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		end
	end
end

function NhanNhiemVuTanThu5()

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) > 11 then
		Say("§¹i hiÖp nhËn nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 11 then--da hoan thanh nhiem vu tan thu 4
		Say("§¹i hiÖp ®· nhËn nhiÖm vô T©n Thñ 5, ®Õn Sa M¹c 3 tiªu diÖt 5000 con qu¸i, vµ hoµn thµnh 40 nhiÖm vô D· TÈu, mua T©n Thñ §¬n trong KTC chuét ph¶i ®Ó sö dông")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199) nhËn nhiÖm vô T©n Thñ 5")
		SetTask(1403,12)--nhan nhiem vu tan thu 5
	end
end

function HoanThanhNhiemVuTanThu5()
	if CalcFreeItemCellCount() < 50 then
		Say("Hµnh trang kh«ng ®ñ 50 « trèng")
		return 1
	end
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 5, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 5 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		Say("§¹i hiÖp ch­a sö dông T©n Thñ §¬n kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		return 1
	end

	if GetTask(1403) > 13 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 13 then--da nhan nhiem vu tan thu 5
		
		local nhiemvudatau = tl_counttasklinknum(1);
		if nhiemvudatau < 40 then
			Say("§¹i hiÖp ®· hoµn thµnh <color=yellow>"..nhiemvudatau.."<color> nhiÖm vô d· tÈu ph¶i hoµn thµnh thªm <color=green>"..40 - nhiemvudatau.."<color> nhiÖm vô D· TÉu n÷a míi cã thÓ hoµn thµnh nhiÖm vô nµy")
			return 1
		end

		local tongquai = GetTask(1404)
		if tongquai >= 5000 then
			if GetLevel()<100 then
				local nAddLevel = 100 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Earn(10000000)
			SetTask(1404,0)
			SetTask(1403,14)--da hoan thanh nhiem vu tan thu 5
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 5 lËp tøc lªn ngay level 100")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 5 lËp tøc lªn ngay level 100 + 1 Bé Kim Phong ngÉu nhiªn thuéc tİnh")
			local tbbachkim  =
			{
				{szName = "Kim Phong 1", tbProp = {0,177}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 2", tbProp = {0,178}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 3", tbProp = {0,179}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 4", tbProp = {0,180}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 5", tbProp = {0,181}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 6", tbProp = {0,182}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 7", tbProp = {0,183}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 8", tbProp = {0,184}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 9", tbProp = {0,185}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
			}
			tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongBoKimPhongPVLB");
			else
			Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 5000 con qu¸i ë Sa M¹c 3 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		end
	end
end

function HoanThanhNhiemVuTanThu5500Xu()
	if CalcFreeItemCellCount() < 50 then
		Say("Hµnh trang kh«ng ®ñ 50 « trèng")
		return 1
	end
	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 5, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 5 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		Say("§¹i hiÖp ch­a sö dông T©n Thñ §¬n kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		return 1
	end

	if GetTask(1403) > 13 then
		Say("§¹i hiÖp hoµn thµnh nhiÖm vô nµy råi")
		return 1
	end

	if GetTask(1403) == 13 then--da nhan nhiem vu tan thu 5
		
		local nhiemvudatau = tl_counttasklinknum(1);
		if nhiemvudatau < 40 then
			Say("§¹i hiÖp ®· hoµn thµnh <color=yellow>"..nhiemvudatau.."<color> nhiÖm vô d· tÈu ph¶i hoµn thµnh thªm <color=green>"..40 - nhiemvudatau.."<color> nhiÖm vô D· TÉu n÷a míi cã thÓ hoµn thµnh nhiÖm vô nµy")
			return 1
		end

		--local tongquai = GetTask(1404)
		--if tongquai >= 5000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 5) then				
				Say("Kh¸ch quan kh«ng mang theo ®ñ 5 kim nguyªn b¶o?", 1, "§óng råi, ch­a mang ®ñ/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,5 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<100 then
				local nAddLevel = 100 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Earn(10000000)
			SetTask(1404,0)
			SetTask(1403,14)--da hoan thanh nhiem vu tan thu 5
			Say("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Phong V©n LÖnh Bµi<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 5 lËp tøc lªn ngay level 100")
			Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>5 KNB<color> ®· hoµn thµnh nhiÖm vô T©n Thñ 5 lËp tøc lªn ngay level 100 vµ nhËn ®­îc 500 v¹n + 1 Bé Kim Phong ngÉu nhiªn thuéc tİnh")
			Earn(5000000)
			local tbbachkim  =
			{
				{szName = "Kim Phong 1", tbProp = {0,177}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 2", tbProp = {0,178}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 3", tbProp = {0,179}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 4", tbProp = {0,180}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 5", tbProp = {0,181}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 6", tbProp = {0,182}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 7", tbProp = {0,183}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 8", tbProp = {0,184}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 9", tbProp = {0,185}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
			}
			tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongBoKimPhongPVLB");
			--else
			--Say("§¹i hiÖp ®· tiªu diÖt "..tongquai.." ch­a ®¸nh ®ñ 5000 con qu¸i ë Sa M¹c 3 kh«ng thÓ hoµn thµnh nhiÖm vô nµy")
		--end
	end
end

function Oncancel()end
