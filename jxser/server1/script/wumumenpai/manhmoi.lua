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
dofile("script/wumumenpai/manhmoi.lua")
	if (GetTask(12) == 370*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu3","B�n ��n ch� Long s� huy�n nh�ng kh�ng th�y g�. Nh�ng m�nh gi�t ch�a ch�y h�t khi�n b�n ch� �","B�n tr�n c� nh�ng manh m�i m�p m�: V�...S�ch...Tay, nay...��ng b�n t�u...�i")
	end
end

function nvxuatsu3() 
SetTask(12,380*256)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4340,1,0,0}, nBindState = -2},"Ch� T��ng T�n Phi�n",1); 
Msg2Player("Quay l�i t�m H�n Kh�i Ph��ng.")  
end 