-- script viet hoa By http://tranhba.com  ghi danh b� ph�n ��ch vi�t � n�i n�y ch�n v�n b�n trong 
if (not _H_SIGNIN_) then 
_H_SIGNIN_ = 1; 

-- script viet hoa By http://tranhba.com  ghi danh h�m s� 
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


function playergetinprepare() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 
SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetFightState(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetLogoutRV(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetPunish(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetCreateTeam(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
ForbitAura(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbidEnmity(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
SetPKFlag(FESTIVAL_NO) -- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 
DisabledStall(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
ForbitTrade(FESTIVAL_NO); 
ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
playergetinprepare_add(); 
end; 

function playerleave() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_NO); 
SetMoveSpeed(FESTIVAL_LEAVERSPEED); 

RestoreOwnFeature(); -- script viet hoa By http://tranhba.com  �em t�t c� m�i ng��i bi�n th�nh th� ra l� d�ng v� 
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
DisabledUseTownP(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
playerleave_add(); 
end; 

function playergetingame() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 
SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetLogoutRV(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetPunish(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetCreateTeam(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
ForbitAura(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbidEnmity(FESTIVAL_OK) -- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
DisabledStall(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
ForbitTrade(FESTIVAL_NO); 
ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
SetFightState(FESTIVAL_OK); 
SetPKFlag(FESTIVAL_OK) 
playergetingame_add(); 
end; 

end; -- script viet hoa By http://tranhba.com  end of _H_SIGNIN_
