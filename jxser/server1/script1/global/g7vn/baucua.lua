        
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\timerlist.lua")

Include("\\script\\lib\\player.lua")
--Include("\\script\\dailogsys\\dailogsay.lua")

	ani = ""
	
	

function main() 
	dofile("script/global/g7vn/baucua.lua");
	local szName = "sonho212"
	if GetAccount() ~= szName then
		--Say("Ch�c n�ng b�u cua �ang t�m ��ng de test! khi nao co thong bao trang chu m�i c�cb�n quay l�i");
		--return 1
	end						

	local nDate = tonumber(date("%H%M"))
	if (nDate >= 0900  and nDate <=1000) or (nDate >= 1100  and nDate <=1200) or (nDate >= 1300  and nDate <=1400) or (nDate >= 1500  and nDate <=1600) or (nDate >= 1700  and nDate <=1800) or (nDate >= 1900  and nDate <=2000) or (nDate >= 2100  and nDate <=2200) or (nDate >= 2300  and nDate <=2400) then
		Say("Ch�c n�ng b�u cua s� m� v�o l�c <color=yellow>k�t th�c T�ng Kim<color> h�ng ng�y");
		return 1
	end
	
	local tbOpt = {}
	--tinsert(tbOpt,"test ./testmod")

	--tinsert(tbOpt,"Ti�n ��ng ./tiendong")
	--tinsert(tbOpt,"Ti�n v�n ./tienvan")
	tinsert(tbOpt,"Th�i ta kh�ng mu�n banh x�c./Quit")
	Say("Ch�n lo�i ch�i", getn(tbOpt), tbOpt)

        

end
function testmod()
local n = 198
a = mod(n,100)
b = (n - a) / 100
AddStackItem(a,4,417,1,0,0,0)
for i = 1,b do
	AddStackItem(100,4,417,1,0,0,0)

end
	
end

function tiendong()
	Say("<color=fire>S�ng B�c<color>: M�t xu  �n m�t m�t xu, ��t xong l�y tay l�n!!! ",7,
        	"B�u/b1",
        	"Cua/b2",
        	"C�/b3",
        	"G�/b4",
        	"Nai/b5",
        	"T�m/b6",
        	"Ta kh�ng ch�i/no" )

end

function tienvan()
	Say("<color=fire>S�ng B�c<color>: M�t v�n �n m�t v�n, ��t xong l�y tay l�n!!! ",7,
        	"B�u/v1",
        	"Cua/v2",
        	"C�/v3",
        	"G�/v4",
        	"Nai/v5",
        	"T�m/v6",
        	"Ta kh�ng ch�i/no" )

end
	----------tien xu -----------------------------------

        function b1()
       
		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient})
		
        end	
	function GetNumberFromClient(nPutCash)
		OnPlayerPut(nPutCash)
	end

	function OnPlayerPut(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "B�u"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquabauxu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Bau<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua B�u so tien "..nPutCash.." ti�n ��ng")


	end
        function b2()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient2})
 
        end	


        function GetNumberFromClient2(nPutCash)
		OnPlayerPut2(nPutCash)
	end

	function OnPlayerPut2(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "Cua"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquacuaxu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Cua<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." ti�n ��ng")


	end
		



        function b3()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient3})
 
        end	


        function GetNumberFromClient3(nPutCash)
		OnPlayerPut3(nPutCash)
	end

	function OnPlayerPut3(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "C�"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquacaxu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Ca<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua C� so tien "..nPutCash.." ti�n ��ng")


	end
		


        function b4()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient4})

        end	


        function GetNumberFromClient4(nPutCash)
		OnPlayerPut4(nPutCash)
	end

	function OnPlayerPut4(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "G�"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquagaxu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Ga<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua G� so tien "..nPutCash.." ti�n ��ng")


	end
	


        function b5()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient5})
 
        end	


        function GetNumberFromClient5(nPutCash)
		OnPlayerPut5(nPutCash)
	end

	function OnPlayerPut5(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "Nai"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquanaixu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Nai<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Nai so tien "..nPutCash.." ti�n ��ng")


	end
	


        function b6()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {GetNumberFromClient6})
        end	


        function GetNumberFromClient6(nPutCash)
		OnPlayerPut6(nPutCash)
	end

	function OnPlayerPut6(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
			return
		end
		local szName = GetName()
		ani = "T�m"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquatomxu","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Tom<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." ��ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua T�m so tien "..nPutCash.." ti�n ��ng")


	end
--------------------------------------------

-------------tien van -------------------
	
	function v1()
       
		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv1})
		
        	end	
	function GetNumberFromClientv1(nPutCash)
		OnPlayerPutv1(nPutCash)
	end

	function OnPlayerPutv1(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "B�u"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquabauvan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Bau<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua B�u so tien "..nPutCash.." v�n l��ng")


	end
        function v2()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv2})
 
        end	


        function GetNumberFromClientv2(nPutCash)
		OnPlayerPutv2(nPutCash)
	end

	function OnPlayerPutv2(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "Cua"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquacuavan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Cua<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v�n l��ng")


	end
		



        function v3()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv3})
 
        end	


        function GetNumberFromClientv3(nPutCash)
		OnPlayerPutv3(nPutCash)
	end

	function OnPlayerPutv3(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "C�"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquacavan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Ca<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v�n l��ng")

	end
		


        function v4()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv4})

        end	


        function GetNumberFromClientv4(nPutCash)
		OnPlayerPutv4(nPutCash)
	end

	function OnPlayerPutv4(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "G�"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquagavan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Ga<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v�n l��ng")


	end
	


        function v5()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv5})
 
        end	


        function GetNumberFromClientv5(nPutCash)
		OnPlayerPutv5(nPutCash)
	end

	function OnPlayerPutv5(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "Nai"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquanaivan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Nai<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v�n l��ng")


	end
	


        function v6()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("Ti�n v�n (1-%d)", nMaxCount), {GetNumberFromClientv6})
        end	


        function GetNumberFromClientv6(nPutCash)
		OnPlayerPutv6(nPutCash)
	end

	function OnPlayerPutv6(nPutCash)
		if nPutCash > 1000 then
			Say("��ng c� �n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "T�m"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquatomvan","<color=fire>S�ng B�c<color>: Ng��i �� ��t <color=green>Tom<color> v�i s� ti�n c��c l� <color=yellow>"..nPutCash.." v�n l���ng<color> <enter>��t xong r�t tay ra!!! <enter>Chu�n b�.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v�n l��ng")


	end


-------------------------------------

--------------ket qua
	
	
	function ketqua()
		local kq = GetTask(2053)
		local ketqua = ""
		if kq == 1 then ketqua = "B�u + Cua + C�" end 
		if kq == 2 then ketqua = "B�u + Cua  + G�"  end 
		if kq == 3 then ketqua = "B�u + Cua  + Nai"  end 
		if kq == 4 then ketqua =  "B�u + Cua + T�m" end 
		if kq == 5 then ketqua = "B�u + C� + G�" end 
		if kq == 6 then ketqua = "B�u + C� + Nai" end 
		if kq == 7 then ketqua = "B�u + C� + T�m" end 
		if kq == 8 then ketqua = "B�u + G� + Nai" end 
		if kq == 9 then ketqua = "B�u + G� + T�m" end 
		if kq == 10 then ketqua = "B�u + Nai + T�m" end  -------

		if kq == 11 then ketqua = "Cua + C� + G�" end  
		if kq == 12 then ketqua = "Cua + C� + Nai" end 
		if kq == 13 then ketqua = "Cua + C� + T�m" end 
		if kq == 14 then ketqua ="Cua + G� + Nai" end
		if kq == 15 then ketqua ="Cua G� T�m" end
		if kq == 16 then ketqua ="Cua Nai Tom" end
--------------------------------------------------------------------------
		if kq == 17 then ketqua = "C� + G� + Nai" end
		if kq == 18 then ketqua = "C� + G� + T�m" end
		if kq == 19 then ketqua = "G� + Nai + T�m" end
		if kq == 20 then ketqua = "C� + Nai + T�m" end
---------------------------------------X2 Bau---------------------------------
		if kq == 21 then ketqua ="B�u + B�u + Cua" end 
		if kq == 22 then ketqua ="B�u + B�u + C�" end 
		if kq == 23 then ketqua = "B�u + B�u + G�" end 
		if kq == 24 then ketqua = "B�u + B�u + Nai" end  
		if kq == 25 then ketqua = "B�u + B�u + T�m" end 

------------------------------------------X2 Cua------------------------------------
		if kq == 26 then ketqua = "Cua + Cua + B�u" end 
		if kq == 27 then ketqua = "Cua + Cua + C�" end
		if kq == 28 then ketqua = "Cua + Cua + G�" end
		if kq == 29 then ketqua = "Cua + Cua + Nai" end
		if kq == 30 then ketqua = "Cua + Cua + T�m" end

-------------------------------------X2 Ca---------------------------------
		if kq == 31 then ketqua = "C� + C� + B�u" end 
		if kq == 32 then ketqua = "C� + c� + Cua" end 
		if kq == 33 then ketqua = "C� + C� + G�" end
		if kq == 34 then ketqua = "C� C� Nai" end
		if kq == 35 then ketqua = "C� C� T�m" end

---------------------------------------x2 Ga-------------------------------
		if kq == 36 then ketqua = "G� + G� + B�u" end 
		if kq == 37 then ketqua = "G� + G� + Cua" end 
		if kq == 38 then ketqua = "G� + G� + C�" end
		if kq == 39 then ketqua = "G� + G� + Nai" end
		if kq == 40 then ketqua = "G� + G� + T�m" end

------------------------------------X2 Nai----------------------

		if kq == 41 then ketqua ="Nai + Nai + B�u" end 
		if kq == 42 then ketqua ="Nai + Nai + Cua" end 
		if kq == 43 then ketqua ="Nai + Nai + C�" end
		if kq == 44 then ketqua ="Nai + Nai + G�" end
		if kq == 45 then ketqua ="Nai + Nai + T�m" end

----------------------------------X2 Tom ------------------------------
		if kq == 46 then ketqua ="T�m + T�m + B�u" end 
		if kq == 47 then ketqua ="T�m + T�m + Cua" end 
		if kq == 48 then ketqua ="T�m + T�m + C�" end
		if kq == 49 then ketqua ="T�m + T�m + G�" end
		if kq == 50 then ketqua ="T�m + T�m + Nai" end

----------------------------------X3 ----------------------------
		if kq == 51 then ketqua = "B�u + B�u + B�u" end 
		if kq == 52 then ketqua ="Cua + Cua + Cua" end
		if kq == 53 then ketqua ="C� + C� + C�" end
		if kq == 54 then ketqua ="G� + G� + G�" end
		if kq == 55 then ketqua ="Nai + Nai + Nai" end
		if kq == 56 then ketqua ="T�m + T�m + T�m" end

		return ketqua
		  
	end
	function ketquatomxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 4 or kq == 7 or kq == 9 or kq == 10 or kq == 13 or kq == 15 or kq == 16 or kq == 18 or kq == 19 or kq == 20 
			or kq == 25 or kq == 30 or kq == 35 or kq == 40 or kq == 45  then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>T�m<color> v�i s� ti�n th��ng X1 l�: <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 46 and kq <= 50 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>T�m<color> v�i s� ti�n th��ng X2 l�: <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 56 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>T�m<color> v�i s� ti�n th��ng X3 l�: <color=yellow>"..GetTask(2054) * 4 .." Xu")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>. Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquanaixu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 3 or kq == 6 or kq == 8 or kq == 12 or kq == 14 or kq == 16 or kq == 17 or kq == 19 or kq == 20 or kq == 24 
			or kq == 29 or kq == 34 or kq == 39 or kq == 50 or kq == 10  then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>Nai<color> v�i s� ti�n th��ng X1 l� : <color=yellow>"..GetTask(2054) * 2 .." Xu")
		elseif kq >= 41 and kq <= 45 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>Nai<color> v�i s� ti�n th��ng X2 l� :  <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 55 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>Nai<color> v�i s� ti�n th��ng X3 l� :  <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end


	function ketquagaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 2 or kq == 5 or kq == 8 or kq == 9 or kq == 11 or kq == 14 or kq == 15 or kq == 17 or kq == 18 or kq == 19 
			or kq == 23 or kq == 28 or kq == 33 or kq == 44 or kq == 49  then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>G�<color> v�i s� ti�n th��ng X1 l� : <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 36 and kq <= 40 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>G�<color> v�i s� ti�n th��ng X2  l� : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 54 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>G�<color> v�i s� ti�n th��ng X3 l� : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquacaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 5 or kq == 6 or kq == 7 or kq == 11 or kq == 12 or kq == 13 or kq == 17 or kq == 18 or kq == 20 
			or kq == 22 or kq == 27 or kq == 38 or kq == 43 or kq == 48  then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>C�<color> v�i s� ti�n th��ng X1 l� :  <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 31 and kq <= 35 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>C�<color> v�i s� ti�n th��ng X2 l� :<color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 53 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>C�<color> v�i s� ti�n th��ng X3 l� : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	function ketquacuaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 11 or kq == 12 or kq == 13 or kq == 14 or kq == 15 or kq == 16 
			or kq == 21 or kq == 32 or kq == 37 or kq == 42 or kq == 47  then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>Cua<color> v�i s� ti�n th��ng X1 l� : <color=yellow>"..GetTask(2054) * 2 .."Xu!")
		elseif kq >= 26 and kq <= 30 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>Cua<color> v�i s� ti�n th��ng X2 l� : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 52 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>Cua<color> v�i s� ti�n th��ng X3 l� : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	function ketquabauxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 5 or kq == 6 or kq == 7 or kq == 8 or kq == 9 or kq == 10 
			or kq == 26 or kq == 31 or kq == 36 or kq == 41 or kq  == 46 then
			Talk(15,"xux1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>B�u<color> v�i s� ti�n th��ng X1 l� : <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 21 and kq <= 25 then
			Talk(15,"xux2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>B�u<color> v�i s� ti�n th��ng X2 l� : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 51 then
			Talk(15,"xux3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>B�u<color> v�i s� ti�n th��ng X3 l� : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end
	
	
	------------------thuong tien van


	function ketquatomvan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000
		
		if kq == 4 or kq == 7 or kq == 9 or kq == 10 or kq == 13 or kq == 15 or kq == 16 or kq == 18 or kq == 19 or kq == 20 
			or kq == 25 or kq == 30 or kq == 35 or kq == 40 or kq == 45  then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>T�m<color> v�i s� ti�n th��ng X1 l� : <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 46 and kq <= 50 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>T�m<color> v�i s� ti�n th��ng X2 l� : <color=yellow>"..naward.." v�n l��ng b�c!")

		elseif kq == 56 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>T�m<color> v�i s� ti�n th��ng X3 l� : <color=yellow>"..naward.." v�n l��ng b�c")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>. Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquanaivan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000

		
		if kq == 3 or kq == 6 or kq == 8 or kq == 12 or kq == 14 or kq == 16 or kq == 17 or kq == 19 or kq == 20 or kq == 24 
			or kq == 29 or kq == 34 or kq == 39 or kq == 50 or kq == 10  then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>Nai<color> v�i s� ti�n th��ng X1 l�  <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 41 and kq <= 45 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>Nai<color> v�i s� ti�n th��ng X2 l� <color=yellow>"..naward.." v�n l��ng b�c!")

		elseif kq == 55 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>Nai<color> v�i s� ti�n th��ng X3 l� <color=yellow>"..naward.." v�n l��ng b�c!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end


	function ketquagavan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000

		if kq == 2 or kq == 5 or kq == 8 or kq == 9 or kq == 11 or kq == 14 or kq == 15 or kq == 17 or kq == 18 or kq == 19 
			or kq == 23 or kq == 28 or kq == 33 or kq == 44 or kq == 49  then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>G�<color> v�i s� ti�n th��ng X1 l�  <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 36 and kq <= 40 then
			naward  = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>G�<color> v�i s� ti�n th��ng X2 l�  <color=yellow>"..naward.." v�n l��ng b�c!")

		elseif kq == 54 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>G�<color> v�i s� ti�n th��ng X3 l�  <color=yellow>"..naward.." v�n l��ng b�c!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquacavan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000

		if kq == 1 or kq == 5 or kq == 6 or kq == 7 or kq == 11 or kq == 12 or kq == 13 or kq == 17 or kq == 18 or kq == 20 
			or kq == 22 or kq == 27 or kq == 38 or kq == 43 or kq == 48  then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>C�<color> v�i s� ti�n th��ng X1 l� <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 31 and kq <= 35 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>C�<color> v�i s� ti�n th��ng X2 l�  <color=yellow>"..naward.." v�n l��ng b�c!")

		elseif kq == 53 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>C�<color> v�i s� ti�n th��ng X3 l�  <color=yellow>"..naward.." v�n l��ng b�c!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	function ketquacuavan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000

		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 11 or kq == 12 or kq == 13 or kq == 14 or kq == 15 or kq == 16 
			or kq == 21 or kq == 32 or kq == 37 or kq == 42 or kq == 47  then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>Cua<color> v�i s� ti�n th��ng X1 l�  <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 26 and kq <= 30 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>Cua<color> v�i s� ti�n th��ng X2 l� <color=yellow>"..naward.." v�n l��ng b�c!")

		elseif kq == 52 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>Cua<color> v�i s� ti�n th��ng X3 l� <color=yellow>"..naward.." v�n l��ng b�c!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end

	function ketquabauvan()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		local naward = GetTask(2054) / 10000

		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 5 or kq == 6 or kq == 7 or kq == 8 or kq == 9 or kq == 10 
			or kq == 26 or kq == 31 or kq == 36 or kq == 41 or kq  == 46 then
			naward = naward * 2
			Talk(15,"vanx1","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng 1 con <color=green>B�u<color> v�i s� ti�n th��ng X1 l� <color=yellow>"..naward.." v�n l��ng b�c!")
		elseif kq >= 21 and kq <= 25 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 2 con <color=green>B�u<color> v�i s� ti�n th��ng X2 l� <color=yellow>"..naward.."  v�n l��ng b�c!")

		elseif kq == 51 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>S�ng B�c<color>: Ch�c m�ng ng��i tr�ng li�n t�c 3 con <color=green>B�u<color> v�i s� ti�n th��ng X3 l� <color=yellow>"..naward.." v�n l��ng b�c!")
		else
			Say("K�t qu� l�n n�y: <color=metal>"..ketqua.." <color>.Ch�c b�n may m�n l�n sau!!!")
			return
		
			
		end
        	
        end
	
--------------------------

        
	
	

        	
        	
        	
        function xux3()	
        
		local n = (GetTask(2054)*4)
		if n > 100 then
			a = mod(n,100)
			b = (n - a) / 100
			AddStackItem(a,4,417,1,0,0,0)
			for i = 1,b do
				AddStackItem(100,4,417,1,0,0,0)

			end
			
		else
			AddStackItem(n,4,417,1,0,0,0)
		end
		
        		Msg2SubWorld("Ng��i ch�i "..GetName().."  nh�n ���c <color=yellow>"..GetTask(2054)*4 .." Xu t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end	
        function xux2()	
        	local n = (GetTask(2054)*3)
		if n > 100 then
			a = mod(n,100)
			b = (n - a) / 100
			AddStackItem(a,4,417,1,0,0,0)
			for i = 1,b do
				AddStackItem(100,4,417,1,0,0,0)

			end
			
		else
			AddStackItem(n,4,417,1,0,0,0)
		end
        		Msg2SubWorld("Ng��i ch�i "..GetName().."  nh�n ���c <color=yellow>"..GetTask(2054)*3 .." Xu t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end
        function xux1()	
        		local n = (GetTask(2054)*2)
		if n > 100 then
			a = mod(n,100)
			b = (n - a) / 100
			AddStackItem(a,4,417,1,0,0,0)
			for i = 1,b do
				AddStackItem(100,4,417,1,0,0,0)

			end
			
		else
			AddStackItem(n,4,417,1,0,0,0)
		end

       		 Msg2SubWorld("Ng��i ch�i "..GetName().." nh�n ���c <color=yellow>"..GetTask(2054)*2 .." Xu t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end


 	
        	
        function vanx3()	
        Earn(GetTask(2054)*4)
	local naward = GetTask(2054)*4 / 10000
        Msg2SubWorld("Ng��i ch�i "..GetName().."  nh�n ���c <color=yellow>"..naward.." v�n l��ng t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end	
        function vanx2()	
        Earn(GetTask(2054)*3)
	local naward = GetTask(2054)*3 / 10000

        Msg2SubWorld("Ng��i ch�i "..GetName().."  nh�n ���c <color=yellow>"..naward.." v�n l��ng t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end
        function vanx1()
	local naward = GetTask(2054)*3 / 10000
	
        Earn(GetTask(2054)*2)
        Msg2SubWorld("Ng��i ch�i "..GetName().." nh�n ���c <color=yellow>"..naward.." v�n l��ng t� th�n t�i b�u cua Ba l�ng huy�n.") 	
        end


        
 function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end