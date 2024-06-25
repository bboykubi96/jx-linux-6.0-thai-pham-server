-- script viet hoa By http://tranhba.com  ghi danh bé phËn ®Ých viÕt ë n¬i nµy ch©n vèn bªn trong 
if (not _H_SIGNIN_) then 
_H_SIGNIN_ = 1; 

-- script viet hoa By http://tranhba.com  ghi danh hµm sè 
function signin() 
local nNowTime = tonumber(date("%Y%m%d")); 
if (GetTask(TK_CO_DAYKEY) ~= nNowTime) then 
SetTask(TK_CO_DAYKEY, nNowTime); 
SetTask(TK_CO_PLAYTIMES, 0); 
end; 

if (signin_add() == 0) then 
return 0; 
end; 

local ww, xx, yy = GetWorldPos(); 
SetTask(TK_CO_LEAVERMAPID, ww); 
SetTask(TK_CO_LEAVERPOSX, xx); 
SetTask(TK_CO_LEAVERPOSY, yy); 
local nPosX, nPosY; 
nPosX, nPosY = getadatatow(SZFILE, 2, 15); 
NewWorld(CO_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 


function playergetinprepare() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 
SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetFightState(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetLogoutRV(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetPunish(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetCreateTeam(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
ForbitAura(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbidEnmity(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
SetPKFlag(FESTIVAL_NO) -- script viet hoa By http://tranhba.com  më ra PK chèt më 
DisabledStall(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
ForbitTrade(FESTIVAL_NO); 
ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
playergetinprepare_add(); 
end; 

function playerleave() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(FESTIVAL_NO); 
SetMoveSpeed(FESTIVAL_LEAVERSPEED); 

RestoreOwnFeature(); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ mäi ng­êi biÕn thµnh th× ra lµ d¸ng vÎ 
ForbitAura(FESTIVAL_NO) 
SetTaskTemp(200,0); 
SetFightState(FESTIVAL_NO); 
SetPunish(FESTIVAL_OK); 
SetCreateTeam(FESTIVAL_NO); 
ForbidEnmity( FESTIVAL_NO ) 
SetPKFlag(FESTIVAL_NO) 
DisabledStall(FESTIVAL_NO); 
ForbitTrade(FESTIVAL_NO); 
local nCamp = GetCamp(); 
SetCurCamp(nCamp); 
ForbidChangePK(FESTIVAL_NO); 
DisabledUseTownP(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
playerleave_add(); 
end; 

function playergetingame() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 
SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetLogoutRV(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetPunish(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetCreateTeam(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
ForbitAura(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbidEnmity(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
DisabledStall(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
ForbitTrade(FESTIVAL_NO); 
ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
SetFightState(FESTIVAL_OK); 
SetPKFlag(FESTIVAL_OK) 
playergetingame_add(); 
end; 

end; -- script viet hoa By http://tranhba.com  end of _H_SIGNIN_
