Include("\\script\\dailogsys\\g_dialog.lua")
-- Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\activitysys\\npcdailog.lua")







function main()
	if (CheckGlobalTradeFlag() == 0) then		-- ȫ�־���ϵݳ���׿���
		return
	end
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<dec><npc>V� ��i hi�p n�y t�m ta ph�i ch�ng c�n tr� gi�p v�n �� g� sao,v�y h�y nh�n l�y h� tr� �i n�o.Hi v�ng sau n�y ng��i tr� th�nh<color=yellow>V� ��ch Thi�n H�<color>kh�ng qu�n s� gi�p s�c c�a ta?"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
	"Nh�n h� tr� t�n th�/hotrotanthu",
	"Kich ho�t Buff t�n th�/kynangtanthu",	
	--"Nh�n ph�n th��ng theo c�p/nhanthuongcap",	
	--"Ta mu�n nh�n ph�n th��ng Chuy�n Sinh/phanthuongchuyensinh",
	--"Ta mu�n nh�n Th�n H�nh Ph� v� Set Kim Phong/hotrokp",

	
	}	
	
	--�ظ�����
	--tbDailog:AddOptEntry("���������ظ�����װ��", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--�����Ի���
	tbDailog:Show()
	

	
end
------------------------------------
function kynangtanthu()
	if GetLevel() < 160 then
		AddSkillState(512,20,1,60*60*18)
		AddSkillState(527,5,1,60*60*18)
		AddSkillState(313,5,1,60*60*18)
		AddSkillState(314,12,1,60*60*18)
		AddSkillState(546,1,1,60*60*18)
		Talk(1, "", "<color=yellow>B�n nh�n ���c h� tr� k� n�ng ��c bi�t v� Ti�n Th�o L� trong kho�ng th�i gian nh�t ��nh !<color>");
		Msg2Player( "��n <color=yellow>S� Gi� T�n Th�<color> c� th� k�ch ho�t <color=yellow>Buff H� Tr�<color> gi�i h�n t�i level 160 !" );
	else
	Talk(1, "", "B�n v��t qu� c�p �� nh�n Buff h� tr�.")
	end
	
end
------------------------------------
function hotrotanthu()
	if GetTask(357,0) == 0 then
	if GetLevel() <= 10 then
       for i = 1,10 do 
        AddOwnExp(9999999999) 
        end 
	if CalcFreeItemCellCount() > 50 then
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,1083,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	Earn(10000)
	AddRepute(500);

	local ItemIndex = AddItem(0,10,2,1,5,0) -- liet bach ma
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	local ItemIndex = AddGoldItem(0, 177)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 178)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 179)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 180)	
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 181)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 182)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 183)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 184)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 185)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	AddSkillState(512,20,1,60*60*18)
	AddSkillState(527,5,1,60*60*18)
	AddSkillState(313,5,1,60*60*18)
	AddSkillState(314,12,1,60*60*18)
	AddSkillState(546,1,1,60*60*18)
	SetTask(357,GetTask(357,0)+1)
	Talk(1, "", "<color=yellow>B�n nh�n ���c h� tr� k� n�ng ��c bi�t v� Ti�n Th�o L� ��n level 160,n�u b�n ch�t hi�u �ng s� bi�n m�t.B�n c� th� k�ch ho�t l�i t�i ��y !<color>");
	Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>H� Tr� T�n Th� C�p 1<color> Ch�c b�n ch�i game vui v�" );
	else
	Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
	return
	end		
	else
	Talk(1, "", "B�n ph�i ��ng c�p 1.")
	end
	else
	Talk(1, "", "B�n ch� nh�n m�t l�n th�i.")
	end
end
-------------------------------------------------
function nhanthuongcap()
	local tab_Content = {
		"Nh�n th��ng c�p 80 /cap80",
		"Nh�n th��ng c�p 100 /cap100",
		"Nh�n th��ng c�p 120 /cap120",
		"Nh�n th��ng c�p 140 /cap140",
		"Nh�n th��ng c�p 160 /cap160",
		"Nh�n th��ng c�p 180 /cap180",
		"Th�i kh�ng l�y g� n�a."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
-------------------------------------------------
function phanthuongchuyensinh()
	local tab_Content = {
		"Ta mu�n nh�n ph�n th��ng sau khi �� tr�ng sinh l�n 1 /cs1",
		"Ta mu�n nh�n ph�n th��ng sau khi �� tr�ng sinh l�n 2 /cs2",
		"Ta mu�n nh�n ph�n th��ng sau khi �� tr�ng sinh l�n 3 /cs3",
		"Ta mu�n nh�n ph�n th��ng sau khi �� tr�ng sinh l�n 4 /cs4",
		"Ta mu�n nh�n ph�n th��ng sau khi �� tr�ng sinh l�n 5 /cs5",
		"Th�i kh�ng l�y g� n�a."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
----------------------------------------------------
-------------------------------------------------
function cs1()
	local tab_Content = {
		"Ta mu�n nh�n ph�n th��ng c�p 100 sau khi �� tr�ng sinh l�n 1 /cs1cap140",
		"Th�i kh�ng l�y g� n�a."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
----------------------------------------------------
-------------------------------------------------
function cs2()
	local tab_Content = {
		"Ta mu�n nh�n ph�n th��ng c�p 100 sau khi �� tr�ng sinh l�n 2 /cs2cap140",
		"Th�i kh�ng l�y g� n�a."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
------------------------------------------------------------------------------------
function cap80()
		if GetTask(357,0) == 1 then
		if GetLevel() >= 80 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(0,10,5,10,5,0) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	

		
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,400,90,1,0,0) --tuimau
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 80<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 80.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
function cap100()
		if GetTask(357,0) == 2 then
		if GetLevel() >= 100 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,71,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		
		local ItemIndex = AddItem(6,1,1617,0,0,0)
		
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		
		local ItemIndex = AddItem(6,1,2623,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(0,10,8,10,5,0) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,30146,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,3524,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien


	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 100.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
function cap120()
		if GetTask(357,0) == 3 then
		if GetLevel() >= 120 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddGoldItem(0, 494)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 495)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 496)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 497)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	

		local ItemIndex = AddItem(0,10,6,10,5,0) --bontieu
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddGoldItem(0, 3465) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddGoldItem(0, 3542) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddGoldItem(0, 3205) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 120<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 120.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
function cap140()
		if GetTask(357,0) == 4 then
		if GetLevel() >= 140 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
	
		
		local ItemIndex = AddEventItem(238) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(239) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(240) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
			
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	

		
		local ItemIndex = AddGoldItem(0, 3466)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddGoldItem(0, 3550)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 3206)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,2490,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,3525,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 140<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 140.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
function cap160()
		if GetTask(357,0) == 5 then
		if GetLevel() >= 160 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,26,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,26,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,22,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,22,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		


		local ItemIndex = AddItem(6,1,2951,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		local ItemIndex = AddGoldItem(0, 3467)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		local ItemIndex = AddGoldItem(0, 3551)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3207)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		
		

		local ItemIndex = AddItem(6,1,30147,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,3526,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 160<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 160.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
function cap180()
		if GetTask(357,0) == 6 then
		if GetLevel() >= 180 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,2951,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		
		local ItemIndex = AddGoldItem(0, 3468)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3469)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie

		local ItemIndex = AddGoldItem(0, 3552)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3208)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		

		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 180<color> Ch�c b�n ch�i game vui v�" );
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 180.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end

----------------------------------------------------
function cs1cap140()
		if GetTask(357,0) == 7 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 1 then
		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 1<color> Ch�c b�n ch�i game vui v�" );
		Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> nh�n ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 1<color> kh�ng h� danh anh h�ng h�o ki�t xu�t ch�ng")	
		else
			Talk(1, "", "Ph�n th��ng ch� d�nh cho ng��i tr�ng sinh l�n 1");
			return
		end
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 100.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
----------------------------------------------------
----------------------------------------------------
function cs2cap140()
		if GetTask(357,0) == 8 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 2 then
		local ItemIndex = AddItem(6,1,2349,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,2349,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 2<color> Ch�c b�n ch�i game vui v�" );
		Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> nh�n ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 2<color> kh�ng h� danh anh h�ng h�o ki�t xu�t ch�ng")	

		else
			Talk(1, "", "Ph�n th��ng ch� d�nh cho ng��i tr�ng sinh l�n 2");
			return
		end
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 100.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
----------------------------------------------------

----------------------------------------------------
function cs3()
		if GetTask(357,0) == 9 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 3 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 3<color> Ch�c b�n ch�i game vui v�" );
		Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> nh�n ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 3<color> kh�ng h� danh anh h�ng h�o ki�t xu�t ch�ng")	

		else
			Talk(1, "", "Ph�n th��ng ch� d�nh cho ng��i tr�ng sinh l�n 2");
			return
		end
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 140.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end

----------------------------------------------------
function cs4()
		if GetTask(357,0) == 10 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 4 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien 
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 4<color> Ch�c b�n ch�i game vui v�" );
		Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> nh�n ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 4<color> kh�ng h� danh anh h�ng h�o ki�t xu�t ch�ng")	

		else
			Talk(1, "", "Ph�n th��ng ch� d�nh cho ng��i tr�ng sinh l�n 4");
			return
		end
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 100.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
----------------------------------------------------
function cs5()
		if GetTask(357,0) == 11 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 5 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B�n nh�n ���c ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 5<color> Ch�c b�n ch�i game vui v�" );
		Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color> nh�n ph�n th��ng <color=yellow>Th�ng C�p 100 Chuy�n Sinh L�n 5<color> kh�ng h� danh anh h�ng h�o ki�t xu�t ch�ng")	

		else
			Talk(1, "", "Ph�n th��ng ch� d�nh cho ng��i tr�ng sinh l�n 5");
			return
		end
		else
		Talk(1, "", "H�nh trang kh�ng �� 50 ch� tr�ng.")
		return
		end
		else
			Talk(1, "", "B�n ch�a ��t c�p 100.")
		end
	else
		Talk(1, "", "B�n ch�a nh�n c�c ph�n th��ng tr��c kia n�n kh�ng th� nh�n ph�n th��ng n�y.M�t ph�n th��ng ch� nh�n m�t l�n duy nh�t !")
	end
end
