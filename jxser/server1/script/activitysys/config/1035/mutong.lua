Include("\\script\\activitysys\\config\\1035\\extend.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local tbPool = {
	[100] = {{nX = 1342, nY = 3250, nR = 200},},
	[153] = {{nX = 1713, nY = 2974, nR = 150},},
	[174] = {{nX = 1788, nY = 3039, nR = 150},}
}

function IsInDistance(nX, nY, tbPosList)
	for _, tbPos in tbPosList do
		local nDis = (nX - tbPos.nX)^2 + (nY - tbPos.nY)^2
--		print("nX, nY, nR,nDis", tbPos.nX, tbPos.nY, tbPos.nR, nDis)
		if tbPos.nR > nDis then
			return 1
		end
	end
	return
end

local _OnBreak = function()
	Msg2Player("L y n≠Ìc bﬁ gi∏n Æoπn.")
end

local _GetAward = function(nItemIndex)
--tao task lay -
--kiem tra task n’u = max 5 l«n
-- ko cho l y ti’p
	if nItemIndex ~= nil and nItemIndex <= 0 then
		return 0
	end	
	
	if PlayerFunLib:CheckFreeBagCell(1,"Hµnh trang kh´ng ÆÒ") ~= 1 then
		return 0
	end
	Msg2Player("L y n≠Ìc hoµn thµnh")
	
	--Item th™m mÌi 5051,5052,5053
	PlayerFunLib:ConsumeEquiproomItem({tbProp={6,1,30202,1,0,0},},1)
	local tbAward =  {{szName = "ThÔng N≠Ìc ß«y", tbProp = {6, 1, 30203, 1, 0, 0}, nExpiredTime = 20221015},}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ti’t C©y ßa 2022, nhÀn Æ≠Óc ThÔng N≠Ìc ß«y")
	--set task l™n 1, 
end

function InMap(nMapId)
	local nFlag = 0
	for nTmpMapId, _ in %tbPool do
		if nTmpMapId == nMapId then
			nFlag = 1
			break
		end
	end
	return nFlag
end

function main(nItemIndex)
	local nMapId, nX, nY = GetWorldPos()
	if InMap(nMapId) ~= 1 then
		Msg2Player("Xin h∑y l y n≠Ìc tπi b∂n ÆÂ chÿ Æﬁnh")
		return 1
	end
	
	
	if IsInDistance(nX, nY, %tbPool[nMapId]) ~= 1 then
		Msg2Player("Xin h∑y Æ’n g«n Æ«m n≠Ìc l y n≠Ìc")
		return 1
	end
	
	Msg2Player("Bæt Æ«u l y n≠Ìc")
	tbProgressBar:OpenByConfig(6, %_GetAward, {nItemIndex}, %_OnBreak)
	return 1
end