Include("\\script\\missions\\tongwar\\match\\head.lua")


function main() 
-- script viet hoa By http://tranhba.com  nÕu nh­ xö vu ghi danh giai ®o¹n lóc , nhµ ch¬i kh«ng thÓ ®i ®Õn ®èi ph­¬ng l·nh ®Þa trung ®i , së dÜ ph¶i ®em nhµ ch¬i nÐm tíi ®¹i doanh bªn trong 
if(GetCurCamp() == 2) then 
SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2)) 
SetFightState(0) 
tongwar_setdata( TONGWAR_RLTASK_LASTDTIME, GetGameTime() ) 
elseif (GetCurCamp() == 1) then 
Msg2Player("PhÝa tr­íc s¬n loan träng ®iÖp , nhÊt ®Þnh cã phôc binh , ng­¬i kh«ng thÓ tù ®i x«ng vµo !") 
SetFightState(1) 
end; 
end; 
