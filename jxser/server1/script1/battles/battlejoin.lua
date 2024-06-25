--coding by romandou 2004-12-22
--Õ½ÒÛµÄ±¨ÃûµãNpc¶Ô»°½Å±¾

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\battleinfo.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("RELAYLADDER");
IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_check_songjin.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()	

	--dofile("script/battles/battlejoin.lua");
	--do Say("Chøc n¨ng Tèng Kim t¹m thêi ch­a më") 	return end
	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ thùc hiÖn thao t¸c nµy")
		return
	end
	local nWorld, _, _ = GetWorldPos()
	--if nWorld ~= 162 then
	--	Talk(1, "", "Chøc n¨ng ®· ®ãng.")
	--	return
	--end

	if GetLevel()<40 then
		Say("CÊp 40 trë lªn míi cã thÓ ®¸nh Tèng Kim.")
		return
	end
	local nOldSubWorld = SubWorld

	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)			--CÊp ®é <80 map 323 s¬ cÊp
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)			--CÊp ®é <120 map 324 trung cÊp
	else
		SubWorld = SubWorldID2Idx(325)			--CÊp ®é >120  map 325 cao cÊp
	end

	bt_setnormaltask2type()

	if (BT_GetGameData(GAME_BATTLEID) == 0 ) then
		Say("§¹i qu©n cña ta vÉn ch­a xuÊt ph¸t! H·y t¹m thêi nghØ ng¬i ®îi tin nhÐ!",0)
		SubWorld = nOldSubWorld
		return
	end

-------------------------------------------------------------------	
--ÅÐ¶ÏÍæ¼ÒµÈ¼¶Óë±¨ÃûµãµÈ¼¶ÊÇ·ñÏàÊÊºÏ
	wid = SubWorldIdx2ID(SubWorld);				--Set cÊp bËc tèng kim
	local pl_level = GetLevel()					--LÊy cÊp ®é nh©n vËt ®Õn b¸o danh
	local bt_level = 0;						--BiÕn save cÊp bËc
	
	if (pl_level < 40 ) then
		Say("ChiÕn tr­êng chØ dµnh cho ng­êi tõ cÊp 40 trë lªn, ng­¬i ch­a ®ñ ®iÒu kiÖn. Cè g¾ng tËp luyÖn thªm ®i!",2, "§­îc!/bt_oncancel", "Ta muèn t×m hiÓu th«ng tin chiÕn dÞch./bt_onbattleinfo");
		SubWorld = nOldSubWorld
		return 
	elseif (pl_level < 70 and pl_level>=40) then
		bt_level = 1
	elseif (pl_level < 80 and pl_level>=70) then
		bt_level = 2
	else
		bt_level = 3
	end;

	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end

	if (tbGAME_SIGNMAP[bt_level] ~= wid) then
		 local maplevel = bt_map2battlelevel(wid)
		 if ( maplevel == 0) then
		 	print("B¸o danh Tèng Kim, ID cã vÊn ®Ò, xin bé phËn vËn hµnh kiÓm tra gÊp!");
		 	SubWorld = nOldSubWorld
		 	return 	
		 end
		 Say("Khu vùc nµy lµ "..szGAME_GAMELEVEL[maplevel]..", §¼ng cÊp cña ng­¬i hiÖn giê chØ cã thÓ "..szGAME_GAMELEVEL[bt_level].."®Ó b¸o danh!", 0)--£¿£¿Ã»ÓÐ·ÖµÈ¼¶µÄÌáÊ¾ÐÅÏ¢		 
		 SubWorld = nOldSubWorld
		 return
	end

-------------------------------------------------------------------	
	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end

	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));	--LÊy Map tèng kim
	if (battlemap < 0) then
		Say("TiÒn ph­¬ng cã vÊn ®Ò, t¹m thêi kh«ng thÓ tiÕn hµnh Tèng Kim ®¹i chiÕn!", 0 )
		SubWorld = nOldSubWorld
		return
	end

	tempSubWorld = SubWorld;					--BiÕn temp gi÷ Map b¸o danh
	SubWorld = battlemap					--G¾n Map chiÕn tr­êng cho SubWorld ®Ó cã thÓ kiÓm tra biÕn MS_STATE
	state = GetMissionV(MS_STATE);				--KiÓm tra biÕn b¾t ®Çu ch­a
	if (state == 0) then
		Say("Xin lçi! §¹i chiÕn vÉn ch­a b¾t ®Çu! LÇn sau quay l¹i nhÐ!", 0 )
		SubWorld = tempSubWorld;		
		return
	elseif (state == 3) then
		Say("Xin lçi! §¹i chiÕn ®· kÕt thóc! LÇn sau quay l¹i nhÐ!", 0)
		SubWorld = tempSubWorld;
		return
	else
		battlename = BT_GetBattleName();
	end;

	SubWorld = tempSubWorld;					--Set tr¶ l¹i SubWorld Map b¸o danh
	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end

	if (BT_GetGameData(GAME_BATTLEID) ~= BT_GetData(PL_BATTLEID) or BT_GetGameData(GAME_BATTLESERIES) ~= BT_GetData(PL_BATTLESERIES)) then
		if (state ~= 1 and state ~= 2 ) then
			Say("Xin lçi! §¹i chiÕn ®· kÕt thóc! LÇn sau quay l¹i nhÐ!", 0)
			SubWorld = nOldSubWorld
			return 
		end

		if (bt_ncamp == 1) then
			Say("ChiÕn dÞch ["..battlename.."]ChiÕn dÞch ®· b¾t ®Çu, mäi ng­êi h·y v× tö d©n ®¹i tèng, tôc ng÷ cã c©u: Thiªn h¹ h­ng vong, thÊt phu h÷u tr¸ch. Nay ng­êi kim x©m ph¹m bê câi chóng ta, ®©y lµ lóc b¸o hiÕu ®Êt n­íc, chØ cÇn cÊp 40 trë lªn vµ cÇn 1Tèng Kim Chiªu Binh LÖnh Bµi th× cã thÓ ®Òn ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn chõ g× n÷a!", 2, "Ta tham gia! (§iÓm tÝch lòy trë vÒ 0) /bt_joinsong", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
		else
			Say("ChiÕn dÞch ["..battlename.."]ChiÕn dÞch ®· b¾t ®Çu, hìi c¸c vÞ dòng sÜ Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®Õn. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, chØ cÇn cÊp 40 trë lªn vµ nép 1 Tèng Kim Chiªu Binh LÖnh Bµi lµ cã thÓ ®Òn ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn chõ g× n÷a!", 2, "Ta tham gia! (§iÓm tÝch lòy trë vÒ 0) /bt_joinjin", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
		end
		SubWorld = nOldSubWorld
		return	
	end;

	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end

	--if (BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
	if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
		if (bt_ncamp == 1) then
			Say("Nh×n ng­¬i m¾t la mµy loÐt, nhÊt ®Þnh lµ Kim quèc gian tÕ! Ng­êi ®©u! B¾t lÊy h¾n!",0)
			Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")
		else
			Say("Tªn Nam man kia, c¶ gan th©m nhËp vµo l·nh ®Þa ®¹i Kim, râ rµng lµ tù t×m c¸i chÕt!",0)
			Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")	
		end;
		SubWorld = nOldSubWorld
		return 
	end

	say_index = 1
	storm_ask2start(1)
end;

--Õý³£µÄËÎ½ð´óÕ½¶Ô»°
function storm_goon_start()
	local nOldSubWorld = SubWorld
	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70  and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end

	say_index = 1
	local mem_song, mem_jin = bt_checkmemcount_balance()		--KiÓm tra sè l­îng 2 phe tèng vµ kim ko h¬n BALANCE_GUOZHAN_MAXCOUNT 
	if (mem_song == nil or mem_jin == nil) then
		return
	end
	
	local tb_words = 
	{
		"Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn?",
		"Chóc mõng b¹n ®· chÝnh thøc trë thµnh t­íng sÜ cña ®¹i Tèng! H·y chøng tá b¶n lÜnh cña m×nh ®i!",
		"Chóc mõng b¹n ®· chÝnh thøc trë thµnh t­íng sÜ cña ®¹i Kim! H·y chøng tá b¶n lÜnh cña m×nh ®i!"
	}

	local szMsg = "HiÖn thêi qu©n sè 2 bªn Tèng: "..mem_song.." --- Kim: "..mem_jin
	Say(szMsg, 2, "H·y cho ta tham gia/bt_enterbattle", "§Ó ta suy nghÜ l¹i!/bt_oncancel");

	if (bt_getgn_awardtimes() ~= 1) then
		Msg2Player("ChiÕn dÞch lÇn nµy lµ <color=yellor>§ªm Huy Hoµng<color>, phÇn th­ëng gÊp ®«i so víi b×nh th­êng! C¬ héi kh«ng nªn bá qua!")
	end

	SubWorld = nOldSubWorld
end

function bt_enterbattle()
	local nOldSubWorld = SubWorld
	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end
	
	--local nWeekDay = tonumber(GetLocalDate("%w"))
	local nWeekDay = 1
		--------check ip
	if bilSongJinCheck:FuncCheckIP(bt_ncamp) then 
	return 
	end
	if nWeekDay == 2 or nWeekDay == 4 or nWeekDay == 6 or nWeekDay == 3 or nWeekDay == 0 or nWeekDay==5 then
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2045 and nHour < 2110) or ( nHour >= 1245 and nHour < 1310)then
			local nNpcIndex = GetLastDiagNpc()
			local szNpcName = GetNpcName(nNpcIndex)
			local szTong = GetTong()
			if szTong ~= nil and szTong ~= "" then
				if 2 == bt_ncamp then
				--	if GetCityOwner(4) ~= szTong and GetCityOwner(7) == szTong then
					if szTong=="SanB»ng" or szTong=="V«ÙSong" then
					--	Msg2Player("Bang héi chiÕm thµnh L©m An chØ ®­îc b¸o danh bªn Tèng!")
						Msg2Player("Bang héi SangB»ng vµ V« Song chØ ®­îc b¸o danh bªn Tèng!")
						Say("Bang héi SangB»ng vµ V« Song chØ ®­îc b¸o danh bªn Tèng!")
						SubWorld = nOldSubWorld
						return
					end
				elseif 1 == bt_ncamp then
					--if GetCityOwner(4) == szTong and GetCityOwner(7) ~= szTong then
					if szTong=="ÙT" then
						--Msg2Player("Bang héi chiÕm thµnh BiÖn Kinh chØ ®­îc b¸o danh bªn Kim!")
						Msg2Player("Bang héi T chØ ®­îc b¸o danh bªn Kim!")
						Say("Bang héi T chØ ®­îc b¸o danh bªn Kim!")
						SubWorld = nOldSubWorld
						return
					end
				else
					SubWorld = nOldSubWorld
					--SubWorld = SubWorldID2Idx(325)
					return
				end
			end
		end
	end
	
	local mem_song, mem_jin = bt_checkmemcount_balance()
	if (mem_song == nil or mem_jin == nil) then
		SubWorld = nOldSubWorld
		return
	end
	
	if bt_checkmem_for_guozan() == 0 then
		SubWorld = nOldSubWorld
		return
	end
	
	MapId = BT_GetGameData(GAME_MAPID);
	
	if (MapId > 0) then
		idx = SubWorldID2Idx(MapId);
		
		if (idx < 0) then
			Say("Xin lçi, tiÒn tuyÕn ®ang cã vÊn ®Ò, t¹m thêi kh«ng thÓ vµo chiÕn tr­êng.",0)
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
		
		--By: NgaVN
		--***Kiem tra nguoi choi truoc khi join vao mission
		local nRet = tbVNG2011_ChangeSign:CheckChangeSign();
		local nTimeNow = tbVNG2011_ChangeSign:GetTimeNow()
		if ( nRet ~= 1 ) then
			Say(format("ChiÕn tr­êng cßn <color=red>%d <color=red>phót n÷a cã thÓ b¸o danh", nTimeNow));
			SubWorld = nOldSubWorld
			return
		end

		SubWorld = idx;
		BT_SetData(PL_SERIESKILL, 0)
		SetTask(TV_SERIESKILL_REALY,0)
		BT_SetData(PL_BATTLECAMP, bt_ncamp)
		JoinMission(BT_GetGameData(GAME_RULEID), bt_ncamp)			--Join Mission
		local SubWorld = OldSubWorld;
		SubWorld = nOldSubWorld
		return
	else
		Say("Xin lçi! TiÒn ph­¬ng cã vÊn ®Ò, t¹m thêi kh«ng thÓ vµo chiÕn tr­êng", 0);
	end
	SubWorld = nOldSubWorld
end;

function bt_wantjin()
		Say("Ng­¬i x¸c ®Þnh ®Çu qu©n cho Kim quèc? NÕu ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®Þnh gia nhËp Kim quèc/bt_joinjin", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_wantsong()
		Say("Ng­¬i x¸c ®Þnh ®Çu qu©n cho Tèng quèc? NÕu ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®Þnh gia nhËp Tèng quèc/bt_joinsong", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_joinsong()
if GetLevel()<40 then
		Say("CÊp 40 trë lªn míi cã thÓ ®¸nh Tèng Kim.")
		return
	end
	local nOldSubWorld = SubWorld
		if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end
	
	--local fileNamejoin = "jointong.txt"
	--logjointongkim()


	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dÞch míi, ®iÓm tÝch ph©n hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Ng­êi Tèng lu«n lµ anh hïng!")

	--Storm ¼ÓÈëÌôÕ½
	say_index = 2
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_joinjin()
if GetLevel()<40 then
		Say("CÊp 40 trë lªn míi cã thÓ ®¸nh Tèng Kim.")
		return
	end
	local nOldSubWorld = SubWorld
	if ( GetLevel() >= 40 and GetLevel() < 70 ) then
		SubWorld = SubWorldID2Idx(323)
	elseif ( GetLevel() >= 70 and GetLevel() < 80 ) then
		SubWorld = SubWorldID2Idx(324)
	else
		SubWorld = SubWorldID2Idx(325)
	end
	
	--local fileNamejoin = "joinkim.txt"
	


	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dÞch míi, ®iÓm tÝch ph©n hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Kim quèc kh«ng thiÕu anh tµi!")

	--Storm ¼ÓÈëÌôÕ½
	say_index = 3
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_oncancel()

end

function bt_checkmemcount_balance()					--KiÓm tra sè l­îng 2 phe c©n b»ng ch­a
	local mapid = BT_GetGameData(GAME_MAPID);
	if (mapid > 0) then
		if (SubWorldID2Idx(mapid) >= 0) then
			oldSubWorld = SubWorld
			SubWorld = SubWorldID2Idx(mapid)
			local mem_song = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 1)
			local mem_jin = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 2)
			SubWorld = oldSubWorld
			
			-- ¹úÕ½ËÎ½ð ÌØÊâµÄÈËÊýÆ½ºâ´¦Àí		
			if BT_GetGameData(GAME_BATTLEID) == 2 then
				if (bt_ncamp == 1 and mem_song >= BALANCE_GUOZHAN_MAXCOUNT) or (bt_ncamp == 2 and mem_jin >= BALANCE_GUOZHAN_MAXCOUNT) then
					 -- ÈËÊý³¬¹ý100ÈËÏÞÖÆ£¬¼ÌÐøÍùÏÂÖ´ÐÐ£¬ÏÞÖÆÈËÊý²î5ÈË
				else
					 -- ÈËÊýÎ´³¬¹ýÏÞÖÆ£¬ºöÂÔ5ÈË²î¶î£¬Ö±½ÓÔÊÐí½øÈë
					return mem_song, mem_jin
				end
			end
			
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_song.." ng­êi<color>, ®Þch ph­¬ng lµ <color=yellow>"..mem_jin.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Kim binh! Tr¸ng sÜ xin ®îi trËn sau nhÐ!", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_jin.." ng­êi<color>, ®Þch ph­¬ng lµ <color=yellow>"..mem_song.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Tèng qu©n. Tr¸ng sÜ xin ®îi trËn sau nhÐ!", 0)
				return
			else
				return mem_song, mem_jin
			end
		end
	end
	Say("Xin lçi! TiÒn ph­¬ng cã vÊn ®Ò, t¹m thêi kh«ng thÓ vµo chiÕn tr­êng", 0);
	return nil
end

--***Return 0 ko phÐp b¸o danh, 1 cho phÐp b¸o danh
function bt_checkmem_for_guozan()
	
	-- ·Ç¹úÕ½ËÎ½ðÖ±½Ó·ÅÐÐ
	if BT_GetGameData(GAME_BATTLEID) ~= 2 then
		return 1;
	end
	
-- Ö®Ç°ÒÑ¾­Í¨¹ý¼ì²é£¬²Î¼ÓÁËÕ½ÒÛ£¬²»±ØÔÙ¼ì²éÁË
--	if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) == bt_ncamp) then
--		return 1;
--	end
	
	local szCityOwner_LinAn		= GetCityOwner(7);	--LÊy bang chiÕm thµnh l©m an
	local szCityOwner_Bianjin		= GetCityOwner(4);	--LÊy bang chiÕm thµnh biÖn kinh
	local szMyTong			= GetTongName();	--LÊy tªn bang
		--***Item Quèc chiÕn lÖnh tèng vµ kim
	
	--***B¸o danh trõ sè lÖnh bµ
	
	--***L©m an vµ biÖn kinh ko bang chiÕm
	if szCityOwner_LinAn == "" or szCityOwner_Bianjin == "" or szCityOwner_LinAn == szCityOwner_Bianjin then
		Say("LÇn quèc chiÕn Tèng Kim nµy kh«ng ®­îc phÐp më", 0);
		return 0;
	end
	--***B¾t buéc ph¶i cã quèc chiÕn lÖnh míi b¸o danh ®­îc
		local nCount_song = CalcItemCount(3, 6, 1, 2057, -1);
	local nCount_jin  = CalcItemCount(3, 6, 1, 2058, -1);
	if nCount_song == 0 and nCount_jin == 0 then
		Say("Hai quèc giao tranh, cÇn ph¶i cã quèc chiÕn lÖnh bµi cña mçi bªn míi ®­îc tiÕn vµo.", 0);
		return 0;
	end

	
	--***Kim Cã lÖnh bµi mµ # bt_ncamp vµ Tèng cã lÖnh bµi mµ # bt_ncamp
	if (nCount_jin ~= 0 and bt_ncamp == 1) or (nCount_song ~= 0 and bt_ncamp == 2) then
		Say("Gian tÕ cña ®Þch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!", 0);
		return 0;
	end
	--***KiÓm tra L©m an vµ biÖn kinh bang chiÕm vµ ®óng bt_ncamp kh«ng
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 2) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 1) then
		Say("Gian tÕ cña ®Þch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!", 0);
		return 0;
	end
	

	
	--***PhÝ 3000 l­îng ®¨ng ký
	if (GetCash() < 3000) then
		Say("Muèn tham gia chiÕn tr­êng Tèng Kim h·y ñng hé 3000 l­îng", 0)
		return 0;
	end
		--***KiÓm tra L©m an vµ biÖn kinh bang chiÕm vµ ®óng bt_ncamp kh«ng 
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 1) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 2) then
		return 1;
	end
				local bPay = 0;
		if bt_ncamp == 1 then
	--	bPay = ConsumeItem(3, 1, 6, 1, 2057, -1); 
	elseif bt_ncamp == 2 then
	--	bPay = ConsumeItem(3, 1, 6, 1, 2058, -1); 
	end
	-- ¿Û³ýÁîÅÆ

	if bPay ~= 1 then
	--	Msg2Player("KhÊu trõ lÖnh bµi thÊt b¹i");
	--	return 0;
	end
	
	--***Cho phÐp b¸o danh
	return 1;
end



function checkhwid()
local account = GetAccount()
local fileName = "tongkim.txt"
local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
local dem = 0	
local hwid = ""
local count = 1
local m = 0
	for i=1,getn(tbDataFromFile) do	
		if  tbDataFromFile[i][1] == account then
				dem = i
				hwid = tbDataFromFile[dem][2]
				break
		end
		 
	end
	
	
	
	for i=1,getn(tbDataFromFile) do
		
				
			if  (tbDataFromFile[i][2] == hwid) then
				count = count + 1
							
			end 
			  
		
	end
	
	
	return count
end



function tongkim(hwid) 
	local account = GetAccount()
	local row = {account,hwid}
	local fileName = "tongkim.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "hwid"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			if account == tbDataFromFile[i][1] then
				return 
			end
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)
	
		
end
