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
dofile("script/wumumenpai/nithe.lua")
	if (GetTask(12) == 400*256 and GetLevel() >= 50)  then
		Talk(3,"nvxuatsu7","Ni Th�: Nh�n kh�n m�t th� c� v� l� H�...th�t kh�ng may t�i kh�ng nh�n r�","Ni Th�: Nh�n qua Ni Th� t�nh c� t�m th�y manh m�i �� l�i, n� ch� ��n Long Cung ��ng.")
	else
		Talk(1,"","Ni Th�:... ...")
	end
end

function nvxuatsu7() 
SetTask(12,410*256) 
Msg2Player("��n Long Cung ��ng (197/187) T�m V� M�c Di Th�.")  
end 