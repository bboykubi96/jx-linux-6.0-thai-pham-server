TASK_TIME_MAP = 3203
TASK_USED_DAY = 3204
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
			if PlayerFunLib:GetTaskDailyCount(TASK_USED_DAY) > 11 then
			Say("Ch� ���c s� d�ng t�i �a 12 v�t ph�m n�y m�i ng�y.",0);
			Msg2Player("Ch� ���c s� d�ng t�i �a 12 v�t ph�m n�y m�i ng�y.");
			return 1
		end
	local nCurTime = GetTask(TASK_TIME_MAP)
	PlayerFunLib:AddTaskDaily(TASK_USED_DAY, 1)
	SetTask(TASK_TIME_MAP,nCurTime+60)
	Msg2Player("B�n s� d�ng v�t ph�m gia t�ng th�m 60 ph�t � b�n �� luy�n c�ng ��c bi�t")
	Msg2Player(format("Th�i gian c�n l�i tr�n b�n �� luy�n c�ng ��c bi�t c�a b�n l� <color=yellow>%d<color> ph�t.",nCurTime+60))
	
-- local szMsg = (format("Th�i gian c�n l�i tr�n map train c�a b�n l� <color=yellow>%d<color> ph�t. B�n mu�n s� d�ng v�t ph�m n�y �� gia t�ng th�m 1 gi�??"))
-- local tbSay = {
-- "Ta mu�n s� d�ng/Confirm",
-- "Kh�ng d�ng/no",
-- }
-- Say(szMsg,getn(tbSay),tbSay)
end
