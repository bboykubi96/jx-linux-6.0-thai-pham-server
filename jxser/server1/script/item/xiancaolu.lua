IncludeLib("SETTING"); 

Include("\\script\\activitysys\\playerfunlib.lua")
TLL_TASK = 3920
TLL_LIMIT= 8

function main()
--dofile("script/item/xiancaolu.lua")
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(TLL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(TLL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	if (nUseTimes >= TLL_LIMIT) then
		Say(format("M�t ng�y ch� c� th� s� d�ng 8 tll", TLL_LIMIT), 0)
		return 1;
	end
if GetSkillState(440)>=1 then
Say("Th�t tham lam, Ngu D�t tr�n ng��i �� c� Ti�n Th�o L� r�i, Kh�ng th� s� d�ng th�m.")
		return 1
end

	if DangDuaTop == 1 then
	--	Say("�ang trong qu� tr�nh �ua top, kh�ng th� s� d�ng Ti�n Th�o L�")
	--	return 1
	end
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 8,  nUseTimes);
		SetBitTask(TLL_TASK, 8, 24, nLastUseDate);
	--AddSkillState(440, 1, 1, 64800);
	PlayerFunLib:AddSkillState(440,2,3,64800,1)
end