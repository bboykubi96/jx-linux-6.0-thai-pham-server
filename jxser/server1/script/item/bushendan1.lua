
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

TSK_DBTD_Date = 3921
TSK_DBTD_Use	= 3922

function phanthuong()
local s = random(1,3)
if s==1 then
AddOwnExp(1000000)
end;
if s==2 then
AddOwnExp(2000000)
end;
if s==3 then
AddOwnExp(3000000)
end;
end

function main()
	
	ndate = tonumber(GetLocalDate("%y%m%d"));
	if (ndate ~= GetTask(TSK_DBTD_Date)) then
		SetTask(TSK_DBTD_Date, ndate);
		SetTask(TSK_DBTD_Use, 0);
	end
		
	if(GetTask(TSK_DBTD_Use) >= 3) then
		Say("Mçi ngµy mçi ng­êi chØ ®­îc sö dung 3 cai", 0);
		return 1
	end
	

	SetTask(3922, GetTask(3922) + 1);
	--SetTask(TSK_DBTD_Use, GetTask(TSK_DBTD_Use) + 1);
	phanthuong()
	Say("Thu ®­îc thªm EXP!", 0);
end