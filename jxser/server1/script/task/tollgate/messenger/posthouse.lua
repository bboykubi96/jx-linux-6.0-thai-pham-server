IncludeLib("RELAYLADDER");
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
tbAward = {--PhÇn Th­ëng TÝn Sø
	[1] = {--Phong Ky
		[1] = {
		-- {nExp_tl = 2e9},
		-- {szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0,0},nCount=5},
		
		},
		[2] = {
			
		},
	},
	[2] = {--Son Than Mieu
		[1] = {
		-- {nExp_tl = 2e9},
		-- {szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0,0},nCount=5},
		},
		[2] = {
			
		},
	},
	[3] = {--Thien Bao Kho
		{nExp_tl = 2e9},
		{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0,0},nCount=5},
        {szName="xu",tbProp={4,417,1,1,0,0},nCount=50},
		},
		
	[4] = {--Thien Bao Kho Dac Biet
		[1] = {
		     {nExp_tl = 4e8},
			{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0,0},nCount=5},
			{szName="xu",tbProp={4,417,1,1,0,0},nCount=20},

		},
		[2] = {
		  --  {szName="Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1,0},nCount=1,nRate=10,CallBack= _Message},
		  --  {szName="Quy Nguyen ",tbProp={6,1,3008,1,1,0},nCount=1,nRate=1,CallBack= _Message},
		},
		
	},
}
-----------------------------------------------------------------------------------------------

citygo = { 
	{1204,1,"D­¬ng Ch©u","BiÖn Kinh",1201,80,37,1601,3001}, 
	{1204,2,"D­¬ng Ch©u","Ph­îng T­êng ",1201,80,1,1561,3114}, 
	{1204,3,"D­¬ng Ch©u","L©m An",1201,80,176,1592,2925}, 
	{1204,4,"D­¬ng Ch©u","Thµnh §«",1201,80,11,3021,5090}, 
	{1204,5,"D­¬ng Ch©u","T­¬ng D­¬ng",1201,80,78,1596,3379}, 
	{1204,6,"D­¬ng Ch©u","§¹i Lý",1201,80,162,1674,3132}, 

	{1204,7,"BiÖn Kinh","D­¬ng Ch©u",1201,37,80,1676,3000}, 
	{1204,8,"BiÖn Kinh","Ph­îng T­êng ",1201,37,1,1561,3114}, 
	{1204,9,"BiÖn Kinh","L©m An",1201,37,176,1592,2925}, 
	{1204,10,"BiÖn Kinh","Thµnh §«",1201,37,11,3021,5090}, 
	{1204,11,"BiÖn Kinh","T­¬ng D­¬ng",1201,37,78,1596,3379}, 
	{1204,12,"BiÖn Kinh","§¹i Lý",1201,37,162,1674,3132},

	{1204,13,"Ph­îng T­êng","D­¬ng Ch©u",1202,1,80,1676,3000}, 
	{1204,14,"Ph­îng T­êng","BiÖn Kinh",1202,1,37,1601,3001}, 
	{1204,15,"Ph­îng T­êng","L©m An",1202,1,176,1592,2925}, 
	{1204,16,"Ph­îng T­êng","Thµnh §«",1202,1,11,3021,5090}, 
	{1204,17,"Ph­îng T­êng","T­¬ng D­¬ng",1202,1,78,1596,3379}, 
	{1204,18,"Ph­îng T­êng","§¹i Lý",1202,1,162,1674,3132}, 

	{1204,19,"L©m An","D­¬ng Ch©u",1202,176,80,1676,3000}, 
	{1204,20,"L©m An","Ph­îng T­êng",1202,176,1,1561,3114}, 
	{1204,21,"L©m An","BiÖn Kinh",1202,176,37,1601,3001}, 
	{1204,22,"L©m An","Thµnh §«",1202,176,11,3021,5090}, 
	{1204,23,"L©m An","T­¬ng D­¬ng",1202,176,78,1596,3379}, 
	{1204,24,"L©m An"," §¹i Lý ",1202,176,162,1674,3132}, 

	{1204,25,"Thµnh §«","D­¬ng Ch©u",1203,11,80,1676,3000}, 
	{1204,26,"Thµnh §«","Ph­îng T­êng",1203,11,1,1561,3114}, 
	{1204,27,"Thµnh §«","BiÖn Kinh",1203,11,37,1601,3001}, 
	{1204,28,"Thµnh §«","L©m An",1203,11,176,1592,2925}, 
	{1204,29,"Thµnh §«","T­¬ng D­¬ng",1203,11,78,1596,3379}, 
	{1204,30,"Thµnh §«","§¹i Lý",1203,11,162,1674,3132},

	{1204,31,"T­¬ng D­¬ng","D­¬ng Ch©u",1203,78,80,1676,3000}, 
	{1204,32,"T­¬ng D­¬ng","Ph­îng T­êng",1203,78,1,1561,3114}, 
	{1204,33,"T­¬ng D­¬ng","BiÖn Kinh",1203,78,37,1601,3001}, 
	{1204,34,"T­¬ng D­¬ng","L©m An",1203,78,176,1592,2925}, 
	{1204,35,"T­¬ng D­¬ng","Thµnh §«",1203,78,11,3021,5090}, 
	{1204,36,"T­¬ng D­¬ng","§¹i Lý",1203,78,162,1674,3132}, 

	{1204,37,"§¹i Lý","D­¬ng Ch©u",1203,162,80,1676,3000}, 
	{1204,38,"§¹i Lý","Ph­îng t­êng",1203,162,1,1561,3114}, 
	{1204,39,"§¹i Lý","BiÖn kinh",1203,162,37,1601,3001}, 
	{1204,40,"§¹i Lý","L©m An",1203,162,176,1592,2925}, 
	{1204,41,"§¹i Lý","T­¬ng D­¬ng",1203,162,78,1596,3379}, 
	{1204,42,"§¹i Lý","Thµnh §«",1203,162,11,3021,5090},
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function especiallymessenger()
local nDate = tonumber(GetLocalDate("%d"))
if (GetTask(1230) ~= nDate) then
	SetTask(1230,nDate)
	SetTask(1225,0)
end
	Describe(DescLink_YiGuan..": triÒu ®×nh qu©n c¬ gÇn nhÊt tæng bÞ kim tÆc biÕt tr­íc, ta hoµi nghi cã néi gian. Nh­ng lµ, ë ph¸t hiÖn nh÷ng b¹i ho¹i nµy tr­íc, ta muèn ®Ó cho thÕ nh©n còng biÕt, ng­¬i nghÜ v× quèc gia tÉn mét phÇn lùc sao?",7,
	"Ta ®ång ý!/messenger_Mdx",
	"Ta muèn giao nhiÖm vô tÝn sø/messenger_finishtask", 
	"Ta muèn hñy nhiÖm vô tÝn sø/messenger_lostall", 
	"Ta muèn t×m hiÓu nhiÖm vô tÝn sø/messenger_what", 
	"GÇn ®©y ta cã chuyÖn bËn rén/no")
end
-----------------------------------------------------------------------------Nhan Nhiem Vu---------------------------------------------------------------------------------------------------------------
function messenger_Mdx()
local n_TaskDaily = PlayerFunLib:GetTaskDailyCount(1225)
local _, _, nMapIndex = GetPos()
local MapId = SubWorldIdx2ID( nMapIndex )
	if MapId ~= 11 and MapId ~= 162 and MapId ~= 78 then
		if (n_TaskDaily >= 2) then
			Talk(1,"","<color=red>H«m Nay Ng­¬i §· Tham Gia §ñ 2 LÇn TÝn Sø Råi\nNgµy Mai H·y Quay L¹i")
			return
		end
		if (messenger_ido() == 1) then end return
	end
	if (n_TaskDaily < 2) then
		if (messenger_ido() == 1) then end
	elseif (n_TaskDaily == 2) then
		if CalcEquiproomItemCount(6,1,2813,1) >= 1 then
			if (messenger_ido() == 1) then end
			Msg2Player("Chóc Mõng "..GetName().." §· NhËn Thªm 1 LÇn N÷a §i TÝn Sø §Æc BiÖt. Ng­¬i H·y Gi÷ <color=yellow>Thiªn B¶o Khè LÖnh<color> Hoµn Thµnh Xong Ta Thu Lai Sau")
		else
			Talk(1,"","H«m Nay Ng­¬i §· MÖt Mái Råi. NÕu Ng­¬i Cã <color=yellow>Thiªn B¶o Khè LÖnh<color> Ta SÏ Cho Ng­¬i §i Thªm LÇn N÷a")
		end
	elseif (n_TaskDaily >= 3) then
		Talk(1,"","<color=red>H«m Nay Ng­¬i §· Tham Gia §ñ 3 LÇn TÝn Sø Råi\n                              Ngµy Mai H·y Quay L¹i")
	end
end

function messenger_ido()
local _, _, nMapIndex = GetPos()
local Uworld1204 = nt_getTask(1204)
local MapId = SubWorldIdx2ID(nMapIndex)
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": ThËt xin lçi, tr­íc m¾t cÊp bËc cña ng­¬i kh«ng ®ñ 120 cÊp. TiÕp tôc luyÖn tËp sau ®ã tíi thÊy ta.",1,"KÕt thóc ®èi tho¹i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i nhiÖm vô tÝn sø kh«ng hoµn thµnh, kh«ng thÓ nhËn gièng nhau nhiÖm vô, xin mêi hoµn thµnh nhiÖm vô tr­íc, c¸m ¬n!",1,"KÕt thóc ®èi tho¹i/no")
	elseif (messenger_givetime() == 10 ) then
		Describe(DescLink_YiGuan.."ThËt xin lçi , ngµi h«m nay ë nhiÖm vô tÝn sø, thêi gian ®· hao hÕt, xin mêi ngµy mai trë l¹i",1,"KÕt thóc ®èi tho¹i/no")
	else

		if ( MapId == 80 ) then
			local CityId = random(1,6)
			for i=1,6 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 37 ) then
			local CityId = random(7,12)
			for i=7,12 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 1 ) then
			local CityId = random(13,18)
			for i=13,18 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end	
		elseif ( MapId == 176 ) then
			local CityId = random(19,24)
			for i=19,24 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end		
		elseif ( MapId == 11 ) then
			local CityId = random(25,30)
			for i=25,30 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end		
		elseif ( MapId == 78 ) then
			local CityId = random(31,36)
			for i=31,36 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 162 ) then
			local CityId = random(37,42)
			for i=37,42 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end

		else
			Msg2Player("ThËt xin lçi ! Kh«ng hiÓu t¹i sao ng­¬i kh«ng thÓ nhËn nhiÖm vô tÝn sø, xin liªn l¹c GM!")
		end
	end
end
------------------------------------------------------------------------Giao Nhiem Vu---------------------------------------------------------------------------------------------------------------------
function messenger_finishtask()
local Uworld1201= nt_getTask(1201)
local Uworld1202= nt_getTask(1202)
local Uworld1203= nt_getTask(1203)
local Uworld1204= nt_getTask(1204)
local Uworld1218= nt_getTask(1218)
	if ( Uworld1201 == 30 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tÝn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i !",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i !",1,"NhËn lÊy phÇn th­ëng/messenger_flyprize")
		end
	elseif ( Uworld1202 == 30 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tÝn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i ",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_templeprize")
		end
	elseif ( Uworld1203 == 30 or Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan..":ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tÝn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i!",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan..": Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_treasureprize")
		end
	elseif ( Uworld1201 == 25 ) or ( Uworld1202 == 25 ) or ( Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tÝn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.." Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_simpleprize")	
		end
	elseif ( Uworld1201 ~= 0 or Uworld1202 ~= 0 or Uworld1203 ~= 0 ) then
		Describe(DescLink_YiGuan..": NhiÖm vô tÝn sø cña ngµi ch­a hoµn thµnh, xin h·y tiÕp tôc cè g¾ng",1,"KÕt thóc ®èi tho¹i/no")
	elseif Uworld1203 ~= 0 then
		Describe(DescLink_YiGuan..": ThËt xin lçi, ng­¬i cßn ch­a hoµn thµnh nhiÖm vô. Bªn c¹nh ta cã l·o phu xe cã thÓ gióp ng­¬i ®Õn nhiÖm vô b¶n ®å !",1,"KÕt thóc ®èi tho¹i/no")
	else
		Describe(DescLink_YiGuan..": Kh«ng tiÕp nhËn vô, ng­¬i cßn tíi hñy nhiÖm vô ! ng­¬i tíi, ®em ng­êi nÇy cho ta lµm thµnh thÞt ng­êi b¸nh bao !",1,"KÕt thóc ®èi tho¹i/no")
	end
end
---------------------------------------------------PhÇn Th­ëng TÝn Sø Phong Kú-----------------------------------------------------------------------------------------------------
function messenger_flyprize()
	-- if (CalcFreeItemCellCount() >= 10) then
		-- nt_setTask(1201,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
                -- tbAwardTemplet:GiveAwardByList(%tbAward[1],"PhÇn Th­ëng TÝn Sø Thiªn B¶o Khè")
		-- local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
		-- local i = random(1,5); AddRepute(i); Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
	-- else
		-- Talk(1,"","Hµnh trang cña ng­¬i ch­a ®ñ 10 ¤ Trèng")
	-- end
end
--------------------------------------------PhÇn Th­ëng TÝn Sø S¬n ThÇn MiÕu-------------------------------------------------------------------------------
function messenger_templeprize()
	-- if (CalcFreeItemCellCount() >= 10) then
		-- nt_setTask(1202,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
                -- tbAwardTemplet:GiveAwardByList(%tbAward[2],"PhÇn Th­ëng TÝn Sø Thiªn B¶o Khè")
		-- local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
		-- local i = random(1,5); AddRepute(i); Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
	-- else
		-- Talk(1,"","Hµnh trang cña ng­¬i ch­a ®ñ 10 ¤ Trèng")
	-- end
end
---------------------------------------PhÇn Th­ëng TÝn Sø Thiªn B¶o Khè-------------------------------------------------------------------------------------
function messenger_treasureprize()
local n_TaskDaily = PlayerFunLib:GetTaskDailyCount(1225)
	if (n_TaskDaily < 2) then
		if (CalcFreeItemCellCount() >= 10) then
			nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
			tbAwardTemplet:GiveAwardByList(%tbAward[3],"PhÇn Th­ëng TÝn Sø Thiªn B¶o Khè")
			--SetTask(5142,GetTask(5142)+1)
                     WriteLogPro("dulieu/hoatdongxu/ThienBaoKho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Hoµn Thµnh\n");

			local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
			local i = random(1,5); AddRepute(i); Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
		else
			Talk(1,"","Hµnh trang cña ng­¬i ch­a ®ñ 10 ¤ Trèng")
		end
	elseif (n_TaskDaily == 2) then
		if CalcEquiproomItemCount(6,1,2813,1) >= 1 then
			if (CalcFreeItemCellCount() >= 10) then
				nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
				tbAwardTemplet:GiveAwardByList(%tbAward[4],"PhÇn Th­ëng TÝn Sø Thiªn B¶o Khè §Æc BiÖt") ConsumeEquiproomItem(1,6,1,2813,-1)
				--SetTask(5142,GetTask(5142)+1)
                            WriteLogPro("dulieu/hoatdongxu/ThienBaoKho_ DB.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Hoµn Thµnh\n");

				local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
				local i = random(1,5); AddRepute(i); Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
			else
				Talk(1,"","Hµnh trang cña ng­¬i ch­a ®ñ 10 ¤ Trèng")
			end
		else
			Talk(1,"","<color=yellow>Thiªn B¶o Khè LÖnh<color> Cña Ng­¬i §©u Sao Ta Kh«ng ThÊy")
		end
	end
end
---------------------------------------Khong Hoan Thanh Tra Nhiem Vu-----------------------------------------------------------------------------------
function messenger_simpleprize()
	local i = random(1,15); AddRepute(i)
	Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng.")
	nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0)	
end
-----------------------------------------------------------Thong Bao Nhiem Vu-------------------------------------------------------------------------------------------------------------------------------------------
function messenger_storewagoner()
	SetRevPos(11,10)
	NewWorld(395,1417,3207)
end

function messenger_choice(CityIdTwo,j)
	if (CityIdTwo == citygo[j][2]) then		
		nt_setTask( 1204,citygo[j][2] )  
		nt_setTask( citygo[j][5],10)
		local name = GetName()
		Talk(1,"","Ng­¬i ®¹t ®­îc tõ "..citygo[j][3].." ®Õn "..citygo[j][4].."nhiÖm vô tÝn sø ®Æc biÖt,"..citygo[j][3].." DÞch Tr¹m, DÞch Quan tíi cung tiÔn "..name.." ®¹i nh©n!")		
		return 10
	end
end
--------------------------------------------------Huy Bo Nhiem Vu------------------------------------------------------------------------------------------------------------------------------
function messenger_lostall()
	if (GetTask(1204) == 0) then
		Describe(DescLink_YiGuan..": Ng­¬i kh«ng tiÕp nhËn nhiÖm vô tÝn sø kh«ng thÓ hñy",1,"KÕt thóc ®èi tho¹i/no")
	else
		Msg2Player("B¹n bá mét nhiÖm vô tÝn sø thµnh c«ng")
		nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0)
		WriteLog(format("Account:%s[Name:%s] Tõ bá nhiÖm vô", GetAccount(), GetName()));
	end
end
----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
