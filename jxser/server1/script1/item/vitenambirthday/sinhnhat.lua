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
	

	tinsert(tbOpt, "Lµm B¸nh sinh nhËt/doievent")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event th¸ng 6 - sinh nhËt VLTK <color>\n B¹n ®ang sö dông\nB¸nh sinh nhËt <color=red>"..GetTask(3915).."<color> LÇn!!\nB¸nh sinh nhËt ®acù biÖt<color=red>"..GetTask(3916).."<color> lÇn!", getn(tbOpt), tbOpt)	
end

function rsevent()
	local Date = tonumber(date("%Y%m%d"))
	local tbOpt = {}
	tinsert(tbOpt, "Reset event /rseventthuong")

	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event th¸ng 6 - sinh nhËt VLTK <color>\n B¹n ®ang sö dông\nB¸nh sinh nhËt <color=red>"..GetTask(3915).."<color> LÇn!!\nB¸nh sinh nhËt ®acù biÖt<color=red>"..GetTask(3916).."<color> lÇn!", getn(tbOpt), tbOpt)	
end

function rseventthuong()
	local Date = tonumber(date("%Y%m%d"))
	local tbOpt = {}
	tinsert(tbOpt, "B¹n cã ch¾c lµ muèn reset?/rsthuong")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event th¸ng 6 - sinh nhËt VLTK <color>\n B¹n ®ang sö dông\nB¸nh sinh nhËt <color=red>"..GetTask(3915).."<color> LÇn!!\nB¸nh sinh nhËt ®acù biÖt<color=red>"..GetTask(3916).."<color> lÇn!", getn(tbOpt), tbOpt)	
	
end


function rsthuong()
	if ( GetLevel() < 80  ) then
		Say("Xin lçi!  Ph¶i <color=yellow>trªn cÊp 80  míi cã thÓ Reset Event!",0)
		return 0;
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 100) then
		if (ConsumeEquiproomItem(100,4,417,1,1)~= 1) then
			Say("Xin lçi!   <color=yellow>H×nh nh­ ®¹i hiÖp kh«ng mang theo ®ñ 100 tiÒn ®ång!",0)
			return 0
		end
	SetTask(3911,0)

 	end
end

--------------------------------------------
--------------------------------------------------------------------------------------
function doievent()
	
	local tbOpt = {}
	tinsert(tbOpt,"B¸nh sinh nhËt/sinhnhatthuong")
	tinsert(tbOpt,"B¸nh sinh nhËt ®Æc biÖt/sinhnhatdb")
	

	tinsert(tbOpt, "Tho¸t/nothing")
	Say("<bclr=red><color=yellow>TÕt cæ truyÒn<color><bclr>: §¹i hiÖp cÇn lo¹i nµo? ", getn(tbOpt), tbOpt)	
end


function sinhnhatthuong()
	local tbOpt = {}
	tinsert(tbOpt, "50 B¸nh sinh nhËt th­êng/sinhnhatthuong50")
	tinsert(tbOpt,"5 B¸nh sinh nhËt th­êng/sinhnhatthuong5")
	tinsert(tbOpt,"10 B¸nh sinh nhËt th­êng/sinhnhatthuong10")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("<bclr=red><color=yellow>Event th¸ng 6<color><bclr>: §¹i hiÖp cÇn bao nhiªu B¸nh sinh nhËt th­êng? ", getn(tbOpt), tbOpt)	
end

function sinhnhatdb()
	local tbOpt = {}
	tinsert(tbOpt, "50 B¸nh sinh nhËt §B/sinhnhatdb50")
	tinsert(tbOpt,"5 B¸nh sinh nhËt §B/sinhnhatdb5")
	tinsert(tbOpt,"10 sinh nhËt §B/sinhnhatdb10")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("<bclr=red><color=yellow>Event th¸ng 6<color><bclr>: §¹i hiÖp cÇn bao nhiªu B¸nh sinh nhËt §B? ", getn(tbOpt), tbOpt)	
end




------------event banh sinh nhat thuong-------------
function sinhnhatthuong50()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 50 b¸nh sinh nhËt th­îng cÇn <color=yellow>100 bét tinh, 100 ®­êng tinh, 50 s÷a t­¬i <color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end
end


function sinhnhatthuong5()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 5 b¸nh sinh nhËt th­îng cÇn <color=yellow>10 bét tinh, 10 ®­êng tinh, 5 s÷a t­¬i <color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end
end
function sinhnhatthuong10()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 10 b¸nh sinh nhËt th­îng cÇn <color=yellow>20 bét tinh, 20 ®­êng tinh, 10 s÷a t­¬i <color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end
end


------------event sinh nhat db-------------
function sinhnhatdb50()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if GetCash() < 1000000 then
		Say("<#> Lµm 50 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>50 bét tinh, 50 ®­êng tinh, 50 s÷a t­¬i, 50 trøng gµ vµ 100 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)

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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 50 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>50 bét tinh, 50 ®­êng tinh, 50 s÷a t­¬i, 50 trøng gµ vµ 100 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end

end


function sinhnhatdb5()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if GetCash() < 100000 then
		Say("<#> Lµm 5 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>5 bét tinh, 5 ®­êng tinh, 5 s÷a t­¬i, 5 trøng gµ vµ 10 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)

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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 5 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>5 bét tinh, 5 ®­êng tinh, 5 s÷a t­¬i, 5 trøng gµ vµ 10 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end
end
function sinhnhatdb10()
	if ( GetLevel() < 60 or  CalcFreeItemCellCount() < 10) then
		Say("Xin lçi!  §¹i HiÖp <color=yellow>kh«ng ®ñ  cÊp 60 HoÆc hµnh trang kh«ng ®ñ 10 « trèng<color>!",0)
		return 0;
	end
	if GetCash() < 200000 then
		Say("<#> Lµm 10 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>10 bét tinh, 10 ®­êng tinh, 10 s÷a t­¬i, 10 trøng gµ vµ 50 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)

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
		Say("<#> B¸nh sinh nhËt ®· lµm xong! H·y mang ®i chung vui víi mäi ng­êi!", 0)
		
	else
		Say("<#> Lµm 10 b¸nh sinh nhËt th­îng h¹n cÇn <color=yellow>10 bét tinh, 10 ®­êng tinh, 10 s÷a t­¬i, 10 trøng gµ vµ 10 v¹n l­îng<color>, cã ®ñ nguyªn liÖu l¹i ®Õn nhÐ!", 0)
	end
end


--------------------------------------------------------------------------------------------------------------------------------------------


function muaevent()
local tbSay = {}
		tinsert(tbSay,"Mua 50 ThÞ Heo./event50")
		tinsert(tbSay,"Mua 10 ThÞ Heo./event10")
       		tinsert(tbSay,"Mua 5 ThÞ Heo./event5")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

function event50()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "ThÞ Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "thiÖp"))
		--tbAwardTemplet:GiveAwardByList({{szName = "Giá hoa", tbProp ={ 6, 1, 4347, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Giá hoa"))

		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 ThÞ Heo><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>50 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function event10()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "ThÞ Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "thiÖp"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc  <color=yellow><10 ThÞ Heo><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function event5()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "ThÞ Heo", tbProp ={ 6, 1, 1656, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "thiÖp"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc  <color=yellow><5 ThÞ Heo>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>5 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end
