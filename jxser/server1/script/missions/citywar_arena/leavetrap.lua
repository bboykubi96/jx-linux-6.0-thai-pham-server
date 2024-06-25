Include("\\script\\missions\\citywar_arena\\head.lua");
function main() 
SetCurCamp(GetCamp()); 
SetFightState(0); 
SetRevPos(99,43); 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
SetTaskTemp(200, 0); 
NewWorld(GetLeavePos()); 
DisabledStall(1)	--½ûÖ¹°ÚÌ¯
ForbitTrade(1);		--½ûÖ¹½»Ò×
end;
