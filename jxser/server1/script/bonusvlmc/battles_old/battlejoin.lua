--coding by romandou 2004-12-22
--O�?۵ı�A��aNpc�Ի��ű�

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\battleinfo.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_check_songjin.lua")

function main()
--Talk(1, "", "<color=Orange>Th�ng C�o: <color=pink>T? h�m nay c�c h�nh vi post �i�m admin s� ghi h�nh l�i v� kh?a v�nh vi�n c�c acc post mong anh em ch� ? ch�i c�ng b�ng.!")	
dofile("script/battles/battlejoin.lua");

	

	local nWorld, _, _ = GetWorldPos() --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	bt_setnormaltask2type()
	if (BT_GetGameData(GAME_BATTLEID) == 0 ) then
		Say("��i qu�n c�a ta v�n ch�a xu�t ph�t! H�y t�m th�i ngh� ng�i ��i tin nh?",0)
		SubWorld = nOldSubWorld
		return
	end

	if (GetSkillState(472) == 1) then
		RemoveSkillState(472);
		Msg2Player("�� x?a hi�u �ng <enter>           [<color=white>H�i m�u, h�i n�ng l��ng<color>] <enter>           tr�n nh�n v�t.")
	end
	
-------------------------------------------------------------------	
	wid = SubWorldIdx2ID(SubWorld);
	local pl_level = GetLevel()
	local bt_level = 0;
	
	if (pl_level < 40 ) then
		Say("Chi?n tr��ng ch� d�nh cho ng��i t? c�p 40 tr� l�n, ng��i ch�a �� �i?u ki�n. C� g�ng t�p luy�n th�m �i!",2, "���c!/bt_oncancel", "Ta mu�n t�m hi�u th�ng tin chi?n d?ch./bt_onbattleinfo");
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
		 	print("B�o danh T�ng Kim, ID c? v�n �?, xin ph�n v�n h�nh ki�m tra g�p!");
		 	SubWorld = nOldSubWorld
		 	return 	
		 end
		 Say("Khu v�c n�y l� <color=yellow>"..szGAME_GAMELEVEL[maplevel].."<color>, ��ng c�p c�a ng��i hi�n gi� ch� c? th� �i <color=green>"..szGAME_GAMELEVEL[bt_level].."<color> �� b�o danh!", 0)--����A��?�ֵȼ���`�ʾ?�Ϣ		 
		 SubWorld = nOldSubWorld
		 return
	end

-------------------------------------------------------------------	
	SubWorld = SubWorldID2Idx(nWorld)
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Say("Ti?n ph��ng c? v�n �?, t�m th�i kh�ng th� ti?n h�nh t�ng kim ��i chi?n", 0 )
		SubWorld = nOldSubWorld
		return
	end

	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	if (state == 0) then
		Say("Xin l�i! ��i chi?n v�n ch�a b�t ��u! L�n sau quay l�i nh?", 0 )
		SubWorld = tempSubWorld;		
		return
	elseif (state == 3) then
		Say("Xin l�i! ��i chi?n �� k?t th�c! L�n sau quay l�i nh?", 0)
		SubWorld = tempSubWorld;
		return
	else
		battlename = BT_GetBattleName();
	end;
	SubWorld = tempSubWorld;
	
	SubWorld = SubWorldID2Idx(nWorld)
if (BT_GetGameData(GAME_BATTLEID) ~= BT_GetData(PL_BATTLEID) or BT_GetGameData(GAME_BATTLESERIES) ~= BT_GetData(PL_BATTLESERIES)) then
	if (state ~= 1 and state ~= 2 ) then
		Say("Xin l�i! ��i chi?n �� k?t th�c! L�n sau quay l�i nh?", 0)
		SubWorld = nOldSubWorld
		return 
	end

	if (bt_ncamp == 1) then
		Say("["..battlename.."] Chi?n d?ch �� b�t ��u, m�i ng��i h�y v� to�n d�n ��i t�ng, t�c ng� c? c�u: Thi�n h� h�ng vong, th�t phu h�u tr�ch. Nay ng��i kim x�m ph�m b� c�i ch�ng ta, ��y l� l�c b�o hi?u ��t n��c, ch� c�n c�p 40 tr� l�n v� c�n 2 v�n l��ng th� c? th� b�o ��p qu�c gia r�i, n�o ng��i anh em c�n ch�n ch? g� n�a!", 2, "Ta tham gia! (�i�m t?ch l?y tr� v? 0) /bt_joinsong", "�� ta suy ngh� l�i!/bt_oncancel");
	else
		Say("["..battlename.."] Chi?n d?ch �� b�t ��u, h?i c�c v? d?ng s� Kim qu�c, th�i kh�c nh�t th�ng thi�n h� v� d�p b�n T�ng qu�c nam man c�n ���ng c�a ch�ng ta �� �?n. Nay Kim qu�c r�t c�n s� tr� l�c c�a c�c ng��i, ch� c�n c�p 40 tr� l�n v� c�n 2 v�n l��ng l� c? th� �?n ��p qu�c gia r�i, n�o ng��i anh em c�n ch�n ch� g� n�a!", 2, "Ta tham gia! (�i�m t?ch l?y tr� v? 0) /bt_joinjin", "�� ta suy ngh� l�i!/bt_oncancel");
	end
	SubWorld = nOldSubWorld
	return	
end;
	SubWorld = SubWorldID2Idx(nWorld)
--if (BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
	if (bt_ncamp == 1) then
		Say("Nh�n ng��i m�t la m�y lo?t, nh�t �?nh l� Kim qu�c gian t? Ng��i ��u! B�t l�y h�n!",0)
		Msg2Player("Ng��i �� ��u qu�n cho Kim qu�c, h�y �?n g�p M� binh quan xin gia nh�p chi?n tr��ng!")
	else
		Say("T�n Nam man kia, c? gan th�m nh�p v�o l�nh �?a ��i Kim, r� r�ng l� t�i t�m c�i ch?t!",0)
		Msg2Player("Ng��i �� ��u qu�n cho Kim qu�c, h�y �?n g�p M� binh quan xin nh�p chi?n tr��ng!")	
	end;
	SubWorld = nOldSubWorld
	return 
end


	say_index = 1
	storm_ask2start(1)
end;

--Ou�����νd��O��Ի�
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
		"Tr�ng tr�n �� r?n vang! Sao ng��i ch�a tham gia chi?n?",
		"Ch�c m?ng b�n �� ch?nh th�c tr� th�nh t��ng s� c�a ��i T�ng! H�y ch�ng t� b�n l�nh c�a m�nh �i!",
		"Ch�c m?ng b�n �� ch?nh th�c tr� th�nh t��ng s� c�a ��i Kim! H�y ch�ng t� b�n l�nh c�a m�nh �i!"
	}
	local BenTong		= GetCityOwner(7);	-- �ٰ���O������
	local BenKim	= GetCityOwner(4);	-- a꾩��O������
	local szMsg2 = "Qu�c Chi?n Thi�n T� - Qu�n s� 2 b�n hi�n t�i <enter><enter><color=white>Qu�n s� bang <color=pink>"..BenTong.." <color>l� <color=green>"..mem_song.." <color><color=red>ng��i <enter><color>Qu�n s� bang <color=pink>"..BenKim.." <color>l� <color><color=green>"..mem_jin.." <color><color=red>ng��i"
	local szMsg = "T�ng Kim ��i Chi?n - Qu�n s� 2 b�n hi�n t�i <enter><enter><color=yellow>Qu�n s� b�n T�ng l� <color><color=green>"..mem_song.." <color><color=yellow>ng��i <enter>Qu�n s� b�n Kim l� <color><color=green>"..mem_jin.." <color><color=yellow>ng��i<color>"
	if BT_GetGameData(GAME_BATTLEID) == 1 then
	Say(szMsg, 2, "H�y cho ta tham gia/bt_enterbattle", "�� ta suy ngh� l�i!/bt_oncancel");

else
	Say(szMsg2, 2, "Tham gia tr�n thi�n t� n�y/bt_enterbattle", "�� ta suy ngh� l�i!/bt_oncancel");
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
			Say("Xin l�i,ti?n tuy?n c? v�n �?, t�m th�i kh�ng th� ti?n v�o chi?n tr��ng.",0)
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
		Say("Xin l�i! Ti�n ph��ng c�v�n ��, t�m th�i kh�ng th� ti?n v�o chi?n tr��ng", 0);
	end
	SubWorld = nOldSubWorld
end;
--end

function bt_wantjin()
		Say("Ng��i x�c �?nh ��u qu�n cho Kim qu�c? N?u �� gia nh�p, n�i trong 1 tu�n ng��i s� l� ng��i c�a ch�ng ta. Mu�n thay ��i, ph�i ��i tu�n sau!",2, "Ta nh�t �?nh gia nh�p Kim qu�c/bt_joinjin", "�� ta suy ngh� l�i ��!/bt_oncancel");
end;

function bt_wantsong()
		Say("Ng��i x�c �?nh ��u qu�n cho T�ng qu�c? N?u �� gia nh�p, n�i trong 1 tu�n ng��i s� l� ng��i c�a ch�ng ta. Mu�n thay ��i, ph�i ��i tu�n sau!",2, "Ta nh�t �?nh gia nh�p T�ng qu�c/bt_joinsong", "�� ta suy ngh� l�i ��!/bt_oncancel");
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
	Msg2Player("C�ng c�o:�� b�t ��u chi?n d?ch m�i, �i�m t?ch l?y hi�n gi� s� l� 0!")
	Msg2Player("Hoan ngh�nh! Hoan ngh�nh! Ng��i T�ng lu�n l� anh h�ng!")

	--Storm ����`�O�
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
	Msg2Player("C�ng c�o:�� b�t ��u chi?n d?ch m�i, �i�m t?ch l?y hi�n gi� s� l� 0!")
	Msg2Player("Hoan ngh�nh! Hoan ngh�nh! Kim qu�c kh�ng thi?u anh t�i!")

	--Storm ����`�O�
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
			
			-- ��?��ν? ?�������?ƽ�⴦��		
			if BT_GetGameData(GAME_BATTLEID) == 2 then
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_GUOZHAN_MAXCOUNT ) then
				Say("Hi�n t�i binh l�c bang ta l� <color=yellow>"..mem_song.." ng��i<color>, �?ch qu�n l� <color=yellow>"..mem_jin.." ng��i<color>, c�ch bi�t <color=red>"..BALANCE_MAMCOUNT.." ng��i<color>. Qu�n l�c c�a bang ta nhiu ��y �� th�ng tr�n r�i ta kh�ng c�n th�m n�a!", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_GUOZHAN_MAXCOUNT ) then
				Say("Hi�n t�i binh l�c bang ta l� <color=yellow>"..mem_jin.." ng��i<color>, �?ch qu�n l� <color=yellow>"..mem_song.." ng��i<color>, c�ch bi�t <color=red>"..BALANCE_GUOZHAN_MAXCOUNT.." ng��i<color>. Qu�n l�c c�a bang ta nhiu ��y �� th�ng tr�n r�i ta kh�ng c�n th�m n�a!", 0)
				return
			else
				return mem_song, mem_jin
				end
			end
			
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_MAMCOUNT ) then
				Say("Hi�n t�i binh l�c phe ta l� <color=yellow>"..mem_song.." ng��i<color>, �?ch ph��ng l� <color=yellow>"..mem_jin.." ng��i<color>, c�ch bi�t <color=red>"..BALANCE_MAMCOUNT.." ng��i<color>. Qu�n l�c c�a ta hi�n gi� �� d� s�c ti�u di�t Kim binh! Tr�ng s� xin ��i tr�n sau nh?!", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_MAMCOUNT ) then
				Say("Hi�n t�i binh l�c phe ta l� <color=yellow>"..mem_jin.." ng��i<color>, �?ch ph��ng l� <color=yellow>"..mem_song.." ng��i<color>, c�ch bi�t <color=red>"..BALANCE_MAMCOUNT.." ng��i<color>. Qu�n l�c c�a ta hi�n gi� �� d� s�c ti�u di�t T�ng qu�n. Tr�ng s� xin ��i tr�n sau nh?!", 0)
				return
			else
				return mem_song, mem_jin
			end
		end
	end
	Say("Xin l�i! Ti?n ph��ng c? v�n �?, t�m th�i kh�ng th� v�o chi?n tr��ng", 0);
	return nil
end

-- ��O��νd�Խ������?����?����ļ��� 1:��?? 0:���A����
function bt_checkmem_for_guozan()
	-- �ǹ�O��νdֱ�ӷ�??
	if BT_GetGameData(GAME_BATTLEID) ~= 2 then
		return 1;
	end
	local nDate = tonumber(GetLocalDate("%d"))
if GetTask(3018) == nDate then
return 1;
end
	local szMyTong				= GetTongName();	-- �Լ��İ��
	local szCityOwner_LinAn		= GetCityOwner(7);	-- �ٰ���O������
	local nCount_song1 = CalcItemCount(3, 6, 1, 2057, -1);
		if (szMyTong == szCityOwner_LinAn and nCount_song1 < 1) then
		Say("Xin l�i ��y l� tr�n thi�n t� gi�a Bang  \n"..GetCityOwner(7).." vs "..GetCityOwner(4).." \n�� ��m b�o t?nh c�ng b�ng tr�n thi�n t� n�y c�n ph�i c? <Qu�c chi?n l�nh b�i (T�NG)> m�i ���c v�o trong.!", 0);
		return 0;
	end
	local szMyTong				= GetTongName();	-- �Լ��İ��
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- a꾩��O������
	local nCount_jin1  = CalcItemCount(3, 6, 1, 2058, -1);
	if  (szMyTong == szCityOwner_Bianjin and nCount_jin1 < 1) then
		Say("Xin l�i ��y l� tr�n thi�n t� gi�a Bang  \n"..GetCityOwner(4).." vs "..GetCityOwner(7).." \n�� ��m b�o t?nh c�ng b�ng tr�n thi�n t� n�y c�n ph�i c? <Qu�c chi?n l�nh b�i (KIM)> m�i ���c v�o trong.!", 0);
		return 0;
	end
	-- ֮ǰ?Ѿ�ͨ�u���飬�μ���O�?ۣ������ټ�����
--	if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) == bt_ncamp) then
--		return 1;
--	end
	
	local szCityOwner_LinAn		= GetCityOwner(7);	-- �ٰ���O������
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- a꾩��O������
	local szMyTong				= GetTongName();	-- �Լ��İ��
	
	-- O��ǰ���u�U����
	if szCityOwner_LinAn == "" or szCityOwner_Bianjin == "" or szCityOwner_LinAn == szCityOwner_Bianjin then
		Say("L�n qu�c chi?n T�ng Kim n�y kh�ng ���c ph?p m�", 0);
		return 0;
	end
	-- ͨ�u������U����
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

	local szMyTong				= GetTongName();	-- �Լ��İ��
	local szCityOwner_LinAn		= GetCityOwner(7);	-- �ٰ���O������
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- a꾩��O������
	-- ��ϸ
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 2) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 1) then
		Say("Gian t? c�a �?ch �� chui v�o ��i doanh r�i, h�y mau mau b�t!", 0);
		return 0;
	end
	-- �������ϵ�����
	local nCount_song = CalcItemCount(3, 6, 1, 2057, -1);
	local nCount_jin  = CalcItemCount(3, 6, 1, 2058, -1);
	local nDate = tonumber(GetLocalDate("%d"))

	if nCount_song == 0 and nCount_jin == 0 and (GetTask(3018) ~= nDate) then
		Say("<color=yellow>H�m nay l� chi?n tr��ng giao chi?n Thi�n T� gi�a 2 bang<color=red> <B�n T�ng><color=green> "..GetCityOwner(7).." v/s <color=green>"..GetCityOwner(4).."<color=red> <B�n Kim> <color=yellow>ng��i mu�n tham gia ph�i c? l�nh b�i xin t? bang ch� 1 trong 2 bang tr�n..", 0);
		return 0;
	end
	
	
	-- �����?�d��������
	if (nCount_jin ~= 0 and bt_ncamp == 1) or (nCount_song ~= 0 and bt_ncamp == 2) then
		Say("Gian t? c�a �?ch �� chui v�o ��i doanh r�i, h�y mau mau b�t!2", 0);
		return 0;
	end
	
	-- ����dǮ
	--if (GetCash() < 3000) then
		--Say("Mu�n tham gia chi?n tr��ng T�ng Kim h�y �ng h� 3000 l��ng", 0)
		--return 0;
	--end
	
	-- �۳u����
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
		Msg2Player("Kh�u tr? l�nh b�i th�t b�i");
		return 0;
	end
	-- ��?�ͨ�u
	return 1;
end









