Include("\\script\\lib\\common.lua")

TAB_ACTION = 
{-- script viet hoa By http://tranhba.com { b�n �� #missionid#grouptaskid#maxplayercount# c� hay kh�ng v� ��nh n�m th� ho�t ��ng #{ kinh nghi�m b�i s� # kinh nghi�m th�i gian }# chui xu�ng ��t ph� c�n kh�n na di ph� v�n m�n } 
{822, 38, 2330, 10, {0}, 10, {2331, 2332}, [[\settings\maps\chrismas\player.txt]]}, 
{585, 40, 2409, 10, {1, 19}, 10, {2410, 2411}, [[\settings\maps\springfestival2006\player.txt]]} 
} 

-- script viet hoa By http://tranhba.com  ki�m tra ��o c� c� ���c hay kh�ng b� s� d�ng 
function itemmapcheck(tab) 
if (tab == nil or type(tab) ~= "table") then 
Talk(1, "","C�i n�y ��o c� � n�i n�y b�n �� kh�ng th� s� d�ng . "); 
return 0; 
end; 
local ww, xx, yy = GetWorldPos(); 
for i = 1, getn(tab) do 
if (tab[i][1] == ww) then 
return i; 
end; 
end; 
Talk(1, "","C�i n�y ��o c� � n�i n�y b�n �� kh�ng th� s� d�ng . "); 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function check_pl(szPlayName, nMissionID) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(nMissionID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t t��ng ��i vu tr��c m�t nh� ch�i ��ch ch�n h�ng 
function make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  t�m ���c ��i l�p tr�n doanh , n�m th� ��> nh� ch�i , nh� ch�i ��> n�m th� 
function getgroupid(nGroupId, SMALLMAPCOUNT) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > SMALLMAPCOUNT) then 
return nGroupId - SMALLMAPCOUNT; 
else 
        return nGroupId + SMALLMAPCOUNT;
end; 
end;
