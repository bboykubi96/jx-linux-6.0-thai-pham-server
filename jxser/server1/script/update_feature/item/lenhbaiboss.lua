Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\lib\\log.lua")
---------------------------------------------------------------
listmap = {53,20,121,153,101,174,99,100}	 --Map T©n ThÒ Th´n
IDBOSS = {1999}		 --ID Boss
IDITEM = 3091					 --ID VÀt Ph»m L÷nh Bµi

tbAward = {
	[1] = {--Ph«n Th≠Îng TÊ ßÈi
		{szName="Tri÷u Kinh Nghi÷m",nExp_tl = 1000000,nCount=50},
		{szName="ßi”m Ch©n Nguy™n",
			pFun = function (nItemCount, szLogTitle)
				local DiemChanNguyen = GetTask(5000)
				local nPoint = 2000
				SetTask(5000,DiemChanNguyen+nPoint)
				Msg2Player(format("NhÀn ß≠Óc %s ßi”m Ch©n Nguy™n", nPoint))
			end,
		},
		{szName="HÈ Mπch ß¨n",tbProp={6,1,5226,1,0,0},nCount=1000,nBindState = -2},
		{szName="R≠¨ng Nguy™n Li÷u",tbProp={6,1,4837,1,0,0},nCount=500},
	},
	[2] = {--Ph«n Th≠Îng C∏ Nh©n
		{szName="Tri÷u Kinh Nghi÷m",nExp_tl = 1000000,nCount=30},
		{szName="ßi”m Ch©n Nguy™n",
			pFun = function (nItemCount, szLogTitle)
				local DiemChanNguyen = GetTask(5000)
				local nPoint = 1000
				SetTask(5000,DiemChanNguyen+nPoint)
				Msg2Player(format("NhÀn ß≠Óc %s ßi”m Ch©n Nguy™n", nPoint))
			end,
		},
		{szName="HÈ Mπch ß¨n",tbProp={6,1,5226,1,0,0},nCount=500,nBindState = -2},
		{szName="R≠¨ng Nguy™n Li÷u",tbProp={6,1,4837,1,0,0},nCount=300},
	},
	[3] = {--Ph«n Th≠Îng RÌt Ra Tı Boss
		{szName="Kim Nguy™n B∂o",tbProp={4,2480,1,1,0,0},nCount=100,nRate=75},
		{szName="ßÂ PhÊ Minh Ph≠Óng",tbProp={6,1,random(4399,4408),1,0,0},nCount=1,nRate=15},
		{szName="ßÂ PhÊ ßªng Long",tbProp={6,1,random(4409,4418),1,0,0},nCount=1,nRate=7.5},
		{szName="Cµn Kh´n GiÌi Chÿ",tbProp={0,random(7480,7494)},nQuality=1,nRate=2.5},
	},
}

function main(nIndex)
dofile("script/update_feature/item/lenhbaiboss.lua")
local nMap,_,_ = GetWorldPos()
local w,x,y = GetWorldPos()
local nTime = tonumber(GetLocalDate("%H%M"))
	if (GetFightState() ~= 1) then
		Say("Chÿ C„ Th” Sˆ DÙng Trong Trπng Th∏i Chi’n ß u")
		return 1
	end
	if (nMap == listmap[1] or nMap == listmap[2] or nMap == listmap[3] or nMap == listmap[4] or nMap == listmap[5] or nMap == listmap[6] or nMap == listmap[7] or nMap == listmap[8]) then
		if (nTime >= 1900 and nTime <= 2100) then
			if (GetLevel() >= 150) then
				local nRateBoss = IDBOSS[1]
				local nNpcId = AddNpcEx(nRateBoss, 150, 1, SubWorldID2Idx(w), x*32, y*32, 1, "Th´ng Thi™n Gi∏o ChÒ", 1)
				SetNpcScript(nNpcId, "\\script\\update_feature\\item\\lenhbaiboss.lua")
				SetNpcParam(nNpcId, 1, nRateBoss)
				SetNpcTimer(nNpcId, 30*60*18)
				ConsumeEquiproomItem(1,6,1,IDITEM,-1)
			else
				Talk(1,"","ßºng C p Kh´ng ßÒ 150")
			end
		else
			Talk(1,"","ThÍi Gian G‰i Boss Bæt ß«u Tı 19h ß’n 21h")
		end
	else
		Talk(1,"","Chÿ C„ Th” G‰i Boss Tπi T©n ThÒ Th´n")
	end
	return 1
end

function OnDeath(nNpcId)
local nTeamSize = GetTeamSize()
	if (nTeamSize >= 2) then
		for i = 1, nTeamSize do
			PlayerIndex = GetTeamMember(i)
			tbAwardTemplet:GiveAwardByList(tbAward[1],"Ph«n Th≠Îng TÊ ßÈi")
		end
	else
		tbAwardTemplet:GiveAwardByList(tbAward[2],"Ph«n Th≠Îng C∏ Nh©n")
	end
	tbDropTemplet:GiveAwardByList(nNpcId, PlayerIndex, tbAward[3], 1)	
end

function OnTimer(nNpcId, nTimeOut) 
	DelNpc(nNpcId);
end
