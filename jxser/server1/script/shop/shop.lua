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
		Msg2Player("<color=yellow>K� Tr�n C�c ch� c� th� m� t�i c�c th�nh th�, t�n th� th�n! <color>")
		return 0;
	else
		CreateStores();
		AddShop2Stores(139,"V�t Ph�m", 3, 100, "fBuyCallBack(%d,%d)"); 	--ti�n ��ng
		AddShop2Stores(140,"B� k�p", 3, 100, "fBuyCallBack(%d,%d)"); 		--ti�n ��ng
		AddShop2Stores(141,"B�o Th�ch", 3, 100, "fBuyCallBack(%d,%d)"); 		--ti�n ��ng
		AddShop2Stores(142,"T�p h�a", 3, 100, "fBuyCallBack(%d,%d)"); 	--ti�n ��ng
		AddShop2Stores(143,"Th� C��i", 3, 100, "fBuyCallBack(%d,%d)"); 	--ti�n ��ng
		AddShop2Stores(145,"M�t N�", 3, 100, "fBuyCallBack(%d,%d)"); 		--ti�n ��ng
		--AddShop2Stores(138,"��c ph�m", 3, 100, "fBuyCallBack(%d,%d)"); 		--ti�n ��ng
		OpenStores();
	end
end

function fBuyCallBack(nItemIdx, nPrice)
	local nCount = 1
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx)
	if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then
		-- ������
		AddStatData("jlxiaohao_shiliantiegoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then
		-- �������
		AddStatData("jlxiaohao_xuantiangoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then
		-- �����
		AddStatData("jlxiaohao_qingjulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then
		-- ��¹��
		AddStatData("jlxiaohao_yunlulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then
		-- ������
		AddStatData("jlsxiaohao_canglanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then
		-- ��Գ��
		AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then
		-- ������
		AddStatData("jlxiaohao_zimanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then
		-- ����Կ��
		AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then
		-- �׵���
		AddStatData("jlxiaohao_yandilinggoumai", nCount)
	end											
	return 1
end
