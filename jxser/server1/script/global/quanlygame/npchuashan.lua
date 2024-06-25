IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")



function main() 
dofile("script/global/quanlygame/npchuashan.lua");
	local szTitle = "<npc>LÇn nµy ph¸i <color=blue>Hoa S¬n<color> ta t¸i suÊt,giang hå l¹i thªm nhiÒu biÕn ®éng"
	local tbOpt =
	{
		{"Gia NhËp Hoa S¬n Ph¸i", xingianhap},
		--{"ChuyÓn Qua Ph¸i Kh¸c", chuyenphaikhac},
		{"KÕt thóc ®èi tho¹i"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)	
end





function xingianhap()
if (GetCamp() == 0) and (GetSeries() == 2) and (GetLevel() >= 100) and  (GetTask(169) ~= 10) then		
Say("<color=red>Hoa S¬n NhÞ L·o<color>: Ph¸i <color=cyan>Hoa S¬n<color> ta ®· kh«ng tham gia giang hå h¬n 10 n¨m nay, lÇn nµy t¸i xuÊt ¾t sÏ khiÕn bän giang hå tµ ph¸i ph¶i khiÕp sî mét phen!",2, "Cho ta gia nhËp/go", "§Ó ta suy nghÜ kü l¹i xem/no")
elseif (GetCamp() == 0) and (GetSeries() ~= 2) and (GetLevel() >= 199) and (GetSex() == 0) and  (GetTask(169) ~= 10) then
Say("<color=white>ChØ cã ng­êi míi tao nh©n vËt lµ hÖ thñy míi cã thÓ gia nhËp hoa s¬n ph¸i")
elseif (GetTask(169) >= 10)  then
local szTitle = "<npc>Ng­¬i cã muèn vÒ ph¸i cïng ta sang ph¼ng câi giang hå nµy kh«ng ?  "
	local tbOpt =
	{
		--{"PhiÒn l·o cho ta mét vÐ",vep},
		{"L·o giµ kia ®Þnh dô  dç ta µ cót."},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
else
Talk(1,"","Ng­¬i ph¶i t¹o nh©n vËt hÖ thñy míi cã thÓ gia nhËp hoa s¬n ph¸i.")	
end
end


function go() 
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 200) then -- gia xu
Say("<color=white>ThËt xin lçi hoa s¬n ta lµ 1 ph¸i Èn chøa nhiÒu tuyÖt kü bÝ mËt cã uy lùc m¹nh mÏ triÖt tiªu c¸c ph¸i trong chèn giang hå.VÞ ®¹i hiÖp ®©y muèn gia nhËp ph¸i ta cÇn ®ãng lÖ phÝ 200xu.")
	return 
	end
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
   AddMagic(210, 1)
   SetTask(169,10)
   SetFaction("emei")   
		SetLastFactionNumber(10)
		SetCamp(4)
		SetCurCamp(4)
		SetRank(87)
SetSeries(2)
ConsumeEquiproomItem(200,4,417,1,1)
SaveNow()		
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> Gia nhËp thµnh c«ng <color=yellow>Hoa S¬n Ph¸i !!!")
	--local hoason = "script/global/bil4i3n/bil4i3n_log/Mua_Hoa_Son.log"
	--local hoason1 = openfile(hoason, "a");
	--write(hoason1, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Dung 200 Xu Mua Phai Hoa Son\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	-- closefile(hoason1)
	 KickOutSelf()
end 



function vep() 
Msg2Player("Ngêi yªn, chóng ta ®i Hoa S¬n ph¸i")
end 

function no() 
end 



function chuyenphaikhac()
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- »ñµÃ×ªÍ¶Ê¦ÃÅµÄ±ê¼Ç
	local nMyFacNumb	= GetLastFactionNumber();				-- »ñµÃÔ­ÃÅÅÉID
	local nSex			= GetSex();								-- ½ÇÉ«ÐÔ±ð
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn chuyÓn m«n ph¸i cÇn cëi bá hÕt trang bÞ trªn ng­êi.",0);

		end
if GetLastFactionNumber() ~= 10 then
Say("ChØ cã ph¸i hoa s¬n míi chuyÓn sang ph¸i kh¸c ®­îc",0);
return
else
batdauhoasonok()
end
end




function batdauhoasonok()
	if GetLevel() < 200 then
		Talk(1, "", "CÊp 200 trë lªn míi cã thÓ chuyÓn sang ph¸i kh¸c.")
		return
	end
	SetFaction("emei")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	SetCamp(1)
	SetCurCamp(1)
	SetSeries(2)
	SetLastFactionNumber(4)
	SetRank(63)
	--local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³ý¼¼ÄÜ²¢·µ»ØËùÓÐ¼¼ÄÜ?ã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- ÕâÁ½¾äÅÐ¶ÏÊÇÅÅ³ý´ÓÎ´Ñ§¹ýÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊý¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏÐµãÊý·µ»¹£¬µ«ÏÈ?Û³ýÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊý£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	--if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓÐµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
		DelMagic(1347) --Skill Hoa son
		DelMagic(1349) --Skill Hoa son
		DelMagic(1374) --Skill Hoa son
		DelMagic(1350) --Skill Hoa son
		DelMagic(1375) --Skill Hoa son
		DelMagic(1351) --Skill Hoa son
		DelMagic(1354) --Skill Hoa son
		DelMagic(1378) --Skill Hoa son
		DelMagic(1355) --Skill Hoa son
		DelMagic(1379) --Skill Hoa son
		DelMagic(1358) --Skill Hoa son
		DelMagic(1360) --Skill Hoa son
		DelMagic(1365,20) --Skill Hoa son
	DelMagic(1368) --Skill Hoa son --------Doc Co Cuu Kiem
	DelMagic(1364) --Skill Hoa son --------Doc Co Cuu Kiem
   DelMagic(1369)
   DelMagic(210)
if GetLastFactionNumber() == 4 then
AddMagic(85)
AddMagic(80)
AddMagic(77)
AddMagic(79)
AddMagic(93)
AddMagic(385)
AddMagic(82)
AddMagic(89)
AddMagic(86)
AddMagic(92)
AddMagic(252)
AddMagic(88)
AddMagic(91)
AddMagic(282)
AddMagic(332)
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
ChuyenPhaiMenu()
SaveNow()
end
end



