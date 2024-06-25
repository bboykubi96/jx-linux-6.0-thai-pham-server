-- script viet hoa By http://tranhba.com  M¹c B¾c truyÒn tèng quyÓn 
-- script viet hoa By http://tranhba.com  lµ dïng sau truyÒn tèng ®Õn M¹c B¾c th¶o nguyªn kh«ng ph¶i lµ chiÕn ®Êu khu vùc 
-- script viet hoa By http://tranhba.com  Edit: tö kh«ng ph¶i lµ c¸ 
-- script viet hoa By http://tranhba.com  Date: 2007-06-06 19:47 
Include("\\script\\maps\\checkmap.lua");

function main() 
local pMapID, pMx, pMy = GetWorldPos(); 
if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175) then 
Msg2Player("<color=yellow> M¹c B¾c truyÒn tèng s¸ch chØ cã thÓ ë thµnh phè kh«ng ph¶i lµ chiÕn ®Êu khu vùc # tay míi th«n cïng víi t©y s¬n th«n sö dông <color>"); 
return 1; 
end; 
-- script viet hoa By http://tranhba.com DinhHQ 
-- script viet hoa By http://tranhba.com 20110407: ë x«ng quan 30 kh«ng cho sö dông M¹c B¾c truyÒn tèng 
if pMapID == 957 then 
Msg2Player("<color=yellow> M¹c B¾c truyÒn tèng s¸ch chØ cã thÓ ë thµnh phè kh«ng ph¶i lµ chiÕn ®Êu khu vùc # tay míi th«n cïng víi t©y s¬n th«n sö dông <color>"); 
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
SetRevPos(175,1) -- script viet hoa By http://tranhba.com  thiÕt ®Þnh tö vong sèng l¹i ®iÓm v× t©y s¬n th«n 
SetProtectTime(18*5)  --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
return 0; 
end;
