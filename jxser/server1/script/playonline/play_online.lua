IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\worldrank\\vngglobalvar.lua")
Include("\\script\\worldrank\\vngtop10.lua")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
IncludeLib("FILESYS")

function OnTimer()
	
	rank ={} 
 	local nOldPlayer = PlayerIndex
 	local count = GetPlayerCount()
 	for i=1,count do   
  		PlayerIndex = i
		local sName = GetName()
  		if sName ==  nil or '' == sName  then break
		else 
   			local nExp = GetExp() + GetLevelUpExp() + GetExpPercent()
   			tinsert(rank, {sName,nExp})  		
  		end
 	end 
 
 	sort(rank, function (a, b) return(a[2] > b[2]) end) 
 	local rank2 = {}
	local ntitle ="[Rank]"
	tinsert(rank2, {ntitle})
 	for i = 1, getn(rank) do
		if rank[i][1] ~= nil and '' ~= rank[i][1] then
  			tinsert(rank2, {rank[i][1],"= "..i})
		else break
 		end
	end
	tbVngLib_File:Table2File("dulieu/", "ranklist.txt", "w", rank2) 
	PlayerIndex = nOldPlayer  		
end;

