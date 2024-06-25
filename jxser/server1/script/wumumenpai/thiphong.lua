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
dofile("script/wumumenpai/thiphong.lua")
	if (GetTask(12) == 260*256 and GetLevel() >= 40)  then
		Talk(3,"nv4x1","Thi Phong: Ng��i ��n r�t ��ng l�c, theo tin t�nh b�o, tri�u ��nh �� c� La Ho�n l�m s� gi� ��n T��ng D��ng c�ng Kim Nh�n �� c�u h�a","Thi Phong: La Ho�n v�n l� m�t quan nh� trong v� �n oan c�a Nh�c t��ng quan , kh�ng ng� b�y gi� h�n l�i l� 1 th�a t��ng, gi�u vai tr� l�n, nh�ng th�t may, h�n l� 1 k� ph�n b�i, r�t d� thay ��i b�n ch�t. G�n ��y vi�c ��o t�o ���c n�ng cao, nh�ng t�n nh� h�n li�u c�n s�ng s�t n�a kh�ng?")
	elseif GetTask(12) == 320*256 then
		Talk(3,"nv4x4","Thi Phong: Ng��i �� gi�t ch�t La Ho�n ch�a?","Thi Phong: Ta r�t gh�t nh�ng t�n tham quan, ta r�t gh�t La Ho�n v� kh�ng th� s� d�ng ki�m �� gi�t h�n!")
	else
		Talk(1,"","Thi Phong: ��ng �c hi�p k� y�u, nh�ng g�p k� �c th� ��ng tha cho h�n!")
	end
end

function nv4x1() 
SetTask(12,270*256)
Talk(1,"nv4x2","Nh�n Nhi�m V� Ti�u Di�t La Hi�n Th�nh Tr� Th� Cho Nh�c Phi")
end

function nv4x2()
Describe("Thi Phong: H�m nay l� m�t c� h�i t�t. H�n s� �i ngang qua ��o H��ng Th�n, ��y l� n�i ph�c k�ch tuy�t v�i, h�y nhanh ch�ng ��n �� ti�u di�t h�n",2,"���c ta s� �i ngay/nv4x3","Ta c� vi�c kh�c/no")
end

function nv4x3() 
SetTask(12,280*256)
AddNote("��n ��o H��ng Th�n (181/204), ti�u di�t La Ho�n.") 
Msg2Player("��n ��o H��ng Th�n (181/204), ti�u di�t La Ho�n.")  
local nIndex = AddNpc(991,1,SubWorldID2Idx(101),1448*32,3277*32,0,"La Ho�n")
SetNpcScript(nIndex,"\\script\\wumumenpai\\lahoan.lua")
AddTimer(1800*18,"OnTimeout",nIndex)
--SetTimer(20230,1)
end 

function nv4x4() 
SetTask(12,330*256)
SetRank(94)
AddMagic(1857)
AddMagic(1858)
Msg2Player("Ho�n th�nh nhi�m v� 40 Thi Phong.")  
end

function OnTimeout(nIndex)
DelNpc(nIndex);
end 