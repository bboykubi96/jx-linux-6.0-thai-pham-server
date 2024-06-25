Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_variables.lua")
Include("\\script\\lib\\basic.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_nhanthuongoffline.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_xemketqua.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_lib_files.lua")
-------------------------------------------------------------------------
F_TIEN_VAN           = "<color=yellow>v�n<color>";
F_TIEN_DONG          = "<color=fire>ti�n ��ng<color>";
STR_TIME_DUANGUA     = "";
N_MAX_TIEN_VAN_CUOC  = 1000;
N_MAX_TIEN_DONG_CUOC = 1000;
T_TIME_PLAY_DUA_NGUA = 5108;
T_DN_KIM_TVAN  = 5109;
T_DN_KIM_TDONG = 5110;
T_DN_MOC_TVAN  = 5111;
T_DN_MOC_TDONG = 5112;
T_DN_THUY_TVAN  = 5113;
T_DN_THUY_TDONG = 5114;
T_DN_HOA_TVAN  = 5115;
T_DN_HOA_TDONG = 5116;
T_DN_THO_TVAN  = 5117;
T_DN_THO_TDONG = 5118;
----------------------------------------------------------------------------------------
function main()
dofile("script/update_feature/duanguaxephang/npc_quanlyduangua.lua");
dofile("script/update_feature/duanguaxephang/dn_nhanthuongoffline.lua");
dofile("script/update_feature/duanguaxephang/dn_variables.lua");
dofile("script/update_feature/duanguaxephang/dn_xemketqua.lua");
dofile("script/update_feature/duanguaxephang/duanguainit.lua");
local nNpcIndex = GetLastDiagNpc(); 
local curTime = GetCurServerTime();
local isStart = GetNpcParam(nNpcIndex, %DN_IsStart);
local isEnd  = GetNpcParam(nNpcIndex, %DN_IsEnd);
local isProcess  = GetNpcParam(nNpcIndex, %DN_IsProcess);
local isRunning  = GetNpcParam(nNpcIndex, %DN_IsRunning);
local isAnalyze  = GetNpcParam(nNpcIndex, %DN_IsAnalyze);
STR_TIME_DUANGUA = GetNpcParam(nNpcIndex, %DN_StartTimeBet);
   
	if STR_TIME_DUANGUA ~= 0 then         
		STR_TIME_DUANGUA =   format("1%s", FormatTime2String("%m%d%H%M", STR_TIME_DUANGUA));       
	end

	local playTime = GetTask(T_TIME_PLAY_DUA_NGUA);
	if playTime == 0 or tostring(playTime) ~= STR_TIME_DUANGUA then
		defaultTaskBauCua();
	end
    
	local sSexTitle = getSexTitle();
    
	local strTitle = "<npc><color=red>� Gia B�o<color> v�a hu�n luy�n ���c <color=fire>5 con Ng�a Qu�<color>. �ang m� cu�c �ua, ��y l� c� h�i cho c�c nh�n s� ki�m th�m <color=yellow>ti�n<color>.";   

	local tbOpt = {}
	if isEnd == 1 then
		strTitle = format("%s\n <color=red>Ho�t ��ng �� k�t th�c<color>. %s vui l�ng quay l�i sau ho�t ��ng di�n ra v�o l�c <color=green>07h00 ��n 12h00 - 13h ��n 18h - 00h ��n 02h<color>.", strTitle, sSexTitle);
		strTitle = format("%s\n %s kh�ng n�n di chuy�n map trong khi ��t c��c ", strTitle, sSexTitle);
	elseif isRunning == 1 then
		if tostring(playTime) == STR_TIME_DUANGUA then
			strTitle = format("%s\n <pic=135><pic=136><pic=137> <color=yellow>Cu�c �ua �� b�t ��u<color>.", strTitle);
			strTitle = format("%s\nC�c tay �ua %s v�a ��t:", strTitle, sSexTitle);
			strTitle = getStrThongTinCuoc(strTitle);
		else
			strTitle = format("%s, \n%s", strTitle, format("<pic=135><pic=136><pic=137><color=yellow>Cu�c �ua �ang di�n ra<color>. \n%s vui l�ng <color=yellow>quay l�i v�o ��t k�<color>. B�y gi� h�y <color=green>c� v� cho c�c tay �ua n�o<color>!", getSexTitle()));
		end
	elseif isStart == 0 then
		strTitle = format("%s\n <pic=135><pic=136><pic=137> <color=yellow>Ch�a b�t ��u ��t c��c<color>:", strTitle);
		strTitle = format("%s\n + <color=red>Th�ng k� <pic=88>...<color>", strTitle);
		strTitle = format("%s\n + <color=fire>Trao th��ng...<color> <pic=116> <pic=131> <pic=116>", strTitle);
		strTitle = format("%s\n %s vui l�ng <color=green>quay l�i trong v�i gi�y n�a...<pic=46><pic=46><pic=46><color>", strTitle, sSexTitle);  
	elseif isAnalyze == 1 then  
		strTitle = format("%s\n <pic=135><pic=136><pic=137> <color=yellow>H� th�ng �ang ti�n h�nh<color>:", strTitle);
		strTitle = format("%s\n + <color=red>Th�ng k� <pic=88>...<color>", strTitle);
		strTitle = format("%s\n + <color=fire>Trao th��ng...<color> <pic=116> <pic=131> <pic=116>", strTitle);
		strTitle = format("%s\n %s vui l�ng <color=green>quay l�i trong v�i gi�y n�a...<pic=46><pic=46><pic=46><color>", strTitle, sSexTitle);
	elseif isAnalyze ~= 1 and isRunning ~= 1 then      
		if playTime == 0 or tostring(playTime) ~= STR_TIME_DUANGUA then
			strTitle = format("%s\nHo�t ��ng <color=green>�ua Th�<color> �ang di�n ra %s h�y nhanh tay tham gia �� nh�n ���c <color=fire>nhi�u ph�n th��ng<color>.", strTitle, sSexTitle);
		end
	elseif tostring(playTime) == STR_TIME_DUANGUA and isStart == 1 then
		strTitle = format("%sC�c tay �ua %s v�a ��t:", strTitle, sSexTitle);
		strTitle = getStrThongTinCuoc(strTitle);
	end 

	if isEnd ~= 1 and isStart == 1 and isAnalyze ~= 1 and isRunning ~= 1 then
		tinsert(tbOpt, {"Ta mu�n ��t th�m", showMenuLuaChonLoaiTienDat});  
	end


	if isAnalyze ~= 1 then
		--tinsert(tbOpt, {"Nh�n th��ng", processNhanThuong});     
	end

	tinsert(tbOpt, {"Xem k�t qu� l�n tr��c", showKetQuaTruocDo});   
	tinsert(tbOpt, {"Tho�t"});  
    
	CreateNewSayEx(strTitle, tbOpt);
end

function defaultTaskBauCua()
SetTask(T_DN_KIM_TVAN, 0); 
SetTask(T_DN_KIM_TDONG, 0);
SetTask(T_DN_MOC_TVAN, 0); 
SetTask(T_DN_MOC_TDONG, 0);
SetTask(T_DN_THUY_TVAN, 0);  
SetTask(T_DN_THUY_TDONG, 0); 
SetTask(T_DN_HOA_TVAN, 0);  
SetTask(T_DN_HOA_TDONG, 0);
SetTask(T_DN_THO_TVAN, 0);  
SetTask(T_DN_THO_TDONG, 0); 
end

function getTongTienVanCuoc()
return
	GetTask(T_DN_KIM_TVAN, 0) + 
	GetTask(T_DN_MOC_TVAN, 0) +
	GetTask(T_DN_THUY_TVAN, 0) +   
	GetTask(T_DN_HOA_TVAN, 0) +  
	GetTask(T_DN_THO_TVAN, 0);
end

function getTongTienDongCuoc()
return
	GetTask(T_DN_KIM_TDONG, 0) + 
	GetTask(T_DN_MOC_TDONG, 0) +
	GetTask(T_DN_THUY_TDONG, 0) +   
	GetTask(T_DN_HOA_TDONG, 0) +  
	GetTask(T_DN_THO_TDONG, 0);
end    
        
function getStrThongTinCuoc(strTitle)
	for i=1, DN_nTotalItem  do
		local nVanTaskID = 0;
		local nTDongTaskID = 0;
		local sItemTile = "";
		if i == DN_nKim then
			nVanTaskID = T_DN_KIM_TVAN;
			nTDongTaskID  = T_DN_KIM_TDONG;
			sItemTile = DN_sKim;
		elseif i == DN_nMoc then
			nVanTaskID = T_DN_MOC_TVAN;
			nTDongTaskID  = T_DN_MOC_TDONG;
			sItemTile = DN_sMoc;
		elseif i == DN_nThuy then
			nVanTaskID = T_DN_THUY_TVAN;
			nTDongTaskID  = T_DN_THUY_TDONG;
			sItemTile = DN_sThuy;
		elseif i == DN_nHoa then
			nVanTaskID = T_DN_HOA_TVAN;
			nTDongTaskID  = T_DN_HOA_TDONG;
			sItemTile = DN_sHoa;
		elseif i == DN_nTho then
			nVanTaskID = T_DN_THO_TVAN;
			nTDongTaskID  = T_DN_THO_TDONG;
			sItemTile = DN_sTho;
		end
		local nTVanNum = 0;
		local nTDongNum = 0;
		if nVanTaskID > 0 then
			nTVanNum = GetTask(nVanTaskID);
		end
		if nTDongTaskID >0 then
			nTDongNum = GetTask(nTDongTaskID);
		end
		if nTVanNum > 0 or  nTDongNum > 0 then  
			sItemTile = fColor(sItemTile, "green");
		end
		if nTVanNum > 0 and nTDongNum > 0 then
			strTitle = format("%s \n + %s: %s %s \t - \t %s %s", strTitle,  sItemTile, fColor(nTVanNum,  "yellow"), F_TIEN_VAN,  fColor(nTDongNum, "yellow"), F_TIEN_DONG);
		elseif nTVanNum > 0 then
			strTitle = format("%s \n + %s: %s %s", strTitle,  sItemTile, fColor(nTVanNum,  "yellow"), F_TIEN_VAN);
		elseif nTDongNum > 0 then
			strTitle = format("%s \n + %s: %s %s", strTitle, sItemTile, fColor(nTDongNum, "yellow"), F_TIEN_DONG);
		end
	end
	return strTitle;
end

function fColor(sText, sColor)
	return format("<color=%s>%s<color>", sColor, sText);
end

function showMenuLuaChonLoaiTienDat()
	if isCanCuoc() == 1 then
		local tbOpt = {
			{"Ti�n v�n", showMenuDatCuoc, {DN_nTienVan}},
			{"Ti�n ��ng", showMenuDatCuoc, {DN_nTienDong}},
			{"Tr� l�i", showMainDialog},
			{"Tho�t"}
		}
		CreateNewSayEx("<npc>Ng��i mu�n ��t theo lo�i n�o?", tbOpt);
	end
end

function showMenuDatCuoc(nType)
	if isCanCuoc() == 1 then
		local tbOpt = {
			{DN_sKim, askSLCuoc, {nType, DN_nKim}},
			{DN_sMoc, askSLCuoc, {nType, DN_nMoc}},
			{DN_sThuy, askSLCuoc, {nType, DN_nThuy}},
			{DN_sHoa, askSLCuoc, {nType, DN_nHoa}},
			{DN_sTho, askSLCuoc, {nType, DN_nTho}},
			{"Tr� l�i", showMenuLuaChonLoaiTienDat},
			{"Tho�t"}
		}
		CreateNewSayEx("<npc>L�n n�y ng��i quy�t ��nh ch�n tay �ua n�o?", tbOpt);
	end
end

function askSLCuoc(nTypeMoney, nType)
	g_AskClientNumberEx(1, 999999999, "Nh�p S� Ti�n:", { processDatCuoc, {nTypeMoney, nType}});
end

function getSexTitle()
	if GetSex() == 0 then
		return "��i hi�p"
	else
		return "N� hi�p";
	end
end

function isCanCuoc()
	local isCanCuoc = 0;
	local nNpcIndex = GetLastDiagNpc();
	local isStart = GetNpcParam(nNpcIndex, %DN_IsStart);
	local isEnd  = GetNpcParam(nNpcIndex, %DN_IsEnd);
	local isProcess  = GetNpcParam(nNpcIndex, %DN_IsProcess);
	local isRunning  = GetNpcParam(nNpcIndex, %DN_IsRunning);
	local isAnalyze  = GetNpcParam(nNpcIndex, %DN_IsAnalyze);
    
	if isStart == 0 and isEnd == 1 then
		Talk(1,"", "Ho�t ��ng <color=green>�ua ng�a<color> <color=red>�� k�t th�c<color>. Ho�t ��ng di�n ra v�o l�c <color=yellow>14:00 - 15:00<color> v� <color=yellow>18:00 - 19:00<color>");
	elseif isRunning == 1 then
		Talk(1,"", format("Ho�t ��ng <color=green>�ua ng�a<color> <color=red>�� b�t ��u<color>. %s vui l�ng <color=yellow>quay l�i v�o ��t k�<color>. B�y gi� h�y <color=green>c� v� cho c�c tay �ua n�o<color>!", getSexTitle()));
	end
     
	if isStart == 1 and isRunning == 0 and isEnd == 0 and isAnalyze == 0 then
		isCanCuoc = 1;
	end
	return isCanCuoc;
end

function processDatCuoc(nTypeMoney, nType, nNum)    
	local sSexTitle = getSexTitle();
	if nTypeMoney == DN_nTienDong then
		local nTotalTienDongCuoc = getTongTienDongCuoc();
		if nNum + nTotalTienDongCuoc > N_MAX_TIEN_DONG_CUOC then
			Talk(1,"", format("%s ch� c� th� c��c t�i �a <color=yellow>%s ti�n ��ng/1 v�ng �ua<color>. Hi�n t�i %s �� c��c <color=yellow>%s ti�n ��ng<color> c�n c� th� c��c <color=yellow>%s ti�n ��ng<color>",
			sSexTitle, N_MAX_TIEN_DONG_CUOC, sSexTitle, nTotalTienDongCuoc, N_MAX_TIEN_DONG_CUOC - nTotalTienDongCuoc));
			return
		elseif CalcEquiproomItemCount(4,417,1,1) < nNum then            
			Talk(1,"", format("%s �ang ��a v�i ta sao. %s <color=red>kh�ng ��<color> <color=green>%s<color> <color=yellow>ti�n v�n<color>", sSexTitle, sSexTitle, nNum));
			return
		elseif mod(nNum, 10) ~= 0 then
			Talk(1,"", format("��i v�i <color=yellow>Ti�n ��ng<color> Ch� c� th� ��t c��c s� ti�n l� <color=red>b�i s� c�a 10(chia h�t cho 10)<color> <color=green>v� d�: 10, 20, 30,...<color>. %s vui l�ng ��t l�i!", sSexTitle));
			return
		end
	elseif nTypeMoney == DN_nTienVan then
		local nTotalTienVanCuoc = getTongTienVanCuoc();
		if nNum + nTotalTienVanCuoc> N_MAX_TIEN_VAN_CUOC then
			Talk(1,"", format("%s ch� c� th� c��c t�i �a <color=yellow>%s v�n/1 v�ng �ua<color>. Hi�n t�i %s �� c��c <color=yellow>%s v�n<color> c�n c� th� c��c <color=yellow>%s v�n<color>", 
			sSexTitle, N_MAX_TIEN_VAN_CUOC, sSexTitle, nTotalTienVanCuoc, N_MAX_TIEN_VAN_CUOC - nTotalTienVanCuoc));
			return
		elseif GetCash() < nNum*10000 then          
			Talk(1,"", format("%s �ang ��a v�i ta sao. %s <color=red>kh�ng ��<color> <color=green>%s<color> <color=yellow>ti�n v�n<color>", sSexTitle, sSexTitle, nNum));
			return
		end
	end     
	if isCanCuoc() == 1 then
		local curTime = FormatTime2String("%Y%m%dT%H:%M:%S", GetCurServerTime());
		local curDate = FormatTime2String("%d%m%Y", GetCurServerTime());
		local sFileName = format("duanguacuoc_%s.txt", curDate); 
		local tbDuaNgua = {}
		tinsert(tbDuaNgua, {GetAccount(), GetName(), nType, nNum, nTypeMoney, curTime, GetSex()});
		Msg2SubWorld(format("%s <color=%s>%s<color> v�a l�y <color=yellow>%s<color> %s ��t v�o tay �ua <color=green>%s<color>", sSexTitle, toColor(249, 4, 237), 
              GetName(), nNum, layTenTienTe(nTypeMoney),layTenItemDatCuoc(nType)));
		DNFiles_TableSaveFile(DN_sFilePath, sFileName, "a+", tbDuaNgua); 
		updateTaskDuaNgua(nType, nNum, nTypeMoney);
		if nTypeMoney == DN_nTienDong then
			ConsumeEquiproomItem(nNum,4,417,1,-1);
		elseif nTypeMoney == DN_nTienVan then
			Pay(nNum*10000);
       	 end 
		local prePlayTime = GetTask(T_TIME_PLAY_DUA_NGUA);        
		if prePlayTime == 0 or tostring(prePlayTime) ~= STR_TIME_DUANGUA then
			SetTask(T_TIME_PLAY_DUA_NGUA, STR_TIME_DUANGUA);
		end 
	end
end

function layTenTienTe(nTypeMoney)
    if nTypeMoney == DN_nTienVan then
        return F_TIEN_VAN;
    else
        return F_TIEN_DONG;
    end
end

function mod(a, b)
    if b ~= 0 and b ~= null then
        return a - floor(a/b)*b;
    end
    return 0;
end

function layTenItemDatCuoc(nIndex)
    local sName = "";
    if nIndex == DN_nKim then
        sName = DN_sKim;
    elseif nIndex == DN_nMoc then
        sName = DN_sMoc;
    elseif nIndex == DN_nThuy then
        sName = DN_sThuy;
    elseif nIndex == DN_nHoa then
        sName = DN_sHoa;
    elseif nIndex == DN_nTho then
        sName = DN_sTho;
    end

    return sName;
end

function updateTaskDuaNgua(nType, nNum, nTypeMoney)
    local taskID = 0;
    if nType == DN_nKim then
        if nTypeMoney== DN_nTienVan then
            taskID  = T_DN_KIM_TVAN;
        elseif nTypeMoney == DN_nTienDong then
            taskID  = T_DN_KIM_TDONG;
        end
    elseif nType == DN_nMoc then
        if nTypeMoney== DN_nTienVan then
            taskID  = T_DN_MOC_TVAN;
        elseif nTypeMoney == DN_nTienDong then
            taskID  = T_DN_MOC_TDONG;
        end
    elseif nType == DN_nThuy then
        if nTypeMoney == DN_nTienVan then
            taskID  = T_DN_THUY_TVAN;
        elseif nTypeMoney == DN_nTienDong then
            taskID  = T_DN_THUY_TDONG;
        end
    elseif nType == DN_nHoa then
        if nTypeMoney == DN_nTienVan then
            taskID  = T_DN_HOA_TVAN;
        elseif nTypeMoney == DN_nTienDong then
            taskID  = T_DN_HOA_TDONG;
        end
    elseif nType == DN_nTho then
        if nTypeMoney == DN_nTienVan then
            taskID  = T_DN_THO_TVAN;
        elseif nTypeMoney == DN_nTienDong then
            taskID  = T_DN_THO_TDONG;
        end
    end
    local preNum = GetTask(taskID);
    if preNum > 0 then
        nNum = nNum + preNum
    end
    SetTask(taskID, nNum);
end
