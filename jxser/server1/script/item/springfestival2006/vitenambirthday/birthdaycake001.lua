--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/item/vitenambirthday/birthdaycake001.lua")
	--do Say("��o c� �� h�t h�n s� d�ng...") return 0 end

	TSK_UseExpLimit1 = 3915

	
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	if ( nExpLimit >= 500) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	if (GetLevel() < 60) then
		Say("Th�t ��ng ti�c, ch� c� ng��i ch�i <color=yellow>c�p tr�n 110<color> m�i c� th� s� d�ng .",0)
		return 1;
	end
	AddOwnExp(200000);
	

	SetTask(TSK_UseExpLimit1,nExpLimit+1);
       
	return 0;
end