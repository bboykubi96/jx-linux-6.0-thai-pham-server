Include("\\script\\activitysys\\config\\17\\config.lua")
Include("\\script\\activitysys\\config\\17\\head.lua")

function pActivity:Jiluxiaohao_yesou()
	AddStatData("baoxiangxiaohao_kaiyesouxiangzi", 1)	--Êý¾ÝÂñµãµÚÒ»ÆÚ
end

function pActivity:Jiluxiaohao_chengzhan()
	AddStatData("baoxiangxiaohao_kaichengzhanlibao", 1)	--Êý¾ÝÂñµãµÚÒ»ÆÚ
end

function pActivity:Jiluxiaohao_zhizun()
	AddStatData("baoxiangxiaohao_kaizhizunmibao", 1)	--Êý¾ÝÂñµãµÚÒ»ÆÚ
end

function pActivity:Jiluxiaohao_shuizexiangzi()
	AddStatData("baoxiangxiaohao_kaishuizeixiangzi", 1)	--Êý¾ÝÂñµãµÚÒ»ÆÚ
end

--§iÒu chØnh phÇn th­ëng r¬i ra tõ boss thuû tÆc ®¹i ®Çu lÜnh - Modified By DinhHQ - 20120523
function pActivity:VnFFBigBossDrop(nNpcIndex)
	tbVnFFBigBossDrop = {
		--{szName="Thiªn Long LÖnh",tbProp={6,1,2256,1,0,0},nCount=5,nRate=20},
		--{szName="B¹ch Cèt LÖnh",tbProp={6,1,2255,1,0,0},nCount=5,nRate=20},
		--{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2256,1,0,0},nCount=10,nRate=20},
		--{szName="TiÒn §ång",tbProp={6,1,2256,1,0,0},nCount=10,nRate=20},
		--{szName = "M¶nh Thiªn S¬n TuyÕt Liªn",tbProp={6,1,4344,1,0,0},nCount=20,nRate=20,},
		--{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=35},
		{szName = "NÕn B¸t tr©n phóc nguyÖt", tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1, nRate=35},
		{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0}, nCount=1,  nRate=1},
		{szName = "Tói danh väng",tbProp={6,1,4338,1,0,0}, nCount=1,  nRate=8},
		{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1, nRate=0.01},
		{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0}, nCount=1,  nRate=1},
		{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0}, nCount=1,  nRate=0.2},
		{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0}, nCount=1,  nRate=0.2},
		{szName = "§¹i thµnh bÝ kÝp",tbProp={6,1,2424,1,0,0}, nCount=1,  nRate=0.05},

		--{szName = "M¶nh Nhu T×nh  TuÖ T©m Ngäc Béi (1/4)",tbProp={4,923,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh Nhu T×nh  TuÖ T©m Ngäc Béi (2/4)",tbProp={4,924,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh Nhu T×nh  TuÖ T©m Ngäc Béi (3/4)",tbProp={4,925,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh Nhu T×nh  TuÖ T©m Ngäc Béi (4/4)",tbProp={4,926,1,1,0,0}, nCount=1,  nRate=0.2},

		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (1/6) ",tbProp={4,771,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (2/6) ",tbProp={4,772,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (3/6) ",tbProp={4,773,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (4/6) ",tbProp={4,774,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (5/6) ",tbProp={4,775,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (6/6) ",tbProp={4,776,1,1,0,0}, nCount=1,  nRate=0.2},
		
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "PhÇn th­ëng tiªu diÖt Thñy TÆc §¹i §Çu LÜnh", 1)
end

function pActivity:VnFFBigBossDropTieu(nNpcIndex)
	tbVnFFBigBossDrop = {
		--{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=30},
		{szName = "NÕn B¸t tr©n phóc nguyÖt", tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1, nRate=20},
		{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0}, nCount=1,  nRate=3},
		{szName = "Tói danh väng",tbProp={6,1,4338,1,0,0}, nCount=1,  nRate=5},
		{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1, nRate=0.001},
		{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0}, nCount=1,  nRate=0.001},
		--{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0}, nCount=1,  nRate=0.001},
		--{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0}, nCount=1,  nRate=0.001},
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "PhÇn th­ëng tiªu diÖt Thñy TÆc §Çu LÜnh", 1)
end

function pActivity:VnUsePirateBox(nItemIdx)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\17\\vnshuizeibaoxiang.lua", "VnPirateBox_main", nItemIdx)
	return nil
end