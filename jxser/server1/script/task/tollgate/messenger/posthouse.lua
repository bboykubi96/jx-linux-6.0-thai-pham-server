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
tbAward = {--Ph�n Th��ng T�n S�
	[1] = {--Phong Ky
		[1] = {
		-- {nExp_tl = 2e9},
		-- {szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0,0},nCount=5},
		
		},
		[2] = {
			
		},
	},
	[2] = {--Son Than Mieu
		[1] = {
		-- {nExp_tl = 2e9},
		-- {szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0,0},nCount=5},
		},
		[2] = {
			
		},
	},
	[3] = {--Thien Bao Kho
		{nExp_tl = 2e9},
		{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0,0},nCount=5},
        {szName="xu",tbProp={4,417,1,1,0,0},nCount=50},
		},
		
	[4] = {--Thien Bao Kho Dac Biet
		[1] = {
		     {nExp_tl = 4e8},
			{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0,0},nCount=5},
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
	{1204,1,"D��ng Ch�u","Bi�n Kinh",1201,80,37,1601,3001}, 
	{1204,2,"D��ng Ch�u","Ph��ng T��ng ",1201,80,1,1561,3114}, 
	{1204,3,"D��ng Ch�u","L�m An",1201,80,176,1592,2925}, 
	{1204,4,"D��ng Ch�u","Th�nh ��",1201,80,11,3021,5090}, 
	{1204,5,"D��ng Ch�u","T��ng D��ng",1201,80,78,1596,3379}, 
	{1204,6,"D��ng Ch�u","��i L�",1201,80,162,1674,3132}, 

	{1204,7,"Bi�n Kinh","D��ng Ch�u",1201,37,80,1676,3000}, 
	{1204,8,"Bi�n Kinh","Ph��ng T��ng ",1201,37,1,1561,3114}, 
	{1204,9,"Bi�n Kinh","L�m An",1201,37,176,1592,2925}, 
	{1204,10,"Bi�n Kinh","Th�nh ��",1201,37,11,3021,5090}, 
	{1204,11,"Bi�n Kinh","T��ng D��ng",1201,37,78,1596,3379}, 
	{1204,12,"Bi�n Kinh","��i L�",1201,37,162,1674,3132},

	{1204,13,"Ph��ng T��ng","D��ng Ch�u",1202,1,80,1676,3000}, 
	{1204,14,"Ph��ng T��ng","Bi�n Kinh",1202,1,37,1601,3001}, 
	{1204,15,"Ph��ng T��ng","L�m An",1202,1,176,1592,2925}, 
	{1204,16,"Ph��ng T��ng","Th�nh ��",1202,1,11,3021,5090}, 
	{1204,17,"Ph��ng T��ng","T��ng D��ng",1202,1,78,1596,3379}, 
	{1204,18,"Ph��ng T��ng","��i L�",1202,1,162,1674,3132}, 

	{1204,19,"L�m An","D��ng Ch�u",1202,176,80,1676,3000}, 
	{1204,20,"L�m An","Ph��ng T��ng",1202,176,1,1561,3114}, 
	{1204,21,"L�m An","Bi�n Kinh",1202,176,37,1601,3001}, 
	{1204,22,"L�m An","Th�nh ��",1202,176,11,3021,5090}, 
	{1204,23,"L�m An","T��ng D��ng",1202,176,78,1596,3379}, 
	{1204,24,"L�m An"," ��i L� ",1202,176,162,1674,3132}, 

	{1204,25,"Th�nh ��","D��ng Ch�u",1203,11,80,1676,3000}, 
	{1204,26,"Th�nh ��","Ph��ng T��ng",1203,11,1,1561,3114}, 
	{1204,27,"Th�nh ��","Bi�n Kinh",1203,11,37,1601,3001}, 
	{1204,28,"Th�nh ��","L�m An",1203,11,176,1592,2925}, 
	{1204,29,"Th�nh ��","T��ng D��ng",1203,11,78,1596,3379}, 
	{1204,30,"Th�nh ��","��i L�",1203,11,162,1674,3132},

	{1204,31,"T��ng D��ng","D��ng Ch�u",1203,78,80,1676,3000}, 
	{1204,32,"T��ng D��ng","Ph��ng T��ng",1203,78,1,1561,3114}, 
	{1204,33,"T��ng D��ng","Bi�n Kinh",1203,78,37,1601,3001}, 
	{1204,34,"T��ng D��ng","L�m An",1203,78,176,1592,2925}, 
	{1204,35,"T��ng D��ng","Th�nh ��",1203,78,11,3021,5090}, 
	{1204,36,"T��ng D��ng","��i L�",1203,78,162,1674,3132}, 

	{1204,37,"��i L�","D��ng Ch�u",1203,162,80,1676,3000}, 
	{1204,38,"��i L�","Ph��ng t��ng",1203,162,1,1561,3114}, 
	{1204,39,"��i L�","Bi�n kinh",1203,162,37,1601,3001}, 
	{1204,40,"��i L�","L�m An",1203,162,176,1592,2925}, 
	{1204,41,"��i L�","T��ng D��ng",1203,162,78,1596,3379}, 
	{1204,42,"��i L�","Th�nh ��",1203,162,11,3021,5090},
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function especiallymessenger()
local nDate = tonumber(GetLocalDate("%d"))
if (GetTask(1230) ~= nDate) then
	SetTask(1230,nDate)
	SetTask(1225,0)
end
	Describe(DescLink_YiGuan..": tri�u ��nh qu�n c� g�n nh�t t�ng b� kim t�c bi�t tr��c, ta ho�i nghi c� n�i gian. Nh�ng l�, � ph�t hi�n nh�ng b�i ho�i n�y tr��c, ta mu�n �� cho th� nh�n c�ng bi�t, ng��i ngh� v� qu�c gia t�n m�t ph�n l�c sao?",7,
	"Ta ��ng �!/messenger_Mdx",
	"Ta mu�n giao nhi�m v� t�n s�/messenger_finishtask", 
	"Ta mu�n h�y nhi�m v� t�n s�/messenger_lostall", 
	"Ta mu�n t�m hi�u nhi�m v� t�n s�/messenger_what", 
	"G�n ��y ta c� chuy�n b�n r�n/no")
end
-----------------------------------------------------------------------------Nhan Nhiem Vu---------------------------------------------------------------------------------------------------------------
function messenger_Mdx()
local n_TaskDaily = PlayerFunLib:GetTaskDailyCount(1225)
local _, _, nMapIndex = GetPos()
local MapId = SubWorldIdx2ID( nMapIndex )
	if MapId ~= 11 and MapId ~= 162 and MapId ~= 78 then
		if (n_TaskDaily >= 2) then
			Talk(1,"","<color=red>H�m Nay Ng��i �� Tham Gia �� 2 L�n T�n S� R�i\nNg�y Mai H�y Quay L�i")
			return
		end
		if (messenger_ido() == 1) then end return
	end
	if (n_TaskDaily < 2) then
		if (messenger_ido() == 1) then end
	elseif (n_TaskDaily == 2) then
		if CalcEquiproomItemCount(6,1,2813,1) >= 1 then
			if (messenger_ido() == 1) then end
			Msg2Player("Ch�c M�ng "..GetName().." �� Nh�n Th�m 1 L�n N�a �i T�n S� ��c Bi�t. Ng��i H�y Gi� <color=yellow>Thi�n B�o Kh� L�nh<color> Ho�n Th�nh Xong Ta Thu Lai Sau")
		else
			Talk(1,"","H�m Nay Ng��i �� M�t M�i R�i. N�u Ng��i C� <color=yellow>Thi�n B�o Kh� L�nh<color> Ta S� Cho Ng��i �i Th�m L�n N�a")
		end
	elseif (n_TaskDaily >= 3) then
		Talk(1,"","<color=red>H�m Nay Ng��i �� Tham Gia �� 3 L�n T�n S� R�i\n                              Ng�y Mai H�y Quay L�i")
	end
end

function messenger_ido()
local _, _, nMapIndex = GetPos()
local Uworld1204 = nt_getTask(1204)
local MapId = SubWorldIdx2ID(nMapIndex)
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": Th�t xin l�i, tr��c m�t c�p b�c c�a ng��i kh�ng �� 120 c�p. Ti�p t�c luy�n t�p sau �� t�i th�y ta.",1,"K�t th�c ��i tho�i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..": Th�t xin l�i ! Ng��i nhi�m v� t�n s� kh�ng ho�n th�nh, kh�ng th� nh�n gi�ng nhau nhi�m v�, xin m�i ho�n th�nh nhi�m v� tr��c, c�m �n!",1,"K�t th�c ��i tho�i/no")
	elseif (messenger_givetime() == 10 ) then
		Describe(DescLink_YiGuan.."Th�t xin l�i , ng�i h�m nay � nhi�m v� t�n s�, th�i gian �� hao h�t, xin m�i ng�y mai tr� l�i",1,"K�t th�c ��i tho�i/no")
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
			Msg2Player("Th�t xin l�i ! Kh�ng hi�u t�i sao ng��i kh�ng th� nh�n nhi�m v� t�n s�, xin li�n l�c GM!")
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
			Describe(DescLink_YiGuan.."Th�t xin l�i, ng��i kh�ng c� � ho�n th�nh t�n s� t�i nh�n l�y ph�n th��ng, nhi�m v� n�y xem th�t b�i !",1,"K�t th�c ��i tho�i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Ch�c m�ng ng�i �� ho�n th�nh nhi�m v� hi�n t�i !",1,"Nh�n l�y ph�n th��ng/messenger_flyprize")
		end
	elseif ( Uworld1202 == 30 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."Th�t xin l�i, ng��i kh�ng c� � ho�n th�nh t�n s� t�i nh�n l�y ph�n th��ng, nhi�m v� n�y xem th�t b�i ",1,"K�t th�c ��i tho�i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Ch�c m�ng ng�i �� ho�n th�nh nhi�m v� hi�n t�i",1,"Nh�n l�y ph�n th��ng/messenger_templeprize")
		end
	elseif ( Uworld1203 == 30 or Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan..":Th�t xin l�i, ng��i kh�ng c� � ho�n th�nh t�n s� t�i nh�n l�y ph�n th��ng, nhi�m v� n�y xem th�t b�i!",1,"K�t th�c ��i tho�i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan..": Ch�c m�ng ng�i �� ho�n th�nh nhi�m v� hi�n t�i",1,"Nh�n l�y ph�n th��ng/messenger_treasureprize")
		end
	elseif ( Uworld1201 == 25 ) or ( Uworld1202 == 25 ) or ( Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."Th�t xin l�i, ng��i kh�ng c� � ho�n th�nh t�n s� t�i nh�n l�y ph�n th��ng, nhi�m v� n�y xem th�t b�i",1,"K�t th�c ��i tho�i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.." Ch�c m�ng ng�i �� ho�n th�nh nhi�m v� hi�n t�i",1,"Nh�n l�y ph�n th��ng/messenger_simpleprize")	
		end
	elseif ( Uworld1201 ~= 0 or Uworld1202 ~= 0 or Uworld1203 ~= 0 ) then
		Describe(DescLink_YiGuan..": Nhi�m v� t�n s� c�a ng�i ch�a ho�n th�nh, xin h�y ti�p t�c c� g�ng",1,"K�t th�c ��i tho�i/no")
	elseif Uworld1203 ~= 0 then
		Describe(DescLink_YiGuan..": Th�t xin l�i, ng��i c�n ch�a ho�n th�nh nhi�m v�. B�n c�nh ta c� l�o phu xe c� th� gi�p ng��i ��n nhi�m v� b�n �� !",1,"K�t th�c ��i tho�i/no")
	else
		Describe(DescLink_YiGuan..": Kh�ng ti�p nh�n v�, ng��i c�n t�i h�y nhi�m v� ! ng��i t�i, �em ng��i n�y cho ta l�m th�nh th�t ng��i b�nh bao !",1,"K�t th�c ��i tho�i/no")
	end
end
---------------------------------------------------Ph�n Th��ng T�n S� Phong K�-----------------------------------------------------------------------------------------------------
function messenger_flyprize()
	-- if (CalcFreeItemCellCount() >= 10) then
		-- nt_setTask(1201,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
                -- tbAwardTemplet:GiveAwardByList(%tbAward[1],"Ph�n Th��ng T�n S� Thi�n B�o Kh�")
		-- local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
		-- local i = random(1,5); AddRepute(i); Msg2Player("Ch�c m�ng ng��i thu ���c "..i.." �i�m danh v�ng. ")
	-- else
		-- Talk(1,"","H�nh trang c�a ng��i ch�a �� 10 � Tr�ng")
	-- end
end
--------------------------------------------Ph�n Th��ng T�n S� S�n Th�n Mi�u-------------------------------------------------------------------------------
function messenger_templeprize()
	-- if (CalcFreeItemCellCount() >= 10) then
		-- nt_setTask(1202,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
                -- tbAwardTemplet:GiveAwardByList(%tbAward[2],"Ph�n Th��ng T�n S� Thi�n B�o Kh�")
		-- local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
		-- local i = random(1,5); AddRepute(i); Msg2Player("Ch�c m�ng ng��i thu ���c "..i.." �i�m danh v�ng. ")
	-- else
		-- Talk(1,"","H�nh trang c�a ng��i ch�a �� 10 � Tr�ng")
	-- end
end
---------------------------------------Ph�n Th��ng T�n S� Thi�n B�o Kh�-------------------------------------------------------------------------------------
function messenger_treasureprize()
local n_TaskDaily = PlayerFunLib:GetTaskDailyCount(1225)
	if (n_TaskDaily < 2) then
		if (CalcFreeItemCellCount() >= 10) then
			nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
			tbAwardTemplet:GiveAwardByList(%tbAward[3],"Ph�n Th��ng T�n S� Thi�n B�o Kh�")
			--SetTask(5142,GetTask(5142)+1)
                     WriteLogPro("dulieu/hoatdongxu/ThienBaoKho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Ho�n Th�nh\n");

			local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
			local i = random(1,5); AddRepute(i); Msg2Player("Ch�c m�ng ng��i thu ���c "..i.." �i�m danh v�ng. ")
		else
			Talk(1,"","H�nh trang c�a ng��i ch�a �� 10 � Tr�ng")
		end
	elseif (n_TaskDaily == 2) then
		if CalcEquiproomItemCount(6,1,2813,1) >= 1 then
			if (CalcFreeItemCellCount() >= 10) then
				nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0); PlayerFunLib:AddTaskDaily(1225, 1)
				tbAwardTemplet:GiveAwardByList(%tbAward[4],"Ph�n Th��ng T�n S� Thi�n B�o Kh� ��c Bi�t") ConsumeEquiproomItem(1,6,1,2813,-1)
				--SetTask(5142,GetTask(5142)+1)
                            WriteLogPro("dulieu/hoatdongxu/ThienBaoKho_ DB.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Ho�n Th�nh\n");

				local n_level = GetLevel(); G_ACTIVITY:OnMessage("FinishMail", 1, n_level)
				local i = random(1,5); AddRepute(i); Msg2Player("Ch�c m�ng ng��i thu ���c "..i.." �i�m danh v�ng. ")
			else
				Talk(1,"","H�nh trang c�a ng��i ch�a �� 10 � Tr�ng")
			end
		else
			Talk(1,"","<color=yellow>Thi�n B�o Kh� L�nh<color> C�a Ng��i ��u Sao Ta Kh�ng Th�y")
		end
	end
end
---------------------------------------Khong Hoan Thanh Tra Nhiem Vu-----------------------------------------------------------------------------------
function messenger_simpleprize()
	local i = random(1,15); AddRepute(i)
	Msg2Player("Ch�c m�ng ng��i thu ���c "..i.." �i�m danh v�ng.")
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
		Talk(1,"","Ng��i ��t ���c t� "..citygo[j][3].." ��n "..citygo[j][4].."nhi�m v� t�n s� ��c bi�t,"..citygo[j][3].." D�ch Tr�m, D�ch Quan t�i cung ti�n "..name.." ��i nh�n!")		
		return 10
	end
end
--------------------------------------------------Huy Bo Nhiem Vu------------------------------------------------------------------------------------------------------------------------------
function messenger_lostall()
	if (GetTask(1204) == 0) then
		Describe(DescLink_YiGuan..": Ng��i kh�ng ti�p nh�n nhi�m v� t�n s� kh�ng th� h�y",1,"K�t th�c ��i tho�i/no")
	else
		Msg2Player("B�n b� m�t nhi�m v� t�n s� th�nh c�ng")
		nt_setTask(1201,0); nt_setTask(1202,0); nt_setTask(1203,0); nt_setTask(1204,0)
		WriteLog(format("Account:%s[Name:%s] T� b� nhi�m v�", GetAccount(), GetName()));
	end
end
----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
