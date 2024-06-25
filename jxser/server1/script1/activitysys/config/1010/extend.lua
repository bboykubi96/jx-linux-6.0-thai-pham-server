Include("\\script\\activitysys\\config\\1010\\head.lua")
Include("\\script\\activitysys\\config\\1010\\variables.lua")
Include("\\script\\activitysys\\config\\1010\\award_ext.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
IL("TONG")

local tbItemOtherAward = {
	["use50banhkem"] = {
			[50] 		= "SuDung2LoaiBanhKem50Lan",
	},
	["banhsinhnhat"] = {
			[50] 		= "SuDungBanhSinhNhatVLTK50Lan",
			[100] 	= "SuDungBanhSinhNhatVLTK100Lan",
			[150] 	= "SuDungBanhSinhNhatVLTK150Lan",
			[200] 	= "SuDungBanhSinhNhatVLTK200Lan",
	},
	["banhkem"] = {
			[100] 	= "SuDung2LoaiBanhKem100Lan",
			[200] 	= "SuDung2LoaiBanhKem200Lan",
			[300] 	= "SuDung2LoaiBanhKem300Lan",
			[400] 	= "SuDung2LoaiBanhKem400Lan",
			[500] 	= "SuDung2LoaiBanhKem500Lan",
			[600] 	= "SuDung2LoaiBanhKem600Lan",
			[700] 	= "SuDung2LoaiBanhKem700Lan",
			[800] 	= "SuDung2LoaiBanhKem800Lan",
			[900] 	= "SuDung2LoaiBanhKem900Lan",
			[1000] 	= "SuDung2LoaiBanhKem1000Lan",
			[1100] 	= "SuDung2LoaiBanhKem1100Lan",
			[1200] 	= "SuDung2LoaiBanhKem1200Lan",
			[1300] 	= "SuDung2LoaiBanhKem1300Lan",
			[1400] 	= "SuDung2LoaiBanhKem1400Lan",
			[1500] 	= "SuDung2LoaiBanhKem1500Lan",
	},		
}
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {78,1588,3221,},
		[2] = {1,1584,3190,},
	}
	local tbNpc = {	
			szName = "Sø Gi¶ Ho¹t §éng", 
			nLevel = 95,
			nNpcId = 1888,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end

function pActivity:CheckAwardExp(strFailMessage)
		local tb = {[1] = 201706210000, [2] = 201706212300}
		local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		if nDate >= tb[1] and nDate <= tb[2] then
			return 1
		end 
		Talk(1, "", strFailMessage)
		return nil
end
--Hµm sö dông b¸nh kem Tr¸i c©y
function pActivity:UseCake(nTask,nLimit,nRes)
	local tbdopho = %tbdophoAward2;
	local tbLog = %tbItemOtherAward["banhkem"]
	local nCount = tbVNG_BitTask_Lib:getBitTask(nTask)
	Msg2Player("Sö dông <color=pink>".. nCount.. "<color> lÇn")
	
	if %tbBonusAward2[nCount] then
		tbAwardTemplet:Give(%tbBonusAward2[nCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanVatPhamBanhKemTCSocola", nCount)})
		Msg2Player("Chóc mõng c¸c h¹ sö dông ®Õn mèc <color=yellow>"..nCount.."<color> vËt phÈm , nhËn ®­îc phÇn th­ëng nh­ ý")
	end

	--PhÇn th­ëng Server ®èi víi B¸nh kem tr¸i c©y
	if nRes == 1 then
			local tbLog50 =  %tbItemOtherAward["use50banhkem"][nCount] or "PhanThuongServersudungbanhkem"
			tbAwardTemplet:Give(%tbAward_Ext["awardnomal"], 1 , {%EVENT_LOG_TITLE, tbLog50})
			tbAwardTemplet:Give(tbdopho, 1 , {%EVENT_LOG_TITLE, tbLogAward} )
	end
end

--Hµm sö dông b¸nh kem Chocolate
function pActivity:UseCakeChocolate(nTask,nLimit,nRes)
	local tbdopho = %tbdophoAward2;
	local tbLog = %tbItemOtherAward["banhkem"]
	local nCount = tbVNG_BitTask_Lib:getBitTask(nTask)
	Msg2Player("Sö dông <color=pink>".. nCount.. "<color> lÇn")
end

--Hµm sö dông b¸nh kem Sinh NhËt
function pActivity:UseCakeBirthday(nTask,nLimit)

	local nCurCount = tbVNG_BitTask_Lib:getBitTask(nTask)
	Msg2Player("Sö dông <color=yellow>".. nCurCount.. "<color> lÇn")
	
	--Diem kn dat moc
	local tbBonusAward = {
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, --Hoa son
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=1,},
		},
		[600] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, --Hoa son
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=2,},
		},
		[700] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, --Hoa son
			--{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=2},-- sv moi thai son
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (1/6)",tbProp={4,771,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (2/6)",tbProp={4,772,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (3/6)",tbProp={4,773,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (4/6)",tbProp={4,774,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (5/6)",tbProp={4,775,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (6/6)",tbProp={4,776,1,1,0,0},nCount=1,nRate=17},
				
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (1/4)",tbProp={4,903,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (2/4)",tbProp={4,904,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (3/4)",tbProp={4,905,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (4/4)",tbProp={4,906,1,1,0,0},nCount=1,nRate=25},
			},
		},
		[800] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, --Hoa son
			{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=3,},
			{
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (1/6)",tbProp={4,771,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (2/6)",tbProp={4,772,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (3/6)",tbProp={4,773,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (4/6)",tbProp={4,774,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (5/6)",tbProp={4,775,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (6/6)",tbProp={4,776,1,1,0,0},nCount=1,nRate=17},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (1/4)",tbProp={4,903,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (2/4)",tbProp={4,904,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (3/4)",tbProp={4,905,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (4/4)",tbProp={4,906,1,1,0,0},nCount=1,nRate=25},
			},
		},
		[900] = 
		{
			--{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=2}, --sv moi TS
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, --Hoa son
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=5,},
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 50000000}, --Hoa son
			--{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 100000000}, --Thai Son
			{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=10,},
			{
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (1/6)",tbProp={4,771,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (2/6)",tbProp={4,772,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (3/6)",tbProp={4,773,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (4/6)",tbProp={4,774,1,1,0,0},nCount=1,nRate=17},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (5/6)",tbProp={4,775,1,1,0,0},nCount=1,nRate=16},
				--{szName = "M¶nh HiÖp Cèt T×nh ý KÕt (6/6)",tbProp={4,776,1,1,0,0},nCount=1,nRate=17},

				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (1/4)",tbProp={4,903,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (2/4)",tbProp={4,904,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (3/4)",tbProp={4,905,1,1,0,0},nCount=1,nRate=25},
				{szName = "M¶nh HiÖp Cèt ThiÕt HuyÕt Sam (4/4)",tbProp={4,906,1,1,0,0},nCount=1,nRate=25},
			},
		}, 
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("Su Dung %d Banh sinh nhat", nCurCount)})
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Event ®Õn mèc <color=yellow>"..nCurCount.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý")
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "HuyÒn tinh cÊp 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "HuyÒn tinh cÊp 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "HuyÒn tinh cÊp 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "HuyÒn tinh cÊp 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "HuyÒn tinh cÊp 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			{szName="M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "PhanThuongThemBanhSinhNhat"})

end

function pActivity:DropItemRandom(nNpcIndex)
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, %ITEM_DROP_MOTER, "DropMaterialBag", 1)
end

function pActivity:UseBanhKemThuong(nTask,nLimit)
	--local nCount = tbVNG_BitTask_Lib:getBitTask(nTask)
	--Msg2Player("Sö dông <color=yellow>".. nCount.. "<color> lÇn")
	--tbAwardTemplet:Give(%tbAward_Ext["award200"], 1 , {%EVENT_LOG_TITLE, "SuDungBanhKemSinhNhatdatmoc200"})
end
