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
---------------------------------------------------------
function main() 
dofile("script/wumumenpai/nguuthong.lua")
	if (GetTask(12) == 330*256 and GetLevel() >= 50)  then
		Talk(3,"nv5x1","Ng�u Th�ng: Ng��i mu�n h�c th�m v� c�ng? H�y ��nh v�i ta 1 tr�n, ta s� d�y cho ng��i",""..GetName()..": ��ng l�m t�i x�u h�, l�m sao t�i c� th� ��nh th�ng, v� c�ng c�a ng�i th�t l� th�m th�y.")
	elseif (GetTask(12) == 350*256 and GetLevel() >= 50) then
		Talk(3,"nv5x4",""..GetName()..": T�i �� th�nh c�ng v��t qua b�i ki�m tra!","Ng�u Th�ng: k� n�ng c�a ng��i c�ng kh�ng t�i, h�y luy�n t�p k� n�ng n�y �� n�ng cao v� c�ng!")
	else
		Talk(1,"","Ng�u Th�ng: N�u xu�ng n�i g�p kh� kh�n, h�y k�u t�n ta, ��m b�o nh�ng ng��i �� s� kh�ng d�m ��ng ��n ng��i")
	end
end

function nv5x1() 
Describe("Ng�u Th�ng: Ng��i th�t qu� l�i, ta s� ��i ng��i ta s�n t� v�",2,"���c r�i, t�i s� ��n ��/nv5x2","Ta c� vi�c kh�c/no")
end 

function nv5x2() 
SetTask(12,340*256) 
Msg2Player("��n s�n t� v� (194,191).")  
end 

function nv5x4() 
SetTask(12,360*256)
SetRank(95) AddMagic(1859)
Msg2Player("Ho�n th�nh nhi�m 50 Ng�u Th�ng.")  
end 