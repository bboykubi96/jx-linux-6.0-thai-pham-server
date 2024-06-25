-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu phong l¨ng ®é to long m«n trÊn 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
SetFightState(1); 
NewWorld( 121, 2209, 4179); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú rêi ®i phong l¨ng ®é sau sö dông trë vÒ thµnh phï 
			SetProtectTime(18*3) --ÈuAë±£»¤Ê±¼ä
			AddSkillState(963, 1, 0, 18*3)
			ForbidChangePK(0);	-- dc doi pk
end
