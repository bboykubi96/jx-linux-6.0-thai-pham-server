Include("\\script\\activitysys\\config\\1008\\head.lua")
Include("\\script\\activitysys\\config\\1008\\variables.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\config\\1008\\give_rose_toplist.lua")

function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {78,197*8,200*16,},		
	}
	local tbNpc = {	
			szName = "NguyÖt Nhi", 
			nLevel = 95,
			nNpcId = 1849,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end
function pActivity:GiveRose()	
	local nTime = tonumber(date("%Y%m%d%H%M"))
	%tbTop10:GiveRose(GetName(), GetAccount(), GetLevel(), GetExp(), nTime)
end

function pActivity:GiveRoseCheckTime()
	if %tbTop10:CheckTime() == 1 then
		Talk(1, "", "HÖ thèng ®ang tiÕn hµnh xÕp h¹ng, xin h·y quay l¹i sau.")		
		return nil
	end
	
	return 1
end

function pActivity:ShowTopList()
	%tbTop10:ShowTopList()
end

function pActivity:ShowTopList1()
	%tbTop10:ShowTopList1()
end
function pActivity:UpdateRoseNumber()
	local nPhase = %tbTop10:GetPhase()
	local nTime = tonumber(date("%Y%m%d%H%M"))
		%tbTop10:GiveRose(GetName(), GetAccount(), GetExp(),nTime)
		Msg2Player(format("CËp nhËt thµnh c«ng. TÝnh tíi thêi ®iÓm hiÖn t¹i, sè l­îng Hoa Hång ®· nép lµ <color=green>%d<color>", GetExp()))

end
