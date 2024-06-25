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
	---dofile("script/sinhnhatlan3/sinhnhatlan3.lua");
	
	local tbOpt = {}
	tinsert(tbOpt, "§æi event Sinh nhËt/muaevent")
	tinsert(tbOpt, "Resr Event B¸nh sinh nhËt/resetevent")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event Sinh NhËt<color>\n B¹n ®ang sö dông\nB¸nh sinh nhËt <color=red>"..GetTask(3911).."<color> LÇn!!\nnÕn vµng<color=red>"..GetTask(3910).."<color> lÇn!", getn(tbOpt), tbOpt)	
end


--------------------------------------------
--------------------------------------------------------------------------------------
function muaevent()
local tbSay = {}
		tinsert(tbSay,"Mua 50 ./event50")
		tinsert(tbSay,"Mua 10 ./event10")
       		tinsert(tbSay,"Mua 5 ./event5")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

function event50()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B¸nh sinh nhËt", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=50, nBindState = -2}}, format("Get %s", "B¸nh sinh nhËt"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 B¸nh sinh nhËt><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>50 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhĞ!"..nCount_muaban, 0)
	end

end

function event10()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B¸nh sinh nhËt", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=10, nBindState = -2}}, format("Get %s", "B¸nh sinh nhËt"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc  <color=yellow><10 B¸nh sinh nhËt><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhĞ!"..nCount_muaban, 0)
	end

end

function event5()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "B¸nh sinh nhËt", tbProp ={ 6, 1, 30213, 1, 1, 0, 0, 0}, nRate = 100, nCount=5, nBindState = -2}}, format("Get %s", "B¸nh sinh nhËt"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc mét <color=yellow><5 B¸nh sinh nhËt><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>5 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhĞ!"..nCount_muaban, 0)
	end

end
--------------------------------------------------------------------------------------------------------------------------------------------

function resetevent()
	if GetTask(3905) >=1 then
		Say("Mçi nh©n vËt chØ ®­îc reset 1 lÇn",0)
	
	elseif CalcEquiproomItemCount(4,417,1,1) < 100 then
		Say("Reset Event b¸nh sinh nhËt cÇn tèn 100 xu",0)
	
	elseif GetTask(3911) < 2000 then
		Say("B¹n ch­a m· 2k b¸nh sinh nhËt nªn kh«ng thÓ reset",0)

	else
		ConsumeEquiproomItem(100, 4,417, 1,-1)
		SetTask(3905,1)

		SetTask(3911,0)
		Say("Rest thµnh c«ng event B¸nh sinh nhËt. B¹n cã thÓ dïng thªm 2000 b¸nh sinh nhËt",0)

	end
end
