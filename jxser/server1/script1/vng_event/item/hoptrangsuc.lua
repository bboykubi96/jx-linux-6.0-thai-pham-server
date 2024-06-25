Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/vng_event/item/hoptrangsuc.lua")
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return 1;
end
local IDtrangsuc={3544,3545,3546,3547,3550,3552}
local rann=random(1,6)
local nCount = CalcEquiproomItemCount(6,1,30503,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return 1
	end
if ConsumeEquiproomItem(1, 6,1, 30503,-1)>0 then
		--Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· më <color=green>LÔ Bao Trang søc Tèng Kim<color> nhËn ®­îc  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "Trang Søc", tbProp = {0,IDtrangsuc[rann]},nCount=1,nQuality=1, nExpiredTime = 10*24*60},}, "test", 1);
	end
			return 1
end
function laymatnahkmp()
local tbSay={
	"Trang søc Sinh KhÝ/#nhanmatnahkmp(3544)",
	"Trang søc Néi C«ng/#nhanmatnahkmp(3545)",
	"Trang søc Søc M¹nh/#nhanmatnahkmp(3546)",
	"Trang søc Th©n Ph¸p/#nhanmatnahkmp(3547)",
	"Trang søc C«ng KÝch Kü N¨ng/#nhanmatnahkmp(3550)",
	"Trang søc Lùc C«ng KÝch/#nhanmatnahkmp(3552)",
	"Th«i ta kh«ng muèn n÷a./no"
	}
	Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end

function nhanmatnahkmp(id)
if CalcFreeItemCellCount() < 3 then
	return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local nCount = CalcEquiproomItemCount(6,1,4484,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return

	end
if ConsumeEquiproomItem(1, 6,1, 4484,-1)>0 then
		--Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· më <color=green>LÔ Bao Trang søc Tèng Kim<color> nhËn ®­îc  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "Trang Søc", tbProp = {0,id},nCount=1,nQuality=1, nExpiredTime = 10*24*60},}, "test", 1);
		return 0
	end

end