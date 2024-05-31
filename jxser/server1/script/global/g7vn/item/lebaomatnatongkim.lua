Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/global/g7vn/item/lebaomatnatongkim.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
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
	"M�t n� Ph�i Thi�u L�m/#nhanmatnahkmp(842)",
	"M�t n� Ph�i Thi�n V��ng/#nhanmatnahkmp(843)",
	"M�t n� Ph�i Nga My/#nhanmatnahkmp(846)",
	"M�t n� Ph�i Thu� Y�n/#nhanmatnahkmp(847)",
	"M�t n� Ph�i C�i Bang/#nhanmatnahkmp(849)",
	"Trang Sau/#GhepManhHKMP2()",
	"Th�i ta kh�ng mu�n n�a./no"
	}
	Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
function GhepManhHKMP2() 
local tbSay={
	"M�t n� Ph�i Thi�n Nh�n/#nhanmatnahkmp(848)",
	"M�t n� Ph�i ���ng M�n/#nhanmatnahkmp(844)",
	"M�t n� Ph�i Ng� ��c/#nhanmatnahkmp(845)",
	"M�t n� Ph�i V� �ang/#nhanmatnahkmp(850)",
	"M�t n� Ph�i C�n L�n/#nhanmatnahkmp(851)",
	"Th�i ta kh�ng mu�n n�a./no"
	}
	Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end

function nhanmatnahkmp(id)
if CalcFreeItemCellCount() < 3 then
	return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
local nCount = CalcEquiproomItemCount(6,1,4443,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return

	end
if ConsumeEquiproomItem(1, 6,1, 4443,-1)>0 then
		local tenmatna=""
			if id==842 then
			tenmatna="M�t n� t�ng kim Thi�u L�m"
			end
			if id==843 then
			tenmatna="M�t n� t�ng kim Thi�n V��ng"
			end
			if id==844 then
			tenmatna="M�t n� t�ng kim ���ng M�n"
			end
			if id==845 then
			tenmatna="M�t n� t�ng kim Ng� ��c"
			end
			if id==846 then
			tenmatna="M�t n� t�ng kim Nga My"
			end
			if id==847 then
			tenmatna="M�t n� t�ng kim Thu� Y�n"
			end
			if id==848 then
			tenmatna="M�t n� t�ng kim Thi�n Nh�n"
			end
			if id==849 then
			tenmatna="M�t n� t�ng kim C�i Bang"
			end
			if id==850 then
			tenmatna="M�t n� t�ng kim V� �ang"
			end
			if id==851 then
			tenmatna="M�t n� t�ng kim C�n L�n"
			end
		--Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� m� <color=green>L� Bao M�t N� T�ng Kim<color> nh�n ���c  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "M�t n� Ho�ng Kim M�n Ph�i", tbProp = {0,11,id,1,0,0}, nExpiredTime = 7*24*60,nBindState=-2},}, "test", 1);
		return 0
	end

end