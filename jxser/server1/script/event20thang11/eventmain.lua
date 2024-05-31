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
			Say("T¹m thêi ch­a tíi thêi gian cña Event vui lßng ®îi")
			return 1
		end
		if nDate >= NgayHetHanEventHLW then
			Say("Thêi gian event ®· kÕt thóc")
			return 1
		end
	end
	
	local tbOpt = {}
	tinsert(tbOpt, "GhÐp hép quµ nhµ gi¸o/ghepvatphamkv")
	tinsert(tbOpt, "GhÐp cuèn s¸ch/ghepvatphamxu")
	tinsert(tbOpt, "NhËn th­ëng ngµy nhµ gi¸o/thuongngaynhagiao")
	tinsert(tbOpt, "NhËn th­ëng max 2 lo¹i event/thuongmoc1000")
	if issupergm() == 1 then
		tinsert(tbOpt, "GM Nhan Event/gmnhanevent")
	end
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event Nhµ Gi¸o<color>\n B¹n ®ang sö dông\Cuèn s¸ch <color=red>"..GetTask(3911).."<color> LÇn!!\Hép quµ nhµ gi¸o<color=red> "..GetTask(3910).."<color> lÇn!", getn(tbOpt), tbOpt)	
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function thuongngaynhagiao()
	if GetTask(3912) > 0 then
		Say("Mçi nh©n vËt chØ ®­îc nhËn th­ëng 1 lÇn")
		return 1
	end
	if GetLevel() < 50 then
		Say("§¼ng cÊp ch­a ®ñ 50 kh«ng thÓ nhËn phÇn th­ëng nµy")
		return 1
	end
	local tbthuongfree = 
	{
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 500000000},
	}
	tbAwardTemplet:Give(tbthuongfree, 1 , {"Thuongeventfree", "Thuongeventfree"})
	local msgtbao = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn th­ëng miÔn phÝ event nhËn ®­îc phÇn th­ëng nh­ ý"
	logplayer("dulieu/nhanthuongev20t11.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] thµnh c«ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	SetTask(3912,1)
end

function thuongmoc1000()
	if GetTask(3905) > 0 then
		Say("Mçi nh©n vËt chØ ®­îc nhËn th­ëng 1 lÇn")
		return 1
	end
	if GetTask(3910) >=1000 and GetTask(3911) >= 1000 then
		local tbthuongfree = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 7000000000},
			{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=2},
			{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ ",tbProp={6,1,391,1,0,0},nCount=2},
			{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=2},
			{szName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={6,1,390,1,0,0},nCount=2},
		}
		tbAwardTemplet:Give(tbthuongfree, 1 , {"Thuongeventfree", "Thuongeventfree"})
		logplayer("dulieu/thuongmoc1000ev20t10.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] thµnh c«ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		local msgtbao = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn th­ëng ®¹t MAX 2 lo¹i event nhËn ®­îc phÇn th­ëng nh­ ý"
		SetTask(3905,1)
	else
		Say("Ch­a max 2 lo¹i Event!",0)
		return
	end
end

function gmnhanevent()
	if (CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
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
	tinsert(tbOpt, "100 vËt phÈm/tienxu100cai")
	tinsert(tbOpt, "50 vËt phÈm/tienxu50cai")
	tinsert(tbOpt, "10 vËt phÈm/tienxu10cai")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("<bclr=red><color=yellow>GhÐp vËt phÈm tiÒn 10 xu <color><bclr>: §¹i hiÖp cÇn bao nhiªu vËt phÈm? ", getn(tbOpt), tbOpt)	
end

function tienxu100cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 100 and CalcEquiproomItemCount(6,1,3040,-1) >= 100 and CalcEquiproomItemCount(6,1,3041,-1) >= 100 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=100, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(100,6,1,3039,-1);
		ConsumeEquiproomItem(100,6,1,3040,-1);
		ConsumeEquiproomItem(100,6,1,3041,-1);
	else
		Say("Ng­¬i kh«ng mang theo §ñ nguyªn liÖu råi!!!!!",0);
		return 		
	end
end

function tienxu50cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 50 and CalcEquiproomItemCount(6,1,3040,-1) >= 50 and CalcEquiproomItemCount(6,1,3041,-1) >= 50 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(50,6,1,3039,-1);
		ConsumeEquiproomItem(50,6,1,3040,-1);
		ConsumeEquiproomItem(50,6,1,3041,-1);
	else
		Say("Ng­¬i kh«ng mang theo §ñ nguyªn liÖu råi!!!!!",0);
		return 		
	end
end

function tienxu10cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 10 and CalcEquiproomItemCount(6,1,3040,-1) >= 10 and CalcEquiproomItemCount(6,1,3041,-1) >= 10 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thanh pham item xu", tbProp ={ 6, 1, 3042, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham cuon sach"))
		ConsumeEquiproomItem(10,6,1,3039,-1);
		ConsumeEquiproomItem(10,6,1,3040,-1);
		ConsumeEquiproomItem(10,6,1,3041,-1);
	else
		Say("Ng­¬i kh«ng mang theo §ñ nguyªn liÖu råi!!!!!",0);
		return 		
	end
end

function ghepvatphamkv()
	local tbOpt = {}
	tinsert(tbOpt, "100 vËt phÈm/tienvan100cai")
	tinsert(tbOpt, "50 vËt phÈm/tienvan50cai")
	tinsert(tbOpt, "10 vËt phÈm/tienvan10cai")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("<bclr=red><color=yellow>GhÐp vËt phÈm tiÒn 20 v¹n<color><bclr>: §¹i hiÖp cÇn bao nhiªu vËt phÈm? ", getn(tbOpt), tbOpt)	
end

function tienvan100cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 100 and CalcEquiproomItemCount(6,1,3040,-1) >= 100 and GetCash() >= 20000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=100, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(100,6,1,3039,-1);
		ConsumeEquiproomItem(100,6,1,3040,-1);
		Pay(20000000)
	else
		Say("Ng­¬i kh«ng mang theo vËt phÈm råi cÇn 2000v vµ nguyªn liÖu",0);
		return 		
	end
end

function tienvan50cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 50 and CalcEquiproomItemCount(6,1,3040,-1) >= 50 and GetCash() >= 10000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(50,6,1,3039,-1);
		ConsumeEquiproomItem(50,6,1,3040,-1);
		Pay(10000000)
	else
		Say("Ng­¬i kh«ng mang theo vËt phÈm råi cÇn 1000v vµ nguyªn liÖu",0);
		return 		
	end
end

function tienvan10cai()
	if ( GetLevel() < 50 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 50 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if CalcEquiproomItemCount(6,1,3039,-1) >= 10 and CalcEquiproomItemCount(6,1,3040,-1) >= 10 and GetCash() >= 2000000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Item k van", tbProp ={ 6, 1, 4298, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nExpiredTime=NgayHetHanEventHLW}}, format("Get %s", "Ghep vat pham hop qua nha giao"))
		ConsumeEquiproomItem(10,6,1,3039,-1);
		ConsumeEquiproomItem(10,6,1,3040,-1);
		Pay(2000000)
	else
		Say("Ng­¬i kh«ng mang theo vËt phÈm råi cÇn 200v vµ nguyªn liÖu",0);
		return 		
	end
end
