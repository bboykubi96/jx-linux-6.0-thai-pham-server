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
---------------------------------------
function main() 
dofile("script/wumumenpai/hankhoiphuong.lua")
	if (GetTask(12) == 360*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu1","H�n Kh�i Ph��ng: S� ��, S� ��",""..GetName()..": S� huynh c�n ta gi�p g� kh�ng?","H�n Kh�i Ph��ng: Ho�n Nhan H�ng Li�t c� t�m �ia b�t ch�nh, �� �� � ��n b�n ���ng ch� b�o V� M�c Di Th�, l�o t�c th��ng xuy�n ph�i ng��i ��n tr�m",""..GetName()..": B�c th� n�y do t��ng qu�n Nh�c Phi vi�t ra, li�u c� ph�i Kim Nh�n l�y �i kh�ng?")
	elseif (GetTask(12) == 380*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu4",""..GetName()..": T�i kh�ng t�m th�y H�n s� huynh, nh�ng t�i t�m th�y 1 �t m�nh gi�y b� ��t c�n s�t l�i, s� huynh h�y xem qua","H�n Kh�i Ph��ng: n�u g�p ���c Kim Nh�n, nh�t ��nh s� th�c ta s� b�m h�n th�nh tr�m m�nh, �� an �i dong linh ��i ca ta")
	else
		Talk(1,"","H�n Kh�i Ph��ng: N�u g�p Kim Nh�n, nh�t ��nh ph�i gi�t ch�t ch�ng �� an �i vong linh c�a anh ta tr�n tr�i.")
	end
end

function nvxuatsu1() 
Describe("H�n Kh�i Ph��ng: N�i ��ng l�m, cho n�n ta v� h�n l�n Long s� huy�n thay phi�n nhau canh g�c � ��y c� ng�y l�n ��m. H�m nay ��n ��n phi�n h�n l�n Long s� th�c, ta t�nh t�nh n�ng n�y, h�n v�n ch�a t�i, ta kh�ng th� r�i �i, ng��i h�y gi�p ta t�m Long s� th�c �i",2,"���c r�i, t�i s� ��n ��/nvxuatsu2","Ta c� vi�c kh�c/no")
end 

function nvxuatsu2() 
SetTask(12,370*256)
Msg2Player("��n (196/200) t�m Manh M�i.")  
end 

function nvxuatsu4() 
SetTask(12,390*256)
ConsumeEquiproomItem(1,6,1,4340,-1)
Msg2Player("��n g�p Ch��ng M�n Nh�c L�i (211/190) th�ng b�o t�nh h�nh.")  
end 