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

function main(sel)
	if GetTask(12) == 410*256 and GetLevel() >= 50 then
		Talk(6,"nvxuatsu8","Ng��i th�n b�: t�i sao ng��i l�i ��n mu�n nh� v�y?","H� s�c: T�i v�a m�i r�i �i, � h�i tr��ng s� ph�t hi�n ra r�ng t�i �� l�m �i�u ��, t�i kh�ng ph�i s�ng lo s� m�i ng�y, v� th� t�i tr� th�nh m�t con ma.","Ng��i th�n b�: �!Xong ch�a?","H� Bi�n: �� l� �i�u ���ng nhi�n. Ta �� c� t�nh �� h�n l�y ���c b�c th� gia ch�a ��t t� ta, d�n anh ta ��n B�n T�u ph�a ��ng �� �u�i theo ta. T�n c�ng h�n, thay qu�n �o v� h�y di�n m�o, ng��i trong ���ng s� ngh� r�ng ta �� ch�t, v� quy cho h�n ��nh c�p b�c th�, haha.","Ng��i th�n b�: Ai?")
	end
end;

function nvxuatsu8() 
SetTask(12,420*256)
Msg2Player("��nh B�i ng��i th�n b�.")  
end 