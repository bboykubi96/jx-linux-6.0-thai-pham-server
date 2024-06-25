------------------------***Heart*Doldly***------------------------------------
IncludeLib("RELAYLADDER");
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua") 
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\config\\32\\talkdailytask.lua")
------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-----------------------------------------------------------------------------
citygo = {
{1204,1,"Thµnh §«","§¹i Lý",1203,11,162,1674,3132},
{1204,2,"§¹i Lý","Thµnh §«",1203,162,11,3021,5090},
}

function especiallymessenger()
	local _, _, nMapIndex = GetPos()
	local MapId = SubWorldIdx2ID( nMapIndex )
	if MapId ~= 11 and MapId ~= 162 then
		Talk(1,"","Tham gia nhiÖm vô TÝn Sø h·y ®i t×m DÞch Quan <color=red>Thµnh §«<color> hoÆc <color=red> §¹i Lý<color>!")
		return
	end
	if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
		Talk(1,"","<bclr=violet>ChØ Nh÷ng Nh©n VËt CÊp 150 Trë Lªn Trïng Sinh Th×\nKh«ng Giíi H¹n §¼ng CÊp Míi Cã ThÓ Tham Gia Ho¹t §éngNµy")
		return 1;
	end
	nt_setTask(1211,0)
	Describe(DescLink_YiGuan..": ViÖc qu©n c¬ cña TriÒu ®×nh gÇn ®©y lu«n bÞ giÆc Kim biÕt tr­íc, ta nghi ngê cã néi gi¸n. Nh­ng tr­íc khi mÊy tªn b¹i lo¹i nµy bÞ ph¸t hiÖn, ta muèn r»ng tin nµy kh¾p n¬i ®Òu biÕt, ng­¬i cã muèn gãp mét phÇn søc cho Quèc gia kh«ng",7,
	"Ta B»ng Lßng!/messenger_ido",
	"Ta §Õn §Ó Giao NhiÖm Vô TÝn Sø/messenger_finishtask",
	"Ta Muèn Xãa Bá NhiÖm Vô TÝn Sø/messenger_losemytask",
	"Ta Muèn BiÕt VÒ NhiÖm Vô TÝn Sø/messenger_what",
	"GÇn §©y Ta Cã NhiÒu ChuyÖn CÇn Lµm/no")
end

function messenger_ido()
	local _, _, nMapIndex = GetPos()
	
	local Uworld1204 = nt_getTask(1204)
	local Uworld1028 = nt_getTask(1028)
	local MapId = SubWorldIdx2ID( nMapIndex )
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": Xin l­îng thø, ®¼ng cÊp cña ng­¬i hiÖn t¹i ch­a ®ñ 120. h·y tiÕp tôc t«i luyÖn råi ®Õn gÆp ta.",1,"KÕt thóc ®èi tho¹i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..":Xin lçi! NhiÖm vô TÝn sø cña b¹n ch­a hoµn thµnh, kh«ng thÓ tiÕp nhËn nhiÖm vô gièng nhau, xin hoµn thµnh nhiÖm vô nµy tr­íc, c¸m ¬n!",1,"KÕt thóc ®èi tho¹i/no")
	else
    	local nTaskFlag = check_daily_task_count()
    	if nTaskFlag == 0 then
    		Describe(DescLink_YiGuan..": Xin l­îng thø, H«m nay ng­¬i ®· vÊt v¶ råi. Ngµy mai h·y quay l¹i nhÐ.",1,"KÕt thóc ®èi tho¹i/no")
    		return
    	elseif nTaskFlag == -1 then
    		Describe(DescLink_YiGuan..": H«m nay ng­¬i ®· mÖt mái råi. NÕu ng­¬i cã <color=yellow>Thiªn Khè B¶o LÖnh<color>, ta sÏ ph¸ lÖ cho ng­¬i tham gia thªm mét lÇn n÷a.",1,"KÕt thóc ®èi tho¹i/no")
    		return
    	elseif nTaskFlag == 2 then
    		Msg2Player("Ng­¬i cø cÇm Thiªn Khè B¶o LÖnh tham gia nhiÖm vô, <color=yellow>nhiÖm vô hoµn thµnh<color> ta sÏ thu håi LÖnh Bµi")
    	end
    	
    	WriteLog(format("Account:%s[Name:%s] tiÕp nhËn nhiÖm vô TÝn Sø, h«m nay ®· hoµn thµnh [%d] lÇn.",
				GetAccount(),
				GetName(),
				nTaskFlag
				)
			);
	if nTaskFlag == 2 then
		tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuTinSuSuDungThienBaoKhoLenh")		
	else
		tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuTinSu")
	end		
		if ( MapId == 11 ) then
			if ( messenger_choice(1,1) ~= 10 ) then
					print("messenger_choice error:1")
			end

		elseif ( MapId == 162 ) then
			if ( messenger_choice(2,2) ~= 10 ) then
					print("messenger_choice error:2")
			end
		else
			Msg2Player("Xin lçi! Kh«ng biÕt t¹i sao b¹n l¹i kh«ng thÓ nhËn nhiÖm vô TÝn sø? Xin liªn hÖ víi GM!")
		end
	end
end

function messenger_storewagoner()
	SetRevPos(11,10)
	
	NewWorld(395,1417,3207)
	%tbTalkDailyTask:AddTalkNpc(SubWorldIdx2ID(SubWorld), SubWorldIdx2ID(SubWorld));
end

function messenger_choice(CityIdTwo,j)
	if ( CityIdTwo == citygo[j][2] ) then	
		nt_setTask( 1204,citygo[j][2] )
		nt_setTask( citygo[j][5],10)
		local name = GetName()
		Talk(1,"","B¹n nhËn ®­îc tõ "..citygo[j][3].."®Õn"..citygo[j][4].."cña nhiÖm vô TÝn sø ®Æc biÖt,"..citygo[j][3].."DÞch tr¹m DÞch quan cung tèng"..name.."§¹i nh©n!")		
		return 10
	end
end

function messenger_levelmu()
	local Uworld1205 = nt_getTask(1205)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld1205 >= 50 ) then
		if ( Uworld1206 < 1 ) then
			nt_setTask(1206,1)
			nt_setTask(1205,Uworld1205-50)
			Describe(DescLink_YiGuan..": Chóc mõng"..name.."§¹i nh©n trë thµnh TÝn sø Méc!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 1 ) then
			Describe(DescLink_YiGuan..":"..name.."! B¹n ®· lµ TÝn sø - Méc, kh«ng cÇn t¨ng cÊp, xin h·y cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")		
		else
			Describe(DescLink_YiGuan..":"..name.."! §¼ng cÊp cña b¹n v­ît qu¸ TÝn sø - Méc, xin h·y chän TÝn sø kh¸c.",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":Xin lçi!  B¹n kh«ng phï hîp víi ®iÒu kiÖn t¨ng cÊp cña TÝn sø - Méc, xin h·y nç lùc, c¸m ¬n!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_leveltong()
	local Uworld1205 = nt_getTask(1205)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld1205 >= 150 )  then
		if ( Uworld1206 < 2 ) then
			nt_setTask(1206,2)
			nt_setTask(1205,Uworld1205-150)
			Describe(DescLink_YiGuan..": Chóc mõng"..name.."§¹i nh©n th¨ng thµnh TÝn sø - §ång!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 2 ) then
			Describe(DescLink_YiGuan..":"..name.."! Ban ®· lµ TÝn sø - §ång, kh«ng cÇn t¨ng cÊp n÷a, xin h·y tiÕp tôc nç lùc!",1,"KÕt thóc ®èi tho¹i/no")				
		else
			Describe(DescLink_YiGuan..":"..name.."! §¼ng cÊp cña b¹n ®· v­ît qu¸ TÝn sø-§ång, xin h·y chän TÝn sø kh¸c.",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":Xin lçi!  §¼ng cÊp cña b¹n kh«ng phï hîp ®iÒu kiÖn t¨ng cÊp cña TÝn sø - §ång, xin h·y tiÕp tôc nç lùc, c¸m ¬n!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_levelyin()
	local Uworld1205 = nt_getTask(1205)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld1205 >= 450 ) then
		if ( Uworld1206 < 3 ) then
			nt_setTask(1206,3)
			nt_setTask(1205,Uworld1205-450)
			Describe(DescLink_YiGuan..": Chóc mõng"..name.."§¹i nh©n th¨ng thµnh TÝn sø - B¹c!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 3 ) then
			Describe(DescLink_YiGuan..":"..name.."! B¹n ®· lµ TÝn sø - B¹c, kh«ng cÇn th¨ng cÊp, h·y tiÕp tôc cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")				
		else
			Describe(DescLink_YiGuan..":"..name.."! §¼ng cÊp cña b¹n ®· v­ît qua TÝn Sø - B¹c, xin h·y chän TÝn sø kh¸c!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":Xin lçi!  B¹n kh«ng phï hîp víi ®iÒu kiÖn th¨ng cÊp cña TÝn sø - B¹c, xin b¹n h·y tiÕp tôc cè g¾ng, c¸m ¬n!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_leveljin()
	local Uworld1205 = nt_getTask(1205)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld1205 >= 800 ) then
		if ( Uworld1206 < 4 ) then
			nt_setTask(1206,4)
			nt_setTask(1205,Uworld1205-800)
			Describe(DescLink_YiGuan..": Chóc mõng"..name.."§¹i nh©n th¨ng thµnh TÝn sø - Vµng!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 4 ) then
			Describe(DescLink_YiGuan..":"..name.."! B¹n ®· lµ TÝn sø - Vµng, kh«ng cÇn t¨ng cÊp n÷a, h·y tiÕp tôc cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")		
		else
			Describe(DescLink_YiGuan..":"..name.."! §¼ng cÊp cña b¹n ®· v­ît qu¸ TÝn sø - Vµng, xin chän TÝn sø kh¸c!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":Xin lçi!  B¹n kh«ng phï hîp víi ®iÒu kiÖn th¨ng cÊp cña TÝn sø - Vµng, h·y tiÕp tôc cè g¾ng, c¸m ¬n!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_levelyuci()
	local Uworld1205 = nt_getTask(1205)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld1205 >= 1500 ) then
		if ( Uworld1206 < 5 ) then
			nt_setTask(1206,5)
			nt_setTask(1205,Uworld1205-1500)
			Describe(DescLink_YiGuan..": Chóc mõng"..name.."§¹i nh©n th¨ng thµnh Ngù Tø TÝn sø yªu bµi!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 5 ) then
			Describe(DescLink_YiGuan..":"..name.."B¹n ®· lµ Ngù Tø TÝn sø - Vµng, kh«ng cÇn t¨ng cÊp n÷a, xin h·y tiÕp tôc cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":Xin lçi! B¹n kh«ng phï hîp ®iÒu kiÖn víi ®iÒu kiÖn t¨ng cÊp cña Ngù Tø TÝn sø - Vµng, xin h·y tiÕp tôc cè g¾ng, c¸m ¬n!",2,"Quay l¹i/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

--------------------------------------------½»ÐÅÊ¹ÈÎÎñ------------------------------------------------------
function messenger_finishtask()
	local Uworld1201= nt_getTask(1201)
	local Uworld1202= nt_getTask(1202)
	local Uworld1203= nt_getTask(1203)
	local Uworld1204= nt_getTask(1204)

	local Uworld1218= nt_getTask(1218)

	if ( Uworld1203 == 30 or Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan..":Xin lçi!  B¹n ch­a hoµn thµnh nhiÖm vô mµ h«m tr­íc ®Õn l·nh th­ëng, nhiÖm vô nµy coi nh­ ®· thÊt b¹i råi!",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan..":  Chóc mõng b¹n ®· hoµn thµnh nhiÖm vô!",1,"NhËn l·nh phÇn th­ëng/messenger_treasureprize")
		end

	elseif Uworld1203 ~= 0 then
		Describe(DescLink_YiGuan..": Xin h·y l­îng thø, ng­¬i vÉn ch­a hoµn thµnh nhiÖm vô hiÖn t¹i. L·o Xa Phu bªn c¹nh ta cã thÓ ®­a ng­¬i ®Õn b¶n ®å nhiÖm vô !",1,"KÕt thóc ®èi tho¹i/no")
	else
		Describe(DescLink_YiGuan..": Ch­a tiÕp nhËn nhiÖm vô nµo ng­¬i cßn l¹i tr¶ nhiÖm vô! Ng­êi ®©u? B»m c¸i tªn nµy lµm nh©n b¸nh bao cho ta!",1,"KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_flyprize()
end

function messenger_templeprize()
end
------------------------------------------------------------NhËn NhiÖm Vô TÝn Sø B»ng Thiªn B¶o Khè-----------------------------------------------------------------------------------------
function messenger_treasureprize()
  local nTaskFlag = check_daily_task_count()
  if nTaskFlag == 0 then
  	Describe(DescLink_YiGuan..": Xin h·y l­îng thø, h«m nay ng­¬i ®· qu¸ mÖt råi. Hay lµ ngµy mai l¹i ®Õn ®æi nhiÖm vô nhÐ.",1,"KÕt thóc ®èi tho¹i/no")
  	return
  elseif nTaskFlag == -1 then
  	Describe(DescLink_YiGuan..": Cã ph¶i ng­¬i ®· lÊy <color=yellow> Thiªn Khè B¶o LÖnh <color> lµm mÊt råi h¶? T×m LÖnh Bµi vÒ ®©y ta míi th­ëng cho ng­¬i.",1,"KÕt thóc ®èi tho¹i/no")
  	return
  end
  
  local nTodayTaskCount = %get_task_daily(1205)
  local nBagCellNeed = 1
  if nTodayTaskCount == 0 then
  	nBagCellNeed = 2
  end
  if (CalcFreeItemCellCount() < nBagCellNeed) then
		Talk(1, "", format("<#>Hµnh trang cña ng­¬i kh«ng ®ñ chç trèng, h·y s¾p xÕp l¹i hµnh trang cßn trèng %d « råi h·y ®Õn nhËn th­ëng nhÐ.",nBagCellNeed))
		return
	end
	local n_level = GetLevel();
	G_ACTIVITY:OnMessage("FinishMail", 1, n_level);	
	
	if nTaskFlag == 2 then
	    	if ConsumeEquiproomItem(1, 6, 1, 2813, -1) == 1 then
	    		Msg2Player("Ng­¬i ®· giao 1 Thiªn B¶o Khè LÖnh")
	    	else
	    		Talk(1, "", "Thiªn B¶o Khè LÖnh cña ng­¬i ®©u sao ta kh«ng thÊy")
	    		return
	    	end
    end
    
   	%add_task_daily(1205, 1)
	nt_setTask(1201,0)	
	nt_setTask(1202,0)
	nt_setTask(1203,0)
	nt_setTask(1204,0)
	
	nTodayTaskCount = %get_task_daily(1205)
	WriteLog(format("Account:%s[Name:%s] nhËn phÇn th­ëng nhiÖm vô TÝn Sø, h«m nay ®· hoµn thµnh [%d] lÇn.",
			GetAccount(),
			GetName(),
			nTodayTaskCount
			)
		);
--------------------------Hoµn Thµnh NhiÖm Vô TÝn Sø LÇn 1---------------------------------------------------------------***Heart*Doldly***---------------------------------------------------------
	if nTodayTaskCount == 1 then
		local tbAward = {
			{szName="§iÓm Kinh NghiÖm", nExp_tl = 200000000},
					{szName="M·nh ®å Phôc Hi",tbProp={6,1,4419,1,1,0},nCount=random(1,5)},
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
	{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
	{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1,nBindState=-2},
				--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,30324,0},nCount=10},
		}	
		tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tõ TÝn Sø"})
		Msg2SubWorld("Chóc Mõng "..GetName().." NhËn PhÇn th­ëng: <color=green>1 Tû KN, 1 R­¬ng §å Phæ HKMP, Tõ TÝn Sø LÇn 1")
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "xinshirenwu")
	end
---------------------------Hoµn Thµnh NhiÖm Vô TÝn Sø LÇn 2----------------------------------------------------------------------------------------------------------------------------------
	if nTodayTaskCount == 2 then	
		local tbAward = {
			{szName="§iÓm Kinh NghiÖm", nExp_tl = 200000000},
					{szName="M·nh ®å Phôc Hi",tbProp={6,1,4419,1,1,0},nCount=random(1,5)},
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
	{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
		{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1},
			--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,30324,0},nCount=10},
		}	
		tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tõ TÝn Sø"})
		Msg2SubWorld("Chóc Mõng "..GetName().." NhËn PhÇn th­ëng: <color=green>1 Tû KN, 1 R­¬ng §å Phæ HKMP, Tõ TÝn Sø LÇn 2")
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "xinshirenwu")
	end
--------------------------Hoµn Thµnh NhiÖm Vô TÝn Sø LÇn 3-------------------------------------------------------------------------------------------------------------------------------------
	if nTodayTaskCount >= 3 then	
		local tbAward = {
			{szName="§iÓm Kinh NghiÖm", nExp_tl = 200000000},
					{szName="M·nh ®å Phôc Hi",tbProp={6,1,4419,1,1,0},nCount=random(1,5)},
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
	{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
		{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1},
		--		{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,30324,0},nCount=10},
		}	
		tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tõ TÝn Sø"})
		str = "<color=w>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc p hoµn thµnh nhiÖm vô TÝn Sø - LÇn "..nTodayTaskCount.."b»ng Thiªn Bao Khæ LÖnh"
		AddGlobalCountNews(str, 2)
				Msg2SubWorld("Chóc Mõng "..GetName().." NhËn PhÇn th­ëng: <color=green>1 Tû KN, 1 R­¬ng §å Phæ HKMP, Tõ TÝn Sø LÇn 3")
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "xinshirenwu")	
	end
	if nTodayTaskCount >= 4 then	
		local tbAward = {
			{szName="§iÓm Kinh NghiÖm", nExp_tl = 200000000},
					{szName="M·nh ®å Phôc Hi",tbProp={6,1,4419,1,1,0},nCount=random(1,5)},
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
	{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
		{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1},
		--		{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,30324,0},nCount=10},
		}	
		tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tõ TÝn Sø"})
		str = "<color=w>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc p hoµn thµnh nhiÖm vô TÝn Sø - LÇn "..nTodayTaskCount.."b»ng Thiªn Bao Khæ LÖnh"
		AddGlobalCountNews(str, 2)
				Msg2SubWorld("Chóc Mõng "..GetName().." NhËn PhÇn th­ëng: <color=green>1 Tû KN, 1 R­¬ng §å Phæ HKMP, Tõ TÝn Sø LÇn 3")
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "xinshirenwu")	
	end
	if nTodayTaskCount >= 5 then	
		local tbAward = {
			{szName="§iÓm Kinh NghiÖm", nExp_tl = 200000000},
					{szName="M·nh ®å Phôc Hi",tbProp={6,1,4419,1,1,0},nCount=random(1,5)},
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
	{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
		{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1},
		--		{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,30324,0},nCount=10},
		}	
		tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tõ TÝn Sø"})
		str = "<color=w>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc p hoµn thµnh nhiÖm vô TÝn Sø - LÇn "..nTodayTaskCount.."b»ng Thiªn Bao Khæ LÖnh"
		AddGlobalCountNews(str, 2)
				Msg2SubWorld("Chóc Mõng "..GetName().." NhËn PhÇn th­ëng: <color=green>200 triÖu EXP, Tõ TÝn Sø LÇn 3")
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "xinshirenwu")	
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function messenger_simpleprize()	
end

function messenger_duihuanprize()
	Describe(DescLink_YiGuan..": PhÇn th­ëng gåm cã: TÝn sø yªu bµi vµ Trang bÞ Hoµng Kim. Yªu bµi cã thÓ t¨ng kh¸ng tÝnh cña nh©n vËt, trang bÞ Hoµng Kim cã thÓ t¨ng kinh nghiÖm. B¹n muèn chän lo¹i nµo?",3,
		"TÝn sø yªu bµi /messenger_prize_yaopai",
		"Trang bÞ Hoµng Kim/messenger_prize_huangjin",
		"Sau nµy h·y nãi!/no")
end

function messenger_prize_partner()
	Describe(DescLink_YiGuan..": Thñ lÜnh Long ngò võa míi mang vÒ mét sè <color=red>MÆt n¹ §ång hµnh kú bÝ<color>, ng­êi cã muèn dïng thö kh«ng?",5,
		"Kü n¨ng §ång hµnh/no",
		"MÆt n¹ §ång hµnh/messenger_prize_mianju",
		"VËt phÈm §ång hµnh/no",
		"Quay l¹i/messenger_duihuanprize",
		"Sau nµy h·y nãi!/no")
end

function messenger_prize_mianju()
	Describe(DescLink_YiGuan..": MÆt n¹ ®ång hµnh chia thµnh 2 lo¹i: 1 lÇn sö dung vµ 10 lÇn sö dông.  Muèn ®æi c¸i nµo?",4,
	"§æi MÆt n¹ 1 lÇn/prize_mianju_dan",
	"§æi MÆt n¹ 10 lÇn/prize_mianju_shi",
	"Quay l¹i/messenger_prize_partner",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_shi()
	Describe(DescLink_YiGuan..": B¹n muèn ®æi MÆt n¹ (10 lÇn) ThiÕu Niªn Vâ sÜ L«i KiÕm hay lµ Thanh Niªn Vâ sÜ L«i KiÕm?  Xem râ ch­a ch­a?",4,
	"§æi MÆt n¹ ThiÕu Niªn Vâ SÜ /prize_mianju_shi_shaonian",
	"§æi MÆt n¹ Thanh Niªn Vâ /prize_mianju_shi_qingnian",
	"Quay l¹i/messenger_prize_mianju",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_shi_shaonian()
	Describe(DescLink_YiGuan..": B¾t ®Çu ®æi ®©y!",7,
	"MÆt n¹ (10 lÇn) - ThiÕu Niªn L«i KiÕm [40000 phót]/prize_mianju_shi_shaolin_leijian",
	"MÆt n¹ (10 lÇn) - ThiÕu Niªn TiÕu S­¬ng [40000 phót]/prize_mianju_shi_shaolin_xiaoshuang",
	"MÆt n¹ (10 lÇn) - ThiÕu Niªn Háa NhËn [40000 phót]/prize_mianju_shi_shaolin_huoren",
	"MÆt n¹ (10 lÇn) - ThiÕu Niªn H¶i §­êng [40000 phót]/prize_mianju_shi_shaolin_haitang",
	"MÆt n¹ (10 lÇn) - ThiÕu Niªn Kim Phong [40000 phót]/prize_mianju_shi_shaolin_jinfeng",
	"Quay l¹i/prize_mianju_shi",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_shi_qingnian()
	Describe(DescLink_YiGuan..": B¾t ®Çu ®æi ®©y!",7,
	"MÆt n¹ (10 lÇn) - Thanh Niªn L«i KiÕm [40000 phót]/prize_mianju_shi_qinglin_leijian",
	"MÆt n¹ (10 lÇn) - Thanh Niªn TiÕu S­¬ng [40000 phót]/prize_mianju_shi_qinglin_xiaoshuang",
	"MÆt n¹ (10 lÇn) - Thanh Niªn Háa NhËn [40000 phót]/prize_mianju_shi_qinglin_huoren",
	"MÆt n¹ (10 lÇn) - Thanh Niªn H¶i §­êng [40000 phót]/prize_mianju_shi_qinglin_haitang",
	"MÆt n¹ (10 lÇn) - Thanh Niªn Kim Phong [40000 phót]/prize_mianju_shi_qinglin_jinfeng",
	"Quay l¹i/prize_mianju_shi",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_shi_qinglin_leijian()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,112,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_xiaoshuang()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,113,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_huoren()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,114,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_haitang()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,115,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_jinfeng()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,116,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_leijian()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,102,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_xiaoshuang()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,103,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_huoren()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,104,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_haitang()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,105,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_jinfeng()
	if ( nt_getTask(1205) >= 40000 ) then
		AddItem(0,11,106,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 40000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan()
	Describe(DescLink_YiGuan..": B¹n muèn ®æi MÆt n¹ (1 lÇn) ThiÕu Niªn Vâ sÜ L«i KiÕm hay lµ Thanh Niªn Vâ sÜ L«i KiÕm?  Xem râ ch­a ch­a?",4,
	"§æi MÆt n¹ ThiÕu Niªn Vâ SÜ /prize_mianju_dan_shaonian",
	"§æi MÆt n¹ Thanh Niªn Vâ /prize_mianju_dan_qingnian",
	"Quay l¹i/messenger_prize_mianju",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_dan_qingnian()
	Describe(DescLink_YiGuan..": B¾t ®Çu ®æi ®©y.",7,
	"MÆt n¹ (1 lÇn) - Thanh Niªn L«i KiÕm [10000 phót]/prize_mianju_dan_qinglin_leijian",
	"MÆt n¹ (1 lÇn) - Thanh Niªn TiÕu S­¬ng [10000 phót]/prize_mianju_dan_qinglin_xiaoshuang",
	"MÆt n¹ (1 lÇn) - Thanh Niªn Háa NhËn [10000 phót]/prize_mianju_dan_qinglin_huoren",
	"MÆt n¹ (1 lÇn) - Thanh Niªn H¶i §­êng [10000 phót]/prize_mianju_dan_qinglin_haitang",
	"MÆt n¹ (1 lÇn) - Thanh Niªn Kim Phong [10000 phót]/prize_mianju_dan_qinglin_jinfeng",
	"Quay l¹i/prize_mianju_dan",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_dan_shaonian()
	Describe(DescLink_YiGuan..": B¾t ®Çu ®æi ®©y.",7,
	"MÆt n¹ (1 lÇn) - ThiÕu Niªn L«i KiÕm [10000 phót]/prize_mianju_dan_shaolin_leijian",
	"MÆt n¹ (1 lÇn) - ThiÕu Niªn TiÕu S­¬ng [10000 phót]/prize_mianju_dan_shaolin_xiaoshuang",
	"MÆt n¹ (1 lÇn) - ThiÕu Niªn Háa NhËn [10000 phót]/prize_mianju_dan_shaolin_huoren",
	"MÆt n¹ (1 lÇn) - ThiÕu Niªn H¶i §­êng [10000 phót]/prize_mianju_dan_shaolin_haitang",
	"MÆt n¹ (1 lÇn) - ThiÕu Niªn Kim Phong [10000 phót]/prize_mianju_dan_shaolin_jinfeng",
	"Quay l¹i/prize_mianju_dan",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_mianju_dan_shaolin_leijian()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,97,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_xiaoshuang()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,98,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_huoren()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,99,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_haitang()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,100,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_jinfeng()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,101,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_leijian()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,107,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_xiaoshuang()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,108,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_huoren()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,109,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_haitang()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,110,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_jinfeng()
	if ( nt_getTask(1205) >= 10000 ) then
		AddItem(0,11,111,0,0,0,0)
		local Uworld1205 = nt_getTask(1205) - 10000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 MÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end


function messenger_prize_yaopai()
	Describe(DescLink_YiGuan..": Yªu bµi TÝn sø t­¬ng øng víi danh hiÖu TÝn sø b¹n ®¹t ®­îc. VÝ dô b¹n lµ TÝn sø - Vµng th× cã thÓ ®æi bÊt cø TÝn sø kh¸c, nh­ng nÕu b¹n lµ TÝn sø - Méc b¹n kh«ng thÓ ®æi TÝn sø - Vµng. §· hiÓu râ råi chø? B¾t ®Çu ®æi ®i.",7,
	"TÝn sø lÖnh – méc [50 ®iÓm]/prize_yaopai_mu",
	"TÝn sø lÖnh – §ång [150 ®iÓm]/prize_yaopai_tong",
	"TÝn sø lÖnh – B¹c [450 ®iÓm]/prize_yaopai_yin",
	"§æi TÝn sø Kim bµi [800 ®iÓm]/prize_yaopai_jin",
	"Ngù Tø lÖnh bµi - vµng [1500 ®iÓm]/prize_yaopai_yuci",
	"Quay l¹i/messenger_duihuanprize",
	"T¹m thêi kh«ng ®æi ®­îc!/no")
end

function prize_yaopai_mu()
	if ( nt_getTask(1205) >= 50 ) then
		AddItem(6,1,885,1,0,0)
		local Uworld1205 = nt_getTask(1205) - 50
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc tÊm TÝn sø lÖnh – méc.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_tong()
	if ( nt_getTask(1205) >= 150 ) then
		AddItem(6,1,886,2,0,0)
		local Uworld1205 = nt_getTask(1205) - 150
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc tÊm TÝn sø lÖnh – §ång.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_yin()
	if ( nt_getTask(1205) >= 450 ) then
		AddItem(6,1,887,3,0,0)
		local Uworld1205 = nt_getTask(1205) - 450
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc TÝn sø lÖnh – B¹c.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end
end

function prize_yaopai_jin()
	if ( nt_getTask(1205) >= 800 ) then
		AddItem(6,1,888,4,0,0)
		local Uworld1205 = nt_getTask(1205) - 800
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 tÊm TÝn sø lÖnh - Vµng.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_yuci()
	if ( nt_getTask(1205) >= 1500 ) then
		AddItem(6,1,889,5,0,0)
		local Uworld1205 = nt_getTask(1205) - 1500
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 tÊm Ngù Tø TÝn Sø yªu bµi")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function messenger_prize_huangjin()
	Describe(DescLink_YiGuan..": TriÒu ®×nh muèn th­ëng cho b¹n nªn ®· chuÈn bÞ 1 bé Trang bÞ Hoµng Kim khi giÕt ®Þch sÏ ®­îc nh©n ®«i kinh nghiÖm. B¹n muèn ®æi c¸i nµo?",6,
		"Hång ¶nh trÇm viªn v·n tóy [100000 ®iÓm]/prize_huangjin_shenyuan",
		"Hång ¶nh qua kiÕm t©y ph­¬ng [70000 ®iÓm]/prize_huangjin_guajian",
		"Hång ¶nh môc tóc t­¬ng vong [70000 ®iÓm]/prize_huangjin_muxu",
		"Hång ¶nh hång tô chiªu [50000 ®iÓm]/prize_huangjin_hongxiu",
		"Quay l¹i/messenger_duihuanprize",
		"T¹m thêi kh«ng ®æi/no")
end

function messenger_prize_other()
	Describe(DescLink_YiGuan..": TriÒu ®×nh cã nhiÒu phÇn th­ëng, hiÖn b¹n vËt phÈm b¹n cã thÓ ®æi:",3,
		"ThÇn bÝ §¹i Hång Bao [2000 phót]/prize_other_hongbao",
		"Quay l¹i/messenger_duihuanprize",
		"T¹m thêi kh«ng ®æi/no")
end

function prize_other_hongbao()
	if ( nt_getTask(1205) >= 2000 ) then
		local Uworld1205 = nt_getTask(1205) - 2000 
		nt_setTask(1205,Uworld1205)
		AddItem(6,1,402,0,0,0)
		Msg2Player("B¹n nhËn ®­îc 1 ThÇn bÝ §¹i Hång Bao.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_shenyuan()
	if ( nt_getTask(1205) >= 100000 ) then
		AddGoldItem(0,204)
		local Uworld1205 = nt_getTask(1205) - 100000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 bé trang bÞ Hoµng Kim Hång ¶nh.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_guajian()
	if ( nt_getTask(1205) >= 70000 ) then
		AddGoldItem(0,205)
		local Uworld1205 = nt_getTask(1205) - 70000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 bé trang bÞ Hoµng Kim Hång ¶nh.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_muxu()
	if ( nt_getTask(1205) >= 70000 ) then
		AddGoldItem(0,206)
		local Uworld1205 = nt_getTask(1205) - 70000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 bé trang bÞ Hoµng Kim Hång ¶nh.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_hongxiu()
	if ( nt_getTask(1205) >= 50000 ) then
		AddGoldItem(0,207)
		local Uworld1205 = nt_getTask(1205) - 50000
		nt_setTask(1205,Uworld1205)
		Msg2Player("B¹n nhËn ®­îc 1 bé trang bÞ Hoµng Kim Hång ¶nh.")
	else
		Describe(DescLink_YiGuan..": Xin lçi! §iÓm tÝch lòy cña b¹n kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function messenger_losemytask()
	if ( GetTask(1204) == 0 ) then
		Describe(DescLink_YiGuan..": B¹n ch­a tiÕp nhËn nhiÖm vô TÝn sø, kh«ng thÓ xãa bá!",1,"KÕt thóc ®èi tho¹i/no")
	else
		Describe(DescLink_YiGuan..": B¹n x¸c ®Þnh muèn xãa bá?",2,"§óng vËy!/messenger_lostall","§Ó ta suy nghÜ l¹i!/no")
	end
end

function messenger_what()
	Describe(DescLink_YiGuan..": NhiÖm vô TÝn Sø lµ nhiÖm vô gióp TriÒu §×nh ®­a th­ cho c¸c DÞch Quan ë c¸c Thµnh ThÞ, v× gÇn ®©y néi c¸c trong TriÒu §×nh xuÊt hiÖn ph¶n tÆc, cho nªn trong lóc ®­a th­ ng­¬i sÏ gÆp kh«ng Ýt nguy hiÓm. Kh«ng cã nh÷ng ng­êi dòng c¶m trÝ tuÖ siªu phµm nhÊt ®¼ng vµ tinh thÇn hîp t¸c ®oµn kÕt th× sÏ rÊt khã hoµn thµnh nhiÖm vô. ChØ cã ®¹t ®Õn <color=red> cÊp 120 trë lªn<color> míi cã thÓ tham gia. Tr­íc m¾t ng­¬i sÏ gÆp nh÷ng trë ng¹i cöa ¶i sau ®©y: <color=red> Thiªn B¶o Khè<color>. Trong nh÷ng cöa ¶I nµy cã v« sè kÎ thï kh«ng gièng nhau vµ nh÷ng c¬ quan kú qu¸i,  ng­¬i ph¶i dùa vµo trÝ tuÖ cña m×nh ®Ó cã lùa chän cùc kú chÝn x¸c. Ta chØ cã ®«I lêi nh­ vËy choc ng­¬i thµnh c«ng, cè lªn chiÕn h÷u!",4,
	"Giíi thiÖu ®¼ng cÊp ®Þa ®å/messenger_levelmap",
	"Giíi thiÖu Thiªn B¶o khè /messenger_storehouse",
	"KÕt thóc ®èi tho¹i/no")
end

function messenger_levelmap()
	Describe(DescLink_YiGuan..": Tr­íc m¾t chØ cã <color=red> cÊp 120 trë lªn<color> mét møc ®é nhiÖm vô",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_flyhorse()
	Describe(DescLink_YiGuan..": Trong ¶i Phong Kú, b¹n cã thÓ chän ®Õn cæng ra, nh­ thÕ coi nh­ hoµn thµnh nhiÖm vô nh­ng chØ nhËn ®­îc ®iÓm danh väng. Trong ¶i, chóng t«i cã lËp nh÷ng môc tiªu nhiÖm vô ®¬n gi¶n: Däc ®­êng b¹n sÏ thÊy nhiÒu ký hiÖu cña qu©n ta ®Ó l¹i, cïng lóc cã nhiÒu gian tÕ Kim Quèc. B¹n chØ cÇn tiÕp xóc 5 täa ®å trong b¶n ®å cã thÓ ®Õn cæng ra t×m B¹ch Dùc T­íng qu©n qua ¶i. Nh­ng biÓu hiÖn cña b¹n ®Òu n»m trong tÇm m¾t cña trinh s¸t ta ph¸i ®Õn. §èi víi viÖc t¨ng ®¼ng cÊp Yªu bµi cña b¹n sÏ rÊt cã lîi.",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_mountaindeity()
	Describe(DescLink_YiGuan..": Trong ¶i S¬n ThÇn miÕu, b¹n cã thÓ chän trùc tiÕp ®Õn cæng, nh­ thÕ xem nh­ hoµn thµnh nhiÖm vô, nh­ng chØ th­ëng ®iÓm danh väng. Trong ¶i, chóng t«i cã lËp nh÷ng môc tiªu nhiÖm vô ®¬n gi¶n: Trong nói xuÊt hiÖn ph¶n ®å cña Kinh S­ ThÇn ®ao doanh, bän hä ë trong rõng c¶n trë th­ tÝn. Thñ lÜnh cña bän chóng x­ng lµ §ao Yªu. B¹n chØ cÇn ®¸nh b¹i 2 tªn §ao Yªu th× cã thÓ ®Õn cæng t×m N¹p Lang Thanh Thµnh qua ¶i. NÕu hoµn thµnh nhiÖm vô ®èi víi viÖc t¨ng ®¼ng cÊp Yªu bµi cña b¹n rÊt cã lîi.",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_storehouse()
	Describe(DescLink_YiGuan..": Ng­¬i hoÆc ®éi tr­ëng cña ng­¬i khi tiÕp nhËn nhiÖm vô v­ît ¶i Thiªn B¶o Khè, hÖ thèng sÏ ph©n phèi cho ng­¬i ngÉu nhiªn  nhËn ®­îc 5 ch÷ sè, c¨n cø vµo <color-red> dùa theo thø tù <color> cña ch÷ sè më ra <color=red> B¶o R­¬ng<color> cña sè thø tù ®èi øng trong cöa ¶i Thiªn B¶o Khè, th× cã thÓ qua ¶i. §­¬ng nhiªn, ph¶i më B¶o R­¬ng, ng­¬i ph¶i ®¸nh b¹i <color=red> boss B¶o Khè Thñ Hé Gi¶ <color> bªn c¹nh B¶o R­¬ng. <color=red> Ngò Hµnh Phï <color> cã b¸n trong Kú Tr©n C¸c më ra cã thÓ nhËn ®­îc TriÖt Kim Phï, TriÖt Méc Phï, TriÖt Thñy Phï, TriÖt Háa Phï, TriÖt Thæ Phï, sau khi sö dông cã thÓ gióp ng­¬i dÔ dµng ®¸nh b¹i boss B¶o Khè Thñ Hé Gi¶.",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_orderlevel()
	Describe(DescLink_YiGuan..": C¨n cø biÓu hiÖn cña b¹n trong ¶i, chóng t«i sÏ phong cho b¹n vµi Quan hµm, b¹n sÏ nhËn ®­îc nhiÒu phÇn th­ëng. Yªu b¸i hiÖn t¹i chia thµnh TÝn sø - Méc, TÝn sø - §ång, TÝn sø - B¹c, TÝn sø - Vµng vµ Ngù Tø TÝn sø -  Vµng. §ång thêi, b¹n nhÊn <color=red>F12<color>, xem trong b¶ng <color=red>®iÓm tÝch lòy<color> cña nhiÖm vô TÝn sø, biÕt ®­îc vÞ trÝ chøc quan cña m×nh. B¹n cã thÓ dïng ®iÓm tÝch lòy ®æi danh hiÖu TÝn sø. Sau ®ã cã thÓ dïng ®iÓm tÝch lòy TÝn sø ®æi Yªu bµi. Nh÷ng Yªu bµi nµy sÏ t¨ng kh¶ n¨ng <color=red>phôc håi<color> cña b¹n, nã cã t¸c dông trong <color=red>1 giê<color>, sè lÇn sö dông lµ <color=red>5 lÇn<color>.",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_limittotask()
	Describe(DescLink_YiGuan..": Sau khi tiÕp nhËn nhiÖm vô TÝn sø, b¹n cã thêi gian <color=red>2 giê<color> ®Ó hoµn thµnh. Thêi gian lµm nhiÖm vô mçi ngµy lµ <color=red>2 giê<color>. Chó ý! Khi ë trong ¶i, b¹n bÞ chÕt hoÆc rít m¹ng xem nh­ <color=red>nhiÖm vô thÊt b¹i<color>!",2,"Quay l¹i/messenger_what","KÕt thóc ®èi tho¹i/no")
end

function messenger_giveplayerexp(playerexp)

	local j =random(1,3)

	if ( j == 1 ) then
		tl_addPlayerExp(playerexp-500000)
	elseif ( j == 2 ) then
		tl_addPlayerExp(playerexp)
	elseif ( j == 3 ) then
		tl_addPlayerExp(playerexp+500000)
	end
	Msg2Player("Do b¹n lµm nhiÖm vô TÝn sø cã biÓu hiÖn tèt, DÞch tr¹m cho b¹n 1 phÇn th­ëng kinh nghiÖm!")
	nt_setTask(1224,1)  
	nt_setTask(1223,0)
end

function messenger_lostall()
	nt_setTask(1201,0)
	nt_setTask(1202,0)
	nt_setTask(1203,0)
	nt_setTask(1204,0)
	nt_setTask(1207,0)
	nt_setTask(1212,0)
	nt_setTask(1213,0)
	nt_setTask(1214,0)
	nt_setTask(1215,0)
	Msg2Player("Ng­¬i ®· hñy bá thµnh c«ng nhiÖm vô TÝn Sø.")
	WriteLog(format("Account:%s[Name:%s] hñy bá nhiÖm vô TÝn Sø",
			GetAccount(),
			GetName()
			)
		);
end

function no()
end

function check_daily_task_count()
	local nNormalTaskLimit = 10
	local nIBTaskLimit = 1
	local nTodayCnt = %get_task_daily(1205)
	if nTodayCnt < nNormalTaskLimit then
		return 1
	elseif  nTodayCnt < (nNormalTaskLimit + nIBTaskLimit) then
		local nCountIb = CalcItemCount(-1, 6, 1, 2813, -1)
		if nCountIb >= 1 then
			return 2
		else
			return -1
		end
	end
	return 0
end