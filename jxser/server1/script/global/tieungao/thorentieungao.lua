Include("\\script\\gmscript.lua")


function gmnangcaptrangbi_hk()
	local tbOpt = {}
	tinsert(tbOpt,"N©ng cÊp HuyÒn Viªn lªn Tö M·ng./gmhvlentumang")
	tinsert(tbOpt,"N©ng cÊp Tö M·ng lªn Kim ¤ ./gmtumanglenkimo")
	--tinsert(tbOpt,"N©ng cÊp Kim ¤ lªn B¹ch Hæ ./gmkimolenbachho")
	--tinsert(tbOpt,"N©ng cÊp B¹ch Hæ lªn Xİch L©n ./gmbachholenxichlan")
	--tinsert(tbOpt,"N©ng cÊp Xİch L©n lªn Minh Phuîng ./gmxichlanlenminhphuong")
	--tinsert(tbOpt,"Demo ghi file ./logWrite")
	tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Ta chuyªn n©ng cÊp c¸c lo¹i trang bŞ HuyÒn Viªn, Kim ¤, Tö M·ng, B¹ch Hæ, Xİch L©n, Minh Phuîng, ®¹i hiÖp cÇn n©ng cÊp lo¹i trang bŞ nµo?", getn(tbOpt), tbOpt)
end;

function logWrite()

str="con me may"

local gm_Log = "script/global/tieungao/toado.txt"

--local fs_log = openfile(gm_Log, "a");
--file = io.open(gm_Log, "r")
--Say(file:read())

write(fs_log, ""..str.."\n");
closefile(fs_log);

end

function gmhvlentumang()
GiveItemUI("N©ng cÊp lªn trang bŞ Tö M·ng", "§Ó n©ng cÊp lªn trang bŞ Tö M·ng ®¹i hiÖp cÇn 1 trang bŞ HuyÒn Viªn, 5 thÇn bİ kho¸ng th¹ch, 500 v¹n", "TuMangUpConfirm", "onCancel", 1);
end

function gmtumanglenkimo()
GiveItemUI("N©ng cÊp lªn trang bŞ Kim ¤", "§Ó n©ng cÊp lªn trang bŞ Kim ¤ ®¹i hiÖp cÇn 1 trang bŞ Tö M·ng, 10 thÇn bİ kho¸ng th¹ch, 500 v¹n", "KimOUpConfirm", "onCancel", 1);
end

function gmkimolenbachho()
GiveItemUI("N©ng cÊp lªn trang bŞ B¹ch Hæ", "§Ó n©ng cÊp lªn trang bŞ B¹ch Hæ ®¹i hiÖp cÇn 1 trang bŞ Kim ¤, 1 Nh¹c vu¬ng 10 thÇn bİ kho¸ng th¹ch, 500 v¹n, 50 tiÒn ®ång. KÕt qu¶ sÏ nhËn ®uîc 1 trang bŞ B¹ch Hæ ngÉu nhiªn", "BachHoUpConfirm", "onCancel", 1);
end

function TuMangUpConfirm1(nCount)

local thanbikthach_id = 398--than bi khoang thach
local sltienphaitra = 5000000

	if (nCount <= 0) then
		Talk(1, "", "Xin mêi bá vµo trang bŞ cã thÓ ®æi ®­îc.");
		return
	end
	
	--if (nCount ~= 6) then
		--Talk(1, "", "§¹i hiÖp ®· bá kh«ng ®óng sè luîng quy ®Şnh");
		--return
	--end
	
	local nItemIndex = GetGiveItemUnit(1);
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)

	if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
		local slthanbi = CalcItemCount(-1,itemgenre,itemdetail,itemParticular,-1)
		Msg2Player("Dem 1 than bi khoang thach:"..slthanbi.."")
	end


	if (nItemIndex == nil or nItemIndex <= 0) then
		Talk(1, "", "Xin mêi bá vµo trang bŞ cã thÓ ®æi ®­îc.");
		return
	end
	
	--local nBindState = GetItemBindState(nItemIndex);
	
	--if (nBindState ~= 0) then
		--Talk(1, "", "ChØ cã thÓ dïng trang bŞ kh«ng khãa vµ kh«ng cã thêi h¹n sö dông ®æi thµnh hån th¹ch");
		--return
	--end
	
	--local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	--local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	--if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		--Talk(1, "", "ChØ cã thÓ dïng trang bŞ kh«ng cã thêi h¹n sö dông ®æi thµnh hån th¹ch");
		--return
	--end

end

function TuMangUpConfirm(nCount)

	if (nCount <= 0) then
		Talk(1, "", "Xin mêi bá vµo ®ñ vËt phÈm míi cã thÓ ®æi ®­îc.");
		return
	end

	if (nCount ~= 6) then
		Talk(1, "", "§¹i hiÖp ®· bá kh«ng ®óng sè luîng quy ®Şnh");
		return
	end

	local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		Talk(1, "", "ChØ cã thÓ dïng trang bŞ kh«ng cã thêi h¹n sö dông ®æi thµnh hån th¹ch");
		return
	end

local thanbikthach_id = 398--than bi khoang thach
local slthanbi = 0
local slthanbiphaitra = 5
local slhuyenvien = 0
local slhuyenvienphaitra = 1
local sltien = GetCash()
local sltienphaitra = 5000000

	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)

		local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)--Dem khoang thach
		if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
			slthanbi = slthanbi + 1
		end

		local goldid = GetGlodEqIndex(nItemIndex)--dem hoang kim
		--Msg2Player("GoldID: "..goldid.."")
		if(goldid >= 1605 and goldid <=1824) then--Kiem tra id hv
			slhuyenvien = 1
		end

	end

	if(slthanbi < slthanbiphaitra) then
		Msg2Player("Sè thÇn bİ kho¸ng th¹ch ®¹i hiÖp bá vµo : "..slthanbi.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slthanbiphaitra.."")
		Say("Sè thÇn bİ kho¸ng th¹ch ®¹i hiÖp bá vµo : "..slthanbi.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slthanbiphaitra.."")
		return 1
	end

	if(slhuyenvien < slhuyenvienphaitra) then
		Msg2Player("Sè trang bŞ huyÒn viªn ®¹i hiÖp bá vµo: "..slhuyenvien.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slhuyenvienphaitra.."")
		Say("Sè trang bŞ huyÒn viªn ®¹i hiÖp bá vµo: "..slhuyenvien.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slhuyenvienphaitra.."")
		return 1
	end

	if(sltien < sltienphaitra) then
		Msg2Player("Sè tiÒn trong ru¬ng ®¹i hiÖp mang theo: "..sltien.." luîng kh«ng ®ñ víi sè tiÒn yªu cÇu: "..sltienphaitra.." luîng")
		Say("Sè tiÒn trong ru¬ng ®¹i hiÖp mang theo: "..sltien.." luîng kh«ng ®ñ víi sè tiÒn yªu cÇu: "..sltienphaitra.." luîng")
		return 1
	end

	for i=1, nCount do --Xoa vat pham sau khi nang cap
		nItemIndex = GetGiveItemUnit(i)
		RemoveItemByIndex(nItemIndex)
		--local strItem = GetItemName(nItemIndex)
		--WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
	Pay(sltienphaitra)

	--AddGoldItem(0,1825)

	nItemIndex = AddItem(6,1,2350,0,0,0,0)--tu mang len bai

	Msg2Player("N©ng cÊp trang bŞ thµnh c«ng, ®¹i hiÖp ®· nhËn ®uîc 1 lÖnh bµi Tö M·ng, lÊy nã ®Õn thî rÌn thÇn bİ L©m An ®Ó ®æi, kiÓm tra l¹i hµnh trang!")
	Say("N©ng cÊp trang bŞ thµnh c«ng, ®¹i hiÖp ®· nhËn ®uîc 1 lÖnh bµi Tö M·ng, lÊy nã ®Õn thî rÌn thÇn bİ L©m An ®Ó ®æi, kiÓm tra l¹i hµnh trang!")
end

--=====================================

function KimOUpConfirm(nCount)

	local thanbikthach_id = 398--than bi khoang thach
	local slthanbi = 0
	local slthanbiphaitra = 10
	local slhuyenvien = 0
	local slhuyenvienphaitra = 1
	local sltien = GetCash()
	local sltienphaitra = 5000000

	if (nCount <= 0) then
		Talk(1, "", "Xin mêi bá vµo ®ñ vËt phÈm míi cã thÓ ®æi ®­îc.");
		return
	end

	if (nCount ~= 11) then
		Talk(1, "", "§¹i hiÖp ®· bá kh«ng ®óng sè luîng quy ®Şnh, yªu cÇu "..slhuyenvienphaitra.." trang bŞ Tö M·ng vµ "..slthanbiphaitra.." thÇn bİ kho¸ng th¹ch");
		return
	end

	local nUseTime = ITEM_GetLeftUsageTime(nItemIndex);
	local nExpireTime = ITEM_GetExpiredTime(nItemIndex);
	
	if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
		Talk(1, "", "ChØ cã thÓ dïng trang bŞ kh«ng cã thêi h¹n sö dông ®æi thµnh hån th¹ch");
		return
	end

	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)

		local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIndex)--Dem khoang thach
		if itemgenre == 6 and itemdetail == 1 and itemParticular == thanbikthach_id then
			slthanbi = slthanbi + 1
		end

		local goldid = GetGlodEqIndex(nItemIndex)--dem hoang kim
		if(goldid >= 1825 and goldid <=2054) then--Kiem tra id tu mang
			slhuyenvien = 1
		end

	end

	if(slthanbi < slthanbiphaitra) then
		Msg2Player("Sè thÇn bİ kho¸ng th¹ch ®¹i hiÖp bá vµo : "..slthanbi.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slthanbiphaitra.."")
		Say("Sè thÇn bİ kho¸ng th¹ch ®¹i hiÖp bá vµo : "..slthanbi.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slthanbiphaitra.."")
		return 1
	end

	if(slhuyenvien < slhuyenvienphaitra) then
		Msg2Player("Sè trang bŞ tö m·ng ®¹i hiÖp bá vµo: "..slhuyenvien.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slhuyenvienphaitra.."")
		Say("Sè trang bŞ tö m·ng ®¹i hiÖp bá vµo: "..slhuyenvien.." kh«ng ®ñ víi sè luîng yªu cÇu: "..slhuyenvienphaitra.."")
		return 1
	end

	if(sltien < sltienphaitra) then
		Msg2Player("Sè tiÒn trong ru¬ng ®¹i hiÖp mang theo: "..sltien.." luîng kh«ng ®ñ víi sè tiÒn yªu cÇu: "..sltienphaitra.." luîng")
		Say("Sè tiÒn trong ru¬ng ®¹i hiÖp mang theo: "..sltien.." luîng kh«ng ®ñ víi sè tiÒn yªu cÇu: "..sltienphaitra.." luîng")
		return 1
	end

	for i=1, nCount do --Xoa vat pham sau khi nang cap
		nItemIndex = GetGiveItemUnit(i)
		RemoveItemByIndex(nItemIndex)
		--local strItem = GetItemName(nItemIndex)
		--WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
	Pay(sltienphaitra)

	--AddGoldItem(0,1825)

	nItemIndex = AddItem(6,1,2349,0,0,0,0)--kim o lenh bai

	Msg2Player("N©ng cÊp trang bŞ thµnh c«ng, ®¹i hiÖp ®· nhËn ®uîc 1 lÖnh bµi Kim ¤, lÊy nã ®Õn thî rÌn thÇn bİ L©m An ®Ó ®æi, kiÓm tra l¹i hµnh trang!")
	Say("N©ng cÊp trang bŞ thµnh c«ng, ®¹i hiÖp ®· nhËn ®uîc 1 lÖnh bµi Kim ¤, lÊy nã ®Õn thî rÌn thÇn bİ L©m An ®Ó ®æi, kiÓm tra l¹i hµnh trang!")
end