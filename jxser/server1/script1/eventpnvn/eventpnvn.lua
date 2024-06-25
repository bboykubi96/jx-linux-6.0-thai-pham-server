IncludeLib("ITEM");
Include("\\Script\\lib\\string.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
IncludeLib("SETTING")



function main()
	--dofile("script/eventpnvn/eventpnvn.lua");
	
	local tbOpt = {}
	--tinsert(tbOpt, "Mua Event/muaevent")
	--tinsert(tbOpt, "Lµm event hoa/ghepevent")

	
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?\n<color=green>Event th¸ng 10 phô n÷ ViÖt Nam<color>\nB¹n ®ang sö dông:\n- Bã hoa <color=red>"..GetTask(3910).."<color> LÇn!!\n- Giá hoa <color=red>"..GetTask(3911).."<color> lÇn!", getn(tbOpt), tbOpt)	
end


--------------------------------------------

function ghepevent()
	local tbSay = {}
		tinsert(tbSay,"Lµm giá hã./ghepgiohoa")
		tinsert(tbSay,"Lµm bã hoa ./ghepbohoa")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp muèn ghÐp lo¹i nµo? ", getn(tbSay), tbSay)


end
--------------------------------------------------------------------------------------
function muaevent() 

	local tbSay = {}
		tinsert(tbSay,"Mua Giá ®­ng hoa ./giodung")
		tinsert(tbSay,"Mua n¬ cét hoa ./nocothoa")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)



end

function giodung()
local tbSay = {}
		tinsert(tbSay,"Mua 50 giá<250xu> ./mua50gio")
		tinsert(tbSay,"Mua 10 giá<50xu>./mua10gio")
       		tinsert(tbSay,"Mua 5 giá<25xu>./mua5gio")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

function nocothoa()
local tbSay = {}
		tinsert(tbSay,"Mua 50 n¬<75van> ./mua50no")
		tinsert(tbSay,"Mua 10 n¬<15van>./mua10no")
       		tinsert(tbSay,"Mua 5 n¬<7.5van>./mua5no")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function mua50gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Giá ®ùng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Giá ®ùng hoa"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 Giá ®ùng hoa><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>250 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function mua10gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Giá ®ùng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "Giá ®ùng hoa"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><10 Giá ®ùng hoa><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>50 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function mua5gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 25  then
		ConsumeEquiproomItem(25, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Giá ®ùng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "Giá ®ùng hoa"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><5 Giá ®ùng hoa><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>25 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


-----------------------------------------

function mua50no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 750000  then
		Pay(750000)
		tbAwardTemplet:GiveAwardByList({{szName = "C¸i N¬ ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "C¸i N¬ "))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 C¸i N¬ ><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>75 v¹n <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function mua10no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 150000  then
		Pay(150000)
		tbAwardTemplet:GiveAwardByList({{szName = "C¸i N¬ ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "C¸i N¬ "))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><10 C¸i N¬ ><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>15 v¹n<color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function mua5no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 75000  then
		Pay(75000)
		tbAwardTemplet:GiveAwardByList({{szName = "C¸i N¬ ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "C¸i N¬ "))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><5 C¸i N¬ ><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>7.5 v¹n<color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


--------------------------------------------------------------------------------------------------------------------------------------------


tbgiohoa = {
		
			{"Hoa hång tr¾ng",3117},
			{"Hoa hèng xanh",3118},
			{"Hoa hång vµng",3119},
			{"Hoa hång ®á",3120},
			{"Giá ®ùng",3123},
			

}



function ghepgiohoa()
	
	local ncount = 0
	local n1 = CalcEquiproomItemCount(6,1,tbgiohoa[1][2],-1)
	local n2 = CalcEquiproomItemCount(6,1,tbgiohoa[2][2],-1)
	local n3 = CalcEquiproomItemCount(6,1,tbgiohoa[3][2],-1)
	local n4 = CalcEquiproomItemCount(6,1,tbgiohoa[4][2],-1)
	local n5 = CalcEquiproomItemCount(6,1,tbgiohoa[5][2],-1)	
	if( n1 == 0 or n2 == 0 or n3 == 0 or n4 == 0 or n5 == 0) then 
		Say("§¹i hiÖp kh«ng mang theo ®ñ nguyªn liÖu råi!", 0)
		return 0
		
			
	else
		ncount = min(n1,n2,n3,n4,n5)

		
		
	end
	
		ConsumeEquiproomItem(ncount,6,1,3123,-1);
		for i=3117,3120 do

			ConsumeEquiproomItem(ncount,6,1,i,-1);

		end
	local tbAwardghepgiohoa = 
	{	
		
		{szName = "Than hanh phu", tbProp={6,1,3127,1,0,0,0}, nCount= ncount,nExpiredTime=20181108},
		
		

	}
	tbAwardTemplet:Give(tbAwardghepgiohoa, 1, {"eventthang10", "eventthang10"})
	

		
	
end


tbbohoa = {
		
			{"Hoa hång tr¾ng",3117},
			{"Hoa hèng xanh",3118},
			{"Hoa hång vµng",3119},
			{"Hoa hång ®á",3120},
			{"N¬ cét",3126},

}



function ghepbohoa()
	
	local ncount = 0
	local n1 = CalcEquiproomItemCount(6,1,tbbohoa[1][2],-1)
	local n2 = CalcEquiproomItemCount(6,1,tbbohoa[2][2],-1)
	local n3 = CalcEquiproomItemCount(6,1,tbbohoa[3][2],-1)
	local n4 = CalcEquiproomItemCount(6,1,tbbohoa[4][2],-1)
	local n5 = CalcEquiproomItemCount(6,1,tbbohoa[5][2],-1)	
	if( n1 == 0 or n2 == 0 or n3 == 0 or n4 == 0 or n5 == 0) then 
		Say("§¹i hiÖp kh«ng mang theo ®ñ nguyªn liÖu råi!", 0)
		return 0
		
			
	else
		ncount = min(n1,n2,n3,n4,n5)

		
		
	end
	
		ConsumeEquiproomItem(ncount,6,1,3126,-1);
		for i=3117,3120 do

			ConsumeEquiproomItem(ncount,6,1,i,-1);

		end
	local tbAwardghepbohoa = 
	{	
		
		{szName = "Than hanh phu", tbProp={6,1,4284,1,0,0,0}, nCount= ncount,nExpiredTime=20181108},
		
		

	}
	tbAwardTemplet:Give(tbAwardghepbohoa, 1, {"eventthang10", "eventthang10"})
	

		
	
end


