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
	--tinsert(tbOpt, "L�m event hoa/ghepevent")

	
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?\n<color=green>Event th�ng 10 ph� n� Vi�t Nam<color>\nB�n �ang s� d�ng:\n- B� hoa <color=red>"..GetTask(3910).."<color> L�n!!\n- Gi� hoa <color=red>"..GetTask(3911).."<color> l�n!", getn(tbOpt), tbOpt)	
end


--------------------------------------------

function ghepevent()
	local tbSay = {}
		tinsert(tbSay,"L�m gi� h�./ghepgiohoa")
		tinsert(tbSay,"L�m b� hoa ./ghepbohoa")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p mu�n gh�p lo�i n�o? ", getn(tbSay), tbSay)


end
--------------------------------------------------------------------------------------
function muaevent() 

	local tbSay = {}
		tinsert(tbSay,"Mua Gi� ��ng hoa ./giodung")
		tinsert(tbSay,"Mua n� c�t hoa ./nocothoa")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)



end

function giodung()
local tbSay = {}
		tinsert(tbSay,"Mua 50 gi�<250xu> ./mua50gio")
		tinsert(tbSay,"Mua 10 gi�<50xu>./mua10gio")
       		tinsert(tbSay,"Mua 5 gi�<25xu>./mua5gio")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

function nocothoa()
local tbSay = {}
		tinsert(tbSay,"Mua 50 n�<75van> ./mua50no")
		tinsert(tbSay,"Mua 10 n�<15van>./mua10no")
       		tinsert(tbSay,"Mua 5 n�<7.5van>./mua5no")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function mua50gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Gi� ��ng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Gi� ��ng hoa"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 Gi� ��ng hoa><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>250 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function mua10gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Gi� ��ng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "Gi� ��ng hoa"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><10 Gi� ��ng hoa><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>50 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function mua5gio()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 25  then
		ConsumeEquiproomItem(25, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Gi� ��ng hoa", tbProp ={ 6, 1, 3123, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "Gi� ��ng hoa"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><5 Gi� ��ng hoa><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>25 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


-----------------------------------------

function mua50no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 750000  then
		Pay(750000)
		tbAwardTemplet:GiveAwardByList({{szName = "C�i N� ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "C�i N� "))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 C�i N� ><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>75 v�n <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function mua10no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 150000  then
		Pay(150000)
		tbAwardTemplet:GiveAwardByList({{szName = "C�i N� ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=10}}, format("Get %s", "C�i N� "))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><10 C�i N� ><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>15 v�n<color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function mua5no()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 75000  then
		Pay(75000)
		tbAwardTemplet:GiveAwardByList({{szName = "C�i N� ", tbProp ={ 6, 1, 3126, 1, 1, 0, 0, 0}, nRate = 100, nCount=5}}, format("Get %s", "C�i N� "))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><5 C�i N� ><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>7.5 v�n<color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


--------------------------------------------------------------------------------------------------------------------------------------------


tbgiohoa = {
		
			{"Hoa h�ng tr�ng",3117},
			{"Hoa h�ng xanh",3118},
			{"Hoa h�ng v�ng",3119},
			{"Hoa h�ng ��",3120},
			{"Gi� ��ng",3123},
			

}



function ghepgiohoa()
	
	local ncount = 0
	local n1 = CalcEquiproomItemCount(6,1,tbgiohoa[1][2],-1)
	local n2 = CalcEquiproomItemCount(6,1,tbgiohoa[2][2],-1)
	local n3 = CalcEquiproomItemCount(6,1,tbgiohoa[3][2],-1)
	local n4 = CalcEquiproomItemCount(6,1,tbgiohoa[4][2],-1)
	local n5 = CalcEquiproomItemCount(6,1,tbgiohoa[5][2],-1)	
	if( n1 == 0 or n2 == 0 or n3 == 0 or n4 == 0 or n5 == 0) then 
		Say("��i hi�p kh�ng mang theo �� nguy�n li�u r�i!", 0)
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
		
			{"Hoa h�ng tr�ng",3117},
			{"Hoa h�ng xanh",3118},
			{"Hoa h�ng v�ng",3119},
			{"Hoa h�ng ��",3120},
			{"N� c�t",3126},

}



function ghepbohoa()
	
	local ncount = 0
	local n1 = CalcEquiproomItemCount(6,1,tbbohoa[1][2],-1)
	local n2 = CalcEquiproomItemCount(6,1,tbbohoa[2][2],-1)
	local n3 = CalcEquiproomItemCount(6,1,tbbohoa[3][2],-1)
	local n4 = CalcEquiproomItemCount(6,1,tbbohoa[4][2],-1)
	local n5 = CalcEquiproomItemCount(6,1,tbbohoa[5][2],-1)	
	if( n1 == 0 or n2 == 0 or n3 == 0 or n4 == 0 or n5 == 0) then 
		Say("��i hi�p kh�ng mang theo �� nguy�n li�u r�i!", 0)
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


