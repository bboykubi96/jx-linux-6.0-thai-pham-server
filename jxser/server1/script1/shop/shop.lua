--Include("\\script\\config.lua")

SHOP_OPEN            = 1;

tbMap = {11,1,37,176,162,78,80,174,121,153,101,99,100,20,53,54,175}
function CheckShopMap(nMapID)
	for i = 1, getn(tbMap) do
		if tbMap[i] == nMapID then
			return 1;
		end
	end
	return 0;
end
function Buy_Sale()

	local nMapID, _, _ = GetWorldPos()
	CheckShopMap(nMapID)
	if (GetFightState() >= 1 or CheckShopMap(nMapID) == 0) then
		Msg2Player("<color=yellow>Kú Tr©n C¸c chØ cã thÓ më t¹i c¸c thµnh thŞ, t©n thñ th«n! <color>")
		return 0;
	else
		CreateStores();
		AddShop2Stores(139,"VËt PhÈm", 3, 100, "fBuyCallBack(%d,%d)"); 	--tiÒn ®ång
		AddShop2Stores(140,"Bİ kİp", 3, 100, "fBuyCallBack(%d,%d)"); 		--tiÒn ®ång
		AddShop2Stores(141,"B¶o Th¹ch", 3, 100, "fBuyCallBack(%d,%d)"); 		--tiÒn ®ång
		AddShop2Stores(142,"T¹p hãa", 3, 100, "fBuyCallBack(%d,%d)"); 	--tiÒn ®ång
		AddShop2Stores(143,"Thó C­ëi", 3, 100, "fBuyCallBack(%d,%d)"); 	--tiÒn ®ång
		AddShop2Stores(145,"MÆt N¹", 3, 100, "fBuyCallBack(%d,%d)"); 		--tiÒn ®ång
		--AddShop2Stores(138,"§Æc phÈm", 3, 100, "fBuyCallBack(%d,%d)"); 		--tiÒn ®ång
		OpenStores();
	end
end

function fBuyCallBack(nItemIdx, nPrice)
	local nCount = 1
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx)
	if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then
		-- ÊÔÁ¶Ìû
		AddStatData("jlxiaohao_shiliantiegoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then
		-- ĞşÌì½õÄÒ
		AddStatData("jlxiaohao_xuantiangoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then
		-- Çà¾ÔÁî
		AddStatData("jlxiaohao_qingjulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then
		-- ÔÆÂ¹Áî
		AddStatData("jlxiaohao_yunlulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then
		-- ²ÔÀÇÁî
		AddStatData("jlsxiaohao_canglanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then
		-- ĞşÔ³Áî
		AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then
		-- ×ÏòşÁî
		AddStatData("jlxiaohao_zimanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then
		-- ÈçÒâÔ¿³×
		AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then
		-- Ñ×µÛÁî
		AddStatData("jlxiaohao_yandilinggoumai", nCount)
	end											
	return 1
end
