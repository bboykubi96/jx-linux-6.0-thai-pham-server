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
------------------------------------------
function main(sel)
dofile("script/wumumenpai/nhacnhinuong.lua")
	if (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then
		Say("Nh�c Nh� N��ng: C� r�t nhi�u trang b� qu� � ��y, ng��i mu�n ch�n c�i n�o?.", 2,"Giao d�ch/yes", "Ta c� chuy�n kh�c/no");
	else
		Talk(1,"","Nh�c Nh� N��ng: Ch��ng m�n c� d�n r�ng trang b� ch� b�n cho ��ng m�n b�n ph�i.")
	end;
end

function yes()
Sale(58) 			
end

function no()
end
