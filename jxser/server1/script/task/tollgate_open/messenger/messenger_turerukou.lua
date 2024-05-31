-------------------------------------------------------------------------
-- FileName		:	messenger_turerukou.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-08-31 22:21:14
-- Desc			:   Ç§±¦¿âÈë¿Ú
-------------------------------------------------------------------------

Include("\\script\\task\\tollgate\\killbosshead.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") --°üº¬Íæ¼ÒÈÎÎñÊı¾İ±í¸ñµÄÀµ
Include("\\script\\event\\birthday_jieri\\200905\\message\\message.lua");

Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")--¿ª±¦Ïä¹¤¾ßº¯Êı

Include("\\script\\lib\\common.lua");

Include("\\script\\activitysys\\functionlib.lua")--ÒıÓÃlib:DoFunByPlayer

function main()
	local tbDialog =
	{
		  "TiÕp nhËn nhiÖm vô /ture_gettask", 
                  "B¾t ®Çu nhiÖm vô /ture_try_starttask", 
                  "TiÕp tôc nhiÖm vô /ture_continuetask", 
                  "Rêi ®i khu vùc /ture_movecity", 
                  "Sau nµy trë l¹i /no",
	}
--	if (tbBirthday0905:IsActDate() == 1) then
--		tinsert(tbDialog, 3, "ÔÚÇ§±¦¿âµØÍ¼µÄÈÎÎñ/birthday0905_ture");
--	end
	 Describe(DescLink_YiGuan..": Tõ ta ®©y b¾t ®Çu cho mäi ng­êi ph©n c«ng cô thÓ nhiÖm vô, cè g¾ng lªn nga. Tõ ®éi tr­ëng b¾t ®Çu nhiÖm vô häp thµnh ®éi ®em dÔ dµng h¬n hoµn thµnh nhiÖm vô. B©y giê ng­¬i nghÜ lµm c¸i g× ?",getn(tbDialog), unpack(tbDialog))
end

function ture_gettask()
	local Uworld1204 = nt_getTask(1204)  --¼Ç¢¼Íæ¼ÒµÄÈÎÎñ±äÁ¿£¬Ã¿´ÎÈÎÎñ½áÊøÊ±Çå¿Õ
	local Uworld1028 = nt_getTask(1028)  --ÈÎÎñÁ´ÈÎÎñ±äÁ¿
--
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": ThËt xin lçi, ngµi tr­íc mÆt cÊp bËc kh«ng cã ®¹t tíi 120 cÊp yªu cÇu. Xin mêi ®¹t tíi cÊp bËc tíi t×m ta n÷a ®i.",1,"KÕt thóc ®èi tho¹i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..": ThËt xin lçi, ngµi tr­íc mÆt nhiÖm vô tİn sø kh«ng hoµn thµnh, kh«ng thÓ nhËn gièng nhau nhiÖm vô, xin mêi hoµn thµnh nhiÖm vô tr­íc, c¸m ¬n.",1,"KÕt thóc ®èi tho¹i/no")
	elseif (  messenger_givetime() == 10 ) then  --²é¿´½ñÈÕÊÇ·ñ»¹ÓĞ¹Ø¿¨Ê±¼ä
		Describe(DescLink_YiGuan..": thËt xin lçi, ngµi h«m nay ng­¬i ®· sö dông thêi gian tİn sø ®· hÕt, xin mêi ngµy mai trë l¹i.",1,"KÕt thóc ®èi tho¹i/no")
	else	
                nt_setTask( 1204,1 )
		nt_setTask( 1203,10) --ÉèÖÃĞÅÊ¹ÈÎÎñµÄ²½Öè
	end
end

function ture_starttask()
	if ( nt_getTask(1203) == 10 ) then
		nt_setTask(1211,GetGameTime())              --:ÉèÖÃÈÎÎñ¿ªÊ¼Ê±¼ä
		nt_setTask(1203,20)
		DisabledUseTownP(1)			--½ûÓÃ»Ø³Ç·û				--1£º½ûÓÃ	--0£ºÆôÓÃ
		SetFightState(1);			--´ò¿ªÕ½¶·×´Ì¬				--1£º´ò¿ª	--0£º¹Ø±Õ
		SetLogoutRV(1);				--¶ÏÏßºÍËÀÍö²»ÎªÒ»¸öÖØÉúµã		--1£º¶ÏÏßºÍËÀÍöÎªÒ»¸öÖØÉúµã	--0£º¶ÏÏßºÍËÀÍö²»ÎªÒ»¸öÖØÉúµã
		SetPunish(0);				--¹Ø±ÕËÀÍö³Í·£					--1£ºÓĞËÀÍö³Í·£		--0£ºÃ»ÓĞËÀÍö³Í·£
		SetCreateTeam(1);			--ÔÊĞí×é¶Ó					--1£ºÔÊĞí×é¶Ó		--0£º²»ÔÊĞí×é¶Ó
		ForbidChangePK(1);   		--²»ÄÜ¸ü¸Äpk×´Ì¬		--1£º²»ÄÜ¸ü¸Äpk×´Ì¬		--0:¿ÉÒÔ¸ü¸Äpk×´Ì¬
		SetPKFlag(0);               --ÉèÖÃÎªÁ·¹¦Ä£Ê½            
		SetDeathScript("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua");
		SetPos(1414,3191);
		Msg2Player("NhiÖm vô b¾t ®Çu tİnh giê.")
	elseif ( nt_getTask(1203) == 20 ) then
		Describe(DescLink_YiGuan.."Ng­¬i ®· b¾t ®Çu nhiÖm vô, kh«ng cÇn b¾t ®Çu n÷a",1,"KÕt thóc ®èi tho¹i/no")
	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		Describe(DescLink_YiGuan.."Ng­¬i ®· hoµn thµnh nhiÖm vô, thÕ nµo cßn ph¶i b¾t ®Çu nhiÖm vô ®©y ? mau rêi ®i ®i ",1,"KÕt thóc ®èi tho¹i/no")
	elseif ( nt_getTask(1203) == 0 ) then
		Describe(DescLink_YiGuan.."Ng­¬i nhiÖm vô tİn sø ®· thÊt b¹i, xin mau rêi khái ®©y.",1,"KÕt thóc ®èi tho¹i/no")
	end
end

function ture_try_starttask()
	if ( nt_getTask(1203) == 10 ) then
		--×Ô¼º¿ªÊ¼ÈÎÎñ
		local nTeamSize = GetTeamSize();
		if nTeamSize > 1 and IsCaptain() ~= 1 then
			Describe(DescLink_YiGuan..": Ng­¬i kh«ng ph¶i lµ ®éi tr­ëng, kh«ng thÓ b¾t ®Çu nhiÖm vô ",1,"KÕt thóc ®èi tho¹i/no")
			return
		end
		
		local nTaskCode,_ = %get_task_order()
		ture_real_starttask_one(nTaskCode);
		
    	if (nTeamSize > 1) then
    		--ËùÓĞ¶ÓÔ±¿ªÊ¼ÈÎÎñ
    		for i=1,nTeamSize do
    			local nMemberIndex = GetTeamMember(i)
    			print(format("nMemberIndex:%d", nMemberIndex))
    			if nMemberIndex >= 0 then
    			
--    			if(CallPlayerFunction(nMemberIndex, IsCaptain)~=1)then
--    				CallPlayerFunction(nMemberIndex, ture_real_starttask_member, nTaskCode)
--    			end
        			if(lib:DoFunByPlayer(nMemberIndex, IsCaptain)~=1)then
    					lib:DoFunByPlayer(nMemberIndex, ture_real_starttask_member, nTaskCode);
    				end
    			else
    				print(format("nMemberIndex:%d error", nMemberIndex))
				end
    		end
    	end
    	
    	WriteLog(format("Account:%s[Name:%s] B¾t ®Çu nhiÖm vô tİn sø, häp thµnh ®éi nh©n sè v× [%d]",
			GetAccount(),
			GetName(),
			nTeamSize
			)
		);
	elseif ( nt_getTask(1203) == 20 or nt_getTask(1203) == 21 ) then
		Describe(DescLink_YiGuan..": Ng­¬i ®· më míi nhiÖm vô, kh«ng cÇn n÷a b¾t ®Çu.",1,"KÕt thóc ®èi tho¹i/no")
	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		Describe(DescLink_YiGuan..": NhiÖm vô ®· hoµn thµnh, thÕ nµo cßn cÇn b¾t ®Çu ®©y ? nhanh lªn mét chót rêi ®i n¬i nµy ®i.",1,"KÕt thóc ®èi tho¹i/no")
	elseif ( nt_getTask(1203) == 0 ) then
		Describe(DescLink_YiGuan..": Ng­¬i ®· hoµn thµnh nhiÖm vô tİn sø, nhanh lªn mét chót rêi ®i n¬i nµy ®i!",1,"KÕt thóc ®èi tho¹i/no")
	end
end

function ture_real_starttask_one(nTaskCode)
	nt_setTask(1202,0)--Çå¿Õµ±Ç°ÈÎÎñ½ø¶È
	ture_real_starttask(nTaskCode)
	
	local szMsg,nCount = get_task_string(nTaskCode)
	szMsg = format("Ng­¬i b¾t ®Çu ngµy b¶o kho ®­a tin nhiÖm vô, mau n¾m lÊy thêi c¬ më ra 5 c¸ b¶o r­¬ng hoµn thµnh nhiÖm vô, xin chó ı theo nh­ trËt tù më ra<color=yellow>%s<color>", szMsg)
	Msg2Player(szMsg)
end

function ture_real_starttask_member(nTaskCode)
	local nMapId, nX, nY = GetWorldPos()
	if nMapId == 395 then
    	if ( nt_getTask(1203) == 10 ) then
    		nt_setTask(1202,0)--Çå¿Õµ±Ç°ÈÎÎñ½ø¶È
    		ture_real_starttask(nTaskCode)
    		
    		local szMsg,nCount = get_task_string(nTaskCode)
    		szMsg = format("Ng­¬i ®éi tr­ëng ®· më míi ngµy b¶o kho ®­a tin nhiÖm vô, xin mêi n¾m lÊy thêi c¬ tíi ®Êt ®å <color=yellow> ngµy b¶o kho <color> më ra 5 c¸ b¶o r­¬ng hoµn thµnh nhiÖm vô, xin chó ı theo nh­ trËt tù më ra<color=yellow>%s<color>", szMsg)
    		Msg2Player(szMsg)
    		return
    	elseif ( nt_getTask(1203) == 20 or nt_getTask(1203) == 21 ) then
    		Msg2Player("Ng­¬i ®éi tr­ëng ®· më míi ngµy b¶o kho ®­a tin nhiÖm vô, nhiÖm vô cña ng­¬i cïng ®éi ngò ®İch bÊt ®ång, tù m×nh hoµn thµnh." )
    	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
    		Msg2Player("Ng­¬i ®éi tr­ëng ®· më míi ngµy b¶o kho ®­a tin nhiÖm vô, nhiÖm vô cña ng­¬i ®· hoµn thµnh, cïng ®éi ngò ®İch bÊt ®ång, mau rêi ®i ®éi ngò ®i hñy nhiÖm vô")
    	elseif ( nt_getTask(1203) == 0 ) then
    		Msg2Player("Ng­¬i ®éi tr­ëng ®· më míi ngµy b¶o kho ®­a tin nhiÖm vô, ng­¬i cßn ch­a nhËn nªn nhiÖm vô, xin mêi rêi ®éi ngò ®i")
    	end
    else
    	Msg2Player("Ng­¬i ®éi tr­ëng ®· më míi ngµy b¶o kho ®­a tin nhiÖm vô, ng­¬i kh«ng cã ë ®©y b¶n ®å <color=yellow> ngµy b¶o kho <color>, xin mêi m×nh hoµn thµnh")
	end
	
	Msg2Team(format("<color=yellow>%s<color>NhiÖm vô tiÕn ®é cïng ®éi ngò bÊt ®ång.", GetName()))
end

function ture_real_starttask(nTaskCode)
	nt_setTask(1211,GetGameTime())              --:ÉèÖÃÈÎÎñ¿ªÊ¼Ê±¼ä
	nt_setTask(1203,20)
	nt_setTask(1201,nTaskCode)
	DisabledUseTownP(1)			--½ûÓÃ»Ø³Ç·û				--1£º½ûÓÃ	--0£ºÆôÓÃ
	SetFightState(1);			--´ò¿ªÕ½¶·×´Ì¬				--1£º´ò¿ª	--0£º¹Ø±Õ
	SetLogoutRV(1);				--¶ÏÏßºÍËÀÍö²»ÎªÒ»¸öÖØÉúµã		--1£º¶ÏÏßºÍËÀÍöÎªÒ»¸öÖØÉúµã	--0£º¶ÏÏßºÍËÀÍö²»ÎªÒ»¸öÖØÉúµã
	SetPunish(1);				--´ò¿ªËÀÍö³Í·£					--1£ºÓĞËÀÍö³Í·£		--0£ºÃ»ÓĞËÀÍö³Í·£
	--SetCreateTeam(1);			--ÔÊĞí×é¶Ó					--1£ºÔÊĞí×é¶Ó		--0£º²»ÔÊĞí×é¶Ó
	ForbidChangePK(0);   		--ÔÊĞí¸ü¸Äpk×´Ì¬		--1£º²»ÄÜ¸ü¸Äpk×´Ì¬		--0:¿ÉÒÔ¸ü¸Äpk×´Ì¬
	SetPKFlag(0);               --ÉèÖÃÎªÁ·¹¦Ä£Ê½            
	SetDeathScript("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua");
	SetPos(1414,3191);
	--Cho bÊt t?3 gi©y, tr¸h b?®å s¸t - Modifiec by DinhHQ - 20110502
	SetProtectTime(3*18)
	AddSkillState(963, 1, 0, 18*3) 	
end

function ture_movecity()
--£¬µ±Íê³ÉĞÅÊ¹ÈÎÎñÊ±£¬Èç¹û¿¿æä¹ÙNPCÒÆ¶¯£¬Fix bug ÒÀÈ»¿ÉÒÔÔÚ³ÇÄÚPK- Modified by DinhHQ - 20110518
	DisabledUseTownP(0)
	SetFightState(0)	
	SetPunish(1)
	SetCreateTeam(1);
	SetPKFlag(0)
	ForbidChangePK(0);
	SetDeathScript("");
	local name = GetName()
	if ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		for i=1,getn(citygo) do
			if ( nt_getTask(1204) == citygo[i][2] ) then
				SetLogoutRV(0);
				NewWorld(citygo[i][7], citygo[i][8], citygo[i][9])
				Msg2Player("Ngµy b¶o kho dŞch tr¹m "..name.." ®¹i nh©n ®Õn "..citygo[i][4].." dŞch tr¹m !")
			end
		end	
	elseif ( nt_getTask(1203) == 10 ) or ( nt_getTask(1203) == 0 ) or ( nt_getTask(1203) == 20) or ( nt_getTask(1203) == 21 ) then
		SetLogoutRV(0);
		NewWorld(11,3021,5090)
	end
end

function birthday0905_ture()
	tbBirthday0905.tbTask:reset_task();
	Say("DŞch Quan : tõ 19/06/2009 ®Õn 19/07/2009,lóc 24h, nÕu nh­ ®¹i hiÖp cã thÓ xuyªn qua phİa d­íi mét c¸i trong ®ã khiªu chiÕn, ®¹i hiÖp ®em ®¹t ®­îc 4 c¸ b¶o vËt trung ®İch mét, lµ thiªn tµn ®ao. §¹i hiÖp muèn tham gia khiªu chiÕn sao ?", 8,
		"TiÕp nhËn vô më ra 100 c¸ b¶o r­¬ng ./#birthday0905_settask_message(4)", 
                "TiÕp nhËn vô tiªu diÖt mét ®¹o tÆc ./#birthday0905_settask_message(5)", 
                "TiÕp nhËn vô t×m kiÕm mét mÊt m¸c thiÕu n÷ ./#birthday0905_settask_message(6)", 
                "Ta ®· hoµn thµnh nhiÖm vô më ra 100 c¸ b¶o r­¬ng ./#birthday0905_gettask_message(4)", 
                "Ta ®· hoµn thµnh nhiÖm vô tiªu diÖt mét ®¹o tÆc ./#birthday0905_gettask_message(5)", 
                "Ta ®· hoµn thµnh nhiÖm vô t×m kiÕm mét mÊt m¸c thiÕu n÷ ./#birthday0905_gettask_message(6)", 
                "Ta muèn bu«ng tha cho tr­íc m¾t nhiÖm vô /birthday0905_cancel_message", 
                "Ta cã viÖc gÊp , chê mét chót trë l¹i ./no");
end

function no()
end

function ture_continuetask()
	if ( nt_getTask(1203) == 10 ) then 
                           Describe(DescLink_YiGuan..": NhiÖm vô cña ng­¬i cßn ch­a b¾t ®Çu, kh«ng thÓ tiÕp tôc nhiÖm vô ",1," KÕt thóc ®èi tho¹i /no") 
        elseif ( nt_getTask(1203) == 20 ) then 
                           Describe(DescLink_YiGuan..": NhiÖm vô cña ng­¬i ®· b¾t ®Çu, nhanh lªn mét chót ®i më ra 5 c¸i b¶o r­¬ng ®i .",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( nt_getTask(1203) == 21 ) then 
                        ture_real_starttask(nt_getTask(1201)) 
                        Msg2Player("NhiÖm vô cña ng­¬i cã thÓ tiÕp tôc ") 
        elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then 
                         Describe(DescLink_YiGuan..": NhiÖm vô cña ng­¬i ®· hoµn thµnh, kh«ng cÇn tiÕp tôc.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( nt_getTask(1203) == 0 ) then 
                         Describe(DescLink_YiGuan..": NhiÖm vô cña ng­¬i ®· mÊt b¹i, nhanh lªn mét chót rêi ®i n¬i nµy ®i.",1,"KÕt thóc ®èi tho¹i /no") 
        end
end

