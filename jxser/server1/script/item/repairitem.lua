-- ×°±¸Î¬ĞŞ

IncludeLib( "ITEM" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );

-- ÁÙÊ±ÈÎÎñ±äÁ¿ID: 101~110
TTID_ItemIndex 	= 101;
TTID_OrgMaxDur 	= 102;
TTID_CurMaxDur 	= 103;
-- TTID_CurDur 	= 104;
TTID_LostDur 	= 105;
TTID_CheapPrice	= 106;
TTID_CostlyPrice= 107;

-- ¿ÉÏâÇ¶×°±¸Î¬ĞŞ·ÑÓÃ±í
ENCHASABLE_EQUIP_PRICE =
{
	{ 50, 110, 180, 260, 350, 450, 560, 680, 810, 950 },			-- Ã÷1Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
	{ 100, 220, 360, 520, 700, 900, 1120, 1360, 1620, 1900 },		-- °µ1Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
	{ 50, 110, 180, 260, 350, 450, 560, 680, 810, 950 },			-- Ã÷2Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
	{ 50, 110, 180, 260, 350, 450, 560, 680, 810, 950 },			-- °µ2Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
	{ 50, 110, 180, 260, 350, 450, 560, 680, 810, 950 },			-- Ã÷3Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
	{ 50, 110, 180, 260, 350, 450, 560, 680, 810, 950 },			-- °µ3Î»ÖÃ10¼¶Ä§·¨ÊôĞÔµÄ·ÑÓÃÖµ
}

-- RPGE_RESTORMAX = 25;
function repair_goldequip(nItemIndex, nGenre, nQuality, nDetailType, nParticularType, nOrgMaxDur, nCurMaxDur, nCurDur, nEquipPrice)
	-- ²»ÊÇ»Æ½ğ×°±¸£¬²»ÔÚ½Å±¾ÖĞ´¦Àí(ÓÉ³ÌĞò´¦Àí)
	if (nQuality ~= 1) then
		return -1;
	end
	
	szAboutMsg = "Gi¶i thİch söa ch÷a trang bŞ Hoµng Kim… /RePairGE_About";

	-- ²»ĞèÎ¬ĞŞ
	nFixDur = nCurMaxDur - nCurDur;
	if (nFixDur <= 0) and (nCurMaxDur == nOrgMaxDur) then
		Say("Bé Trang bŞ Hoµng Kim nµy t¹m thêi kh«ng cÇn söa! Cã muèn t×m hiÓu vÒ c¸ch s÷a ch÷a Trang bŞ Hoµng Kim?", 2, szAboutMsg, "§· biÕt råi/RepairGE_Cancel")
		return 1;
	end;
	
	SetTaskTemp(TTID_ItemIndex, nItemIndex);
	SetTaskTemp(TTID_OrgMaxDur, nOrgMaxDur);
	SetTaskTemp(TTID_CurMaxDur, nCurMaxDur);
	-- SetTaskTemp(TTID_CurDur, nCurDur);

	-- ¼òµ¥Î¬ĞŞÒªÏÂµ÷µÄÄÍ¾Ã¶ÈÉÏÏŞµãÊı(ÖÁÉÙÒ»µã)
	nLostDur = floor(nFixDur / 10);
	if (nLostDur < 1) then
		nLostDur = 1;
	end
	
	--nCheapPrice =  nFixDur * 10000; -- Ò»µãÒ»ÍòÁ½ (nFixDur - nLostDur)
	--nCostlyPrice = nFixDur * 30000; -- -- Ò»µãÈıÍòÁ½
	
	-- »Æ½ğ×°±¸ĞŞÀí¼Û¸ñ¹«Ê½µ÷ÕûÎª£º100*(×°±¸µÈ¼¶^2)/Ã¿µãÄÍ¾Ã¶È
	-- Ô½ÄÏ°æ±¾µÄĞŞÀí¼Û¸ñ½µ10±¶
	nItemLevel = GetItemLevel(nItemIndex);
	nCheapPrice = 10 * nItemLevel * nItemLevel * nFixDur;
	nCostlyPrice = nCheapPrice * 3; -- ¼òĞŞµÄÈı±¶

	SetTaskTemp(TTID_LostDur, nLostDur);
	SetTaskTemp(TTID_CheapPrice, nCheapPrice);
	SetTaskTemp(TTID_CostlyPrice, nCostlyPrice);

	-- ÒÔÍòÁ½×÷ÏÔÊ¾µ¥Î»
	_nCheapW = floor(nCheapPrice / 10000);
	_nCheap = mod(nCheapPrice, 10000);
	_nCostlyW = floor(nCostlyPrice / 10000);
	_nCostly = mod(nCostlyPrice, 10000);
	
	szFixMsg = 
	{
		"Söa ®¬n gi¶n [".._nCheapW.." v¹n".._nCheap.." l­îng, ®é bÒn lín nhÊt gi¶m xuèng"..nLostDur.."®iÓm]/RePairGE_Cheap", -- 1	
		"Söa kü [".._nCostlyW.." v¹n".._nCostly.." l­îng]/RePairGE_Costly",  -- 2
		"Sö dông Thñy Tinh söa ch÷a cã ®é bÒn lín nhÊt/RepairGE_ReStoreMax" --3
	}
	szCancelMsg = "T¹m thêi kh«ng söa/RepairGE_Cancel";
	
	szSayMsg = 
	{
		"¤ng chñ: Trang bŞ Hoµng Kim vèn lµ b¶o vËt cña vâ l©m, söa ch÷a kh«ng ®¬n gi¶n. §¹i hiÖp muèn söa ®¬n gi¶n hay söa kü ®©y?",	
		"¤ng chñ: §é bÒn lín nhÊt trªn trang bŞ Hoµng Kim cña ®¹i hiÖp cã chót hñy ho¹i, ngµi muèn söa ch÷a kh«ng?",		
	}
	
	--print("»Æ½ğ°ü×°±¸Î¬ĞŞ(FixDur, CurMaxDur, OrgMaxDur): "..nFixDur..","..nCurMaxDur..","..nOrgMaxDur);
	if (nFixDur > 0) and (nCurMaxDur == nOrgMaxDur) then
		-- Ö»ÄÜĞŞÄÍ¾Ã¶È
		--print("Ö»ÄÜĞŞÄÍ¾Ã¶È");
		Say(szSayMsg[1], 4, szFixMsg[1], szFixMsg[2], szAboutMsg, szCancelMsg)
	elseif (nFixDur <= 0) and (nCurMaxDur < nOrgMaxDur) then
		-- Ö»ÄÜĞŞÄÍ¾Ã¶ÈÉÏÏŞ
		--print("Ö»ÄÜĞŞÄÍ¾Ã¶ÈÉÏÏŞ");
		Say(szSayMsg[2], 3, szFixMsg[3], szAboutMsg, szCancelMsg)
	else
		-- ĞŞ¾«ĞŞ¡¢¼òĞŞ¡¢ÉÏÏŞ
		--print("ĞŞ¾«ĞŞ¡¢¼òĞŞ¡¢ÉÏÏŞ");
		Say(szSayMsg[1], 5, szFixMsg[1], szFixMsg[2], szFixMsg[3], szAboutMsg, szCancelMsg)
	end
	
	return 1;
end;

-- ¾«ĞŞ - ²»µôÄÍ¾Ã¶ÈÉÏÏŞ
function RePairGE_Costly()
	nCostlyPrice = GetTaskTemp(TTID_CostlyPrice);
	nItemIndex = GetTaskTemp(TTID_ItemIndex);
	nCurMaxDur = GetTaskTemp(TTID_CurMaxDur);
	if (GetCash() >= nCostlyPrice) then
		Pay(nCostlyPrice)
		-- Msg2Player("ĞŞ¸´×°±¸£¡")
		SetCurDurability(nItemIndex, nCurMaxDur);
		WriteLog(date("%H%M%S")..":"..GetAccount().."("..GetName()..") sö dông ("..nCostlyPrice..") l­îng b¹c, söa kü trang bŞ Hoµng Kim (ItemGenTime:"..GetItemGenTime(nItemIndex).." CurDur:"..nCurMaxDur..")");
	else
		-- ÒÔÍòÁ½×÷ÏÔÊ¾µ¥Î»
		_nCostlyW = floor(nCostlyPrice / 10000);
		_nCostly = mod(nCostlyPrice, 10000);
		Talk(1,"","¤ng chñ: Söa ch÷a cÇn".._nCostlyW.." v¹n".._nCostly.." l­îng, ng©n l­îng trªn ng­êi b¹n kh«ng ®ñ!")
	end

end;

-- ¼òĞŞ - µôÄÍ¾Ã¶ÈÉÏÏŞ
function RePairGE_Cheap()
	nCheapPrice = GetTaskTemp(TTID_CheapPrice);
	nItemIndex = GetTaskTemp(TTID_ItemIndex);
	nCurMaxDur = GetTaskTemp(TTID_CurMaxDur);
	nLostDur = GetTaskTemp(TTID_LostDur);
	
	if (GetCash() >= nCheapPrice) then
		Pay(nCheapPrice)
		-- Msg2Player("ĞŞ¸´×°±¸£¡")
		
		-- ĞŞ¸´ºóµÄ×î´óÉÏÏŞ
		nFixMaxDur = nCurMaxDur - nLostDur;
		SetMaxDurability(nItemIndex, nFixMaxDur);
		SetCurDurability(nItemIndex, nFixMaxDur);
		
		WriteLog(date("%H%M%S")..":"..GetAccount().."("..GetName()..") sö dông ("..nCheapPrice..") l­îng b¹c, söa ®¬n gi¶n trang bŞ Hoµng Kim (ItemGenTime:"..GetItemGenTime(nItemIndex).." CurDur:"..nFixMaxDur..") , ®é bÒn lín nhÊt gi¶m xuèng, "..nLostDur.."®iÓm");
		
	else
		-- ÒÔÍòÁ½×÷ÏÔÊ¾µ¥Î»
		_nCheapW = floor(nCheapPrice / 10000);
		_nCheap = mod(nCheapPrice, 10000);
		Talk(1,"","¤ng chñ: Phİ söa ch÷a cÇn [".._nCheapW.." v¹n".._nCheap.." l­îng]trªn ng­êi b¹n mang kh«ng ®ñ ng©n l­îng!")
	end
end;

-- ĞŞ¸´ÉÏÏŞ
function RepairGE_ReStoreMax()
	nItemIndex = GetTaskTemp(TTID_ItemIndex);
	nOrgMaxDur = GetTaskTemp(TTID_OrgMaxDur);
	nCurMaxDur = GetTaskTemp(TTID_CurMaxDur);
	-- if (nCurMaxDur > nOrgMaxDur) then
	--	WriteLog(GetLoop()..date("%m%d-%H:%M").."»Æ½ğ×°±¸ÄÍ¾Ã¶ÈÉÏÏŞÓĞ´í!")
	--	return -1;
	-- end
	
	if (nCurMaxDur == nOrgMaxDur) then
		Talk(1, "", "Bé trang bŞ nµy t¹m thêi kh«ng cÇn söa!")
		return 1;
	end
	
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)

	-- ¿Û¼¼ÄÜ±¦Ê¯(Ë®¾§)
	if (j238 > 0) then
		DelItemEx(238)
	elseif (j239 > 0) then
		DelItemEx(239)
	elseif (j240 > 0) then
		DelItemEx(240)
	else
		Talk(1,"","Kh¸ch quan kh«ng cã Thñy Tinh")
		return -1;
	end

	-- ¼ÓÄÍ¾Ã¶ÈÉÏÏŞ
	nAddMaxDur = 25; -- Ò»¿ÅË®¾§£¬¼Ó25µãÉÏÏŞ
	nDelta = nOrgMaxDur - nCurMaxDur;
	if (nDelta < nAddMaxDur) then
		nAddMaxDur = nDelta;
	end
	
	SetMaxDurability(nItemIndex, nCurMaxDur + nAddMaxDur);
	WriteLog(date("%H%M%S")..":"..GetAccount().."("..GetName()..") sö dông mét viªn Thñy Tinh, Trang bŞ Hoµng Kim (ItemGenTime:"..GetItemGenTime(nItemIndex).." CurDur:"..GetCurDurability(nItemIndex)..") ®é bÒn lín nhÊt t¨ng lªn"..nAddMaxDur.."®iÓm");
	Msg2Player("B¹n sö dông mét viªn Thñy Tinh, ®é bÒn lín nhÊt trªn trang bŞ ®· t¨ng lªn."..nAddMaxDur.."®iÓm");
end;

-- È¡Ïû
function RepairGE_Cancel()
end;

-- ¹ØÓÚ»Æ½ğ×°±¸µÄĞŞÀí
function RePairGE_About()
	_szInfo = 
	{
		"<color=green>Söa ®¬n gi¶n:<color> gi¸ rÏ h¬n, sau khi söa ch÷a ®é bÒn trang bŞ lín nhÊt sÏ gi¶m xuèng<enter>",	
		"<color=green>Söa kü:<color> gi¸ cao h¬n, sau khi söa ch÷a ®é bÒn lín nhÊt trang kh«ng bŞ gi¶m xuèng<enter>",		
		"<color=green>§é bÒn söa ch÷a lín nhÊt:<color> Sö dông Thñy Tinh cã thÓ söa ch÷a mét bé phËn víi ®é bÒn lín nhÊt trªn trang bŞ Hoµng Kim"
	}
	szInfo = _szInfo[1].._szInfo[2].._szInfo[3];

	Talk(1, "", szInfo)
end;

-- ¹ØÓÚ»Æ½ğ×°±¸Ä¥ËğÉÏÏŞµÄĞŞ¸´
--function RePairGE_AboutRestorMax()
--	Talk(1, "", "Ê¹ÓÃ<color=red>Ë®¾§<color>¿ÉÒÔĞŞ¸´»Æ½ğ×°±¸µÄ²¿·ÖÄÍ¾Ã¶ÈÉÏÏŞ")
--end;

-----------------------------------------------------------------------------
-- ¼ÆËã×°±¸Î¬ĞŞ¼Û¸ñ --
-- ·µ»ØÖµ£º-1 ±íÊ¾³ö´í; >=0 ±íÊ¾ĞŞÀíËùĞèµÄÒøÁ½Êı
function get_repair_price(nItemIndex, nGenre, nQuality, nDetailType, nParticularType, nOrgMaxDur, nCurMaxDur, nCurDur, nEquipPrice, nPriceScale, nMagicScale, nSumMagic)
	if( nCurMaxDur <= 0 or nCurMaxDur <= nCurDur ) then
		return 0;
	end
	local nRepairPrice = 0;
	if( nQuality == 0 ) then		-- ÆÕÍ¨×°±¸£¨À¶/°×É«×°±¸£©
		nRepairPrice = nEquipPrice * nPriceScale / 100 * ( nCurMaxDur - nCurDur ) / nCurMaxDur * ( nMagicScale + nSumMagic ) / nMagicScale;
	elseif( nQuality == 2 ) then	-- ¿ÉÏâÇ¶×°±¸£¨×ÏÉ«×°±¸£©
		local arynMagLvl = GetItemAllParams( nItemIndex );
		local nItemVer = ITEM_GetItemVersion( nItemIndex );
		for i = 1, 6 do
			if( arynMagLvl[i] == 0 ) then
				break;
			elseif( arynMagLvl[i] < 0 or arynMagLvl[i] == 65535 ) then					-- MagicLevel´«µ½¿Í»§¶ËÊÇÓÃWORD´«ÊäµÄ£¬(WORD)(-1) == 65535
				nRepairPrice = nRepairPrice + ENCHASABLE_EQUIP_PRICE[i][4];				-- ¿Õ¿×°´4¼¶Ä§·¨µÈ¼¶ÊôĞÔ¼ÆËã
			else
				local nCurMagLvl = getMagAttrLvlLevel( nItemVer, arynMagLvl[i] );
				nRepairPrice = nRepairPrice + ENCHASABLE_EQUIP_PRICE[i][nCurMagLvl];	-- °´Ä§·¨µÈ¼¶ÊôĞÔ¼ÆËã
			end			
		end
		nRepairPrice = nRepairPrice * ( nCurMaxDur - nCurDur )
	end
	return nRepairPrice;
end;

-- Î¬ĞŞ×°±¸ --
-- ·µ»ØÖµ£º-1  ±íÊ¾³ö´í£¬= 0 ±íÊ¾Êı¾İÎ´±»ĞŞ¸Ä(²»Í¬²½¿Í»§¶Ë); >0 ±íÊ¾³É¹¦(Í¨Öª¿Í»§¶Ë)
function repair_equip(nItemIndex, nGenre, nQuality, nDetailType, nParticularType, nOrgMaxDur, nCurMaxDur, nCurDur, nEquipPrice)
	-- SetMaxDurability(nItemIndex, 10);
	-- SetCurDurability(nItemIndex, 10);
	return -1;
end;