Include("\\script\\missions\\newcitydefence\\headinfo.lua")

-- script viet hoa By http://tranhba.com  ®øng hµng t­ëng th­ëng biÓu 
TSKID_PLAYER_GETAWARD = 1880 -- script viet hoa By http://tranhba.com  nhËn lÊy dÊu hiÖu 
tb_cdPaiMingAward = 
{ 
[1] = {nGuangHuan=187,szGuanghuan=" ®Þnh n­íc Nguyªn so¸i ",tbManMask={0,11,418},tbMaleMask={0,11,417}}, 
[2] = {nGuangHuan=186,szGuanghuan=" an bang §¹i t­íng qu©n ",}, 
[3] = {nGuangHuan=185,szGuanghuan=" phiªu M· ®¹i t­íng qu©n ",}, 
[4] = {nGuangHuan=184,szGuanghuan=" trong chèn vâ l©m lang ®em ",}, 
[5] = {nGuangHuan=183,szGuanghuan=" chiªu vò gi¸o óy ",}, 
} 
function cd_getFengHuoLianCheng() 
if tonumber(GetLocalDate("%w")) == FIRE_OPENDAY_SUNDAY then 
Say("Chñ nhËt kh«ng thÓ dÉn t­ëng .",0) 
return 
end 
local szMsg = "<dec><npc> vèn chu giã löa liªn thµnh b¶ng xÕp h¹ng : \n" 
for i = 1, 5 do 
name , value = Ladder_GetLadderInfo(LADDER_ID_FANIEL, i) 
if name == 0 or name =="" or name == nil then 
break 
end 
szMsg = format("%s - <color=red>%s<color>: <color=red>%s<color>\t\t\t chiÕn c«ng trÞ gi¸ : <color=red>%s<color>\n",szMsg,i,name,value) 
end 
local tbAryTalk ={} 
tbAryTalk[1] = szMsg 
tinsert(tbAryTalk,"NhËn lÊy mçi tuÇn ®øng hµng t­ëng th­ëng /cd_doGetPaiMingAward") 
tinsert(tbAryTalk,"Thèi lui ra /NoChoice") 
CreateTaskSay(tbAryTalk) 
end 

function cd_doGetPaiMingAward() 
if tonumber(GetLocalDate("%w")) == FIRE_OPENDAY_SUNDAY then 
Say("Chñ nhËt kh«ng thÓ dÉn t­ëng .",0) 
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
Say(" ë ®øng hµng b¶ng th­îng kh«ng cã tªn , cuèi tuÇn tiÕp tôc cè g¾ng nga .",0) 
return 
end 
if GetTask(TSKID_PLAYER_GETAWARD) == tonumber(GetLocalDate("%W")) then 
Say("§· dÉn t­ëng liÔu , cßn tíi t×m ta cã chuyÖn g× ? ",0) 
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
Msg2Player(format("Chóc mõng ng­¬i ®¹t ®­îc 1 <color=yellow>%s<color>",GetItemName(nIdx))) 
WriteLog(format("[ giã löa liªn thµnh ®øng hµng thø t­ëng th­ëng ]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nIdx))); 
end 
Msg2Player(format("Chóc mõng ng­¬i ®¹t ®­îc danh hiÖu <color=yellow>%s<color>",tb_cdPaiMingAward[nladder].szGuanghuan)) 
WriteLog(format("[ giã löa liªn thµnh ®øng hµng thø t­ëng th­ëng ]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),tb_cdPaiMingAward[nladder].szGuanghuan)); 
end
