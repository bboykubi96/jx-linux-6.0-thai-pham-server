Include("\\script\\missions\\newcitydefence\\headinfo.lua")

-- script viet hoa By http://tranhba.com  ��ng h�ng t��ng th��ng bi�u 
TSKID_PLAYER_GETAWARD = 1880 -- script viet hoa By http://tranhba.com  nh�n l�y d�u hi�u 
tb_cdPaiMingAward = 
{ 
[1] = {nGuangHuan=187,szGuanghuan=" ��nh n��c Nguy�n so�i ",tbManMask={0,11,418},tbMaleMask={0,11,417}}, 
[2] = {nGuangHuan=186,szGuanghuan=" an bang ��i t��ng qu�n ",}, 
[3] = {nGuangHuan=185,szGuanghuan=" phi�u M� ��i t��ng qu�n ",}, 
[4] = {nGuangHuan=184,szGuanghuan=" trong ch�n v� l�m lang �em ",}, 
[5] = {nGuangHuan=183,szGuanghuan=" chi�u v� gi�o �y ",}, 
} 
function cd_getFengHuoLianCheng() 
if tonumber(GetLocalDate("%w")) == FIRE_OPENDAY_SUNDAY then 
Say("Ch� nh�t kh�ng th� d�n t��ng .",0) 
return 
end 
local szMsg = "<dec><npc> v�n chu gi� l�a li�n th�nh b�ng x�p h�ng : \n" 
for i = 1, 5 do 
name , value = Ladder_GetLadderInfo(LADDER_ID_FANIEL, i) 
if name == 0 or name =="" or name == nil then 
break 
end 
szMsg = format("%s - <color=red>%s<color>: <color=red>%s<color>\t\t\t chi�n c�ng tr� gi� : <color=red>%s<color>\n",szMsg,i,name,value) 
end 
local tbAryTalk ={} 
tbAryTalk[1] = szMsg 
tinsert(tbAryTalk,"Nh�n l�y m�i tu�n ��ng h�ng t��ng th��ng /cd_doGetPaiMingAward") 
tinsert(tbAryTalk,"Th�i lui ra /NoChoice") 
CreateTaskSay(tbAryTalk) 
end 

function cd_doGetPaiMingAward() 
if tonumber(GetLocalDate("%w")) == FIRE_OPENDAY_SUNDAY then 
Say("Ch� nh�t kh�ng th� d�n t��ng .",0) 
return 
end 
local nladder = 0; 
for i = 1, 5 do 
name , value = Ladder_GetLadderInfo(LADDER_ID_FANIEL, i) 
if name == GetName() then 
nladder = i 
break 
end 
end 
if nladder == 0 then 
Say(" � ��ng h�ng b�ng th��ng kh�ng c� t�n , cu�i tu�n ti�p t�c c� g�ng nga .",0) 
return 
end 
if GetTask(TSKID_PLAYER_GETAWARD) == tonumber(GetLocalDate("%W")) then 
Say("�� d�n t��ng li�u , c�n t�i t�m ta c� chuy�n g� ? ",0) 
return 
end 
SetTask(TSKID_PLAYER_GETAWARD,tonumber(GetLocalDate("%W"))) 
local nweek = tonumber(GetLocalDate("%w")); 
local nhour = tonumber(GetLocalDate("%H")); 
local nmint = tonumber(GetLocalDate("%M")); 
	local ntime = (7-nweek) * 24 * 60 * 60 + (24 - nhour) * 60 *60 + (-nmint) * 60;
	local nDate = mod(FormatTime2Number(GetCurServerTime() + ntime), 100000000);
-- script viet hoa By http://tranhba.com  Title_AddTitle(tb_cdPaiMingAward[nladder].nGuangHuan, 2, nDate); 
-- script viet hoa By http://tranhba.com  Title_ActiveTitle(tb_cdPaiMingAward[nladder].nGuangHuan); 
SetTask(1122,tb_cdPaiMingAward[nladder].nGuangHuan) 
if nladder == 1 then 
local nG = 0 
local nD = 0 
local nP = 0 
if GetSex() == 0 then 
nG = tb_cdPaiMingAward[nladder].tbManMask[1] 
nD = tb_cdPaiMingAward[nladder].tbManMask[2] 
nP = tb_cdPaiMingAward[nladder].tbManMask[3] 
else 
nG = tb_cdPaiMingAward[nladder].tbMaleMask[1] 
nD = tb_cdPaiMingAward[nladder].tbMaleMask[2] 
nP = tb_cdPaiMingAward[nladder].tbMaleMask[3] 
end 
local nIdx = AddItem(nG,nD,nP,1,0,0) 
SetItemBindState(nIdx, -2) 
Msg2Player(format("Ch�c m�ng ng��i ��t ���c 1 <color=yellow>%s<color>",GetItemName(nIdx))) 
WriteLog(format("[ gi� l�a li�n th�nh ��ng h�ng th� t��ng th��ng ]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nIdx))); 
end 
Msg2Player(format("Ch�c m�ng ng��i ��t ���c danh hi�u <color=yellow>%s<color>",tb_cdPaiMingAward[nladder].szGuanghuan)) 
WriteLog(format("[ gi� l�a li�n th�nh ��ng h�ng th� t��ng th��ng ]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),tb_cdPaiMingAward[nladder].szGuanghuan)); 
end
