Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\basic.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_variables.lua")
Include("\\script\\update_feature\\duanguaxephang\\dn_lib_files.lua")



function showKetQuaTruocDo()    

    local tbKetQuaBauCua = DNFiles_TableFromFile(DN_sFilePath, DN_sFileName_KetQuaLanTruoc, DN_tbPackQuaDuaNguaLanTruoc);
    local nSize = 0;
        

    if tbKetQuaBauCua ~= nil then
        nSize  = getn(tbKetQuaBauCua);
    end

    if nSize > 0 then
        local sDateTime = tbKetQuaBauCua[1][DN_sDateTime]; 
        local sKetQua = tbKetQuaBauCua[1][DN_nKetQua];
        
        local strTitle = format("<npc><color=green>K�t qu� c�a v�ng �ua l�n tr��c<color>(<color=red>%s<color>) l�: <color=green>%s<color>",
                        FormatTime2String("%H:%M - %d/%m/%Y", sDateTime), sKetQua);
    
        local tbOpt =
        {       
            {"Quay l�i", main},
            {"Tho�t"}
        }
        CreateNewSayEx(strTitle, tbOpt);
    else
        Talk(1, "", format("K�t qu� l�n tr��c <color=red>v�n ch�a c�<color>, %s vui l�ng ch� <color=green>ho�t ��ng c�ng b� k�t qu�<color>!", getSexTitle()));      
    end 
end

function getSexTitle()
   local sexID = GetSex()
   if sexID == 0 then
       return "��i hi�p";
   else
       return "N� hi�p";
   end
end