IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")

function quanlychanle()
dofile("script/global/g7vn/chanle/chanle.lua");
	SetTask(4189,0)
	SetTask(4202,0)
	SetFightState(1)
	if GetAccount() == "testgame4" or GetAccount()=="thaipham1" then
		local tbOpt =
	{
	
		{"M� ��nh b�c.", rsdanhbac},
		{"G�i NPC.", danhbac},
		{"Kho� kh�ng cho ��nh n�a.", khoadanhbaca},
		{"Ph�t th��ng Ch�n.", phatthuongchan},
		
	--	{"goi npc le", ketquale},
	--	{"goi npc chan", ketquachan},
		{"Ph�t th��ng L�.", phatthuongle},
		{"Thu h�i L� n�u ph�t nh�m.", laytienle},
		{"Thu h�i Ch�n n�u ph�t nh�m.", laytienchan},

		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Anh c�n g�?", tbOpt)	
	
	
		
	end
	
	return 1

end


function phatthuongchan()
local nNum = 800
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" or GetName() == "�sdfdf�" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5077)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		AddStackItem(1,4,417,1,1,0,0,0)
		end

		Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color> th�ng <color=orange>"..thang.." xu")
		
		local nNum1 = 600
		for i1=1,nNum1 do
   		 gmidx1=PlayerIndex1
   	 	PlayerIndex1=i1
   		 TarName=GetName()
 		   	

	end
    PlayerIndex1=gmidx1


	
	end	

	end
		
    PlayerIndex=gmidx
	

 
end

Msg2SubWorld("<color=yellow>Admin ph�t th��ng Ch�n ");

--Msg2SubWorld("<color=cyan>B�n L� ��nh:"..GetTask(4189).." xu t�t c� ");
--Msg2SubWorld("<color=orange>B�n Ch�n ��nh:"..GetTask(4202).." xu t�t c� ");
local conx= GetTask(4203) + (GetTask(4189) - GetTask(4202))
--Msg2SubWorld("<color=yellow>Admin b� v�n 10k xu c�n : "..conx.." xu ");

end;

function laytienchan()

for i=1,800 do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "a" or GetName() == "�sdfdf�" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5077)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		ConsumeEquiproomItem(1,4,417,1,-1)
		end

		Msg2SubWorld("��i hi�p <color=cyan>"..GetName().."<color> bi lay lai <color=orange>"..thang.." xu")
		
		local nNum1 = 600
		for i1=1,nNum1 do
   		 gmidx1=PlayerIndex1
   	 	PlayerIndex1=i1
   		 TarName=GetName()
 		   if GetAccount() == "admin" or GetName() == "�sdfdf�" then
			
			else
		
	
			end	

	end
    PlayerIndex1=gmidx1


	
	end	

	end
		
    PlayerIndex=gmidx
	

   
end
end

function laytienle()

for i=1,800 do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" or GetName() == "�sdfdf�" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5078)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		ConsumeEquiproomItem(1,4,417,1,-1)
		end

		Msg2SubWorld("��i hi�p <color=cyan>"..GetName().."<color> bi lay lai <color=orange>"..thang.." xu")
		
		local nNum1 = 600
		for i1=1,nNum1 do
   		 gmidx1=PlayerIndex1
   	 	PlayerIndex1=i1
   		 TarName=GetName()
 		  	

	end
    PlayerIndex1=gmidx1


	
	end	

	end
		
    PlayerIndex=gmidx
	


end
end

function phatthuongle()
local nNum = 800
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5078)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		AddStackItem(1,4,417,1,1,0,0,0)
		end

		Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color> th�ng <color=orange>"..thang.." xu")
		
		local nNum1 = 600
		for i1=1,nNum1 do
   		 gmidx1=PlayerIndex1
   	 	PlayerIndex1=i1
   		 TarName=GetName()
 		   

	end
    PlayerIndex1=gmidx1


	
	end	

	end
		
    PlayerIndex=gmidx
	


end

Msg2SubWorld("<color=cyan>Admin ph�t th��ng L� th�ng ");

--Msg2SubWorld("<color=cyan>B�n L� ��nh:"..GetTask(4189).." xu t�t c� ");
--Msg2SubWorld("<color=orange>B�n Ch�n ��nh:"..GetTask(4202).." xu t�t c� ");

end;



function khoadanhbaca()
local nNum = 600
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" then

	else
		SetTask(5076,1)
		
	end
    PlayerIndex=gmidx
	

 
end
Msg2SubWorld("<color=cyan>Admin �� kh�a l��t ��nh l�n n�y ");

end;


function rsdanhbac()
local nSubWorldID = GetWorldPos();
		if nSubWorldID == 523 then
SetTask(4189,0)
SetTask(4202,0)
AskClientForNumber("rsdanhbac1",0,1180,"Nh�p s� ti�n c�n chuy�n")
else
end
end


function rsdanhbac1(num)
local nNum = num + 800
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" then

	else
		SetTask(5076,0)
		SetTask(5077,0)
		SetTask(5078,0)
	end
    PlayerIndex=gmidx
	


end
Msg2SubWorld("Admin M� ��nh b�c");

end;


function danhbac(nItemIdx)


	
	--local GoldenBoss = { {15, "Ch�n L� B� Con",5,270},
	--			}		  
	--local bosspro = {};
	--local W,X,Y = GetWorldPos();
	--local nMapId = W;
	
	--	local numth = randomaward(bosspro);
	--	local GoldenBossId = GoldenBoss[numth][1];
	--	local GoldenBossName = GoldenBoss[numth][2];
	--	local GoldenBossSeries = GoldenBoss[numth][3];
		
	--		GoldenBossSeries = random( 0, 4);
			capdo = random(1,2)
		local W,X,Y = GetWorldPos(); 
		local nMapId = W; 
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch�n L� B� Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
		
		--local npcindex = AddNpcEx( GoldenBossId,  capdo , GoldenBossSeries, SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1, GoldenBossName, 1 );
		--SetNpcDeathScript(npcindex, "\\script\\item\\ib\\boss.lua");
		--WriteLog(date("%Y-%m-d %H:%M:%S").." "..GetAccount().."��["..GetName().."]d�ng Boss cho g�i ph� g�i v� m�t ho�ng kim Boss"..GoldenBossName);
	
	return 0	
end
function ketquale()
			capdo = 1
		local W,X,Y = GetWorldPos(); 
		local nMapId = W; 
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch�n L� B� Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
	return 0	
end
function ketquachan()
			capdo = 2
		local W,X,Y = GetWorldPos(); 
		local nMapId = W; 
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch�n L� B� Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
	return 0	
end


