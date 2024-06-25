Include("\\script\\missions\\tongwar\\match\\head.lua")

function main() 
-- script viet hoa By http://tranhba.com  nÕu nh­ xö vu ghi danh giai ®o¹n lóc , nhµ ch¬i kh«ng thÓ ®i ®Õn ®èi ph­¬ng l·nh ®Þa trung ®i , së dÜ ph¶i ®em nhµ ch¬i nÐm tíi ®¹i doanh bªn trong 
if(GetCurCamp() == 1) then 
if (tongwar_check_outmatch()) then 
return 
end 
if( GetFightState() == 1) then 
SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1)) 
tongwar_setdata(TONGWAR_RLTASK_LASTDTIME, GetGameTime()) 
SetFightState(0) 
else 
file = GetMissionS(1) 
x,y = bt_getadata(file) 
SetPos(floor(x/32), floor(y/32)) 
bt_RankEffect(tongwar_getdata(TONGWAR_RLTASK_CURRANK)) 
SetFightState(1) 
SetPKFlag(1) 
end; 
elseif (GetCurCamp() == 2) then 
file = GetMissionS(1) 
x,y = bt_getadata(file) 
SetPos(floor(x/32), floor(y/32)) 
Msg2Player("PhÝa tr­íc s¬n loan träng ®iÖp , nhÊt ®Þnh cã phôc binh , ng­¬i kh«ng thÓ tù ®i x«ng vµo !") 
SetFightState(1) 
end; 
end; 
