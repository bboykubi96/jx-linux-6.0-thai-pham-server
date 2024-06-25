--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/sinhnhatlan3/nenvang.lua")
	do Say("§¹o cô ®· hÕt h¹n sö dông...") return 0 end

	TSK_UseExpLimit1 = 3910

	
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	if ( nExpLimit >= 2000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	if (GetLevel() < 120) then
		Say("ThËt ®¸ng tiÕc, chØ cã ng­êi ch¬i <color=yellow>cÊp trªn 110<color> míi cã thÓ sö dông .",0)
		return 1;
	end
	AddOwnExp(30000000);
	SetTask(TSK_UseExpLimit1,nExpLimit+1);
       
	return 0;
end

