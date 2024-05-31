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
	--dofile("script/event20thang11/eventmain.lua");

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
	tinsert(tbOpt, "Gh�p h�p qu� nh� gi�o/ghepvatphamkv")
	tinsert(tbOpt, "Gh�p cu�n s�ch/ghepvatphamxu")
	tinsert(tbOpt, "Nh�n th��ng ng�y nh� gi�o/thuongngaynhagiao")
	tinsert(tbOpt, "Nh�n th��ng max 2 lo�i event/thuongmoc1000")
	if issupergm() == 1 then
		tinsert(tbOpt, "GM Nhan Event/gmnhanevent")
	end
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event Nh� Gi�o<color>\n B�n �ang s� d�ng\Cu�n s�ch <color=red>"..GetTask(3911).."<color> L�n!!\H�p qu� nh� gi�o<color=red> "..GetTask(3910).."<color> l�n!", getn(tbOpt), tbOpt)	
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function thuongngaynhagiao()
	if GetTask(3912) > 0 then
		Say("M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n")
		return 1
	end
	if GetLevel() < 50 then
		Say("��ng c�p ch�a �� 50 kh�ng th� nh�n ph�n th��ng n�y")
		return 1
	end
	local tbthuongfree = 
	{
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 500000000},
	}
	tbAwardTemplet:Give(tbthuongfree, 1 , {"Thuongeventfree", "Thuongeventfree"})
	local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�n th��ng mi�n ph� event nh�n ���c ph�n th��ng nh� �"
	logplayer("dulieu/nhanthuongev20t11.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] th�nh c�ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	SetTask(3912,1)
end

function thuongmoc1000()
	if GetTask(3905) > 0 then
		Say("M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n")
		return 1
	end
	if GetTask(3910) >=1000 and GetTask(3911) >= 1000 then
		local tbthuongfree = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 7000000000},
			{szName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={6,1,388,1,0,0},nCount=2},
			{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch� ",tbProp={6,1,391,1,0,0},nCount=2},
			{szName = "�� ph� Ho�ng Kim - An Bang C�c Hoa Th�ch Ch� ho�n",tbProp={6,1,389,1,0,0},nCount=2},
			{szName = "�� ph� Ho�ng Kim - An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={6,1,390,1,0,0},nCount=2},
		}
		tbAwardTemplet:Give(tbthuongfree, 1 , {"Thuongeventfree", "Thuongeventfree"})
		logplayer("dulieu/thuongmoc1000ev20t10.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] th�nh c�ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�n th��ng ��t MAX 2 lo�i event nh�n ���c ph�n th��ng nh� �"
		SetTask(3905,1)
	else
		Say("Ch�a max 2 lo�i Event!",0)
		return
	end
end

function gmnhanevent()
	if (CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	--tbAwardTemplet:GiveAwardByList({{szName = "Cay but", tbProp ={ 6, 1, 3040, 1, 1, 0, 0, 0}, nRate = 100, nCount=500, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item Xu"))
	--tbAwardTemplet:GiveAwardByList({{szName = "Giay trang", tbProp ={ 6, 1, 3039, 1, 1, 0, 0, 0}, nRate = 100, nCount=500, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item K van"))
	--tbAwardTemplet:GiveAwardByList({{szName = "Lo muc", tbProp ={ 6, 1, 3041, 1, 1, 0, 0, 0}, nRate = 100, nCount=500, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Item K van"))
	--Earn(5000000)
	tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham 1", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=500, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Than pham 1"))
	tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham 2", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=500, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Than pham 2"))
end

function ghepvatphamxu()
	local tbOpt = {}
	tinsert(tbOpt, "100 v�t ph�m/tienxu100cai")
	tinsert(tbOpt, "50 v�t ph�m/tienxu50cai")
	tinsert(tbOpt, "10 v�t ph�m/tienxu10cai")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("<bclr=red><color=yellow>Gh�p v�t ph�m ti�n 10 xu <color><bclr>: ��i hi�p c�n bao nhi�u v�t ph�m? ", getn(tbOpt), tbOpt)	
end

function tienxu100cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 100 and CalcEquiproomItemCount(6,1,3040,-1) >= 100 and CalcEquiproomItemCount(6,1,3041,-1) >= 100 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=100, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(100,6,1,3039,-1);
		ConsumeEquiproomItem(100,6,1,3040,-1);
		ConsumeEquiproomItem(100,6,1,3041,-1);
	else
		Say("Ng��i kh�ng mang theo �� nguy�n li�u r�i!!!!!",0);
		return 		
	end
end

function tienxu50cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 50 and CalcEquiproomItemCount(6,1,3040,-1) >= 50 and CalcEquiproomItemCount(6,1,3041,-1) >= 50 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(50,6,1,3039,-1);
		ConsumeEquiproomItem(50,6,1,3040,-1);
		ConsumeEquiproomItem(50,6,1,3041,-1);
	else
		Say("Ng��i kh�ng mang theo �� nguy�n li�u r�i!!!!!",0);
		return 		
	end
end

function tienxu10cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 10 and CalcEquiproomItemCount(6,1,3040,-1) >= 10 and CalcEquiproomItemCount(6,1,3041,-1) >= 10 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(10,6,1,3039,-1);
		ConsumeEquiproomItem(10,6,1,3040,-1);
		ConsumeEquiproomItem(10,6,1,3041,-1);
	else
		Say("Ng��i kh�ng mang theo �� nguy�n li�u r�i!!!!!",0);
		return 		
	end
end

function ghepvatphamkv()
	local tbOpt = {}
	tinsert(tbOpt, "100 v�t ph�m/tienvan100cai")
	tinsert(tbOpt, "50 v�t ph�m/tienvan50cai")
	tinsert(tbOpt, "10 v�t ph�m/tienvan10cai")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("<bclr=red><color=yellow>Gh�p v�t ph�m ti�n 20 v�n<color><bclr>: ��i hi�p c�n bao nhi�u v�t ph�m? ", getn(tbOpt), tbOpt)	
end

function tienvan100cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 100 and CalcEquiproomItemCount(6,1,3040,-1) >= 100 and GetCash() >= 20000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=100, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(100,6,1,3039,-1);
		ConsumeEquiproomItem(100,6,1,3040,-1);
		Pay(20000000)
	else
		Say("Ng��i kh�ng mang theo v�t ph�m r�i c�n 2000v v� nguy�n li�u",0);
		return 		
	end
end

function tienvan50cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 50 and CalcEquiproomItemCount(6,1,3040,-1) >= 50 and GetCash() >= 10000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(50,6,1,3039,-1);
		ConsumeEquiproomItem(50,6,1,3040,-1);
		Pay(10000000)
	else
		Say("Ng��i kh�ng mang theo v�t ph�m r�i c�n 1000v v� nguy�n li�u",0);
		return 		
	end
end

function tienvan10cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 50 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 10 and CalcEquiproomItemCount(6,1,3040,-1) >= 10 and GetCash() >= 2000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(10,6,1,3039,-1);
		ConsumeEquiproomItem(10,6,1,3040,-1);
		Pay(2000000)
	else
		Say("Ng��i kh�ng mang theo v�t ph�m r�i c�n 200v v� nguy�n li�u",0);
		return 		
	end
end
