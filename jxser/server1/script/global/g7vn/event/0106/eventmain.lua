---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
--------------------------------------------------------

--TSK_CanhHoa=4993
--MOCRESETEVENT		 = 4992
--BANHTHAPCAM=4991
--task_event_tienvan=4990
----------------------config-----------
startdate= 20191010
enddate=20100628
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------
function main()
	dofile("script/global/g7vn/event/0106/eventmain.lua")
	dofile("script/global/g7vn/g7configall.lua")
	
	
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= enddate and nTime >= 0000 and nTime <= 2359) then

		local tbSay = {}

		tinsert(tbSay,"NhËn Th­ëng KÑo 7 Mµu/NhanMoc")
		tinsert(tbSay,"NhËn Th­ëng Mèc Bong Bãng./NhanMocBanhThapCam")
	-- tinsert(tbSay,"Mua Hép KÑo 7 Mµu/MuaEvent")
		--tinsert(tbSay,"Reset Event KÑo 7 Mµu./ResetEvent")
	--tinsert(tbSay,"Show Top Event./ShowTopThiep")
		
		tinsert(tbSay,"Tho¸t/no")
--		if GetAccount()=="boquyx123" or GetAccount()=="luuhuanvlv2019" then
		Say("Chµo Mõng Nh©n SÜ Tham Gia event trung thu cïng VoLamVietPK. B¹n ®· sö dông: <color=red>"..GetTask(task_eventxu).." <color>¸nh Ch­ng ThËp CÈm", getn(tbSay), tbSay)
--	end
		
	else
		Say("Chøc n¨ng ®· kÕt thóc ")
	end
end


--------------------------------------

function ShowTopThiep()

tbLogEvent:ShowTopList()
end

------------------------------
function MuaEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 1 Hép Lä N­íc Hoa <25xu - 50 b¸nh> ./muahop1")
	--	tinsert(tbSay,"Mua 10 Hép Lä N­íc Hoa <250xu - 500 b¸nh> ./muahop10")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function muahop1()
local tbItem = {
	{szName="Hép b¸nh trung thu", tbProp={6,1,30031,1,0,0},nCount = 1,nExpiredTime=20200116},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 25  then
		ConsumeEquiproomItem(25, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng b¹n ®· mua Thµnh C«ng 1 hép b¸nh trung thu")
	else
		Say("Kh«ng ®ñ 25 Xu, Xin Xem L¹i")
	end

end

---------------------------------------------------------------------------------------------------------------------------

function muahop10()
local tbItem = {
	{szName="Hép b¸nh trung thu", tbProp={6,1,30031,1,0,0},nCount = 10,nExpiredTime=20200116},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng b¹n ®· mua Thµnh C«ng 10 hép b¸nh trung thu")
	else
		Say("Kh«ng ®ñ 250 Xu, Xin Xem L¹i")
	end

end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600./Moc500")
		tinsert(tbSay,"NhËn mèc 1200./Moc1000")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_eventxu).." <color>Lä N­íc Hoa", getn(tbSay), tbSay)
	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMocBanhThapCam()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600 ./Moc600ThapCam")
		tinsert(tbSay,"NhËn mèc 1200./Moc1200ThapCam")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_event_tienvan).." <color>Bong Bãng", getn(tbSay), tbSay)
	
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc600ThapCam()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(task_event_tienvan) >= 600) and (GetTask(task_moc_event_tienvan) == 0) then
		local tbAward = {
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=2},	
		--	{szName="Ngù Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 500") SetTask(task_moc_event_tienvan,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 600 Bong Bãng")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500 Event tien van\n");		

	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
----------------------------------------------------Nhan Moc 1000 Thap Cam -----------------------------------------------------------------------------------------------------
function Moc1200ThapCam()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(task_event_tienvan) >= 1200)  and (GetTask(task_moc_event_tienvan) == 1) then
		local tbAward = {
			[1] = {
		--	{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},
		--	{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=2},	
	--		{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=30*24*60},
			{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1,nExpiredTime=14*24*60},	
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=2},	
			{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=2},	
			{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=1},			
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		
						local d = random(1,50)
				if d==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;
				
				local d1 = random(1,10)
				if d1==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);
				end;
				local d2 = random(1,2)
				if d2==1 then
							local i2 = random(1,3)
							if i2==1 then
							tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4429,4430),1,1},nCount=1,},}, "test", 1);
							else if i2==2 then
							tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
							else if i2==3 then
								tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4436,4437),1,1},nCount=1,},}, "test", 1);
								end
								end
								end
				end
				local d3 = random(1,10)
				if d3==5 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh¶i",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d4 = random(1,13)
				if d4==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d5 = random(1,22)
				if d5==3 then
				tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				end;
				
				
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1200 Event tien van\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event Bong Bãng 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_moc_event_tienvan,2)
	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc500()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(task_eventxu) >= 600) and (GetTask(task_moc_eventxu) == 0) then
		local tbAward = {
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
	--		{szName="§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,0,0},nCount=2},	
			{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 600") SetTask(task_moc_eventxu,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 600")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 600\n");		

	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end

----------------------------------------------------------------------------------------------
function ResetEvent()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(task_eventxu) >= 1000) and (GetTask(MOCRESETEVENT)) ==0 then
		if (Xu >= 100) then
			SetTask(task_eventxu,0)-- reset banh dac biet ve 0
			SetTask(task_moc_eventxu,0)  --reset moc banh db ve 0
			SetTask(MOCRESETEVENT,1) --moc luu lai da reset 1 lan
		--	SetTask(TSK_CanhHoa,0)--reset banh trung thu ve 0
		ConsumeEquiproomItem(100, 4,417, 1,-1)

			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 100 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 1000 KÑo 7 Mµu hoÆc ®· reset 1 lÇn råi")
	end
end
---------
----------------------------------------------------Nhan Moc 1000 -----------------------------------------------------------------------------------------------------
function Moc1000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(task_eventxu) >= 1200)  and (GetTask(task_moc_eventxu) == 1)then
		local tbAward = {
			[1] = {
		--	{szName="Ngua RanDom",tbProp={0,random(3963,3966)},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		--	{{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=30*24*60},},
			--{{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=30*24*60},},
			{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1,nExpiredTime=30*24*60},		
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=10},		
		{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=3},	
	--		{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=2},	
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=2},			
		{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0,0},nCount=1},			
		--	{szName="§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,0,0},nCount=2},			
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},	
				
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e9}}, "test", 1);
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_moc_eventxu,2)
				local a = random(1,5)
				if a==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Khai",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;

				local b = random(1,5)
				if b==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng VK ",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;

				local c = random(1,10)
				if c==5 then
					tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				end;


				local d = random(1,6)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,6)
				if e==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i = random(1,10)
				if i==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng LÖnh",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i1 = random(1,10)
				if i1==5 then
			---		tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,1},nCount=5,},}, "test", 1);
				end;
				
				local i2 = random(1,3)
				if i2==1 then
			tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4429,4431),1,1},nCount=1,},}, "test", 1);
				else if i2==2 then
				tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
				else if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4436,4438),1,1},nCount=1,},}, "test", 1);
					end
					end
					end
				local i3 = random(1,40)
				if i3==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,4434,1,1},nCount=1,},}, "test", 1);--do pho y
				end;
	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
