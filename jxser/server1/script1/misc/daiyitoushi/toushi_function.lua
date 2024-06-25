-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÒ»¡°´øÒÕÍ¶Ê¦¡±Í·ÎÄ¼ş

-- Edited by ×Ó·Çô~
-- 2008/02/28 12:10

-- ======================================================

IncludeLib("LEAGUE");
Include("\\script\\misc\\daiyitoushi\\toushi_head.lua");
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua");
Include("\\script\\lib\\gb_modulefuncs.lua");
TinVatMonPhai			 = 1881

-- ¼ì²é¡°´øÒÕÍ¶Ê¦¡±£¬ÍË³öÃÅÅÉµÄÌõ¼ş£ºµÈ¼¶´ïµ½120¼¶£¬»ò120¼¶ÒÔÉÏ
function toushiCheckApplyState()
	if (GetLevel() < 70) then
		return TOUSHI_LVLERR;
	end
	
	if (GetLastFactionNumber() == -1) then
		return TOUSHI_NOFACTERR;
	end
	
	return TOUSHI_SUCCEED;
end


-- ¼ì²é¡°´øÒÕÍ¶Ê¦¡±£¬¼ÓÈëĞÂÃÅÅÉÌõ¼ş
function toushiCheckTransFactState(nFactionNumb, nStage)
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- »ñµÃ×ªÍ¶Ê¦ÃÅµÄ±ê¼Ç
	local nMyFacNumb	= GetLastFactionNumber();				-- »ñµÃÔ­ÃÅÅÉID
	local nSex			= GetSex();								-- ½ÇÉ«ĞÔ±ğ
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
	
	if (bFlag == 0) then
		return TOUSHI_FLAGERR;
	end
	
	if (bFlag >= 2) then
		return TOUSHI_UNKNOWN;
	end
	
	if (nMyFacNumb == -1) then
		return TOUSHI_NOFACTERR;
	end
	--Bá giíi h¹n thêi gian chuyÓn m«n ph¸i - Modified By DinhHQ - 20110813
--	if ((nCurTime - nLastChange) < TOUSHI_COLDDOWN_TIME) then
--	    return TOUSHI_TIMEERR;
--	end
	
	if ((nSex == 0 and (nFactionNumb == 4 or nFactionNumb == 5)) or (nSex == 1 and nFactionNumb == 0)) then
		return TOUSHI_MALEERR;
	end
	
	if (nMyFacNumb == nFactionNumb) then
		return TOUSHI_EQFACTERR;
	end
	
	if (GetLevel() < 70) then
		return TOUSHI_LVLERR;
	end
	
	if (nStage == 2) then
		if (check_zhuansheng_league(LG_WLLSLEAGUE) == 1) then
		--	return TOUSHI_LGERR;
		end
		if (CalcItemCount(2,0,3,0,1) > 0) or (CalcItemCount(2,0,9,0,-1) > 0) or (CalcItemCount(2,0,9,1,-1) > 0) or (CalcItemCount(2,0,4,0,-1) > 0) or (CalcItemCount(2,0,4,1,-1) > 0) or (CalcItemCount(2,0,2,0,-1) > 0) or (CalcItemCount(2,0,2,1,-1) > 0) or (CalcItemCount(2,0,2,2,-1) > 0) or (CalcItemCount(2,0,2,3,-1) > 0) or (CalcItemCount(2,0,2,4,-1) > 0) or (CalcItemCount(2,0,2,5,-1) > 0) or (CalcItemCount(2,0,2,6,-1) > 0) or (CalcItemCount(2,0,2,8,-1) > 0) or (CalcItemCount(2,0,2,9,-1) > 0) or (CalcItemCount(2,0,2,10,-1) > 0) or (CalcItemCount(2,0,2,11,-1) > 0) or (CalcItemCount(2,0,2,12,-1) > 0) or (CalcItemCount(2,0,2,13,-1) > 0) or (CalcItemCount(2,0,6,0,-1) > 0) or (CalcItemCount(2,0,6,1,-1) > 0) or (CalcItemCount(2,0,5,0,-1) > 0) or (CalcItemCount(2,0,5,1,-1) > 0) or (CalcItemCount(2,0,5,2,-1) > 0) or (CalcItemCount(2,0,5,3,-1) > 0) or (CalcItemCount(2,0,8,0,-1) > 0) or (CalcItemCount(2,0,8,1,-1) > 0) or (CalcItemCount(2,0,7,0,-1) > 0) or (CalcItemCount(2,0,7,1,-1) > 0) or (CalcItemCount(2,0,7,2,-1) > 0) or (CalcItemCount(2,0,7,3,-1) > 0) or (CalcItemCount(2,0,7,4,-1) > 0) or (CalcItemCount(2,0,7,5,-1) > 0) or (CalcItemCount(2,0,7,6,-1) > 0) or (CalcItemCount(2,0,7,7,-1) > 0) or (CalcItemCount(2,0,7,8,-1) > 0) or (CalcItemCount(2,0,7,9,-1) > 0) or (CalcItemCount(2,0,7,10,-1) > 0) or (CalcItemCount(2,0,7,11,-1) > 0) or (CalcItemCount(2,0,7,12,-1) > 0) or (CalcItemCount(2,0,7,13,-1) > 0) or (CalcItemCount(2,0,0,1,-1) > 0) or (CalcItemCount(2,0,0,2,-1) > 0) or (CalcItemCount(2,0,0,3,-1) > 0) or (CalcItemCount(2,0,0,4,-1) > 0) or (CalcItemCount(2,0,0,5,-1) > 0) or (CalcItemCount(2,0,1,0,-1) > 0) or (CalcItemCount(2,0,1,1,-1) > 0) or (CalcItemCount(2,0,1,2,-1) > 0)  then
	--	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		return 	Say("<color=white>Muèn chuyÓn ®æi m«n ph¸i c¸c h¹ cÇn bá toµn bé ®å trªn ng­êi xuèng.") -- go
		end
		if CalcItemCount(2,0,11,842,-1) > 0 or CalcItemCount(2,0,11,843,-1) > 0 or CalcItemCount(2,0,11,844,-1) > 0 or CalcItemCount(2,0,11,845,-1) > 0 or CalcItemCount(2,0,11,846,-1) > 0 or CalcItemCount(2,0,11,847,-1) > 0 or CalcItemCount(2,0,11,848,-1) > 0 or CalcItemCount(2,0,11,849,-1) > 0 or CalcItemCount(2,0,11,850,-1) > 0 or CalcItemCount(2,0,11,851,-1) > 0 then
	--	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		return 	Say("<color=white>Muèn chuyÓn ®æi m«n ph¸i c¸c h¹ cÇn bá toµn bé ®å trªn ng­êi xuèng.") -- go
		end
		if (CalcItemCount(2,0,-1,-1,-1) > 1) then
			return TOUSHI_EQUIPERR;
		end
		end
	
	
	if (GetTask(TSK_TOUSHI_COUNT) == 0 and CalcFreeItemCellCount() < 2) then
		return TOUSHI_NOFREEBAG;
	end
if (check_zhuansheng_league(LG_WLLSLEAGUE) == 1) and (nStage == 2) then
--ConsumeEquiproomItem(10,6,1,4361,-1);
end
	return TOUSHI_SUCCEED;
end




function toushiGetHierarchTitle(nFactionNumb)
	if (nFactionNumb == 7 or nFactionNumb == 3) then			-- Îå¶¾½Ì£¬ÌìÈÌ½Ì Îª½ÌÖ÷
		return TB_TOUSHI_HIERARCH[2];
	elseif (nFactionNumb == 1 or TB_TOUSHI_HIERARCH == 6) then	-- ÌìÍõ°ï£¬Ø¤°ï Îª°ïÖ÷
		return TB_TOUSHI_HIERARCH[3];
	else														-- ÆäËû ÎªÕÆÃÅ
		return TB_TOUSHI_HIERARCH[1];
	end
end


function toushiGetSexName(nSex)
	if (nSex == 0) then
		return "Nam";
	else
		return "N÷ ";
	end
end


function OnCancel()
end

function daiyitoushi_main(nFactionNumb)
	--if (gb_GetModule("SWITH_DAIYITOUSHI") ~= 1) then
		--Say("Xin lçi, c«ng n¨ng nµy t¹m thêi ®· bŞ ®ãng, thêi gian më l¹i sÏ ®ùoc th«ng b¸o sau ", 0);
		--return 1;
	--end
	
	local nFlag	= GetTask(TSK_TOUSHI_FLAG);
	local tbDes	= {"<dec><npc>Thiªn h¹ ®¹i lo¹n nh­  ngµy h«m nay, c¸c ®¹i m«n ph¸i trong vâ l©m ai còng chØ biÕt lo cho c¸i lîi cña m×nh, tïy theo chiÕn sù mµ bÕ quan,  trung nh©n vâ l©m th× bŞ tæn thÊt h¬n qu¸ nöa. VŞ kÕ vâ l©m h­¬ng háa, trïng t©n chÊn h­ng vâ l©m. T«n mÖnh vâ l©m minh chñ, kÓ tõ h«m nay c¸c ®¹i m«n ph¸i xãa bá c¸c quy t¾c, më réng m«n quy, cho phĞp c¸c ®Ö tö gia nhËp c¸c m«n ph¸i kh¸c, ®Ó cïng nhau Ên chøng vâ häc, s¸ng lËp ra nh÷ng tuyÖt häc vâ c«ng míi l¹, trung h­ng ng· vâ l©m."};
	
	if (nFlag == 0) then
		tinsert(tbDes, format("§¸i nghÖ ®Çu s­, chuyÓn m«n ph¸i/#toushiApplyEnter(%d)", nFactionNumb));
	elseif (nFlag == 1) then
		tinsert(tbDes, format("§¸i nghÖ ®Çu s­, b¸i nhËp m«n h¹/#toushiTransEnter(%d)", nFactionNumb));
	elseif (nFlag == 2 and GetLastFactionNumber() == nFactionNumb) then
		tbDes	= {"<dec><npc>NÕu nh­ ng­¬i ®· muèn gia nhËp bæn ph¶i, sau nµy ph¶i chuyªn t©m mµ khæ luyÖn, sím cã ngµy ngé ra ®­îc tuyÖt kü vâ häc"};
	else
		tbDes	= {"<dec><npc>Xem ra, vŞ <sex> nµy mang g¸nh nÆng trªn vai trïng t©n chÊn h­ng vâ l©m."};
	end
	
	tinsert(tbDes, "KÕt thóc ®èi tho¹i/OnCancel");
	
	CreateTaskSay(tbDes);
end
--

-- ´øÒÕÍ¶Ê¦£¬×ªÍ¶ÃÅÅÉ
function toushiApplyEnter(nFactionNumb)
	
	local nTaskValue = GetTask(2885)
	local nTmpRes = floor(nTaskValue/100)
	if nTaskValue > 0 and mod(nTmpRes, 100) < 14 then
		Msg2Player("Ng­¬i ®· nhËn nhiÖm vô kü n¨ng 150, xin h·y hoµn thµnh nhiÖm vô råi h·y ®Õn gÆp ta")
		return 
	end
	local nSex	= GetSex();
	local szDes = "";
	local szHierarchTitle	= toushiGetHierarchTitle(nFactionNumb);
	
	if (GetLastFactionNumber() ~= nFactionNumb) then
		CreateTaskSay({TB_TOUSHI_ERR_MSG[TOUSHI_FLAGERR], "KÕt thóc ®èi tho¹i/OnCancel"});
		return
	end
	
    local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
	--Bá giíi h¹n thêi gian chuyÓn m«n ph¸i - Modified By DinhHQ - 20110813
--	if ((nCurTime - nLastChange) < TOUSHI_COLDDOWN_TIME) then
--	    CreateTaskSay({TB_TOUSHI_ERR_MSG[TOUSHI_TIMEERR], "KÕt thóc ®èi tho¹i/OnCancel"});
--	    return
--	end
	
	if (nSex == 1) then
		szDes = "{NÕu nh­ cã ®­îc tİn vËt cña bang chñ thiªn v­¬ng bang D­¬ng Anh th× cã thÓ gia nhËp m«n ph¸i thiªn v­¬ng.}";
	end
	
	szDes	= format("<dec><npc>Vâ häc trong giíi vâ l©m cña chóng ta b¸c ®¹i uyªn th©m, lµm s­ phô ta còng muèn më réng m«n quy ®Ó cïng nhau øng chİnh c¸c m«n ph¸i kh¸c, nay ta ®Ó ng­¬i rêi khái  bæn m«n ta còng cã thÓ thu nhËn %s m«n ph¸i ®Ö tö . %s<enter>, con ®­êng cÇu mong vâ häc qu¶ kh«ng dÔ dµng chót nµo, lµ mét s­ phô ta còng ph¶i thö th¸ch ng­¬i mét phen. NÕu nh­ ng­¬i cã thÓ{{®¹t ®Õn cÊp 120}} h¬n n÷a cßn ph¶i t×m vÒ ®©y cho bæn ph¸i tİn vËt ®· bŞ thÊt l¹c tõ l©u {{ “Tİn VËt M«n Ph¸i”}}, s­ phô  míi cho ng­¬i h¹ s¬n.", 
				toushiGetSexName(nSex),
				szDes);
	
	
	CreateTaskSay({szDes,
					format("%s, Ta ®· cã tİn vËt xin tr­ëng m«n h·y nhËn lÊy./#toushiApplyMenPaiXinWu(%d)", szHierarchTitle, nFactionNumb),
					"KÕt thóc ®èi tho¹i/OnCancel"
				});
end

-- ¸øÓë½çÃæÌá½»ÃÅÅÉĞÅÎï
function toushiApplyMenPaiXinWu()
--AddItem(6,1,1670,1,1,0,0)
	local bFlag = toushiCheckApplyState();
	if (bFlag == TOUSHI_SUCCEED) then
		GiveItemUI("Tr×nh tİn vËt m«n ph¸i", "Bá tİn vËt m«n ph¸i vµo « trèng bªn d­íi.", "toushiApplyShowXinWu", "OnCancel", 1);
	else
		CreateTaskSay({TB_TOUSHI_ERR_MSG[bFlag], "KÕt thóc ®èi tho¹i/OnCancel"});
	end
end

-- ³öÊ¾ĞÅÎïÅĞ¶Ï£¬²¢½øĞĞÍË³öÃÅÅÉ´¦Àí
-- ÕâÀïµÄÍË³öÃÅÅÉ½ö½öÉèÖÃÔÊĞí×ªÍ¶ËûÃÅ±äÁ¿±ê¼Ç
function toushiApplyShowXinWu(nCount)
	if (nCount ~= 1) then
		CreateTaskSay({"<dec><npc>Tİn VËt M«n Ph¸i kh«ng ph¶i lµ mãn ®å ch¬i cña trÎ con. Kh«ng lÏ ng­¬i muèn lµm mê m¾t ta hay sao?", 
						"Tr×nh l¹i m«n ph¸i tİn vËt/toushiApplyMenPaiXinWu",
						"M¹n phĞp cho ta t×m l¹i mét lÇn n÷a/OnCancel"
					});
		return 0;
	end
	
	local nItemIdx = GetGiveItemUnit(nCount);		--ÓÉ¸øÓë½çÃæÖĞÎïÆ·ĞòºÅ»ñµÃÎïÆ·Ë÷Òı
	local nG, nD, nP = GetItemProp(nItemIdx);		--»ñµÃÎïÆ·µÄIDÊôĞÔÖµ
	local szKey = join({nG, nD, nP});
	
	if (szKey ~= join(TB_TOUSHI_MENPAIXINWU)) then
		CreateTaskSay({"<dec><npc>Tİn VËt M«n Ph¸i kh«ng ph¶i lµ mãn ®å ch¬i cña trÎ con. Kh«ng lÏ ng­¬i muèn lµm mê m¾t ta hay sao?", 
						"Tr×nh l¹i m«n ph¸i tİn vËt/toushiApplyMenPaiXinWu",
						"M¹n phĞp cho ta t×m l¹i mét lÇn n÷a/OnCancel"
					});
		return 0;
	end
	
	--
	RemoveItemByIndex(nItemIdx);					-- É¾³ıÃÅÅÉĞÅÎï
	SetTask(TSK_TOUSHI_FLAG, 1);					-- ÉèÖÃ´øÒÕÍ¶Ê¦ÉêÇë³É¹¦±ê¼Ç
	WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tLevel:%d,FactionId:%d%s",
				"§¸i nghÖ ®Çu s­",
				GetLocalDate("%Y-%m-%d %X"),
				GetName(), GetAccount(),
				GetLevel(), GetLastFactionNumber(),
				"§­a ra m«n ph¸i tİn vËt, yªu cÇu chuyÓn m«n ph¸i thµnh c«ng"));
				
	CreateTaskSay({"<dec><npc>Chóc mõng ®¹i hiÖp ®· ®ñ tiªu chuÈn chuyÔn ph¸i,ng©y giê ng­¬i h·y chän ph¸i mµ m×nh ­ng ı xin t¹m biÖt hÑn ngµi t¸i ngé..", "Ta muèn chän ph¸i chuyÓn ®Õn/chonphaimoi"});
end

-- ´øÒÕÍ¶Ê¦£¬°İÈëÃÅÇ½
function toushiTransEnter(nFactionNumb)
	local nTaskValue = GetTask(2885)
	local nTmpRes = floor(nTaskValue/100)
	if nTaskValue > 0 and mod(nTmpRes, 100) < 14 then
		Msg2Player("Ng­¬i ®· nhËn nhiÖm vô kü n¨ng 150, xin h·y hoµn thµnh nhiÖm vô råi h·y ®Õn gÆp ta")
		return 
	end
	local bFlag				= toushiCheckTransFactState(nFactionNumb, 1);
	local nSex				= GetSex();
	local szHierarchTitle	= toushiGetHierarchTitle(nFactionNumb);
	
	if (bFlag == TOUSHI_SUCCEED) then
		
		local szDes = "<dec><npc>VŞ <sex> nµy, ng­¬i ®· t×m ®­îc ®­êng ®Õn chç cña ta ®©y, ta buéc ng­¬i ph¶i quªn ®i nh÷ng tuyÖt häc mµ ng­¬i ®· l·nh ngé ®­îc tõ s­ phô cña ng­¬i. {{ ng­¬i ph¶i biÕt r»ng ®· lµ gia nhËp bæn m«n, th× nh÷ng vâ c«ng ®· häc tr­íc ®©y kh«ng thÓ sö dông, ®­¬ng nhiªn ta sÏ truyÒn thô vâ c«ng cña bæn ph¸i cho ng­¬i, ®­a ng­¬i gia nhËp bæn ph¸i, ta tin t­ëng r»ng sÏ kh«ng tæn thÊt thÕ lùc.}} ng­¬i ®· nghÜ kü ch­a ®ã, qu¶ thùc lµ ng­¬i muèn gia nhËp bæn ph¸i hay kh«ng?";
		
		if (nFactionNumb == 1 and nSex == 1) then
			szDes = "<dec><npc>VŞ <sex> nµy, ng­¬i ®· t×m ®­îc ®­êng ®Õn chç cña ta ®©y, ta buéc ng­¬i ph¶i quªn ®i nh÷ng tuyÖt häc mµ ng­¬i ®· l·nh ngé ®­îc tõ s­ phô cña ng­¬i. Cã ®iÒu bæn ph¸i ta vèn dÜ kh«ng thu nhËn n÷ ®Ö tö, lµ v× sî r»ng n÷ ®Ö tö sÏ kh«ng lÜnh ngé ®­îc c«ng ph¸p thuÇn d­¬ng cña bæn ph¸i. M·i cho ®Õn nöa n¨m tr­íc ®©y bæn bang chñ v« t×nh ®¹t ®­îc mét ThiÕp Cæ Ph­¬ng, míi t×m ®­îc c«ng ph¸p chÕ gi¶i. ChØ lµ bİ d­îc ë trong ph­¬ng thuèc nµy còng kh«ng lÊy g× æn ®Şnh cho l¾m, cÇn ph¶i cã bæn bang chñ truyÒn c«ng ®· th«ng kinh m¹ch. NÕu nh­ ng­¬i cã thÓ t×m ®­îc {{ Tİn vËt cña bæn bang chñ }}, míi cã thÓ gia nhËp bæn bang. Ngoµi ra {{ ng­¬i còng ph¶i biÕt r»ng ®· lµ gia nhËp bæn m«n, th× nh÷ng vâ c«ng ®· häc tr­íc ®©y kh«ng thÓ sö dông, ®­¬ng nhiªn ta sÏ truyÒn thô vâ c«ng cña bæn ph¸i cho ng­¬i, ®­a ng­¬i gia nhËp bæn ph¸i, ta tin t­ëng r»ng sÏ kh«ng tæn thÊt thÕ lùc.}} ng­¬i ®· nghÜ kü ch­a ®ã, qu¶ thùc lµ ng­¬i muèn gia nhËp bæn ph¸i hay kh«ng?";
		end
		
		CreateTaskSay({szDes, 
				format("%s, Ta ®· nghÜ kü råi, muèn gia nhËp m«n ph¸i cña bæn bang./#toushiTransSureTodo(%d)", szHierarchTitle, nFactionNumb),
				format("%s, ®Ó ta suy nghÜ thªm/OnCancel", szHierarchTitle),
			});
		
	else
		CreateTaskSay({TB_TOUSHI_ERR_MSG[bFlag], "KÕt thóc ®èi tho¹i/OnCancel"});
	end
end

-- ÌáÊ¾×ªÖ°³É¹¦ºó,ĞèÒªÉèÖÃ90¼¶¼¼ÄÜÊìÁ·¶È
function toushiTransSureTodo(nFactionNumb)
	local tbDescrib		= {"<dec><npc>Ng­¬i cÇn ph¶i lùa chän con ®­êng chñ c«ng:"};

	for k, v in TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].tbSkillID[90] do
		if (type(v) == "table") then
			tbDescrib[getn(tbDescrib) + 1]	= format("%s/#toushiTransSure(%d, %d)", v[3], nFactionNumb, k);
		end
	end
	
	tbDescrib[getn(tbDescrib) + 1]	= "Ta cÇn ph¶i suy nghÜ thªm/OnCancel";
	
	CreateTaskSay(tbDescrib);
end


-- È·ÈÏ°İÈëÃÅÇ½£¬ÅĞ¶Ï½ÇÉ«×´Ì¬£¬´¦Àí½ÇÉ«ÊôĞÔ
function toushiTransSure(nFactionNumb, nMagicIdx)
	local bFlag	= toushiCheckTransFactState(nFactionNumb, 2);
	local nSex	= GetSex();
	local szLog	= "";
	
	if (bFlag == TOUSHI_SUCCEED) then
		
		if (nFactionNumb == 1 and nSex == 1) then
			--local ndnumzimu		= CalcItemCount(23, unpack(TB_TOUSHI_YANGYINGXINWU), -1);	-- ¼ì²é×ÓÄ¸´ü
			local ndnumbeibao	= CalcItemCount(3, TB_TOUSHI_YANGYINGXINWU[1],TB_TOUSHI_YANGYINGXINWU[2],TB_TOUSHI_YANGYINGXINWU[3], -1);	-- ¼ì²é±³°ü
			
			if (ndnumbeibao >= 1) then
				ConsumeItem(3, 1, TB_TOUSHI_YANGYINGXINWU[1],TB_TOUSHI_YANGYINGXINWU[2],TB_TOUSHI_YANGYINGXINWU[3], -1);
			--elseif (ndnumzimu >= 1) then
			--	ConsumeItem(23, 1, unpack(TB_TOUSHI_YANGYINGXINWU), -1);
			
			else
				CreateTaskSay({TB_TOUSHI_ERR_MSG[TOUSHI_TWFEMALEERR], "KÕt thóc ®èi tho¹i/OnCancel"});
				return TOUSHI_TWFEMALEERR;
			end
			
			szLog = "Giao tİn vËt cña D­¬ng Anh thµnh c«ng";
		end
		
		local bTrans = toushiDoTransPlayer(GetLastFactionNumber(), nFactionNumb, nMagicIdx, szLog);			-- ´¦Àí½ÇÉ«Ïà¹ØÊôĞÔ
		
		-- ÉèÖÃÀäÈ´Ê±¼ä
		local nCurTime = tonumber( GetCurServerTime() );
		SetTask(TSK_LAST_CHANGE_FACTION, nCurTime);
	else
		CreateTaskSay({TB_TOUSHI_ERR_MSG[bFlag], "KÕt thóc ®èi tho¹i/OnCancel"});
	end
end


-- ×ª»»½ÇÉ«¼ÓÈë¶ÔÓ¦ÃÅÅÉ
-- ÉèÖÃ½ÇÉ«ÎåĞĞ£¬ÃÅÅÉ£¬³ÆºÅ£¬ÕóÓª£¬ÃÅÅÉÈÎÎñ±äÁ¿
function toushiDoTransPlayer(nMyFacNumb, nFactionNumb, nMagicIdx, szLog)
	LeaveTeam();															-- ÏÈ×öÀë¶Ó²Ù×÷
	
	local nLevel		= GetLevel();
	local tbOldSkill	= TB_DAIYITOUSHI_FACTS[nMyFacNumb + 1].tbSkillID;
	local tbNewSkill	= TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].tbSkillID;
	local tb90SkillExp		= {};
	local tb120SkillExp	= {};
	local tb150SkillExp	= {};
	
	zhuansheng_clear_skill(0, 0)											-- µ÷ÓÃ×ªÉú Ï´¼¼ÄÜµãº¯Êı
	
	for i = 1, getn(tbOldSkill[90]) do										-- ±£ÁôÔ­¼¼ÄÜÊìÁ·¶È
		if (type(tbOldSkill[90][i]) == "table") then
			local nMagicLvl, nMagicExp, nMagicExpPre		= toushiGetMagicProp(tbOldSkill[90][i][1]);

--			if (nMagicLvl == 0) then
--				nMagicLvl = 1;
--			end

			if (tb90SkillExp.nShuliandu == nil) then
				tb90SkillExp.nShuliandu = {};
			end
			if (nMagicLvl > 0) then
				
				tb90SkillExp.nShuliandu[getn(tb90SkillExp.nShuliandu) + 1]	= {["nMagicLvl"] = nMagicLvl, ["nMagicExpPre"] = nMagicExpPre};
			end
		else
			
			if (HaveMagic(tbOldSkill[90][i]) >= 0) then
				tb90SkillExp.nJinengdian = 1;
			end
		end
	end
	
	sort(tb90SkillExp.nShuliandu, toushiSortSkillsExp);									-- ¶ÔÊìÁ·¶ÈµÈ¼¶¾­Ñé×öÅÅĞò£¬¸øÖ÷¹¥Â·Ïß¼Ó×î¸ßÊìÁ·¶È
	
	if (HaveMagic(tbOldSkill[120][1][1]) > 0) then							-- ±£Áô120¼¶¼¼ÄÜÊìÁ·¶È
		local nMagicLvl, nMagicExp, nMagicExpPre		= toushiGetMagicProp(tbOldSkill[120][1][1]);
		
--		if (nMagicLvl == 0) then
--			nMagicLvl = 1;
--		end
		tb120SkillExp = {["nMagicLvl"] = nMagicLvl, ["nMagicExpPre"] = nMagicExpPre};
	end
	
	for i = 1, getn(tbOldSkill[150]) do
		if (type(tbOldSkill[150][i]) == "table") then
			local nMagicLvl, nMagicExp, nMagicExpPre		= toushiGetMagicProp(tbOldSkill[150][i][1]);
			
			if (tb150SkillExp.nShuliandu == nil) then
				tb150SkillExp.nShuliandu = {};
			end
			if (nMagicLvl > 0) then
				
				tb150SkillExp.nShuliandu[getn(tb150SkillExp.nShuliandu) + 1]	= {["nMagicLvl"] = nMagicLvl, ["nMagicExpPre"] = nMagicExpPre};
			end
		else
			
			if (HaveMagic(tbOldSkill[150][i]) >= 0) then
				tb150SkillExp.nJinengdian = 1;
			end
		end
	end
	
	sort(tb150SkillExp.nShuliandu, toushiSortSkillsExp);									-- ¶ÔÊìÁ·¶ÈµÈ¼¶¾­Ñé×öÅÅĞò£¬¸øÖ÷¹¥Â·Ïß¼Ó×î¸ßÊìÁ·¶È
	for i=1,getn(tb150SkillExp.nShuliandu) do
		print(tb150SkillExp.nShuliandu[i].nMagicLvl, tb150SkillExp.nShuliandu[i].nMagicExpPre)
	end
	
	for nSkillLvl, tbLvlSkill in tbOldSkill do							-- É¾³ı¾ÉÃÅÅÉ¼¼ÄÜ
		for i = 1, getn(tbLvlSkill) do
			if (type(tbLvlSkill[i]) == "table") then
				DelMagic(tbLvlSkill[i][1]);
			else
				DelMagic(tbLvlSkill[i]);
			end
		end
	end
	
	--for nSkillLvl, tbLvlSkill in tbNewSkill do							-- Ñ§Ï°ĞÂÃÅÅÉ¼¼ÄÜ
	for nSkillLvl = 10, 150, 10  do							-- Ñ§Ï°ĞÂÃÅÅÉ¼¼ÄÜ
		local tbLvlSkill = tbNewSkill[nSkillLvl];
		if (tbLvlSkill) then
			if (nSkillLvl == 150) then
				toushiAdd150Skill(nMyFacNumb, nFactionNumb, tbOldSkill, tb150SkillExp, tbLvlSkill, nMagicIdx);	
			
			elseif (nSkillLvl == 120) then										-- Èç¹ûÊÇ120¼¶¼¼ÄÜ,Ö±½ÓÉèÖÃÎª¾É120¼¶¼¼ÄÜµÈ¼¶ºÍÊìÁ·¶È
				
				toushiAdd120Skill(tb120SkillExp, tbLvlSkill[1][1]);			
				
			elseif (nSkillLvl == 90) then									-- Èç¹ûÊÇ90¼¶¼¼ÄÜ
				
				toushiAdd90Skill(nMyFacNumb, nFactionNumb, tbOldSkill, tb90SkillExp, tbLvlSkill, nMagicIdx);			-- 
				
			else															-- Èç¹ûÊÇ¼Óµã¼¼ÄÜ
				for i = 1, getn(tbLvlSkill) do 
					AddMagic(tbLvlSkill[i]);
				end
			end
		end
	end
	
	
	local nOldSeries	= GetSeries();
	local nNewSeries	= TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nSeries;
	
	toushiAddWuXingSkill(nOldSeries, nNewSeries);		-- Èç¹ûÓĞÎåĞĞ¼¼ÄÜ£¬ÄÇÃ´¸ü»»ÎªĞÂÎåĞĞ
	
	zhuansheng_clear_prop(0, 0, nNewSeries)			-- µ÷ÓÃ×ªÉú Ï´Ç±ÄÜµãº¯Êı,ÒÔĞÂÎåĞĞÏ´µã,¸÷ÎåĞĞ»ù´¡Ç±ÄÜµã²»Ò»Ñù
	
	SetSeries(nNewSeries);							-- ×ª»»½ÇÉ«ÎåĞĞÊôĞÔ
	
	toushiResetMaxLife(nNewSeries, nLevel);			-- ½ÇÉ«¶ÔÓ¦ÎåĞĞµÈ¼¶ µÄ»ù´¡ÑªÁ¿
	toushiResetMaxMana(nNewSeries, nLevel);			-- ½ÇÉ«¶ÔÓ¦ÎåĞĞµÈ¼¶ µÄ»ù´¡ÄÚÁ¦
	SetTask(TSK_TOUSHI_RESETBASE, 1);										-- 
	
	SetLastFactionNumber(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nFacNumb);					-- ½ÇÉ«ÃÅÅÉID
	
	SetTask(TB_DAIYITOUSHI_FACTS[nMyFacNumb + 1].nTaskId_Fact, 0);				-- Çå½ÇÉ«Ô­ÃÅÅÉÈÎÎñ±äÁ¿
	
	if (GetFaction() ~= "Míi nhËp giang hå ") then
		SetFaction(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].szFacName);			-- ½ÇÉ«ÃÅÅÉÃû³Æ
		
		SetCamp(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nCamp);					-- ¶ÔÓ¦ÃÅÅÉÕóÓª
		SetCurCamp(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nCamp);				-- ¶ÔÓ¦ÃÅÅÉÕóÓª
		
		SetTask(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nTaskId_Fact, TOUSHI_FACTION_HUISHI);	-- ÃÅÅÉÈÎÎñ±äÁ¿,»ØÊ¦
	else
		SetTask(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nTaskId_Fact, TOUSHI_FACTION_CHUSHI);	-- ÃÅÅÉÈÎÎñ±äÁ¿,³öÊ¦
	end
	
	-- SetRank(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nRankId);					-- ½ÇÉ«Í·ÏÎ
	
	SetTask(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nTaskId_137, 
					TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].nValue_137);			-- ÃÅÅÉÈÎÎñ±äÁ¿,³öÊ¦
	
	SetTask(144, 0);	--Ãâ·ÑÏ´µã
	SetTask(TSK_TOUSHI_FLAG, 0);												-- Çå´øÒÕÍ¶Ê¦³É¹¦±ê¼Ç
	SetTask(TSK_TOUSHI_COUNT, GetTask(TSK_TOUSHI_COUNT) + 1);					-- ÉèÖÃ´øÒÕÍ¶Ê¦³É¹¦´ÎÊı
	
	if (GetByte(GetTask(TSK_ZHENPAILINGDAN_USECNT), 3) ~= 1) and CalcFreeItemCellCount() > 5 then
		SetItemBindState(AddItem(unpack(TB_TOUSHI_ZHENPAILINGDAN)), -2);			-- ÔùËÍµÄÎïÆ·ÎªÓÀ¾Ã°ó¶¨
		SetItemBindState(AddItem(unpack(TB_TOUSHI_ZHENPAILINGYAO)), -2);
		SetTask(TSK_ZHENPAILINGDAN_USECNT, SetByte(GetTask(TSK_ZHENPAILINGDAN_USECNT), 3, 1))
		szLog = szLog..", thu ®­îc trÊn ph¸i linh ®¬n vµ trÊn ph¸i linh d­îc";
	end
	
	
	CreateTaskSay({"<dec><npc>NÕu nh­ ng­¬i ®· muèn gia nhËp bæn ph¶i, sau nµy ph¶i chuyªn t©m mµ khæ luyÖn, sím cã ngµy ngé ra ®­îc tuyÖt kü vâ häc. §©y lµ hai viªn linh d­îc cña bæn ph¸i, cã thÓ gióp ng­¬i n©ng cao c«ng lùc, h·y nhËn lÊy mµ sö dông.",
					"KÕt thóc ®èi tho¹i/OnCancel"});
	
	Msg2Faction(format(TB_DAIYITOUSHI_FACTS[nFactionNumb + 1].szMsg, GetName()));
	
	WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tLevel:%d,OldFactionId:%d,NewFactionId:%d,MainMagic:%d,%s",
				"§¸i nghÖ ®Çu s­",
				GetLocalDate("%Y-%m-%d %X"),
				GetName(), GetAccount(),
				GetLevel(), nMyFacNumb, nFactionNumb,nMagicIdx,
				"Xö lı chuyÓn m«n ph¸i thµnh c«ng"..szLog));
	KickOutSelf();
end


function toushiSetTask(nTaskId, isHigh, nValue)
	local nTaskValue	= GetTask(nTaskId);
	local nTaskValue_H	= floor(nTaskValue / 2^16);
	local nTaskValue_L	= mod(nTaskValue, 2^16);
	
	if (isHigh == 1) then
		nTaskValue_H	= nValue;
	else
		nTaskValue_L	= nValue;
	end
	
	nTaskValue			= nTaskValue_H * 2^16 + nTaskValue_L;
	
	SetTask(nTaskId, nTaskValue);
	
	return nTaskValue;
end


function toushiAddTask(nTaskId, isHigh, nAdd)
	local nTaskValue	= GetTask(nTaskId);
	local nTaskValue_H	= floor(nTaskValue / 2^16);
	local nTaskValue_L	= mod(nTaskValue, 2^16);
	local nValue		= 0;
	
	if (isHigh == 1) then
		nTaskValue_H	= nValue;
	else
		nTaskValue_L	= nValue;
	end
	
	nValue			= nValue + nAdd;
	
	toushiSetTask(nTaskId, isHigh, nValue)
	
	return nTaskValue;
end


function toushiGetTask(nTaskId, isHigh)
	local nTaskValue	= GetTask(nTaskId);
	local nTaskValue_H	= floor(nTaskValue / 2^16);
	local nTaskValue_L	= mod(nTaskValue, 2^16);
	
	if (isHigh == 1) then
		return nTaskValue_H;
	else
		return nTaskValue_L;
	end
end


function toushiGetMagicProp(nMagicId)
	local nMagicLvl		= HaveMagic(nMagicId);
	
	if (nMagicLvl == -1) then
		return 0, 0, 0;
	end
	
	if (nMagicLvl <= 0) then
		nMagicLvl = 1;
	end
	
	if (nMagicLvl > 20) then
		nMagicLvl = 20;
	end
	
	local nMagicExp		= GetSkillExp(nMagicId);
	local nMagicExpPre	= floor((nMagicExp * 10000) / TB_TOUSHI_SKILLEXP[nMagicId][nMagicLvl]);
	
	return nMagicLvl, nMagicExp, nMagicExpPre;
end


-- ½«Ô­Ö°Òµ¸÷¼¼ÄÜÊìÁ·¶ÈÅÅĞò
function toushiSortSkillsExp(tb1, tb2)
	if (tb1.nMagicLvl ~= tb2.nMagicLvl) then
		return tb1.nMagicLvl > tb2.nMagicLvl;
	else
		return tb1.nMagicExpPre > tb2.nMagicExpPre;
	end

end


-- Ìí¼Ó150¼¶¼¼ÄÜ´¦Àí
--  150¼¶¼¼ÄÜÈÎÎñÖ»·ÖÍê³ÉºÍÎ´½øĞĞ£¬soÎ´½øĞĞ²»¸ø£¬Íê³ÉÈ«¸ø
function toushiAdd150Skill(nMyFacNumb, nFactionNumb, tbOldSkill, tbOldSkillExp, tbNewSkill, nMagicIdx)
	local nOldNumb		= nMyFacNumb + 1;
	local nNewNumb		= nFactionNumb + 1;
	local tbAddSkill	= {};
	local tbFactStepList = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
	}
	
	if (mod(floor(GetTask(TSK_LV150_SKILL) / 100), 100) >= TOUSHI_150SKILL_TASKSTATE) then
	-- Èç¹û150¼¶¼¼ÄÜÈÎÎñ±äÁ¿ÎªÍê³ÉµÄ´¦Àí
		--¸Ä±ä150ÈÎÎñÍê³ÉµÄÈÎÎñ±äÁ¿£¬ÃÅÅÉÖ§ÏßµÄĞŞ¸Ä
		SetTask(TSK_LV150_SKILL, TOUSHI_150SKILL_TASKSTATE*100+tbFactStepList[nFactionNumb])
		
		local nCount	= getn(tbOldSkillExp.nShuliandu);
		local nAddCnt	= 0;
		
		if (nCount > 0) then
			nAddCnt			= nAddCnt + 1;
			tbAddSkill[1]	= {tbNewSkill[nMagicIdx][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre};						-- ÏÈ½«Ö÷¹¥Â·Ïß¼¼ÄÜ¼Ó¼ÇÂ¼
		else
			tbAddSkill[1] = {tbNewSkill[nMagicIdx][1], 1, 0};
		end
		print(150,tbAddSkill[1][1], tbAddSkill[1][2], tbAddSkill[1][3])
		for k = 1, getn(tbNewSkill) do
			if (type(tbNewSkill[k]) == "table") then											-- Èç¹ûÊÇÊìÁ·¶È¼¼ÄÜ
				if (tbNewSkill[k][1] ~= tbNewSkill[nMagicIdx][1]) then											-- °´Ë³Ğò¸øÓëÊìÁ·¶È
																								-- Èç¹û¾ÉÃÅÅÉ¼¼ÄÜÊìÁ·¶È²»¹»°²ÅÅ
					if (nCount > nAddCnt) then													-- Ôò¸øÓë¼¼ÄÜÎªÒ»¼¶£¬ÊìÁ·¶ÈÎª0
						nAddCnt = nAddCnt + 1;
						tbAddSkill[getn(tbAddSkill) + 1] = {tbNewSkill[k][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre};
						print(tbNewSkill[k][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre)
					else
						tbAddSkill[getn(tbAddSkill) + 1] = {tbNewSkill[k][1], 1, 0};
						print(tbNewSkill[k][1], 1, 0)
					end
				end
			else																				-- Èç¹ûÊÇ¼Óµã¼¼ÄÜ£¬Ôò¼ÇÂ¼Òª¼Ó
				tbAddSkill[getn(tbAddSkill) + 1] = tbNewSkill[k];								-- ÔÚ¸øÓëµÄÊ±ºòÖ±½Ó¸ø0¼¶
			end
		end
	else
		return
	end
	
	for k = 1, getn(tbAddSkill) do
		if (type(tbAddSkill[k]) == "table") then
			AddMagic(tbAddSkill[k][1], tbAddSkill[k][2]);
			AddSkillExp(tbAddSkill[k][1], tbAddSkill[k][3], 1, 1);
		else
			AddMagic(tbAddSkill[k]);
		end
	end
end

-- Ìí¼Ó120¼¶¼¼ÄÜ´¦Àí¡£Èç¹ûÔ­À´ÓĞ120¼¶¼¼ÄÜÔò¸øÓëĞÂÃÅÅÉ120¼¶¼¼ÄÜ
function toushiAdd120Skill(tbOldSkill, nNewSkill)
	if (tbOldSkill.nMagicLvl and tbOldSkill.nMagicLvl > 0) then
		SetTask(LV120_SKILL_ID, nNewSkill);
		AddMagic(nNewSkill, tbOldSkill.nMagicLvl);
		AddSkillExp(nNewSkill, tbOldSkill.nMagicExpPre, 1, 1);
	end
end

-- Ìí¼Ó90¼¶¼¼ÄÜ´¦Àí
-- 	Èç¹û90¼¶¼¼ÄÜÈÎÎñÍê³É£¬Ôò¸øÓëËùÓĞĞÂÃÅÅÉ90¼¶¼¼ÄÜ
-- 	Èç¹û90¼¶¼¼ÄÜÈÎÎñÎ´Íê³É£¬Ôò°´¾ÉÃÅÅÉ90¼¶¼¼ÄÜÊıÁ¿¸øÓëĞÂÃÅÅÉ¼¼ÄÜ
function toushiAdd90Skill(nMyFacNumb, nFactionNumb, tbOldSkill, tbOldSkillExp, tbNewSkill, nMagicIdx)
	local nOldNumb		= nMyFacNumb + 1;
	local nNewNumb		= nFactionNumb + 1;
	local tbAddSkill	= {};
	
	
	if (GetTask(TB_DAIYITOUSHI_FACTS[nOldNumb].nTaskId_90Skill) == TOUSHI_90SKILL_TASK) then
	-- Èç¹û90¼¶¼¼ÄÜÈÎÎñ±äÁ¿ÎªÍê³ÉµÄ´¦Àí
		SetTask(TB_DAIYITOUSHI_FACTS[nNewNumb].nTaskId_90Skill, TOUSHI_90SKILL_TASK);	-- ĞÂÃÅÅÉ¼¼ÄÜÈÎÎñÉèÖÃÎªÍê³É
		
		local nCount	= getn(tbOldSkillExp.nShuliandu);
		local nAddCnt	= 0;
		
		if (nCount > 0) then
			nAddCnt			= nAddCnt + 1;
			tbAddSkill[1]	= {tbNewSkill[nMagicIdx][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre};						-- ÏÈ½«Ö÷¹¥Â·Ïß¼¼ÄÜ¼Ó¼ÇÂ¼
		else
			tbAddSkill[1] = {tbNewSkill[90][nMagicIdx], 1, 0};
		end
		
		for k = 1, getn(tbNewSkill) do
			if (type(tbNewSkill[k]) == "table") then											-- Èç¹ûÊÇÊìÁ·¶È¼¼ÄÜ
				if (tbNewSkill[k][1] ~= tbNewSkill[nMagicIdx][1]) then											-- °´Ë³Ğò¸øÓëÊìÁ·¶È
																								-- Èç¹û¾ÉÃÅÅÉ¼¼ÄÜÊìÁ·¶È²»¹»°²ÅÅ
					if (nCount > nAddCnt) then													-- Ôò¸øÓë¼¼ÄÜÎªÒ»¼¶£¬ÊìÁ·¶ÈÎª0
						nAddCnt = nAddCnt + 1;
						tbAddSkill[getn(tbAddSkill) + 1] = {tbNewSkill[k][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre};
					else
						tbAddSkill[getn(tbAddSkill) + 1] = {tbNewSkill[k][1], 1, 0};
					end
				end
			else																				-- Èç¹ûÊÇ¼Óµã¼¼ÄÜ£¬Ôò¼ÇÂ¼Òª¼Ó
				tbAddSkill[getn(tbAddSkill) + 1] = tbNewSkill[k];								-- ÔÚ¸øÓëµÄÊ±ºòÖ±½Ó¸ø0¼¶
			end
		end
	else
		local tbOtherMagic	= {tbShuliandu = {}, tbJinengdian = {}};
		local nCount		= getn(tbOldSkillExp.nShuliandu);
		local nAddCnt		= 0;
		local nAddJinengCnt	= 0;
		
		if (nCount > 0) then
			nAddCnt = nAddCnt + 1;
			tbAddSkill[1]	= {tbNewSkill[nMagicIdx][1], tbOldSkillExp.nShuliandu[1].nMagicLvl, tbOldSkillExp.nShuliandu[1].nMagicExpPre};					-- ÏÈ½«Ö÷¹¥Â·Ïß¼¼ÄÜ¼Ó¼ÇÂ¼
		else
			tbOtherMagic.tbShuliandu[getn(tbOtherMagic.tbShuliandu) + 1]	= {tbNewSkill[nMagicIdx][1], 1, 0};
		end
		
		for k = 1, getn(tbNewSkill) do
			if (type(tbNewSkill[k]) == "table") then
				if (tbNewSkill[k][1] ~= tbNewSkill[nMagicIdx][1]) then
					if (nCount > nAddCnt) then
						nAddCnt = nAddCnt + 1;
						tbAddSkill[getn(tbAddSkill) + 1] = {tbNewSkill[k][1], tbOldSkillExp.nShuliandu[nAddCnt].nMagicLvl, tbOldSkillExp.nShuliandu[nAddCnt].nMagicExpPre};
						
					else
						
						tbOtherMagic.tbShuliandu[getn(tbOtherMagic.tbShuliandu) + 1]	= {tbNewSkill[k][1], 1, 0};
					end
				end
				
			else
				
				if (tbOldSkillExp.nJinengdian) then
					tbAddSkill[getn(tbAddSkill) + 1]	= tbNewSkill[k];
					nAddJinengCnt						= nAddJinengCnt + 1;
					
				else
					
					tbOtherMagic.tbJinengdian[getn(tbOtherMagic.tbJinengdian) + 1]	= tbNewSkill[k];
				end
			end
		end
		
		if (getn(tbOtherMagic.tbJinengdian) > 0) then
			for j = 1, getn(tbOtherMagic.tbJinengdian) do
				
				if (nCount - nAddCnt <= 0) then
					break
				end

				nAddCnt								= nAddCnt + 1;
				tbAddSkill[getn(tbAddSkill) + 1]	= tbOtherMagic.tbJinengdian[j];
				
			end
		end
		
		if (getn(tbOtherMagic.tbShuliandu) > 0) then
			for j = 1, getn(tbOtherMagic.tbShuliandu) do
				if (not tbOldSkillExp.nJinengdian or tbOldSkillExp.nJinengdian - nAddJinengCnt <= 0) then
					break
				end
				nAddJinengCnt						= nAddJinengCnt + 1;
				tbAddSkill[getn(tbAddSkill) + 1]	= tbOtherMagic.tbShuliandu[j];
				
			end
		end
		
	end
	
	SetTask(TB_DAIYITOUSHI_FACTS[nOldNumb].nTaskId_90Skill, 0);	-- È¡ÏûÔ­Ö°Òµ90¼¶¼¼ÄÜÈÎÎñ
	
	for k = 1, getn(tbAddSkill) do
		if (type(tbAddSkill[k]) == "table") then
			AddMagic(tbAddSkill[k][1], tbAddSkill[k][2]);
			AddSkillExp(tbAddSkill[k][1], tbAddSkill[k][3], 1, 1);
			
		else
			
			AddMagic(tbAddSkill[k]);
		end
	end
end

-- Èç¹û½ÇÉ«ÎåĞĞ¸ü»»£¬ÄÇÃ´ÎåĞĞ¼¼ÄÜÒ²¸ü»»
function toushiAddWuXingSkill(nOldSeries, nNewSeries)
	if (nOldSeries ~= nNewSeries) then
		local nMagicLvl1	= HaveMagic(TB_WUXING_SKILL_ID[nOldSeries + 1].nMagicId1);
		local nMagicLvl2	= HaveMagic(TB_WUXING_SKILL_ID[nOldSeries + 1].nMagicId2);
		if (nMagicLvl1 ~= -1) then
			DelMagic(TB_WUXING_SKILL_ID[nOldSeries + 1].nMagicId1);
			AddMagic(TB_WUXING_SKILL_ID[nNewSeries + 1].nMagicId1);
		elseif (nMagicLvl2 >= 1) then
			local nMagicExp2	= GetSkillExp(TB_WUXING_SKILL_ID[nOldSeries + 1].nMagicId2);
			DelMagic(TB_WUXING_SKILL_ID[nOldSeries + 1].nMagicId2);
			AddMagic(TB_WUXING_SKILL_ID[nNewSeries + 1].nMagicId2, nMagicLvl2);
			AddSkillExp(TB_WUXING_SKILL_ID[nNewSeries + 1].nMagicId2, nMagicExp2, 1);
		end
	end
end


function chonphaimoi()
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h· chuyÓn.",0);
		return
end
	local tbDialog = 
{ 
"<dec><npc> B¹n muèn chuyÓn sang ph¸i nµo?", 
" ThiÕu L©m/#daiyitoushi_main(0)",
" Thiªn V­¬ng/#daiyitoushi_main(1)",
" §­êng M«n/#daiyitoushi_main(2)",
" Ngò §éc/#daiyitoushi_main(3)",
" Nga Mi/#daiyitoushi_main(4)",
" Thóy yªn/#daiyitoushi_main(5)",
" C¸i Bang/#daiyitoushi_main(6)",
" Thiªn NhÉn/#daiyitoushi_main(7)",
" Vâ §ang/#daiyitoushi_main(8)",
" C«n L«n/#daiyitoushi_main(9)",
--" Hoa S¬n/chuyen_hsz2",
" KÕt thóc ®èi tho¹i /0", 
} 
CreateTaskSay(tbDialog) 
end



function chuyen_hsz()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if (nSilverCount < 100) then -- gia xu
Say("<color=white>ThËt xin lçi hoa s¬n ta lµ 1 ph¸i Èn chøa nhiÒu tuyÖt kü bİ mËt cã uy lùc m¹nh mÏ triÖt tiªu c¸c ph¸i trong chèn giang hå.VŞ ®¹i hiÖp ®©y muèn gia nhËp ph¸i ta cÇn ®ãng lÖ phİ 100xu.")
	return 
	end
--if GetFaction() == "huashan" then 
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- »ñµÃ×ªÍ¶Ê¦ÃÅµÄ±ê¼Ç
	local nMyFacNumb	= GetLastFactionNumber();				-- »ñµÃÔ­ÃÅÅÉID
	local nSex			= GetSex();								-- ½ÇÉ«ĞÔ±ğ
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn chuyÓn m«n ph¸i cÇn cëi bá trang bŞ ra hÕt.",0);

		end
if GetLastFactionNumber() == 10 then
Talk(2,"","Ng­¬i ®· lµ ®Ö tö hoa s¬n råi cßn muèn chuyÓn hoa s¬n n÷a µ.!")
return end
	local base_str = {35,20,25,30,20}			-- ÎåĞĞÈËÎïµÄÌìÉúÊôĞÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖĞÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
	local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³ı¼¼ÄÜ²¢·µ»ØËùÓĞ¼¼ÄÜ?ã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ?Û³ıÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓĞµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	--Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	SetTask(11,10*256)	--mac dinh			-- Ö±½ÓÈëÃÅ
	SetFaction("huashan")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	Msg2Player("Chóc mõng b¹n gia nhËp thµnh c«ng Hoa S¬n Ph¸i!")
	--Msg2Faction("huashan",GetName().."§· gia nhËp Hoa S¬n ph¸i, tõ h«m nay mong c¸c s­ huynh chiÕu cè.!",GetName())
	for i=1,1600 do
	DelMagic(i)
	end
		SetFaction("huashan")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
   SetTask(169,10)
		SetLastFactionNumber(10)
		SetCamp(3)
		SetCurCamp(3)
		SetRank(87)
SetSeries(2)
		AddMagic(1347) --Skill Hoa son
		AddMagic(1349) --Skill Hoa son
		AddMagic(1374) --Skill Hoa son
		AddMagic(1350) --Skill Hoa son
		AddMagic(1375) --Skill Hoa son
		AddMagic(1351) --Skill Hoa son
		AddMagic(1354) --Skill Hoa son
		AddMagic(1378) --Skill Hoa son
		AddMagic(1355) --Skill Hoa son
		AddMagic(1379) --Skill Hoa son
		AddMagic(1358) --Skill Hoa son
		AddMagic(1360) --Skill Hoa son
		AddMagic(1365,20) --Skill Hoa son
	AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
	AddMagic(1364,20) --Skill Hoa son --------Doc Co Cuu Kiem
   AddMagic(1369, 20)
   AddMagic(210,1)
ConsumeEquiproomItem(100,4,417,1,1)
local n_solan = ST_GetTransLifeCount();
if n_solan < 1 then
	KickOutSelf()
elseif 	n_solan >= 1 then
	--AddMagicPoint(100)
	KickOutSelf()
end
end
function NopTinVat()
	--ThiÕu L©m
	if GetLastFactionNumber() == 0 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i ThiÕu L©m/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thiªn V­¬ng
	elseif GetLastFactionNumber() == 1 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Thiªn V­¬ng/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No") 
	--§­êng M«n
	elseif GetLastFactionNumber() == 2 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i §­êng M«n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Ngò §éc
	elseif GetLastFactionNumber() == 3 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Ngò §éc/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Nga My
	elseif GetLastFactionNumber() == 4 then	
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Nga My/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thóy Yªn
	elseif GetLastFactionNumber() == 5 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Thóy Yªn/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--C¸i Bang
	elseif GetLastFactionNumber() == 6 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i C¸i Bang/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thiªn NhÉn
	elseif GetLastFactionNumber() == 7 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Thiªn NhÉn/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Vâ §ang
	elseif GetLastFactionNumber() == 8 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Vâ §ang/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--C«n L«n
	elseif GetLastFactionNumber() == 9 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i C«n L«n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Hoa S¬n
	elseif GetLastFactionNumber() == 10 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép Tİn VËt M«n Ph¸i",3,"Nép Tİn VËt Ph¸i Hoa S¬n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")	
	else
		Talk(1,"","<bclr=violet>C¸c H¹ Ch­a Gia NhËp M«n Ph¸i")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TrinhTinVatMonPhai()
	if (GetTask(TinVatMonPhai) == 0) then
		GiveItemUI("Tr×nh Tİn VËt M«n Ph¸i","Bá Tİn VËt M«n Ph¸i Vµo ¤ Bªn\nD­íi","KiemTra","onCancel",1)
	else
		Talk(1,"","Ta Cho PhĞp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
	end
end
sbook_150skill_list = {
		[0] = {318 ,319 ,321, 1055, 1056, 1057},
		[1] = {322 ,323 ,325, 1058, 1059, 1060},
		[2] = {339 ,302 ,342, 1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
		[10] = {1368, 1384},
}

sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
		[10] = 5,
	}
function fixskill150()
	
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>§¼ng cÊp cña ng­¬i thÊp h¬n 150, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	local tb150Skill = sbook_150skill_list[nFact]
	
	for i = 1, getn(tb150Skill) do
		local nSkillId = tb150Skill[i]
		if (HaveMagic(nSkillId) == 21) then
			SetTask(3000,2)
		end
		if (HaveMagic(nSkillId) == 22) then
			SetTask(3000,4)
		end
		if (HaveMagic(nSkillId) == 23) then
			SetTask(3000,6)
		end
		if (HaveMagic(nSkillId) == 24) then
			SetTask(3000,8)
		end


	end
end
function KiemTra(nCount)
local nItemIdx = GetGiveItemUnit(nCount);
local nG, nD, nP = GetItemProp(nItemIdx);
local szKey = join({nG, nD, nP});
	if (nCount ~= 1) then
		Say("Tİn VËt M«n Ph¸i Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i Tİn VËt M«n Ph¸i/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	if (szKey ~= join({6,1,1670})) then
		Say("Tİn VËt M«n Ph¸i Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i Tİn VËt M«n Ph¸i/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	if GetSkillState(1646)>=1 or GetSkillState(1647)>=1 then
	--	if CalcEquiproomItemCount(6,1,4361,-1)<10 then
	--	Say("Trªn ng­êi §¹i HiÖp ®· cã dïng Hång Ngäc hoÆc Ngäc Lôc B¶o. CÇn cã 10 Tói Tèng Kim ®Ó chuyÓn ph¸i.",2,"Ta SÏ Quay L¹i Sau/No")
	--	return
	--	end
	--	ConsumeEquiproomItem(10,6,1,4361,-1)
	end
	
	SetTask(TinVatMonPhai,1) RemoveItemByIndex(nItemIdx) Talk(1,"","Chóc Mõng B¹n  §· Ra M«n Ph¸i Tİn VËt, Yªu CÇu\nChuyÓn M«n Ph¸i Thµnh C«ng")
end