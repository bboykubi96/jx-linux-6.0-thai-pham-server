-- script viet hoa By http://tranhba.com  M�c B�c truy�n t�ng quy�n 
-- script viet hoa By http://tranhba.com  l� d�ng sau truy�n t�ng ��n M�c B�c th�o nguy�n kh�ng ph�i l� chi�n ��u khu v�c 
-- script viet hoa By http://tranhba.com  Edit: t� kh�ng ph�i l� c� 
-- script viet hoa By http://tranhba.com  Date: 2007-06-06 19:47 
Include("\\script\\maps\\checkmap.lua");

function main() 
local pMapID, pMx, pMy = GetWorldPos(); 
if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175) then 
Msg2Player("<color=yellow> M�c B�c truy�n t�ng s�ch ch� c� th� � th�nh ph� kh�ng ph�i l� chi�n ��u khu v�c # tay m�i th�n c�ng v�i t�y s�n th�n s� d�ng <color>"); 
return 1; 
end; 
-- script viet hoa By http://tranhba.com DinhHQ 
-- script viet hoa By http://tranhba.com 20110407: � x�ng quan 30 kh�ng cho s� d�ng M�c B�c truy�n t�ng 
if pMapID == 957 then 
Msg2Player("<color=yellow> M�c B�c truy�n t�ng s�ch ch� c� th� � th�nh ph� kh�ng ph�i l� chi�n ��u khu v�c # tay m�i th�n c�ng v�i t�y s�n th�n s� d�ng <color>"); 
return 1; 
end 
local tbPos = { 
{1265,2493}, 
{1281,2502}, 
{1291,2546}, 
{1289,2482}, 
}; 
local nrand = random(getn(tbPos)); 
NewWorld(341, tbPos[nrand][1], tbPos[nrand][2]); 
SetRevPos(175,1) -- script viet hoa By http://tranhba.com  thi�t ��nh t� vong s�ng l�i �i�m v� t�y s�n th�n 
SetProtectTime(18*5)  --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
return 0; 
end;
