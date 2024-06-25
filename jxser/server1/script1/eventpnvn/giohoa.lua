--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/eventpnvn/giohoa.lua")
	

	TSK_UseExpLimit1= 3911	
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	if ( nExpLimit >= 100) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	
	AddOwnExp(100000);

	itemrandome()
	SetTask(TSK_UseExpLimit1,nExpLimit+1);
	return 0

end
	
	
function itemrandome()
 	
	c = random(1,100)
	if  c  == 99 or c == 98 or c == 97 then
		AddItem(6,1,71,1,0,0)
			
			
	elseif c== 96  then
		AddItem(6,1,random(122,124),1,0,0)
	
	
	else
		

		

	end

end









