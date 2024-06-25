-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu phong l¨ng ®é to M¹c B¾c th¶o nguyªn 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
--SetFightState(1); 
--NewWorld( 341, 1236, 3179); 
NewWorld( 341, 1281, 2499); 
SetFightState(0); 

DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h¹n chÕ kú tiÕn vµo M¹c B¾c th¶o nguyªn sö dông trë vÒ thµnh phï 
SetRevPos(175,1) -- script viet hoa By http://tranhba.com  thiÕt ®Þnh tö vong sèng l¹i ®iÓm v× t©y s¬n th«n 
			SetProtectTime(18*3) --ÈuAë±£»¤Ê±¼ä
			AddSkillState(963, 1, 0, 18*3)
			ForbidChangePK(0);	-- dc doi pk
end
