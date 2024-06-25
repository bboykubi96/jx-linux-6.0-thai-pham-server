Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\libfestival\signin.lua]]); 

SZFILE = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\player.txt]]; 

function signin_add() 
-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
-- if (GetTask(TK_CO_PLAYTIMES) >= CO_MAXPLAYTIMES) then 
-- Say(CO_SIGNNPCNAME.." h«m nay ng­¬i ®· tham gia <color=yellow>"..CO_MAXPLAYTIMES.." lÇn <color> liÔu , cã lÏ ng­¬i còng mÖt mái , nªn ®i nghØ ng¬i !", 0); 
-- return 0; 
-- end; 

if (GetTask(TK_CO_TOTAL) >= 50) then 
Say(CO_SIGNNPCNAME.." ng­¬i ®· tham gia ngµy lÔ ho¹t ®éng <color=yellow>50 lÇn <color> liÔu , tho¹t nh×n còng mÖt mái , cÇn nghØ ng¬i !", 0); 
return 0; 
end; 

if (GetLevel() < CO_LEVELLIMIT) then 
Say(CO_SIGNNPCNAME.." cÊp bËc cña ng­¬i qu¸ thÊp , ta kh«ng muèn ng­¬i m¹o hiÓm , lóc nµo ®¹t tíi <color=yellow>"..CO_LEVELLIMIT.."<color> tíi t×m ta .", 0); 
return 0; 
end; 

if (IsCharged() == 0) then 
Say(CO_SIGNNPCNAME.." chØ cã sung trÞ gi¸ nhµ ch¬i míi cã thÓ tham gia ngµy lÔ ho¹t ®éng .", 0); 
return 0; 
end; 

if (gb_GetTask(FESTIVAL_SHREWMOUSE, 1) ~= 1) then 
do return 0 end
local nNowTime = tonumber(GetLocalDate("%H")); 
local bOn = 0; 
if ((nNowTime >= 12 and nNowTime < 14) or 
(nNowTime >= 19 and nNowTime < 23) or 
(nNowTime >= 1 and nNowTime < 3)) then 
bOn = 1; 
end; 
if (bOn == 0) then 
Talk(1, "", CO_SIGNNPCNAME.."30 tuæi ng­êi ho¹t ®éng ®em víi mçi ngµy cö hµnh , thêi gian lµ <color=yellow>12: ®Õn 14: 00 , 19: 00 ®Õn 23: 00 , 1: 00 ®Õn 3: 00 <color>. mäi ng­êi mau tíi tham gia ®i ."); 
return 0; 
else 
Talk(1, "", CO_SIGNNPCNAME.." ng­¬i còng muèn tham gia ' xua ®uæi 30 tuæi ng­êi ' ho¹t ®éng sao ? tiÕc nuèi lµ , ng­êi dÉn ®­êng ®· ®i råi , h¾n ®em víi thø 0 ph©n , thø 15 ph©n , thø 30 ph©n , thø 45 ph©n sau trë l¹i "); 
return 0; 
end; 
end; 
-- if GetCash() <= 1000000 then
-- Say("Ng­¬i cã mang theo  ®ñ 100 v¹n tiÒn hèi lé n÷ quan huyÖn <color=green>ZhuYingTai<color> kh«ng thÕ?",0)
-- return 0
-- end
-- Pay(1000000)
return 1; 
end; 

-- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i phô thªm thiÕt trÝ 
function playerleave_add() 
SetCurCamp(GetCamp()); 
tab_Itemlist = {981, 984, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994}; 

for i = 1, getn(tab_Itemlist) do 
ConsumeItem( -1, 1000, 6, 1, tab_Itemlist[i], 1 ); 
end; 
end; 

-- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng ®Ých phô thªm thiÕt trÝ 
function playergetinprepare_add() 
end; 

-- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i trµng ®Ých phô thªm thiÕt trÝ 
function playergetingame_add() 
	SetTask(TK_CO_PLAYTIMES, GetTask(TK_CO_PLAYTIMES) + 1);
	SetTask(TK_CO_TOTAL, GetTask(TK_CO_TOTAL) + 1);
SetCurCamp(1); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi trËn doanh 
end;
