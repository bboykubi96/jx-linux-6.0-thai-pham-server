IncludeLib("SETTING"); --����SETTING�ű�ָ���
Include("\\script\\global\\g7vn\\g7configall.lua")

TLL_TASK = 3792
TLL_LIMIT= 1


function main()
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(TLL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(TLL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
if (nUseTimes >= TLL_LIMIT) then
		Say(format("M�t ng�y ch� c� th� s� d�ng 8 ti�n th� l� th��ng v� 1 ti�n th� l� qu� t�ng t� g�i t�ch l�y", TLL_LIMIT), 0)
	return 1;
	end
	if GetLevel() < 10 then
		Say("C�p �� nh� h�n 10, kh�ng th� s� d�ng Ti�n Th�o L�")
		return 1
	end


	if DangDuaTop == 1 then
		Say("�ang trong qu� tr�nh �ua top, kh�ng th� s� d�ng Ti�n Th�o L�")
		return 1
	end
	if GetSkillState(440) == 1 then 
		Say("C�c h� v�n th�i gian t� hi�u �ng Ti�n th�o l�, kh�ng th� d�ng nhi�u b�nh c�ng l�c xin h�y ch� ��i cho ��n h�t t�c d�ng.!", 0, "Ta bi�t r�i!/OnCancel")
		return 1
	else
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 8,  nUseTimes);
		SetBitTask(TLL_TASK, 8, 24, nLastUseDate);
		AddSkillState(440, 1, 1, 64800, 1);
		return 0
	end
end

function OnCancel() return end