IncludeLib("ITEM");
IncludeLib("TONG")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\resetbos.lua");
Include("\\Script\\lib\\string.lua");
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("RELAYLADDER");
IncludeLib("SETTING")

NgayBatDauEventHLW = 20171105
NgayHetHanEventHLW = 20171205

local tbSuperGMAccount =  
{
	"tamquoc01","","","","","","","","","","",
}

function issupergm()
local szAccount = GetAccount()
	for i=1, getn(%tbSuperGMAccount) do
		if szAccount == %tbSuperGMAccount[i] then
		return 1
		end
	end
return 0
end;


function main()
	--dofile("script/event20thang11/eventmain1.lua");

	if issupergm() == 0 then
		local nDate = tonumber(date("%Y%m%d"))
		if nDate <= NgayBatDauEventHLW then
			Say("T�m th�i ch�a t�i th�i gian c�a Event vui l�ng ��i")
			return 1
		end
		if nDate >= NgayHetHanEventHLW then
			Say("Th�i gian event �� k�t th�c")
			return 1
		end
	end

	local tbOpt = {}
	tinsert(tbOpt, "Mua L� M�c<10xu 1 c�i>/muaevent")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?", getn(tbOpt), tbOpt)	
end

function muaevent()
		local tbSay = {}
		tinsert(tbSay,"Mua 50 ./event50")
		tinsert(tbSay,"Mua 10 ./event10")
       	tinsert(tbSay,"Mua 5 ./event5")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)
end

function event50()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 500  then
		ConsumeEquiproomItem(500, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Item Xu", tbProp ={ 6, 1, 3041, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item Xu"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 Item Xu><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>500 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event10()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 100  then
		ConsumeEquiproomItem(100, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Item Xu", tbProp ={ 6, 1, 3041, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item Xu"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c  <color=yellow><10 Item Xu><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>100 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event5()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Item Xu", tbProp ={ 6, 1, 3041, 1, 1, 0, 0, 0}, nRate = 100, nCount=5, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item Xu"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c  <color=yellow><5 Item Xu><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>50 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
