--Edit by Youtube PGaming--
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
	if GetTask(14) == 70*256 then
		Talk(6,"",""..GetName()..": Qu�n Kim th�t ��ng gh�t, l�i d�m xem th��ng m�n ph�i ta!","�� T� Kh� Nghi: h�n � ��u, �� ta gi�t h�n, th�t kh� m� b� qua n�i h�n n�y.",""..GetName()..": Ta hi�u c�m gi�c c�a ng��i, nh�ng m�i chuy�n ��u ph�i nghe theo s� ch� ��o c�a Ch��ng M�n.","�� t� kh� nghi: ��ng v�y, ta l� L� B�nh n�u Ch��ng m�n c� l�nh, h�y cho ta bi�t!",""..GetName()..": t�t nhi�n r�i!")
	end
end;
