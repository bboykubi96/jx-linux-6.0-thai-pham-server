Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/vng_event/item/hoptrangsuc.lua")
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return 1;
end
local IDtrangsuc={3544,3545,3546,3547,3550,3552}
local rann=random(1,6)
local nCount = CalcEquiproomItemCount(6,1,30503,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return 1
	end
if ConsumeEquiproomItem(1, 6,1, 30503,-1)>0 then
		--Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� m� <color=green>L� Bao Trang s�c T�ng Kim<color> nh�n ���c  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "Trang S�c", tbProp = {0,IDtrangsuc[rann]},nCount=1,nQuality=1, nExpiredTime = 10*24*60},}, "test", 1);
	end
			return 1
end
function laymatnahkmp()
local tbSay={
	"Trang s�c Sinh Kh�/#nhanmatnahkmp(3544)",
	"Trang s�c N�i C�ng/#nhanmatnahkmp(3545)",
	"Trang s�c S�c M�nh/#nhanmatnahkmp(3546)",
	"Trang s�c Th�n Ph�p/#nhanmatnahkmp(3547)",
	"Trang s�c C�ng K�ch K� N�ng/#nhanmatnahkmp(3550)",
	"Trang s�c L�c C�ng K�ch/#nhanmatnahkmp(3552)",
	"Th�i ta kh�ng mu�n n�a./no"
	}
	Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end

function nhanmatnahkmp(id)
if CalcFreeItemCellCount() < 3 then
	return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
local nCount = CalcEquiproomItemCount(6,1,4484,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return

	end
if ConsumeEquiproomItem(1, 6,1, 4484,-1)>0 then
		--Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� m� <color=green>L� Bao Trang s�c T�ng Kim<color> nh�n ���c  <color=red>"..tenmatna.."<color>")
		tbAwardTemplet:GiveAwardByList({{szName = "Trang S�c", tbProp = {0,id},nCount=1,nQuality=1, nExpiredTime = 10*24*60},}, "test", 1);
		return 0
	end

end