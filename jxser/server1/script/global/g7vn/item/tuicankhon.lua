IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")

nWidth = 4
nHeight = 6
nFreeItemCellLimit = 1

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuicankhon.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	--do Say("T¹m thêi ch­a sö ®ông d­îc") return 1 end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tasknv1 = GetTask(idtaskgiftcodet92015)
	local tasknv2 = GetTask(idtaskCodetanthuG7nv2)
	local tasknv3 = GetTask(idtaskCodetanthuG7nv3)
	local tasknv4 = GetTask(idtaskCodetanthuG7nv4)
	local tasknv5 = GetTask(idtaskCodetanthuG7nv5)
	local tasknv6 = GetTask(idtaskCodetanthuG7nv6)
	local tasknv7 = GetTask(idtaskCodetanthuG7nv7)

	if tasknv1 == 0 and tasknv2 == 0 then
			Say("§¹i hiÖp vÉn ch­a hoµn thµnh nhiÖm vô GIFTCODE trong chuçi nhiÖm vô t©n thñ, xem h­íng dÉn chung vµ thùc hiÖn")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 0 and tasknv3 == 0 then
			Say("GÆp Vâ L©m TruyÒn Nh©n t¹i 7 ®¹i thµnh thŞ ®èi tho¹i vµ <color=yellow>chän chøc n¨ng nhËn ®iÓm phóc duyªn<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 0 and tasknv4 == 0 then
			Say("§¹i hiÖp ®Õn gÆp D· TÈu <color=yellow>hoµn thµnh liªn tiÕp 2 nhiÖm vô kh«ng hñy<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 0 then
			Say("TiÕp theo h·y thùc hiÖn nhiÖm vô t©n thñ th«n, ®iÓm <color=yellow>danh väng ®¹t ®­îc trªn 50 ®iÓm<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 0 and tasknv6 == 0 then
		Say("Tham gia 1 trËn Tèng Kim cè g¾ng <color=yellow>®¹t ®­îc 1000 ®iÓm tİch lòy trë lªn <color> quay vÒ gÆp npc hç trî t©n thñ tr¶ nhiÖm vô")
		return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 0 and tasknv7 == 0 then
		Say("Sö dông 200 tiÒn ®ång t×m mua T©n Thñ §¬n trong kú tr©n c¸c ®Ó tu luyÖn néi c«ng")
		return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 1 and tasknv7 == 0 then

		local mlevel = GetLevel()
		local mtsinh = ST_GetTransLifeCount()

		if ST_GetTransLifeCount() < 1 then
			Say("Nh©n vËt trïng sinh 1 trë lªn míi sö dông ®­îc")
			return 1
		end

		if GetLevel() < 119 and ST_GetTransLifeCount() == 1 then
			local nAddLevel = 119 - mlevel
			ST_LevelUp(nAddLevel)
		end

		Earn(5000000) -- 500 van

		local tbAward = 
		{	
				{szName="An bang tinh th¹ch h¹ng liªn",tbProp={0,164},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang cóc hoa th¹ch chØ hoµn",tbProp={0,165},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang kª huyÕt th¹c giíi chØ",tbProp={0,167},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang ®iÒn th¹ch ngäc béi",tbProp={0,166},nCount=1,nQuality = 1,nBindState = -2},
				{szName = "B«n Tiªu"				,tbProp={0,10,6,1,5,0},nCount=1,nBindState = -2},
				{szName = "TÈy Tñy Kinh"		,tbProp={6,1,22,1,0,0},nCount=5,nBindState = -2},
				{szName = "Vâ L©m MËt TŞch"		,tbProp={6,1,26,1,0,0},nCount=5,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAward, 1, {"TuiCanKhonG7", "TuiCanKhonG7"})

		local tbAwardngaunhien = 
		{	
				{szName = "Tiªn Th¶o Lé ®Æc biÖt",											tbProp={6,1,1181,1,0,0},nCount=15,nBindState = -2,nRate=25,},
				{szName = "NÕn B¸t tr©n phóc nguyÖt",										tbProp = {6, 1, 1817, 1, 0, 0},nCount=7,nRate=1,nBindState = -2,nRate=15,},	
				{szName = "MÆt n¹ v­¬ng gi¶",														tbProp={0,11,561,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15,nRate=15,},
			--	{szName = "Cµn kh«n song tuyÖt béi",										tbProp = {6,1,2219,1,0,0},nBindState = -2,nCount=1,nRate=15},
				{szName = "NhÊt kû cµn kh«n phï",											tbProp = {6,1,2126,1,0,0},nBindState = -2,nCount=1,nRate=15},
				{szName = "Phiªn Vò ",																tbProp={0,10,7,1,0,0},nCount=1,nRate=15,nExpiredTime=60*24*30,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAwardngaunhien, 1, {"TuiCanKhonG7NgauNhien", "TuiCanKhonG7NgauNhien"})

		SetTask(idtaskCodetanthuG7nv7, 1)

	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 1 and tasknv7 == 1 then
		Say("Chóc mõng ®¹i hiÖp ®· hoµn thµnh chuçi nhiÖm vô t©n thñ míi 2016")
		return 1
	end

end
