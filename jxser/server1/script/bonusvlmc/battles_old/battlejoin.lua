--coding by romandou 2004-12-22
--O½?ÛµÄ±¨AûµaNpc¶Ô»°½Å±¾

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\battleinfo.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_check_songjin.lua")

function main()
--Talk(1, "", "<color=Orange>Th«ng C¸o: <color=pink>T? h«m nay c¸c hµnh vi post ®iÓm admin sÏ ghi h×nh l¹i vµ kh?a vÜnh viÔn c¸c acc post mong anh em chó ? ch¬i c«ng b»ng.!")	
dofile("script/battles/battlejoin.lua");

	

	local nWorld, _, _ = GetWorldPos() --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	bt_setnormaltask2type()
	if (BT_GetGameData(GAME_BATTLEID) == 0 ) then
		Say("§¹i qu©n cña ta vÉn ch­a xuÊt ph¸t! H·y t¹m thêi nghØ ng¬i ®îi tin nh?",0)
		SubWorld = nOldSubWorld
		return
	end

	if (GetSkillState(472) == 1) then
		RemoveSkillState(472);
		Msg2Player("§· x?a hiÖu øng <enter>           [<color=white>Håi m¸u, håi n¨ng l­îng<color>] <enter>           trªn nh©n vËt.")
	end
	
-------------------------------------------------------------------	
	wid = SubWorldIdx2ID(SubWorld);
	local pl_level = GetLevel()
	local bt_level = 0;
	
	if (pl_level < 40 ) then
		Say("Chi?n tr­êng chØ dµnh cho ng­êi t? cÊp 40 trë lªn, ng­¬i ch­a ®ñ ®i?u kiÖn. Cè g¾ng tËp luyÖn thªm ®i!",2, "§­îc!/bt_oncancel", "Ta muèn t×m hiÓu th«ng tin chi?n d?ch./bt_onbattleinfo");
		SubWorld = nOldSubWorld
		return 
	elseif (pl_level < 80) then
		bt_level = 1
	elseif (pl_level < 120) then
		bt_level = 2
	else
		bt_level = 3
	end;
	SubWorld = SubWorldID2Idx(nWorld)
	if (tbGAME_SIGNMAP[bt_level] ~= wid) then
		 local maplevel = bt_map2battlelevel(wid)
		 if ( maplevel == 0) then
		 	print("B¸o danh Tèng Kim, ID c? vÊn ®?, xin phËn vËn hµnh kiÓm tra gÊp!");
		 	SubWorld = nOldSubWorld
		 	return 	
		 end
		 Say("Khu vùc nµy lµ <color=yellow>"..szGAME_GAMELEVEL[maplevel].."<color>, §¼ng cÊp cña ng­¬i hiÖn giê chØ c? thÓ ®i <color=green>"..szGAME_GAMELEVEL[bt_level].."<color> ®Ó b¸o danh!", 0)--£¿£¿A»Ó?·ÖµÈ¼¶µÄ`áÊ¾?ÅÏ¢		 
		 SubWorld = nOldSubWorld
		 return
	end

-------------------------------------------------------------------	
	SubWorld = SubWorldID2Idx(nWorld)
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Say("Ti?n ph­¬ng c? vÊn ®?, t¹m thêi kh«ng thÓ ti?n hµnh tèng kim ®¹i chi?n", 0 )
		SubWorld = nOldSubWorld
		return
	end

	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	if (state == 0) then
		Say("Xin lçi! §¹i chi?n vÉn ch­a b¾t ®Çu! LÇn sau quay l¹i nh?", 0 )
		SubWorld = tempSubWorld;		
		return
	elseif (state == 3) then
		Say("Xin lçi! §¹i chi?n ®· k?t thóc! LÇn sau quay l¹i nh?", 0)
		SubWorld = tempSubWorld;
		return
	else
		battlename = BT_GetBattleName();
	end;
	SubWorld = tempSubWorld;
	
	SubWorld = SubWorldID2Idx(nWorld)
if (BT_GetGameData(GAME_BATTLEID) ~= BT_GetData(PL_BATTLEID) or BT_GetGameData(GAME_BATTLESERIES) ~= BT_GetData(PL_BATTLESERIES)) then
	if (state ~= 1 and state ~= 2 ) then
		Say("Xin lçi! §¹i chi?n ®· k?t thóc! LÇn sau quay l¹i nh?", 0)
		SubWorld = nOldSubWorld
		return 
	end

	if (bt_ncamp == 1) then
		Say("["..battlename.."] Chi?n d?ch ®· b¾t ®Çu, mäi ng­êi h·y v× toµn d©n ®¹i tèng, tôc ng÷ c? c©u: Thiªn hæ h­ng vong, thÊt phu h÷u tr¸ch. Nay ng­êi kim x©m ph¹m bê câi chóng ta, ®©y lµ lóc b¸o hi?u ®Êt n­íc, chØ cÇn cÊp 40 trë lªn vµ cÇn 2 v¹n l­îng th× c? thÓ b¸o ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn ch? g× n÷a!", 2, "Ta tham gia! (§iÓm t?ch l?y trë v? 0) /bt_joinsong", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	else
		Say("["..battlename.."] Chi?n d?ch ®· b¾t ®Çu, h?i c¸c v? d?ng sü Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®?n. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, chØ cÇn cÊp 40 trë lªn vµ cÇn 2 v¹n l­îng lµ c? thÓ ®?n ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn chê g× n÷a!", 2, "Ta tham gia! (§iÓm t?ch l?y trë v? 0) /bt_joinjin", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	end
	SubWorld = nOldSubWorld
	return	
end;
	SubWorld = SubWorldID2Idx(nWorld)
--if (BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
	if (bt_ncamp == 1) then
		Say("Nh×n ng­¬i m¾t la mµy lo?t, nhÊt ®?nh lµ Kim quèc gian t? Ng­êi ®©u! B¾t lÊy h¾n!",0)
		Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®?n gÆp Mé binh quan xin gia nhËp chi?n tr­êng!")
	else
		Say("Tªn Nam man kia, c? gan th©m nhËp vµo l·nh ®?a ®¹i Kim, râ rµng lµ tíi t×m c¸i ch?t!",0)
		Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®?n gÆp Mé binh quan xin nhËp chi?n tr­êng!")	
	end;
	SubWorld = nOldSubWorld
	return 
end


	say_index = 1
	storm_ask2start(1)
end;

--Ou³£µÄËÎ½d´óO½¶Ô»°
function storm_goon_start()
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	say_index = 1
	local mem_song, mem_jin = bt_checkmemcount_balance()
	if (mem_song == nil or mem_jin == nil) then
		return
	end
	
	local tb_words = {
		"Trèng trËn ®· r?n vang! Sao ng­¬i ch­a tham gia chi?n?",
		"Chóc m?ng b¹n ®· ch?nh thøc trë thµnh t­íng sü cña ®¹i Tèng! H·y chøng tá b¶n lÜnh cña m×nh ®i!",
		"Chóc m?ng b¹n ®· ch?nh thøc trë thµnh t­íng sü cña ®¹i Kim! H·y chøng tá b¶n lÜnh cña m×nh ®i!"
	}
	local BenTong		= GetCityOwner(7);	-- ÁÙ°²µÄO¼Á´°ï»á
	local BenKim	= GetCityOwner(4);	-- aê¾©µÄO¼Á´°ï»á
	local szMsg2 = "Quèc Chi?n Thiªn Tö - Qu©n sè 2 bªn hiÖn t¹i <enter><enter><color=white>Qu©n sè bang <color=pink>"..BenTong.." <color>lµ <color=green>"..mem_song.." <color><color=red>ng­êi <enter><color>Qu©n sè bang <color=pink>"..BenKim.." <color>lµ <color><color=green>"..mem_jin.." <color><color=red>ng­êi"
	local szMsg = "Tèng Kim §¹i Chi?n - Qu©n sè 2 bªn hiÖn t¹i <enter><enter><color=yellow>Qu©n sè bªn Tèng lµ <color><color=green>"..mem_song.." <color><color=yellow>ng­êi <enter>Qu©n sè bªn Kim lµ <color><color=green>"..mem_jin.." <color><color=yellow>ng­êi<color>"
	if BT_GetGameData(GAME_BATTLEID) == 1 then
	Say(szMsg, 2, "H·y cho ta tham gia/bt_enterbattle", "§Ó ta suy nghÜ l¹i!/bt_oncancel");

else
	Say(szMsg2, 2, "Tham gia trËn thiªn tö nµy/bt_enterbattle", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	end
	SubWorld = nOldSubWorld
end
	



function bt_enterbattle()
	if BT_GetGameData(GAME_BATTLEID) == 1 then
		SetTask(3018,0)
	end

	--if bilSongJinCheck:FuncCheckIP(bt_ncamp) then return end
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	local nWeekDay = tonumber(GetLocalDate("%w"))
	
	local mem_song, mem_jin = bt_checkmemcount_balance()
	if (mem_song == nil or mem_jin == nil) then
		SubWorld = nOldSubWorld
		return
	end
		--------check ip
	if bilSongJinCheck:FuncCheckIP(bt_ncamp) then 
	return 
	end
	
	if	bt_checkmem_for_guozan() == 0 then
	SubWorld = nOldSubWorld
	return
	end
	
	MapId = BT_GetGameData(GAME_MAPID);
	
	if (MapId > 0) then
		idx = SubWorldID2Idx(MapId);
		
		if (idx < 0) then
			Say("Xin lçi,ti?n tuy?n c? vÊn ®?, t¹m thêi kh«ng thÓ ti?n vµo chi?n tr­êng.",0)
			SignMapId = SubWorldIdx2ID(SubWorld);
			BattleId = BT_GetGameData(GAME_BATTLEID);
			print("ERROR !!!Battle[%d]Level[%d]'s BattleMap[%d] and SignMap[%d] Must In Same Server!", BattleId, BT_GetGameData(GAME_LEVEL),MapId, SignMapId); 
			SubWorld = nOldSubWorld
			return
		end
		--tinhpn20100804: IPBonus
		if (GetTask(TASKID_COUNT_X2TONGKIM) == 1) then
			SetTask(TASKID_COUNT_X2TONGKIM, 0)
			SetTask(TASKID_RECIEVE_BONUS_TK, 1)
		else
			SetTask(TASKID_RECIEVE_BONUS_TK, 0)
		end
		

		SubWorld = idx;
		BT_SetData(PL_SERIESKILL, 0)
		SetTask(TV_SERIESKILL_REALY,0)
		BT_SetData(PL_BATTLECAMP, bt_ncamp)
		JoinMission(BT_GetGameData(GAME_RULEID), bt_ncamp)
		local SubWorld = OldSubWorld;
		SubWorld = nOldSubWorld
                                                --SetTask(5863,0)
		return
	else
		Say("Xin lçi! TiÒn ph­¬ng cãvÊn ®Ò, t¹m thêi kh«ng thÓ ti?n vµo chi?n tr­êng", 0);
	end
	SubWorld = nOldSubWorld
end;
--end

function bt_wantjin()
		Say("Ng­¬i x¸c ®?nh ®Çu qu©n cho Kim quèc? N?u ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®?nh gia nhËp Kim quèc/bt_joinjin", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_wantsong()
		Say("Ng­¬i x¸c ®?nh ®Çu qu©n cho Tèng quèc? N?u ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®?nh gia nhËp Tèng quèc/bt_joinsong", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_joinsong()
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)	
	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chi?n d?ch míi, ®iÓm t?ch l?y hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Ng­êi Tèng lu«n lµ anh hïng!")

	--Storm ¼ÓÈë`ôO½
	say_index = 2
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_joinjin()
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)	
	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chi?n d?ch míi, ®iÓm t?ch l?y hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Kim quèc kh«ng thi?u anh tµi!")

	--Storm ¼ÓÈë`ôO½
	say_index = 3
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_oncancel()

end

function bt_checkmemcount_balance()
	local mapid = BT_GetGameData(GAME_MAPID);
	if (mapid > 0) then
		if (SubWorldID2Idx(mapid) >= 0) then
			oldSubWorld = SubWorld
			SubWorld = SubWorldID2Idx(mapid)
			local mem_song = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 1)
			local mem_jin = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 2)
			SubWorld = oldSubWorld
			
			-- ¹ú?½ËÎ½? ?ØÊâµÄÈËÊ?Æ½ºâ´¦Àí		
			if BT_GetGameData(GAME_BATTLEID) == 2 then
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_GUOZHAN_MAXCOUNT ) then
				Say("HiÖn t¹i binh lùc bang ta lµ <color=yellow>"..mem_song.." ng­êi<color>, ®?ch qu©n lµ <color=yellow>"..mem_jin.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña bang ta nhiu ®©y ®ñ th¾ng trËn råi ta kh«ng cÇn thªm n÷a!", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_GUOZHAN_MAXCOUNT ) then
				Say("HiÖn t¹i binh lùc bang ta lµ <color=yellow>"..mem_jin.." ng­êi<color>, ®?ch qu©n lµ <color=yellow>"..mem_song.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_GUOZHAN_MAXCOUNT.." ng­êi<color>. Qu©n lùc cña bang ta nhiu ®©y ®ñ th¾ng trËn råi ta kh«ng cÇn thªm n÷a!", 0)
				return
			else
				return mem_song, mem_jin
				end
			end
			
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_song.." ng­êi<color>, ®?ch ph­¬ng lµ <color=yellow>"..mem_jin.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Kim binh! Tr¸ng sÜ xin ®îi trËn sau nh?!", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_jin.." ng­êi<color>, ®?ch ph­¬ng lµ <color=yellow>"..mem_song.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Tèng qu©n. Tr¸ng sÜ xin ®îi trËn sau nh?!", 0)
				return
			else
				return mem_song, mem_jin
			end
		end
	end
	Say("Xin lçi! Ti?n ph­¬ng c? vÊn ®?, t¹m thêi kh«ng thÓ vµo chi?n tr­êng", 0);
	return nil
end

-- ¹úO½ËÎ½d¶Ô½øÈëµÄÍæ¼?×ö½ø?»²½µÄ¼´²é 1:·Å?? 0:²»ÈA½øÈë
function bt_checkmem_for_guozan()
	-- ·Ç¹úO½ËÎ½dÖ±½Ó·Å??
	if BT_GetGameData(GAME_BATTLEID) ~= 2 then
		return 1;
	end
	local nDate = tonumber(GetLocalDate("%d"))
if GetTask(3018) == nDate then
return 1;
end
	local szMyTong				= GetTongName();	-- ×Ô¼ºµÄ°ï»á
	local szCityOwner_LinAn		= GetCityOwner(7);	-- ÁÙ°²µÄO¼Á´°ï»á
	local nCount_song1 = CalcItemCount(3, 6, 1, 2057, -1);
		if (szMyTong == szCityOwner_LinAn and nCount_song1 < 1) then
		Say("Xin lçi ®©y lµ trËn thiªn tö gi÷a Bang  \n"..GetCityOwner(7).." vs "..GetCityOwner(4).." \n®Ó ®¶m b¶o t?nh c«ng b»ng trËn thiªn tö nµy cÇn ph¶i c? <Quèc chi?n lÖnh bµi (TèNG)> míi ®­îc vµo trong.!", 0);
		return 0;
	end
	local szMyTong				= GetTongName();	-- ×Ô¼ºµÄ°ï»á
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- aê¾©µÄO¼Á´°ï»á
	local nCount_jin1  = CalcItemCount(3, 6, 1, 2058, -1);
	if  (szMyTong == szCityOwner_Bianjin and nCount_jin1 < 1) then
		Say("Xin lçi ®©y lµ trËn thiªn tö gi÷a Bang  \n"..GetCityOwner(4).." vs "..GetCityOwner(7).." \n®Ó ®¶m b¶o t?nh c«ng b»ng trËn thiªn tö nµy cÇn ph¶i c? <Quèc chi?n lÖnh bµi (KIM)> míi ®­îc vµo trong.!", 0);
		return 0;
	end
	-- Ö®Ç°?Ñ¾­Í¨¹u¼´²é£¬²Î¼ÓÁËO½?Û£¬²»±ØÔÙ¼´²éÁË
--	if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) == bt_ncamp) then
--		return 1;
--	end
	
	local szCityOwner_LinAn		= GetCityOwner(7);	-- ÁÙ°²µÄO¼Á´°ï»á
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- aê¾©µÄO¼Á´°ï»á
	local szMyTong				= GetTongName();	-- ×Ô¼ºµÄ°ï»á
	
	-- O¼³Ç°ï»áÊu¾U´íÎó
	if szCityOwner_LinAn == "" or szCityOwner_Bianjin == "" or szCityOwner_LinAn == szCityOwner_Bianjin then
		Say("LÇn quèc chi?n Tèng Kim nµy kh«ng ®­îc ph?p më", 0);
		return 0;
	end
	-- Í¨¹u°ï»áµÄÉí·U½øÈë
	local nDate = tonumber(GetLocalDate("%d"))
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 1) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 2) then
if ( GetTask(3018) ~= nDate ) then -- neu khac se
SetTask(3018, nDate); --set ngay 6
--SetTask(3018,1)
	ConsumeItem(3, 1, 6, 1, 2057, -1);
	ConsumeItem(3, 1, 6, 1, 2058, -1);
end
if GetTask(3018) == nDate then
return 1;
end
end

	local szMyTong				= GetTongName();	-- ×Ô¼ºµÄ°ï»á
	local szCityOwner_LinAn		= GetCityOwner(7);	-- ÁÙ°²µÄO¼Á´°ï»á
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- aê¾©µÄO¼Á´°ï»á
	-- ¼éÏ¸
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 2) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 1) then
		Say("Gian t? cña ®?ch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!", 0);
		return 0;
	end
	-- ¼´²éÉíÉÏµÄÁîÅÆ
	local nCount_song = CalcItemCount(3, 6, 1, 2057, -1);
	local nCount_jin  = CalcItemCount(3, 6, 1, 2058, -1);
	local nDate = tonumber(GetLocalDate("%d"))

	if nCount_song == 0 and nCount_jin == 0 and (GetTask(3018) ~= nDate) then
		Say("<color=yellow>H«m nay lµ chi?n tr­êng giao chi?n Thiªn Tö gi÷a 2 bang<color=red> <Bªn Tèng><color=green> "..GetCityOwner(7).." v/s <color=green>"..GetCityOwner(4).."<color=red> <Bªn Kim> <color=yellow>ng­¬i muèn tham gia ph¶i c? lÖnh bµi xin t? bang chñ 1 trong 2 bang trªn..", 0);
		return 0;
	end
	
	
	-- ÉíÉÏÓ?±d¹úµÄÁîÅÆ
	if (nCount_jin ~= 0 and bt_ncamp == 1) or (nCount_song ~= 0 and bt_ncamp == 2) then
		Say("Gian t? cña ®?ch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!2", 0);
		return 0;
	end
	
	-- ¼´²é½dÇ®
	--if (GetCash() < 3000) then
		--Say("Muèn tham gia chi?n tr­êng Tèng Kim h·y ñng hé 3000 l­îng", 0)
		--return 0;
	--end
	
	-- ¿Û³uÁîÅÆ
	local bPay = 0;
	local nDate = tonumber(GetLocalDate("%d"))
	if bt_ncamp == 1 then
		bPay = ConsumeItem(3, 1, 6, 1, 2057, -1); 
			SetTask(3018, nDate); --set ngay 6

	elseif bt_ncamp == 2 then
		bPay = ConsumeItem(3, 1, 6, 1, 2058, -1); 
			SetTask(3018, nDate); --set ngay 6
	end
	
	if bPay ~= 1 then
		Msg2Player("KhÊu tr? lÖnh bµi thÊt b¹i");
		return 0;
	end
	-- ÔÊ?íÍ¨¹u
	return 1;
end









