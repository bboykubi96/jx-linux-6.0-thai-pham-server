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
---------------------------------------------------------------
function main() 
dofile("script/wumumenpai/thunhue.lua")
	if (GetTask(12) == 40*256) and GetLevel() >= 20  then
		Talk(13,"nv2x",""..GetName()..": Hai ng��i �ang tranh c�i v� vi�c g� v�y?","Th� Nhu�: T�i c� m�t thanh ki�m c�c k� s�c b�n v� c� th� ph� v� m�i th� tr�n ��i n�y.","Th� Nhu�: T�i c� m�t chi�c khi�n c�c k� hi�m c�, kh� n�ng ph�ng th� tuy�t v�i, c� th� ch�ng l�i m�i lo�i v� kh�.","Th� Nhu�: Thanh ki�m c�a t�i l� m�t b�o v�t v� chi�c khi�n b� v� tr�ng th�t gi� t�o.","Th� Nhu�: V� v�n! G��ng c�a ng��i �� r�ch n�t, l� ch�n c�a ta kh�ng s� ng��i.",""..GetName()..": T�i �� hi�u, kh�ng bi�t hai v� c� th� cho t�i m��n 2 m�n binh kh� �� tham kh�o ���c kh�ng.","Th� Nhu�: T�t nhi�n.","Th� Nhu�: Ng��i h�y xem c�n th�n.","Sau khi ki�m tra, nh�n ra hai lo�i binh kh� n�y ��u l� v� kh� b�nh th��ng, t�i kh�ng bi�t ai ch�u tr�ch nhi�m cho vi�c n�y.",""..GetName()..": T�t h�n h�t l� hai v� h�y c�ng t�i ��n di�n v� tr��ng �� thi ��u, ai th�ng s� ch�ng t� ng��i �� ��ng.","Th� Nhu�: ���c ta �i ngay.","Th� Nhu�: L��i ki�m c�a ta kh�ng c� m�t, ta kh�ng ch�u tr�ch nhi�m khi l�m t�n th��ng ng��i.") 
	elseif (GetTask(12) == 50*256) and GetLevel() >= 20 then
		Talk(1,"","Th� Nhu�: Ch�ng t�i �ang ��i b�n � s�n t�p")
	elseif GetTask(12) == 70*256 and GetLevel() >= 20 then
		Talk(3,"nv2x4","Th� Nhu�: T�i sao l�i nh� v�y, t�i sao ki�m v� khi�n c�a ch�ng ta l�i kh�ng ch�ng ch�u n�i?","Th� Nhu�: Ng��i c� th� t�m th�y th��ng gia gi�i �i l�i v� b�n h�ng kh�ng?")	
	elseif GetTask(12) == 100*256 and GetLevel() >= 20 then
		Talk(1,"nv2x6",""..GetName()..": Du T�u M�i H�a Lang �� b� ta d�y cho m�t b�i h�c, kh�ng d�m l�a huynh n�a ��u","Th� Nhu�: th�t c�m �n c�c h�, ��y l� cu�n b� ki�p v� c�ng m� ta h�c ���c, c�c h� �em v� luy�n t�p, sau n�y s� r�t c� �ch.")	
	else
		Talk(1,"","Th� Nhu�: H�y th��ng xuy�n g�p ta.")
	end
end

function nv2x() 
SetTask(12,50*256)
Msg2Player("��n Di�n V� Tr��ng (194/191) t� th� v� c�ng.") 
end 

function nv2x4() 
local nIndex2 = AddNpc(107,1,SubWorldID2Idx(179),1875*32,2634*32,0,"Th��ng Gia")
SetNpcScript(nIndex2,"\\script\\wumumenpai\\dutaumaihoalang.lua")
AddTimer(590* 18, "OnTimeout", nIndex2)
NewWorld(179, 1873, 2636)
SetFightState(1) 
SetTask(12,80*256)
Msg2Player("��n La Ti�u S�n (233/164), T�m th��ng gia.")
SetTimer(20230,1)
end 

function nv2x6()
SetTask(12,110*256)
AddMagic(1851)
SetRank(92)
Msg2Player("Ho�n th�nh nhi�m v� 20 Th� Nhu�.")
end

function OnTimeout(nIndex)
DelNpc(nIndex);
end