        
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
		--Say("Chøc n¨ng bÇu cua ®ang t¹m ®ãng de test! khi nao co thong bao trang chu mêi c¸cb¹n quay l¹i");
		--return 1
	end						

	local nDate = tonumber(date("%H%M"))
	if (nDate >= 0900  and nDate <=1000) or (nDate >= 1100  and nDate <=1200) or (nDate >= 1300  and nDate <=1400) or (nDate >= 1500  and nDate <=1600) or (nDate >= 1700  and nDate <=1800) or (nDate >= 1900  and nDate <=2000) or (nDate >= 2100  and nDate <=2200) or (nDate >= 2300  and nDate <=2400) then
		Say("Chøc n¨ng bÇu cua sÏ më vµo lóc <color=yellow>kÕt thóc Tèng Kim<color> hµng ngµy");
		return 1
	end
	
	local tbOpt = {}
	--tinsert(tbOpt,"test ./testmod")

	--tinsert(tbOpt,"TiÒn ®ång ./tiendong")
	--tinsert(tbOpt,"TiÒn v¹n ./tienvan")
	tinsert(tbOpt,"Th«i ta kh«ng muèn banh x¸c./Quit")
	Say("Chän lo¹i ch¬i", getn(tbOpt), tbOpt)

        

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
	Say("<color=fire>Sßng B¹c<color>: Mét xu  ¨n mét mét xu, ®Æt xong lÊy tay lªn!!! ",7,
        	"BÇu/b1",
        	"Cua/b2",
        	"C¸/b3",
        	"Gµ/b4",
        	"Nai/b5",
        	"T«m/b6",
        	"Ta kh«ng ch¬i/no" )

end

function tienvan()
	Say("<color=fire>Sßng B¹c<color>: Mét v¹n ¨n mét v¹n, ®Æt xong lÊy tay lªn!!! ",7,
        	"BÇu/v1",
        	"Cua/v2",
        	"C¸/v3",
        	"Gµ/v4",
        	"Nai/v5",
        	"T«m/v6",
        	"Ta kh«ng ch¬i/no" )

end
	----------tien xu -----------------------------------

        function b1()
       
		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient})
		
        end	
	function GetNumberFromClient(nPutCash)
		OnPlayerPut(nPutCash)
	end

	function OnPlayerPut(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "BÇu"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquabauxu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Bau<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua BÇu so tien "..nPutCash.." tiÒn ®ång")


	end
        function b2()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient2})
 
        end	


        function GetNumberFromClient2(nPutCash)
		OnPlayerPut2(nPutCash)
	end

	function OnPlayerPut2(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "Cua"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquacuaxu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Cua<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." tiÒn ®ång")


	end
		



        function b3()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient3})
 
        end	


        function GetNumberFromClient3(nPutCash)
		OnPlayerPut3(nPutCash)
	end

	function OnPlayerPut3(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "C¸"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquacaxu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Ca<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua C¸ so tien "..nPutCash.." tiÒn ®ång")


	end
		


        function b4()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient4})

        end	


        function GetNumberFromClient4(nPutCash)
		OnPlayerPut4(nPutCash)
	end

	function OnPlayerPut4(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "Gµ"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquagaxu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Ga<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Gµ so tien "..nPutCash.." tiÒn ®ång")


	end
	


        function b5()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient5})
 
        end	


        function GetNumberFromClient5(nPutCash)
		OnPlayerPut5(nPutCash)
	end

	function OnPlayerPut5(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "Nai"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquanaixu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Nai<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Nai so tien "..nPutCash.." tiÒn ®ång")


	end
	


        function b6()
        	local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {GetNumberFromClient6})
        end	


        function GetNumberFromClient6(nPutCash)
		OnPlayerPut6(nPutCash)
	end

	function OnPlayerPut6(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCoin = CalcEquiproomItemCount(4, 417, 1, -1)
		if nOwnCoin < nPutCash then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		if ConsumeEquiproomItem(nPutCash, 4, 417, 1, -1) ~= 1 then--
			Say("Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
			return
		end
		local szName = GetName()
		ani = "T«m"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash)
       		Talk(15,"ketquatomxu","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Tom<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." ®ång<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua T«m so tien "..nPutCash.." tiÒn ®ång")


	end
--------------------------------------------

-------------tien van -------------------
	
	function v1()
       
		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv1})
		
        	end	
	function GetNumberFromClientv1(nPutCash)
		OnPlayerPutv1(nPutCash)
	end

	function OnPlayerPutv1(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "BÇu"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquabauvan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Bau<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua BÇu so tien "..nPutCash.." v¹n l­îng")


	end
        function v2()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv2})
 
        end	


        function GetNumberFromClientv2(nPutCash)
		OnPlayerPutv2(nPutCash)
	end

	function OnPlayerPutv2(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "Cua"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquacuavan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Cua<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v¹n l­îng")


	end
		



        function v3()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv3})
 
        end	


        function GetNumberFromClientv3(nPutCash)
		OnPlayerPutv3(nPutCash)
	end

	function OnPlayerPutv3(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "C¸"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquacavan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Ca<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v¹n l­îng")

	end
		


        function v4()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv4})

        end	


        function GetNumberFromClientv4(nPutCash)
		OnPlayerPutv4(nPutCash)
	end

	function OnPlayerPutv4(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "Gµ"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquagavan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Ga<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v¹n l­îng")


	end
	


        function v5()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv5})
 
        end	


        function GetNumberFromClientv5(nPutCash)
		OnPlayerPutv5(nPutCash)
	end

	function OnPlayerPutv5(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "Nai"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquanaivan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Nai<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v¹n l­îng")


	end
	


        function v6()
        		local nMaxCount = 1000
		g_AskClientNumberEx(1,nMaxCount, format("TiÒn v¹n (1-%d)", nMaxCount), {GetNumberFromClientv6})
        end	


        function GetNumberFromClientv6(nPutCash)
		OnPlayerPutv6(nPutCash)
	end

	function OnPlayerPutv6(nPutCash)
		if nPutCash > 1000 then
			Say("§õng cã ¨n gian...:D")
			return
		end
		local nOwnCash = GetCash()
		if nOwnCash < nPutCash*10000 then
			Say("Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i")
			return
		end
		Pay(nPutCash*10000)
		local szName = GetName()
		ani = "T«m"
		SetTask(2053,random(1,56))
      		SetTask(2054,nPutCash*10000)
       		Talk(15,"ketquatomvan","<color=fire>Sßng B¹c<color>: Ng­¬i ®· ®Æt <color=green>Tom<color> víi sè tiÒn c­îc lµ <color=yellow>"..nPutCash.." v¹n l­­îng<color> <enter>§Æt xong rót tay ra!!! <enter>ChuÈn bÞ.......................<enter>Khui!!!")
   

		logplayer("dulieu/baucua.txt","Nhan vat "..szName .." dat cua Cua so tien "..nPutCash.." v¹n l­îng")


	end


-------------------------------------

--------------ket qua
	
	
	function ketqua()
		local kq = GetTask(2053)
		local ketqua = ""
		if kq == 1 then ketqua = "BÇu + Cua + C¸" end 
		if kq == 2 then ketqua = "BÇu + Cua  + Gµ"  end 
		if kq == 3 then ketqua = "BÇu + Cua  + Nai"  end 
		if kq == 4 then ketqua =  "BÇu + Cua + T«m" end 
		if kq == 5 then ketqua = "BÇu + C¸ + Gµ" end 
		if kq == 6 then ketqua = "BÇu + C¸ + Nai" end 
		if kq == 7 then ketqua = "BÇu + C¸ + T«m" end 
		if kq == 8 then ketqua = "BÇu + Gµ + Nai" end 
		if kq == 9 then ketqua = "BÇu + Gµ + T«m" end 
		if kq == 10 then ketqua = "BÇu + Nai + T«m" end  -------

		if kq == 11 then ketqua = "Cua + C¸ + Gµ" end  
		if kq == 12 then ketqua = "Cua + C¸ + Nai" end 
		if kq == 13 then ketqua = "Cua + C¸ + T«m" end 
		if kq == 14 then ketqua ="Cua + Gµ + Nai" end
		if kq == 15 then ketqua ="Cua Gµ T«m" end
		if kq == 16 then ketqua ="Cua Nai Tom" end
--------------------------------------------------------------------------
		if kq == 17 then ketqua = "C¸ + Gµ + Nai" end
		if kq == 18 then ketqua = "C¸ + Gµ + T«m" end
		if kq == 19 then ketqua = "Gµ + Nai + T«m" end
		if kq == 20 then ketqua = "C¸ + Nai + T«m" end
---------------------------------------X2 Bau---------------------------------
		if kq == 21 then ketqua ="BÇu + BÇu + Cua" end 
		if kq == 22 then ketqua ="BÇu + B©u + C¸" end 
		if kq == 23 then ketqua = "BÇu + BÇu + Gµ" end 
		if kq == 24 then ketqua = "B©u + B©u + Nai" end  
		if kq == 25 then ketqua = "BÇu + BÇu + T«m" end 

------------------------------------------X2 Cua------------------------------------
		if kq == 26 then ketqua = "Cua + Cua + BÇu" end 
		if kq == 27 then ketqua = "Cua + Cua + C¸" end
		if kq == 28 then ketqua = "Cua + Cua + Gµ" end
		if kq == 29 then ketqua = "Cua + Cua + Nai" end
		if kq == 30 then ketqua = "Cua + Cua + T«m" end

-------------------------------------X2 Ca---------------------------------
		if kq == 31 then ketqua = "C¸ + C¸ + BÇu" end 
		if kq == 32 then ketqua = "C¸ + c¸ + Cua" end 
		if kq == 33 then ketqua = "C¸ + C¸ + Gµ" end
		if kq == 34 then ketqua = "C¸ C¸ Nai" end
		if kq == 35 then ketqua = "C¸ C¸ T«m" end

---------------------------------------x2 Ga-------------------------------
		if kq == 36 then ketqua = "Gµ + Gµ + BÇu" end 
		if kq == 37 then ketqua = "Gµ + Gµ + Cua" end 
		if kq == 38 then ketqua = "Gµ + Gµ + C¸" end
		if kq == 39 then ketqua = "Gµ + Gµ + Nai" end
		if kq == 40 then ketqua = "Gµ + Gµ + T«m" end

------------------------------------X2 Nai----------------------

		if kq == 41 then ketqua ="Nai + Nai + BÇu" end 
		if kq == 42 then ketqua ="Nai + Nai + Cua" end 
		if kq == 43 then ketqua ="Nai + Nai + C¸" end
		if kq == 44 then ketqua ="Nai + Nai + Gµ" end
		if kq == 45 then ketqua ="Nai + Nai + T«m" end

----------------------------------X2 Tom ------------------------------
		if kq == 46 then ketqua ="T«m + T«m + BÇu" end 
		if kq == 47 then ketqua ="T«m + T«m + Cua" end 
		if kq == 48 then ketqua ="T«m + T«m + C¸" end
		if kq == 49 then ketqua ="T«m + T«m + Gµ" end
		if kq == 50 then ketqua ="T«m + T«m + Nai" end

----------------------------------X3 ----------------------------
		if kq == 51 then ketqua = "BÇu + BÇu + BÇu" end 
		if kq == 52 then ketqua ="Cua + Cua + Cua" end
		if kq == 53 then ketqua ="C¸ + C¸ + C¸" end
		if kq == 54 then ketqua ="Gµ + Gµ + Gµ" end
		if kq == 55 then ketqua ="Nai + Nai + Nai" end
		if kq == 56 then ketqua ="T«m + T«m + T«m" end

		return ketqua
		  
	end
	function ketquatomxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 4 or kq == 7 or kq == 9 or kq == 10 or kq == 13 or kq == 15 or kq == 16 or kq == 18 or kq == 19 or kq == 20 
			or kq == 25 or kq == 30 or kq == 35 or kq == 40 or kq == 45  then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>T«m<color> víi sè tiÒn th­ëng X1 lµ: <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 46 and kq <= 50 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>T«m<color> víi sè tiÒn th­ëng X2 lµ: <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 56 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>T«m<color> víi sè tiÒn th­ëng X3 lµ: <color=yellow>"..GetTask(2054) * 4 .." Xu")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>. Chóc b¹n may m¾n lÇn sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquanaixu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 3 or kq == 6 or kq == 8 or kq == 12 or kq == 14 or kq == 16 or kq == 17 or kq == 19 or kq == 20 or kq == 24 
			or kq == 29 or kq == 34 or kq == 39 or kq == 50 or kq == 10  then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Nai<color> víi sè tiÒn th­ëng X1 lµ : <color=yellow>"..GetTask(2054) * 2 .." Xu")
		elseif kq >= 41 and kq <= 45 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Nai<color> víi sè tiÒn th­ëng X2 lµ :  <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 55 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Nai<color> víi sè tiÒn th­ëng X3 lµ :  <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
			return
		
			
		end
        	
        end


	function ketquagaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 2 or kq == 5 or kq == 8 or kq == 9 or kq == 11 or kq == 14 or kq == 15 or kq == 17 or kq == 18 or kq == 19 
			or kq == 23 or kq == 28 or kq == 33 or kq == 44 or kq == 49  then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Gµ<color> víi sè tiÒn th­ëng X1 lµ : <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 36 and kq <= 40 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Gµ<color> víi sè tiÒn th­ëng X2  lµ : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 54 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Gµ<color> víi sè tiÒn th­ëng X3 lµ : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
			return
		
			
		end
        	
        end

	
	function ketquacaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 5 or kq == 6 or kq == 7 or kq == 11 or kq == 12 or kq == 13 or kq == 17 or kq == 18 or kq == 20 
			or kq == 22 or kq == 27 or kq == 38 or kq == 43 or kq == 48  then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>C¸<color> víi sè tiÒn th­ëng X1 lµ :  <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 31 and kq <= 35 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>C¸<color> víi sè tiÒn th­ëng X2 lµ :<color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 53 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>C¸<color> víi sè tiÒn th­ëng X3 lµ : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
			return
		
			
		end
        	
        end

	function ketquacuaxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 11 or kq == 12 or kq == 13 or kq == 14 or kq == 15 or kq == 16 
			or kq == 21 or kq == 32 or kq == 37 or kq == 42 or kq == 47  then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Cua<color> víi sè tiÒn th­ëng X1 lµ : <color=yellow>"..GetTask(2054) * 2 .."Xu!")
		elseif kq >= 26 and kq <= 30 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Cua<color> víi sè tiÒn th­ëng X2 lµ : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 52 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Cua<color> víi sè tiÒn th­ëng X3 lµ : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
			return
		
			
		end
        	
        end

	function ketquabauxu()
		local kq = GetTask(2053)
		local ketqua = ketqua()
		
		if kq == 1 or kq == 2 or kq == 3 or kq == 4 or kq == 5 or kq == 6 or kq == 7 or kq == 8 or kq == 9 or kq == 10 
			or kq == 26 or kq == 31 or kq == 36 or kq == 41 or kq  == 46 then
			Talk(15,"xux1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>BÇu<color> víi sè tiÒn th­ëng X1 lµ : <color=yellow>"..GetTask(2054) * 2 .." Xu!")
		elseif kq >= 21 and kq <= 25 then
			Talk(15,"xux2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>BÇu<color> víi sè tiÒn th­ëng X2 lµ : <color=yellow>"..GetTask(2054) * 3 .." Xu!")

		elseif kq == 51 then
			Talk(15,"xux3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>BÇu<color> víi sè tiÒn th­ëng X3 lµ : <color=yellow>"..GetTask(2054) * 4 .." Xu!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>T«m<color> víi sè tiÒn th­ëng X1 lµ : <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 46 and kq <= 50 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>T«m<color> víi sè tiÒn th­ëng X2 lµ : <color=yellow>"..naward.." v¹n l­îng b¹c!")

		elseif kq == 56 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>T«m<color> víi sè tiÒn th­ëng X3 lµ : <color=yellow>"..naward.." v¹n l­îng b¹c")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>. Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Nai<color> víi sè tiÒn th­ëng X1 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 41 and kq <= 45 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Nai<color> víi sè tiÒn th­ëng X2 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")

		elseif kq == 55 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Nai<color> víi sè tiÒn th­ëng X3 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Gµ<color> víi sè tiÒn th­ëng X1 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 36 and kq <= 40 then
			naward  = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Gµ<color> víi sè tiÒn th­ëng X2 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")

		elseif kq == 54 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Gµ<color> víi sè tiÒn th­ëng X3 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>C¸<color> víi sè tiÒn th­ëng X1 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 31 and kq <= 35 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>C¸<color> víi sè tiÒn th­ëng X2 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")

		elseif kq == 53 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>C¸<color> víi sè tiÒn th­ëng X3 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>Cua<color> víi sè tiÒn th­ëng X1 lµ  <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 26 and kq <= 30 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>Cua<color> víi sè tiÒn th­ëng X2 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")

		elseif kq == 52 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>Cua<color> víi sè tiÒn th­ëng X3 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
			Talk(15,"vanx1","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng 1 con <color=green>BÇu<color> víi sè tiÒn th­ëng X1 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")
		elseif kq >= 21 and kq <= 25 then
			naward = naward * 3
			Talk(15,"vanx2","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 2 con <color=green>BÇu<color> víi sè tiÒn th­ëng X2 lµ <color=yellow>"..naward.."  v¹n l­îng b¹c!")

		elseif kq == 51 then
			naward = naward * 4
			Talk(15,"vanx3","<color=fire>Sßng B¹c<color>: Chóc mõng ng­¬i tróng liªn tôc 3 con <color=green>BÇu<color> víi sè tiÒn th­ëng X3 lµ <color=yellow>"..naward.." v¹n l­îng b¹c!")
		else
			Say("KÕt qu¶ lÇn nµy: <color=metal>"..ketqua.." <color>.Chóc b¹n may m¾n lÇn sau!!!")
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
		
        		Msg2SubWorld("Ng­¬i ch¬i "..GetName().."  nhËn ®­îc <color=yellow>"..GetTask(2054)*4 .." Xu tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
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
        		Msg2SubWorld("Ng­¬i ch¬i "..GetName().."  nhËn ®­îc <color=yellow>"..GetTask(2054)*3 .." Xu tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
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

       		 Msg2SubWorld("Ng­¬i ch¬i "..GetName().." nhËn ®­îc <color=yellow>"..GetTask(2054)*2 .." Xu tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
        end


 	
        	
        function vanx3()	
        Earn(GetTask(2054)*4)
	local naward = GetTask(2054)*4 / 10000
        Msg2SubWorld("Ng­¬i ch¬i "..GetName().."  nhËn ®­îc <color=yellow>"..naward.." v¹n l­îng tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
        end	
        function vanx2()	
        Earn(GetTask(2054)*3)
	local naward = GetTask(2054)*3 / 10000

        Msg2SubWorld("Ng­¬i ch¬i "..GetName().."  nhËn ®­îc <color=yellow>"..naward.." v¹n l­îng tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
        end
        function vanx1()
	local naward = GetTask(2054)*3 / 10000
	
        Earn(GetTask(2054)*2)
        Msg2SubWorld("Ng­¬i ch¬i "..GetName().." nhËn ®­îc <color=yellow>"..naward.." v¹n l­îng tõ thÇn tµi bÇu cua Ba l¨ng huyÖn.") 	
        end


        
 function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end