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



function main()
	--dofile("script/item/vitenambirthday/sinhnhat.lua");
	
	local tbOpt = {}
	

	tinsert(tbOpt, "L�m B�nh sinh nh�t/doievent")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event th�ng 6 - sinh nh�t VLTK <color>\n B�n �ang s� d�ng\nB�nh sinh nh�t <color=red>"..GetTask(3915).."<color> L�n!!\nB�nh sinh nh�t �ac� bi�t<color=red>"..GetTask(3916).."<color> l�n!", getn(tbOpt), tbOpt)	
end

function rsevent()
	local Date = tonumber(date("%Y%m%d"))
	local tbOpt = {}
	tinsert(tbOpt, "Reset event /rseventthuong")

	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event th�ng 6 - sinh nh�t VLTK <color>\n B�n �ang s� d�ng\nB�nh sinh nh�t <color=red>"..GetTask(3915).."<color> L�n!!\nB�nh sinh nh�t �ac� bi�t<color=red>"..GetTask(3916).."<color> l�n!", getn(tbOpt), tbOpt)	
end

function rseventthuong()
	local Date = tonumber(date("%Y%m%d"))
	local tbOpt = {}
	tinsert(tbOpt, "B�n c� ch�c l� mu�n reset?/rsthuong")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event th�ng 6 - sinh nh�t VLTK <color>\n B�n �ang s� d�ng\nB�nh sinh nh�t <color=red>"..GetTask(3915).."<color> L�n!!\nB�nh sinh nh�t �ac� bi�t<color=red>"..GetTask(3916).."<color> l�n!", getn(tbOpt), tbOpt)	
	
end


function rsthuong()
	if ( GetLevel() < 80  ) then
		Say("Xin l�i!  Ph�i <color=yellow>tr�n c�p 80  m�i c� th� Reset Event!",0)
		return 0;
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 100) then
		if (ConsumeEquiproomItem(100,4,417,1,1)~= 1) then
			Say("Xin l�i!   <color=yellow>H�nh nh� ��i hi�p kh�ng mang theo �� 100 ti�n ��ng!",0)
			return 0
		end
	SetTask(3911,0)

 	end
end

--------------------------------------------
--------------------------------------------------------------------------------------
function doievent()
	
	local tbOpt = {}
	tinsert(tbOpt,"B�nh sinh nh�t/sinhnhatthuong")
	tinsert(tbOpt,"B�nh sinh nh�t ��c bi�t/sinhnhatdb")
	

	tinsert(tbOpt, "Tho�t/nothing")
	Say("<bclr=red><color=yellow>T�t c� truy�n<color><bclr>: ��i hi�p c�n lo�i n�o? ", getn(tbOpt), tbOpt)	
end


function sinhnhatthuong()
	local tbOpt = {}
	tinsert(tbOpt, "50 B�nh sinh nh�t th��ng/sinhnhatthuong50")
	tinsert(tbOpt,"5 B�nh sinh nh�t th��ng/sinhnhatthuong5")
	tinsert(tbOpt,"10 B�nh sinh nh�t th��ng/sinhnhatthuong10")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("<bclr=red><color=yellow>Event th�ng 6<color><bclr>: ��i hi�p c�n bao nhi�u B�nh sinh nh�t th��ng? ", getn(tbOpt), tbOpt)	
end

function sinhnhatdb()
	local tbOpt = {}
	tinsert(tbOpt, "50 B�nh sinh nh�t �B/sinhnhatdb50")
	tinsert(tbOpt,"5 B�nh sinh nh�t �B/sinhnhatdb5")
	tinsert(tbOpt,"10 sinh nh�t �B/sinhnhatdb10")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("<bclr=red><color=yellow>Event th�ng 6<color><bclr>: ��i hi�p c�n bao nhi�u B�nh sinh nh�t �B? ", getn(tbOpt), tbOpt)	
end




------------event banh sinh nhat thuong-------------
function sinhnhatthuong50()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	local tbAward= 
	{
		{szName = "Banh sinh nhat", tbProp={6,1,1100,1,0,0},nCount=50, nExpiredTime=60*24*40 },
	}
	

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 100 and nCount_sugar >= 100  and nCount_milk >= 50) then
		
		ConsumeEquiproomItem(50, 4, 975, 1, -1)
		ConsumeEquiproomItem(100, 4, 976, 1, -1)
		ConsumeEquiproomItem(100, 4, 977, 1, -1)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 50 b�nh sinh nh�t th��ng c�n <color=yellow>100 b�t tinh, 100 ���ng tinh, 50 s�a t��i <color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end
end


function sinhnhatthuong5()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	local tbAward= 
	{
		{szName = "banh sinh nhat", tbProp={6,1,1100,1,0,0},nCount=5, nExpiredTime=60*24*40 },
	}

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 10 and nCount_sugar >= 10  and nCount_milk >= 5) then
		
		ConsumeEquiproomItem(5, 4, 975, 1, -1)
		ConsumeEquiproomItem(10, 4, 976, 1, -1)
		ConsumeEquiproomItem(10, 4, 977, 1, -1)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 5 b�nh sinh nh�t th��ng c�n <color=yellow>10 b�t tinh, 10 ���ng tinh, 5 s�a t��i <color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end
end
function sinhnhatthuong10()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	local tbAward= 
	{
		{szName = "banh sinh nhat", tbProp={6,1,1100,1,0,0},nCount=10, nExpiredTime=60*24*40 },
	}

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 20 and nCount_sugar >= 20  and nCount_milk >= 10) then
		
		ConsumeEquiproomItem(10, 4, 975, 1, -1)
		ConsumeEquiproomItem(20, 4, 976, 1, -1)
		ConsumeEquiproomItem(20, 4, 977, 1, -1)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 10 b�nh sinh nh�t th��ng c�n <color=yellow>20 b�t tinh, 20 ���ng tinh, 10 s�a t��i <color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end
end


------------event sinh nhat db-------------
function sinhnhatdb50()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if GetCash() < 1000000 then
		Say("<#> L�m 50 b�nh sinh nh�t th��ng h�n c�n <color=yellow>50 b�t tinh, 50 ���ng tinh, 50 s�a t��i, 50 tr�ng g� v� 100 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)

	end
	local tbAward= 
	{
		{szName = "banh sinh nhat", tbProp={6,1,1101,1,0,0},nCount=50, nExpiredTime=60*24*40 },
	}

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_egg = CalcEquiproomItemCount(4, 978, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 50 and nCount_sugar >= 50 and nCount_egg >= 50 and nCount_milk >= 50 and GetCash() >= 1000000) then
		ConsumeEquiproomItem(50, 4, 978, 1, -1)
		ConsumeEquiproomItem(50, 4, 975, 1, -1)
		ConsumeEquiproomItem(50, 4, 976, 1, -1)
		ConsumeEquiproomItem(50, 4, 977, 1, -1)
		Pay(1000000)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 50 b�nh sinh nh�t th��ng h�n c�n <color=yellow>50 b�t tinh, 50 ���ng tinh, 50 s�a t��i, 50 tr�ng g� v� 100 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end

end


function sinhnhatdb5()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if GetCash() < 100000 then
		Say("<#> L�m 5 b�nh sinh nh�t th��ng h�n c�n <color=yellow>5 b�t tinh, 5 ���ng tinh, 5 s�a t��i, 5 tr�ng g� v� 10 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)

	end
	local tbAward= 
	{
		{szName = "banh sinh nhat", tbProp={6,1,1101,1,0,0},nCount=5, nExpiredTime=60*24*40 },
	}

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_egg = CalcEquiproomItemCount(4, 978, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 5 and nCount_sugar >= 5 and nCount_egg >= 5 and nCount_milk >= 5 and GetCash() >= 100000) then
		ConsumeEquiproomItem(5, 4, 978, 1, -1)
		ConsumeEquiproomItem(5, 4, 975, 1, -1)
		ConsumeEquiproomItem(5, 4, 976, 1, -1)
		ConsumeEquiproomItem(5, 4, 977, 1, -1)
		Pay(100000)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 5 b�nh sinh nh�t th��ng h�n c�n <color=yellow>5 b�t tinh, 5 ���ng tinh, 5 s�a t��i, 5 tr�ng g� v� 10 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end
end
function sinhnhatdb10()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin l�i!  ��i Hi�p <color=yellow>kh�ng ��  c�p 60 Ho�c h�nh trang kh�ng �� 10 � tr�ng<color>!",0)
		return 0;
	end
	if GetCash() < 200000 then
		Say("<#> L�m 10 b�nh sinh nh�t th��ng h�n c�n <color=yellow>10 b�t tinh, 10 ���ng tinh, 10 s�a t��i, 10 tr�ng g� v� 50 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)

	end
	local tbAward= 
	{
		{szName = "banh sinh nhat", tbProp={6,1,1101,1,0,0},nCount=10, nExpiredTime=60*24*40 },
	}

	local nCount_flour = CalcEquiproomItemCount(4, 976, 1, 1)
	local nCount_sugar = CalcEquiproomItemCount(4, 977, 1, 1)
	local nCount_egg = CalcEquiproomItemCount(4, 978, 1, 1)
	local nCount_milk = CalcEquiproomItemCount(4, 975, 1, 1)
	if (nCount_flour >= 10 and nCount_sugar >= 10 and nCount_egg >= 10 and nCount_milk >= 10 and GetCash() >= 200000) then
		ConsumeEquiproomItem(10, 4, 978, 1, -1)
		ConsumeEquiproomItem(10, 4, 975, 1, -1)
		ConsumeEquiproomItem(10, 4, 976, 1, -1)
		ConsumeEquiproomItem(10, 4, 977, 1, -1)
		Pay(200000)
		tbAwardTemplet:GiveAwardByList(tbAward, "SinhNhatThuong");
		Say("<#> B�nh sinh nh�t �� l�m xong! H�y mang �i chung vui v�i m�i ng��i!", 0)
		
	else
		Say("<#> L�m 10 b�nh sinh nh�t th��ng h�n c�n <color=yellow>10 b�t tinh, 10 ���ng tinh, 10 s�a t��i, 10 tr�ng g� v� 10 v�n l��ng<color>, c� �� nguy�n li�u l�i ��n nh�!", 0)
	end
end


--------------------------------------------------------------------------------------------------------------------------------------------


function muaevent()
local tbSay = {}
		tinsert(tbSay,"Mua 50 Th� Heo./event50")
		tinsert(tbSay,"Mua 10 Th� Heo./event10")
       		tinsert(tbSay,"Mua 5 Th� Heo./event5")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

function event50()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Th� Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "thi�p"))
		--tbAwardTemplet:GiveAwardByList({{szName = "Gi� hoa", tbProp ={ 6, 1, 4347, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Gi� hoa"))

		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 Th� Heo><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>50 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event10()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Th� Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "thi�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c  <color=yellow><10 Th� Heo><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event5()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Th� Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "thi�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c  <color=yellow><5 Th� Heo>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>5 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
