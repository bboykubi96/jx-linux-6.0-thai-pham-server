--Th�n h�nh ph� edit by mcteam
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
------------------------------------------------------
function main(sel)
       local CheckXu = GetExtPoint(1)
       local SoXuCon = CheckXu *1
       local nMapChuyen = GetWorldPos();
       local KNB =CalcItemCount(3,4,1496,1,1) +  CalcItemCount(4,4,1496,1,1) + CalcItemCount(9,4,1496,1,1) + CalcItemCount(10,4,1496,1,1)	
       local tiendong =CalcItemCount(3,4,417,1,1) +  CalcItemCount(4,4,417,1,1) + CalcItemCount(9,4,417,1,1) + CalcItemCount(10,4,417,1,1)
       local tinhngoc =CalcItemCount(3,6,1,4807,1) +  CalcItemCount(4,6,1,4807,1) + CalcItemCount(9,6,1,4807,1) + CalcItemCount(10,6,1,4807,1)
 local exp = GetLevel()
local phantram =GetExpPercent()
       local nFaction = GetLastFactionNumber()
  local nDate = tonumber(date("%Y%m%d%H%M"))
		if nDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		return 1
	end
	local nMap,_,_ = GetWorldPos();
	local listmapband = {1002,867,527,535,337,338,339,378,379,380,323,324,325,464,465,466,467,468,469,470,471,342,336,595,900}
	for k=1,getn(listmapband) do 
		if nMap == listmapband[k] then 
			Msg2Player("Khu V�c ��t Bi�t Kh�ng Th� S� D�ng Th�n H�nh Ph� T�i N�i ��y.");
			return 1;
		end
	end

	if (GetLevel() < 5) then
		Say("��ng C�p 5 Tr� L�n M�i C� Th� S� D�ng Th�n H�nh Ph�")
		return 1
	end;
	if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y SD Th�n H�nh Ph�")
		return 1
	end;
        --  if GetTask(3920)> 0  then
	--	Say("Ng��i �ang v�n chuy�n Bao L��ng . Mau di chuy�n ��n �i�m t�p k�t �i.")
	--	return 1
	--end;
   --WriteLogPro("dulieu/thanhanhphu/dichuyen"..date("%d_%m_%Y")..".txt",format("[Th�i gian : %s  - T�i kho�n [ %s]  - Nh�n v�t : [%s ] --Cap Do  ["..exp.." ]--phan tram  ["..phantram.." ]--tinh_ngoc  ["..tinhngoc.." ]-- Di Chuyen Den Map :  ["..nMapChuyen.."]   \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),exp,phantram,tinhngoc))	     
    --  if KNB>0 or tiendong>0 or SoXuCon>0  then
      --WriteLogPro("dulieu/thanhanhphu/BaoHiemXu"..date("%d_%m_%Y")..".txt",format("[Th�i gian : %s  - T�i kho�n [ %s]  - Nh�n v�t : [%s ] - KNB : [%s ] -- Xu : [%s ]-- Ti�n Trang ["..SoXuCon.." KNB]-- Di Chuyen Den Map :  ["..nMapChuyen.."]  \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),KNB,tiendong))	     
	--end	
	Say("Th�n H�nh Ph� C� Th� ��t �i�m H�i Sinh, V� C�ng C�\nTh� �i ��n N�i Th�nh Th� Tr�n N�o ��", 6, 
		"R�i Kh�i/no",
		"Thi�t ��t �i�m h�i sinh, l�n sau n�u ��i hi�p s� d�ng th� ��a ph� s� ��n n�i n�y./set_backpos", 
		"S� d�ng thu�t th�n h�nh c� th� ��a ��i hi�p ��n th�nh th� th�n tr�n ch� ��nh./gototown"
	--	"�i ��nh B�c./dennoidanhcobac"
		
		--"�i ��n v� tr� kh�c./#tbVNGWORDPOS:GotoOtherMap()"
		--"�i ��n v� tr� kh�c./Goto_OtherMap"
		);

	return 1	
end;
function checkruongnguyetkhuyet()
local daychuyen =CalcItemCount(3,6,1,4516,1) +  CalcItemCount(4,6,1,4516,1) + CalcItemCount(9,6,1,4516,1) + CalcItemCount(10,6,1,4516,1)	
local khoi =CalcItemCount(3,6,1,4517,1) +  CalcItemCount(4,6,1,4517,1) + CalcItemCount(9,6,1,4517,1) + CalcItemCount(10,6,1,4517,1)	
local nhantren =CalcItemCount(3,6,1,4518,1) +  CalcItemCount(4,6,1,4518,1) + CalcItemCount(9,6,1,4518,1) + CalcItemCount(10,6,1,4518,1)	
local houyen =CalcItemCount(3,6,1,4519,1) +  CalcItemCount(4,6,1,4519,1) + CalcItemCount(9,6,1,4519,1) + CalcItemCount(10,6,1,4519,1)	
local dailung =CalcItemCount(3,6,1,4520,1) +  CalcItemCount(4,6,1,4520,1) + CalcItemCount(9,6,1,4520,1) + CalcItemCount(10,6,1,4520,1)	
local ao =CalcItemCount(3,6,1,4521,1) +  CalcItemCount(4,6,1,4521,1) + CalcItemCount(9,6,1,4521,1) + CalcItemCount(10,6,1,4521,1)	
local vukhi =CalcItemCount(3,6,1,4522,1) +  CalcItemCount(4,6,1,4522,1) + CalcItemCount(9,6,1,4522,1) + CalcItemCount(10,6,1,4522,1)	
local giay =CalcItemCount(3,6,1,4523,1) +  CalcItemCount(4,6,1,4523,1) + CalcItemCount(9,6,1,4523,1) + CalcItemCount(10,6,1,4523,1)	
local ngocboi =CalcItemCount(3,6,1,4524,1) +  CalcItemCount(4,6,1,4524,1) + CalcItemCount(9,6,1,4524,1) + CalcItemCount(10,6,1,4524,1)	
local hagioi =CalcItemCount(3,6,1,4525,1) +  CalcItemCount(4,6,1,4525,1) + CalcItemCount(9,6,1,4525,1) + CalcItemCount(10,6,1,4525,1)	
	if daychuyen>0 or khoi>0 or nhantren>0 or houyen>0 or dailung>0 or ao>0 or vukhi>0 or giay>0 or ngocboi>0 or hagioi>0 then
	WriteLogPro("dulieu/coruongnguyenkhuyet.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t daychuyen:"..daychuyen.." \n");	
	end
end
function checkdonguyetkhuyet()
		local tbEquip = GetAllEquipment()
	for i=1, getn(tbEquip) do
	local	nItemTime = ITEM_GetExpiredTime(tbEquip[i])
	local nGoldEquipIdxFF = GetGlodEqIndex(tbEquip[i])
		local nCurItemExpiredTime = ITEM_GetExpiredTime(tbEquip[i])
		local nCurTime = GetCurServerTime()
	local ntime= nCurItemExpiredTime - nCurTime 
--	local nIDX=
		if nGoldEquipIdxFF>=3655 and nGoldEquipIdxFF<=3904 and nItemTime>0 then
			if ntime>60 then
			ITEM_SetExpiredTime(tbEquip[i],1)
			SyncItem(tbEquip[i])
			SetItemBindState(tbEquip[i], -2)
			end
		--Msg2Player(" Ch�c m�ng "..nItemTime.."   +++ id="..nGoldEquipIdxFF.."    " )
		
		--	Say("Kh�ng th� mang �� test v�o ��y nh� b�n")

			end
	end
end
function dennoidanhcobac()
NewWorld(523 , floor(1590), floor(3218))
SetFightState(0)
end
-------------------------------Luyen cong tan thu----------------------------------------------

function luyencongtanthu()
	local tab_Content = {
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 20 /gopos_step2lv20",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 30 /gopos_step2lv30",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 40 /gopos_step2lv40",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 50 /gopos_step2lv50",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 60 /gopos_step2lv60",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 70 /gopos_step2lv70",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 80 /gopos_step2lv80",
		"Ta ch�a mu�n �i ��u c�./no",
	}
	Say("L�a ch�n b�n �� luy�n c�ng c�n thi�t.", getn(tab_Content), tab_Content);
end;

tab_lv80map = {
		{224,1622,3118	,"Sa M�c ��a bi�u",},
		{198,1521,2947	,"Thanh Kh� ��ng",},
		{320,1147,3123	,"Ch�n n�i Tr��ng B�ch",},
		{181,1425,2999	,"L��ng Th�y ��ng",},
		{201,1616,3195	,"B�ng H� ��ng",},
	}

function gopos_step2lv80(ns, ne)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
	local n_count = getn(tab_lv80map);
	local tab_Content = {};
	for i = 1, 5 do
		tinsert(tab_Content, tab_lv80map[i][4].."/#gopos_step3lv80( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv80(nIdx)
	NewWorld(tab_lv80map[nIdx][1], tab_lv80map[nIdx][2], tab_lv80map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv80map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 70----------------------------
tab_lv70map = {
		{319,1630,3587	,"L�m Du Quan",},
		{123,1702,3350	,"L�o H� ��ng",},
		{206,1603,3215	,"T�n L�ng t�ng 2",},
		
	}

function gopos_step2lv70(ns, ne)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
	local n_count = getn(tab_lv70map);
	local tab_Content = {};
	for i = 1, 3 do
		tinsert(tab_Content, tab_lv70map[i][4].."/#gopos_step3lv70( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv70(nIdx)
	NewWorld(tab_lv70map[nIdx][1], tab_lv70map[nIdx][2], tab_lv70map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv70map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 60----------------------------
tab_lv60map = {
		{79,1600,3206	,"T��ng D��ng Nha M�n M�t ��o",},
		{56,1516,3443	,"Ho�nh S�n Ph�i",},
		{166,1649,3231	,"Thi�n T�m Th�p t�ng 3",},
		
	}

function gopos_step2lv60(ns, ne)
	local n_count = getn(tab_lv60map);
	local tab_Content = {};
	for i = 1, 3 do
		tinsert(tab_Content, tab_lv60map[i][4].."/#gopos_step3lv60( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv60(nIdx)
	NewWorld(tab_lv60map[nIdx][1], tab_lv60map[nIdx][2], tab_lv60map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv60map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 50----------------------------
tab_lv50map = {
		{182,1777,2982	,"Nghi�t Long ��ng",},
		{164,1611,3187	,"Thi�n T�m Th�p",},
		
	}

function gopos_step2lv50(ns, ne)
	local n_count = getn(tab_lv50map);
	local tab_Content = {};
	for i = 1, 2 do
		tinsert(tab_Content, tab_lv50map[i][4].."/#gopos_step3lv50( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function gopos_step3lv50(nIdx)
	NewWorld(tab_lv50map[nIdx][1], tab_lv50map[nIdx][2], tab_lv50map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv50map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 40----------------------------
tab_lv40map = {
		{21,2622,4502	,"Thanh Th�nh S�n",},
		{167,1575,3239	,"�i�m Th��ng S�n",},

	}

function gopos_step2lv40(ns, ne)
	local n_count = getn(tab_lv40map);
	local tab_Content = {};
	for i = 1, 2 do
		tinsert(tab_Content, tab_lv40map[i][4].."/#gopos_step3lv40( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv40(nIdx)
	NewWorld(tab_lv40map[nIdx][1], tab_lv40map[nIdx][2], tab_lv40map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv40map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 30----------------------------
tab_lv30map = {
		{193,1938,2845	,"V� Di S�n",},
		{170,1612,3187	,"Th� Ph� ��ng",},
	}

function gopos_step2lv30(ns, ne)
	local n_count = getn(tab_lv30map);
	local tab_Content = {};
	for i = 1, 2 do
		tinsert(tab_Content, tab_lv30map[i][4].."/#gopos_step3lv30( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv30(nIdx)
	NewWorld(tab_lv30map[nIdx][1], tab_lv30map[nIdx][2], tab_lv30map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv30map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end

---------------------map luyen cong 20----------------------------
tab_lv20map = {
		{19,3102,3963	,"Ki�m C�c T�y Nam",},
		{7,2276,2825	,"T�n L�ng t�ng 1",},

	}

function gopos_step2lv20(ns, ne)
	local n_count = getn(tab_lv20map);
	local tab_Content = {};
	for i = 1, 2 do
		tinsert(tab_Content, tab_lv20map[i][4].."/#gopos_step3lv20( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv20(nIdx)
	NewWorld(tab_lv20map[nIdx][1], tab_lv20map[nIdx][2], tab_lv20map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv20map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end

-------------------------------END Luyen cong tan thu----------------------------------------------


function Goto_StepPos(nIdx)
	--local tbOtherMap = tb_OtherMap[nIdx];
	--NewWorld(tbOtherMap[1], tbOtherMap[2], tbOtherMap[3]);
	--SetFightState(0);
	--Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tbOtherMap[4].." n�o");
end

function Goto_OtherMap()
	--local tab_Content = {};
	--local nCount = getn(tb_OtherMap);
	--for i = 1, nCount do
		--tinsert(tab_Content, tb_OtherMap[i][4].."/Goto_StepPos( "..i..")");
	--end
	--tinsert(tab_Content, "R�i kh�i/no");
	--Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

tb_OtherMap = {
		{523,1579,3121	,"Minh nguy�t tr�n T��ng D��ng",},
		{521,1579,3121	,"Minh nguy�t tr�n Th�nh ��",},
		{520,1579,3121	,"Minh nguy�t tr�n Ph��ng T��ng",},
		{525,1579,3121	,"Minh nguy�t tr�n ��i L�",},
		{524,1579,3121	,"Minh nguy�t tr�n D��ng Ch�u",},
		{522,1579,3121	,"Minh nguy�t tr�n Bi�n Kinh",},
		{526,1579,3121	,"Minh nguy�t tr�n L�m An",},
		{55,1602,3125		,"��o Hoa Nguy�n",},
	};

tab_RevivePos = {
	[1] = {	--"�ɶ�"
		{"Th�nh �� ��ng", 6, 11},{"Th�nh �� t�y", 7, 11},{"Th�nh �� nam", 8, 11},{"Th�nh �� b�c", 9, 11},{"Th�nh �� trung t�m", 5, 11}
	},
	[2] = {	--"����"
		{"T��ng D��ng ��ng", 30, 78},{"T��ng D��ng t�y", 32 , 78},{"T��ng D��ng nam", 31, 78},{"T��ng D��ng b�c", 33, 78},{"T��ng D��ng trung t�m", 29, 78}
	},
	[3] = {	--"����"
		{"Ph��ng T��ng ��ng", 1, 1},{"Ph��ng T��ng t�y", 2, 1},{"Ph��ng T��ng nam", 3, 1},{"Ph��ng T��ng b�c", 4, 1},{"Ph��ng T��ng trung t�m", 0, 1}
	},
	[4] = {	--"����"
		{"��i l� b�c", 64, 162},{"��i l� trung t�m", 63, 162}
	},
	[5] = {	--"�꾩"
		{"Bi�n Kinh ��ng", 24, 37},{"Bi�n Kinh t�y", 25, 37},{"Bi�n Kinh nam", 24, 37},{"Bi�n Kinh b�c", 26, 37},{"Bi�n Kinh trung t�m", 23, 37}
	},
	[6] = {	--"����"
		{"D��ng Ch�u ��ng", 35, 80},{"D��ng Ch�u t�y", 38, 80},{"D��ng Ch�u nam", 37, 80},{"D��ng Ch�u b�c", 36, 80},{"D��ng Ch�u trung t�m", 34, 80}
	},
	[7] = {	--"�ٰ�"
		{"L�m An ��ng", 68, 176},{"L�m An nam", 67, 176},{"L�m An b�c", 69, 176}
	},
	[8] = {	--"��ׯ"
		{"Ba L�ng huy�n", 19, 53},{"Giang T�n Th�n", 10, 20},{"V�nh L�c tr�n", 43, 99},{"Chu Ti�n tr�n", 45, 100},{"��o H��ng th�n", 47, 101},{"Long M�n tr�n", 55, 121},{"Th�ch C� tr�n", 59, 153},{"Long Tuy�n th�n", 65, 174},{"T�y S�n th�n", 1, 175}
	},
	[9] = {	--"����"
		{"Thi�n V��ng Bang", 21, 59},{"Thi�u L�m ph�i", 52, 103},{"���ng M�n", 15, 25},{"Ng� ��c Gi�o", 71, 183},{"Nga My ph�i", 13, 13},{"Th�y Y�n m�n", 61, 154},{"Thi�n Nh�n gi�o", 28, 49},{"C�i Bang", 53, 115},{"V� �ang ph�i", 40, 81},{"C�n L�n ph�i", 58, 131}
	},
};
--�趨�����㣨ѡ���У�
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("L�c n�y b�n kh�ng th� s� d�ng v�t ph�m n�y");
			return 1;
		end
	end	
	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#setpos_step2(1)",
		"T��ng D��ng/#setpos_step2(2)",
		"Ph��ng T��ng/#setpos_step2(3)",
		"��i L�/#setpos_step2(4)",
		"Bi�n Kinh/#setpos_step2(5)",
		"D��ng Ch�u/#setpos_step2(6)",
		"L�m An/#setpos_step2(7)",
		"Th�n trang/#setpos_step2(8)",
		"M�n ph�i/#setpos_step2(9)"
	}
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--�س�
function gototown()
	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh th� /gopos_step2town",
		"Th�n trang/#gopos_step2(8)",
		"M�n ph�i/#gopos_step2(9)",
		"B�n �� luy�n c�ng t�n th� 2x ��n 8x/#luyencongtanthu()",
		"B�n �� c�p 90/#gopos_step2lv90()",
		--	"��u tr��ng Sinh T�/vaodautruong",
		--"B�n �� m�i tr�n 90/#gopos_step2lv130()",
		"Chi�n tr��ng t�ng T�ng Kim/gopos_step2battle",
		"Chi�n tr��ng Th�t Th�nh ��i Chi�n/gopos_sevencityfield"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;

function vaodautruong()

	local tbSay = {}
	tinsert(tbSay,"H�u Doanh B�c./#gotoDT(1572,2438)")
	tinsert(tbSay,"H�u Doanh Nam./#gotoDT(1206,3156)")
	tinsert(tbSay,"H�u Doanh  ��ng./#gotoDT(1545,3110)")
	tinsert(tbSay,"H�u Doanh T�y./#gotoDT(1218,2452)")
	tinsert(tbSay,"Th�i ta kh�ng mu�n �i./no")
	Say("M�i l�a ch�n khu v�c tham ��u", getn(tbSay), tbSay)

	return 1	
end;

function gotoDT(nX,nY)
if GetLevel() < 80 then
Say("C�p �� 80 tr� l�n m�i c� th� v�o")
return
end
NewWorld(355,nX,nY)
SetPunish(0)
	local szTong = GetTong()
	if not szTong or  szTong == "" then
		SetCreateTeam(0);
		SetCurCamp(4);

end
end


function gopos_step2town()
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#gopos_step2(1)",
		"T��ng D��ng/#gopos_step2(2)",
		"Ph��ng T��ng/#gopos_step2(3)",
		"��i L�/#gopos_step2(4)",
		"Bi�n Kinh/#gopos_step2(5)",
		"D��ng Ch�u/#gopos_step2(6)",
		"L�m An/#gopos_step2(7)",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

--���з����������ڶ���
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;

--���з���������������
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;

	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
end;

tab_lv130map = {
		{917,1816,3392	,	"Ph�ch Huy�t C�c",},
		{918,1816,3392	,	"�c Nh�n C�c",},
		{919,1608,3168	,	"Th�c C�t Nhai",},
		{920,1608,3168	,	"H�c M�c Nhai",},
		{921,1560,3104	,	"Thi�n Ph� S�n",},
		{922,1560,3104	,	"B�n Long S�n",},
		{923,2008,4080	,	"��a M�u S�n",},
		{924,2008,4080	,	"Uy�n Ph��ng S�n",},
		--{949,1602,3199	,	"M� Cung Ki�m Gia",},
		--{950,1592,3195	,	"�c Lang C�c",},
}

function gopos_step2lv130(ns, ne)
	
	if bandotren90 == 0 then
		Say("Ch�c n�ng b�n �� m�i t�m th�i ch�a m�")
		return
	end

	if GetLevel() < 130 then
		Say("��ng c�p c�a ng��i ch�a �� 130 kh�ng th� ��n khu v�c n�y")
		return
	end

	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 7;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 6) then
		ne_1 = ns_1 + 6;
	end
	
	local n_count = getn(tab_lv130map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv130map[i][4].."/#gopos_step3lv130( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv130( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv130( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

function gopos_step3lv130(nIdx)

	NewWorld(tab_lv130map[nIdx][1], tab_lv130map[nIdx][2], tab_lv130map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i <color=yellow>"..tab_lv130map[nIdx][4].."<color> n�o");
	
end

tab_lv90map = {
		--{959,1437,3057	,	"Chi�n Long ��ng",},
		--{875,1576,3177	,	"H�c Sa ��ng",},
		{322,1589,3164	,	"Tr��ng B�ch s�n B�c",},
		{321,967,2313	,		"Tr��ng B�ch s�n Nam ",},
		{75,1811,3012	,		"Kho� Lang ��ng",},
		{227,1588,3237	,	"Sa M�c 3",},
		{225,1474,3275	,	"Sa M�c 1",},
		{226,1560,3184	,	"Sa M�c 2",},
		{336,1124,3187	,	"Phong L�ng ��",},
		{340,1845,3438	,	"M�c Cao Qu�t",},
		{144,1691,3020	,	"D��c V��ng ��ng t�ng 4",},
		{93,1529,3166	,		"Ti�n C�c ��ng",},
		{124,1675,3418	,	"C�n Vi�n ��ng",},
		{152,1672,3361	,	"Tuy�t B�o ��ng t�ng 8",},
	}

function gopos_step2lv90(ns, ne)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 7;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 6) then
		ne_1 = ns_1 + 6;
	end
	
	local n_count = getn(tab_lv90map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv90map[i][4].."/#gopos_step3lv90( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)

	if tab_lv90map[nIdx][1] == 959 then--chien long dong

		if chienlongdong == 0 then
			Say("Ch�c n�ng Chi�n Long ��ng t�m th�i ch�a m�")
			return
		end

		if GetCash() < 0 then
			Say("��i hi�p kh�ng mang �� 1 l��ng")
			return
		end
		SetProtectTime(18*4) -- 4 giay bat tu 
		AddSkillState(963, 1, 0, 18*4)
		Pay(1)
		else
			if GetCash() < 0 then
				Say("��i hi�p kh�ng mang �� 1 l��ng")
				return
			end
			Pay(1)
	end

	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i <color=yellow>"..tab_lv90map[nIdx][4].."<color> n�o");
	
end


function gopos_step2battle()
	--if ( GetLevel() < 120 ) then
		--Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
	--else
		--Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "V�o �i�m b�o danh phe V�ng (T)/#DoRescriptFunc(1)", "V�o �i�m b�o danh phe T�m (K)/#DoRescriptFunc(2)","�� ta suy ngh� l�i./no" );
	--end;
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "T�ng Kim l� n�i r�t nguy hi�m, ch�a ��t c�p 40 kh�ng th� tham gia chi�n tr��ng." );
	else
		Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "V�o �i�m b�o danh phe T�ng /ToSong", "V�o �i�m b�o danh phe Kim /ToJin","�� ta suy ngh� l�i./no" );
	end;
end

function gopos_sevencityfield()
	local tbEquip = GetAllEquipment()
	for i=1, getn(tbEquip) do
	local	nItemTime = ITEM_GetExpiredTime(tbEquip[i])
	local nGoldEquipIdxFF = GetGlodEqIndex(tbEquip[i])
		if nGoldEquipIdxFF>=3655 and nGoldEquipIdxFF<=3904 and nItemTime>0 then
	--	Msg2Player(" Ch�c m�ng "..nItemTime.."   --id="..nGoldEquipIdxFF.."    " )
			Say("Kh�ng th� mang �� test v�o ��y nh� b�n")
			return 0
			end
	end
	Say("Ng��i mu�n �i chi�n tr��ng n�o c�a Th�t Th�nh ��i Chi�n?", 8,
		"Chi�n tr��ng Th�nh ��/#goto_sevencityfield(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_sevencityfield(2)",
		"Chi�n tr��ng ��i L�/#goto_sevencityfield(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_sevencityfield(4)",
		"Chi�n tr��ng L�m An/#goto_sevencityfield(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_sevencityfield(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_sevencityfield(7)",
		"�� ta suy ngh� l�i/Cancel")
end

function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	local tbErr = {}
	if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
		player:Say(tbErr.Msg)
		return
	end
	if GetCash() < 0 then
		Say("��i hi�p kh�ng mang �� 1 l��ng")
		return
	end
	Pay(1)
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end
function ToSong()	-- �����η�������	
	if GetCash() < 0 then
		Say("��i hi�p kh�ng mang �� 7 l��ng")
		return
	end
	Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function ToJin()	-- ����𷽱�����
	if GetCash() < 0 then
		Say("��i hi�p kh�ng mang �� 7 l��ng")
		return
	end
	Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--�η������
	local szstr = "Phe V�ng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Phe T�m (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	end
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
 

function no()
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end