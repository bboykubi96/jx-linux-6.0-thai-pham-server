Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\basic.lua") 

function main()
dofile("script/wumumenpai\detukhanghi2.lua")
	if GetTask(14) == 70*256 then
		Talk(10,"nv9x5",""..GetName()..": Qu�n Kim th�t ��ng gh�t, l�i d�m xem th��ng m�n ph�i ta!","�� T� Kh� Nghi: ��ng v�y, ta nghe n�i T��ng qu�n Kim c� � �i m�t m�nh, c�n loan tin kh�ng c� ng��i Trung Nguy�n n�o d�m ��ng ��n h�n.",""..GetName()..": Chuy�n �� c� th�t kh�ng?.","�� t� kh� nghi: ��ng v�y, ta �� nghe ���c do ng��i b�n ta ph�t hi�n ra, kh�ng tin, ng��i c� th� ��n �� xem th� c� Kim Ng�u t��ng qu�n kh�ng?",""..GetName()..": t�n n�y ��ng nghi ng�, ng��i s� ph�i m�c b�y c�a ta",""..GetName()..": t� tin t�c V� H�n ���ng ta ph�t hi�n ra l� tr�nh m� qu�n Kim �i qua, ��c t�nh s� h�nh ��ng trong v�i ng�y t�i, h� s� ph�c k�ch � V� Di S�n. Hy v�ng s� g�i ng��i ��n ��","�� t� kh� nghi: th�t qu� t�t, ta c� vi�c. Ta �i tr��c ��y",""..GetName()..": ���c r�i, h�n g�p l�i.",""..GetName()..": ta ph�i theo d�i xem h�n c� ��n V� Di S�n �� b�o tin kh�ng.")
	end
end;

function nv9x5()
SetTask(14,80*256)
Msg2Player("��n V� Di S�n (232/176), theo d�i t�nh h�nh.")  
end