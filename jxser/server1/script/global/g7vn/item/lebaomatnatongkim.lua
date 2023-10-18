Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/global/g7vn/item/lebaomatnatongkim.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
end
local ranchung=random(1,6)
if ranchung==1 then
	local ranvk=random(1,3)
		if ranvk<=2 then
			local randong=random(86,100)
			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
		else
			local randong=random(86,100)
			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
		end
elseif ranchung==2 then
			local randong=random(86,100)

			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==3 then
			local randong=random(86,100)
			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==4 then
			local randong=random(86,100)

			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==5 then
			local randong=random(86,100)
			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==6 then
			local randong=random(86,100)
			if randong>=86 and randong<=95 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
end
end
function laymatnahkmp()
local tbSay={
	"MÆt n¹ Ph¸i ThiÕu L©m/#nhanmatnahkmp(842)",
	"MÆt n¹ Ph¸i Thiªn V­¬ng/#nhanmatnahkmp(843)",
	"MÆt n¹ Ph¸i Nga My/#nhanmatnahkmp(846)",
	"MÆt n¹ Ph¸i Thuý Yªn/#nhanmatnahkmp(847)",
	"MÆt n¹ Ph¸i C¸i Bang/#nhanmatnahkmp(849)",
	"Trang Sau/#GhepManhHKMP2()",
	"Th«i ta kh«ng muèn n÷a./no"
	}
	Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
function GhepManhHKMP2() 
local tbSay={
	"MÆt n¹ Ph¸i Thiªn NhÉn/#nhanmatnahkmp(848)",
	"MÆt n¹ Ph¸i §­êng M«n/#nhanmatnahkmp(844)",
	"MÆt n¹ Ph¸i Ngò §éc/#nhanmatnahkmp(845)",
	"MÆt n¹ Ph¸i Vâ §ang/#nhanmatnahkmp(850)",
	"MÆt n¹ Ph¸i C«n L«n/#nhanmatnahkmp(851)",
	"Th«i ta kh«ng muèn n÷a./no"
	}
	Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end

function nhanmatnahkmp(id)
if CalcFreeItemCellCount() < 3 then
	return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local nCount = CalcEquiproomItemCount(6,1,4443,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return

	end
if ConsumeEquiproomItem(1, 6,1, 4443,-1)>0 then
		local tenmatna=""
			if id==842 then
			tenmatna="MÆt n¹ tèng kim ThiÕu L©m"
			end
			if id==843 then
			tenmatna="MÆt n¹ tèng kim Thiªn V­¬ng"
			end
			if id==844 then
			tenmatna="MÆt n¹ tèng kim §­êng M«n"
			end
			if id==845 then
			tenmatna="MÆt n¹ tèng kim Ngò §éc"
			end
			if id==846 then
			tenmatna="MÆt n¹ tèng kim Nga My"
			end
			if id==847 then
			tenmatna="MÆt n¹ tèng kim Thuý Yªn"
			end
			if id==848 then
			tenmatna="MÆt n¹ tèng kim Thiªn NhÉn"
			end
			if id==849 then
			tenmatna="MÆt n¹ tèng kim C¸i Bang"
			end
			if id==850 then
			tenmatna="MÆt n¹ tèng kim Vâ §ang"
			end
			if id==851 then
			tenmatna="MÆt n¹ tèng kim C«n L«n"
			end
		--Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· më <color=green>LÔ Bao MÆt N¹ Tèng Kim<color> nhËn ®­îc  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹ Hoµng Kim M«n Ph¸i", tbProp = {0,11,id,1,0,0}, nExpiredTime = 7*24*60,nBindState=-2},}, "test", 1);
		return 0
	end

end