Include("\\script\\update_feature\\duanguaxephang\\dn_variables.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\basic.lua") 
Include("\\script\\update_feature\\duanguaxephang\\dn_lib_files.lua")

function processNhanThuong()    
    local nNpcIndex = GetLastDiagNpc();
    local isAnalyze  = GetNpcParam(nNpcIndex, %DN_IsAnalyze);

    local sSexTitle = getSexTitle();
    if isAnalyze  ~= 1 then
        local sFileName = format("%s_duanguachuanhan.txt", GetAccount());
        local tbDuaNguaChuaNhan = DNFiles_TableFromFile(DN_sFilePathDuaNguaChuaNhan, sFileName, DN_tbPackDuaNguaChuaNhan);
        local nTienVan = 0;
        local nTienDong = 0;        
        local sDsTrung = "";
        local sDsKetQua = "";
        if tbDuaNguaChuaNhan ~= nil then
            local nDuaNguaChuaNhan = getn(tbDuaNguaChuaNhan);       
            for i=1, nDuaNguaChuaNhan do        
                if tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIPlayerName] == GetName() and tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIIsReceived] == 0 then      
                    nTienVan  = nTienVan + tonumber(tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nITienVan]);
                    nTienDong = nTienDong  + tonumber(tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nITienDong]);
                end
                if i == nDuaNguaChuaNhan  then
                    sDsKetQua = tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIKetQua];
                    sDsTrung = tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIDSTrung]; 
                end
            end
        end
    
        if nTienVan > 0 or nTienDong > 0 then           
            showMenuNhanThuongOffline(sSexTitle, sDsKetQua, sDsTrung, nTienVan, nTienDong, tbDuaNguaChuaNhan);
        else
            Talk(1, "", format("%s hi�n t�i <color=red>kh�ng c�<color> <color=green>ph�n th��ng tr�ng th��ng Offline<color> n�o �� nh�n. Vui l�ng tham gia ho�t ��ng �� c� th� nh�n th��ng!!!", sSexTitle));
        end
    else
        Talk(1, "", format("H� th�ng �ang ti�n h�nh t�ng h�p d� li�u v� trao th��ng. %s vui l�ng quay l�i sau v�i gi�y!!!", getSexTitle()));
    end

end

function isCanNhan()
    local nNpcIndex = GetLastDiagNpc();
    local isAnalyze  = GetNpcParam(nNpcIndex, %DN_IsAnalyze);
    local isCanNhan = 0;
    if isAnalyze ~=1 then
        isCanNhan = 1;
    else
        Talk(1, "", format("H� th�ng �ang ti�n h�nh t�ng h�p d� li�u v� trao th��ng. %s vui l�ng quay l�i sau v�i gi�y!!!", getSexTitle()));
    end
    return isCanNhan;
end

function getSexTitle()
   local sexID = GetSex()
   if sexID == 0 then
       return "��i hi�p";
   else
       return "N� hi�p";
   end
end

function div(a, b)
    if b ~= 0 and b ~= null then
        result = a/b;
        if a >= 0 then 
            return floor(result); 
        else 
            return ceil(result); 
        end
    end
    return 0;   
end

function showMenuNhanThuongOffline(sSexTitle, sKetQua, sDsTrung, nTienVan, nTienDong, tbDuaNguaChuaNhan) 
    if isCanNhan() == 1 then
        local strTitle = "";
        local strTitleCommon = format("Hi�n t�i c�c <color=fire>ph�n th��ng<color> %s c�n c� th� nh�n v� l� do <color=red>kh�ng<color> <color=green>Online<color> khi ho�t ��ng c�ng b� k�t qu� l�:", sSexTitle);
        if sDsTrung ~= "" and sKetQua ~= "" then
            strTitle = format("<npc>K�t qu� l�n tr��c l� <color=green>%s<color>.\n<color=cyan>%s �� c��c tr�ng<color>: \n%s", sKetQua, sSexTitle, sDsTrung);
            strTitle = format("%s.\n%s", strTitle, strTitleCommon);
        else
            strTile = format("<npc>%s", strTitleCommon);
        end 

        if nTienVan > 0 then
            strTitle = format("%s \n + <color=yellow>Ti�n v�n<color>: %s", strTitle, nTienVan);
        end

        if nTienDong > 0 then
            strTitle = format("%s \n + <color=fire>Ti�n ��ng<color>: %s", strTitle, nTienDong);
        end

        local tbOpt =
        {
            {"Nh�n th��ng", processFinalNhanThuong, {nTienVan, nTienDong, tbDuaNguaChuaNhan}},
            {"Quay l�i", main},
            {"Tho�t"}
        }
        CreateNewSayEx(strTitle, tbOpt);
    end
end

function processFinalNhanThuong(nTienVan, nTienDong, tbDuaNguaChuaNhan)
    local nFree = CalcFreeItemCellCount();
    local curTime = FormatTime2String("%Y%m%dT%H:%M:%S", GetCurServerTime());
    local tbFinalData = {}   
    tinsert(tbFinalData, DN_tbDuaNguaChuaNhanHeader);   
    
    for i=1, getn(tbDuaNguaChuaNhan) do
        if tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIPlayerName] == GetName() and tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIIsReceived] == 0 then
            tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIIsReceived] = 1;
            tbDuaNguaChuaNhan[i][DN_Cuoc_CN_nIReceivedDate] = curTime;
        end
        tinsert(tbFinalData, tbDuaNguaChuaNhan[i]);
    end         
    local sSexTitle = getSexTitle();
    if isCanNhan() == 1 then
        local strMsg = format("<color=green>Ch�c m�ng<color> %s <color=green>%s<color> nh�n l�i ph�n th��ng <color=green>Th� V�n Mai<color> do Offline <color=green>th�nh c�ng<color>. Ph�n th��ng bao g�m:", 
                                    sSexTitle, GetName());
        if nTienDong > 0 then
            local nSLTD = div(nTienDong, 999);
            if (nSLTD + 3) > nFree then
                Talk(1, "", "H�nh trang <color=red>kh�ng �� kho�ng tr�ng<color> kh�ng th� nh�n th��ng. B�n vui l�ng <color=green>d�n d�p<color> �� nh�n <color=fire>nh�n l�i ph�n th��ng<color>");
                return
            else
                if nTienDong > 999 then
                    tbAwardTemplet:GiveAwardByList({tbProp = {4,417,1,1,1,0,0,0}, nExpiredTime=nil, nBindState=1}, "Ti�n ��ng", nTienDong);
                else
                    AddStackItem(nTienDong, 4,417,1,1,0,0,0);
                    Msg2Player(format("B�n nh�n ���c %s Ti�n ��ng", nTienDong));
                end

            end     
        end

        if nTienVan > 0 then
            Earn(nTienVan *10000);  
        end
        
        
        if nTienVan > 0 then
            strMsg  = format("%s \n + <color=yellow>%s v�n<color>", strMsg, nTienVan);
        end
        
        if nTienDong > 0 then
            strMsg  = format("%s \n + <color=fire>%s ti�n ��ng<color>", strMsg, nTienDong);
        end
        
        Msg2Player(strMsg); 
        Msg2SubWorld(strMsg);   
        local sFileName = format("%s_duanguachuanhan.txt", GetAccount());
        DNFiles_TableSaveFile(DN_sFilePathDuaNguaChuaNhan, sFileName, "w+", tbFinalData);    
    end
end
