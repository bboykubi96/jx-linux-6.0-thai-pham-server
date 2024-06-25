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
	
		{"Më ®¸nh b¹c.", rsdanhbac},
		{"Gäi NPC.", danhbac},
		{"Kho¸ kh«ng cho ®¸nh n÷a.", khoadanhbaca},
		{"Ph¸t th­ëng Ch½n.", phatthuongchan},
		
	--	{"goi npc le", ketquale},
	--	{"goi npc chan", ketquachan},
		{"Ph¸t th­ëng LÎ.", phatthuongle},
		{"Thu håi LÎ nÕu ph¸t nhÇm.", laytienle},
		{"Thu håi Ch½n nÕu ph¸t nhÇm.", laytienchan},

		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Anh cÇn g×?", tbOpt)	
	
	
		
	end
	
	return 1

end


function phatthuongchan()
local nNum = 800
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "admin" or GetName() == "sdfdf" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5077)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		AddStackItem(1,4,417,1,1,0,0,0)
		end

		Msg2SubWorld("®¹i hiÖp <color=green>"..GetName().."<color> th¾ng <color=orange>"..thang.." xu")
		
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

Msg2SubWorld("<color=yellow>Admin ph¸t th­ëng Ch½n ");

--Msg2SubWorld("<color=cyan>Bªn LÎ §¸nh:"..GetTask(4189).." xu tÊt c¶ ");
--Msg2SubWorld("<color=orange>Bªn Ch½n §¸nh:"..GetTask(4202).." xu tÊt c¶ ");
local conx= GetTask(4203) + (GetTask(4189) - GetTask(4202))
--Msg2SubWorld("<color=yellow>Admin bá vèn 10k xu cßn : "..conx.." xu ");

end;

function laytienchan()

for i=1,800 do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "a" or GetName() == "sdfdf" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5077)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		ConsumeEquiproomItem(1,4,417,1,-1)
		end

		Msg2SubWorld("®¹i hiÖp <color=cyan>"..GetName().."<color> bi lay lai <color=orange>"..thang.." xu")
		
		local nNum1 = 600
		for i1=1,nNum1 do
   		 gmidx1=PlayerIndex1
   	 	PlayerIndex1=i1
   		 TarName=GetName()
 		   if GetAccount() == "admin" or GetName() == "sdfdf" then
			
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
    if GetAccount() == "admin" or GetName() == "sdfdf" then
		

	else
		SetTask(5076,1)
		local nhan = GetTask(5078)

	local thang = nhan*2
	if nhan > 0 then
		for i=1,thang do
		ConsumeEquiproomItem(1,4,417,1,-1)
		end

		Msg2SubWorld("®¹i hiÖp <color=cyan>"..GetName().."<color> bi lay lai <color=orange>"..thang.." xu")
		
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

		Msg2SubWorld("®¹i hiÖp <color=green>"..GetName().."<color> th¾ng <color=orange>"..thang.." xu")
		
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

Msg2SubWorld("<color=cyan>Admin ph¸t th­ëng LÎ th¾ng ");

--Msg2SubWorld("<color=cyan>Bªn LÎ §¸nh:"..GetTask(4189).." xu tÊt c¶ ");
--Msg2SubWorld("<color=orange>Bªn Ch½n §¸nh:"..GetTask(4202).." xu tÊt c¶ ");

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
Msg2SubWorld("<color=cyan>Admin ®· khãa l­ît ®¸nh lÇn nµy ");

end;


function rsdanhbac()
local nSubWorldID = GetWorldPos();
		if nSubWorldID == 523 then
SetTask(4189,0)
SetTask(4202,0)
AskClientForNumber("rsdanhbac1",0,1180,"NhËp sè tiÒn cÇn chuyÓn")
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
Msg2SubWorld("Admin Më ®¸nh b¹c");

end;


function danhbac(nItemIdx)


	
	--local GoldenBoss = { {15, "Ch½n LÎ Bµ Con",5,270},
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
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch½n LÎ Bµ Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
		
		--local npcindex = AddNpcEx( GoldenBossId,  capdo , GoldenBossSeries, SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1, GoldenBossName, 1 );
		--SetNpcDeathScript(npcindex, "\\script\\item\\ib\\boss.lua");
		--WriteLog(date("%Y-%m-d %H:%M:%S").." "..GetAccount().."£¬["..GetName().."]dïng Boss cho gäi phï gäi vÒ mét hoµng kim Boss"..GoldenBossName);
	
	return 0	
end
function ketquale()
			capdo = 1
		local W,X,Y = GetWorldPos(); 
		local nMapId = W; 
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch½n LÎ Bµ Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
	return 0	
end
function ketquachan()
			capdo = 2
		local W,X,Y = GetWorldPos(); 
		local nMapId = W; 
		local npcindex = AddNpcEx( 11, capdo, random(0,4), SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1,  "Ch½n LÎ Bµ Con", 1 );

		SetNpcParam(npcindex, 1, 2137)
	return 0	
end


