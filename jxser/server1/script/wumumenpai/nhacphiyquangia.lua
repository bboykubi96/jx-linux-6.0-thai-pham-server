IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------------------------------
local _GetFruit = function(nItemIndex)
DelCommonItem(6,1,4307) SetTask(12,30*256) NewWorld(989,1624,3130)
Talk(1,"","Th�: <enter> Th�t m� ng� giang th�y tr� ti�n, duy c�ng nh��ng qu�n ��c tranh ti�n. <enter> Tr��ng ho�ng m�o h�u tam thi�n s�, th� ch� c�n kh�n th�p l�c ni�n. <enter> Kham m�n l�m truy c�ng v� t�u, b�t tri chung th�t s� h� duy�n. <enter> Th�ch ��u th�nh h� th�nh �o lu�n, v�n t�nh c� mi di�c kh� li�n.")
end

local _OnBreak = function()
	Msg2Player("Qu� tr�nh thu th�p b� gi�n �o�n.")
end

function main()
dofile("script/wumumenpai/nhacphiyquangia.lua")
	if (GetTask(12) == 20*256 and GetLevel() >= 10) then
		if (CalcEquiproomItemCount(6,1,4307,1) >= 1) then
			tbProgressBar:OpenByConfig(10, %_GetFruit,{nItemIdx}, %_OnBreak)
		end
	end
end

