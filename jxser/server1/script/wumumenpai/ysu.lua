Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
-------------------------------------------------
function main(sel)
dofile("script/wumumenpai/ysu.lua")
	if (GetLastFactionNumber() == 11 and GetTask(12) == 210*256 and GetLevel() >= 30) then
		Say("Y S�: Phi�u b�c tr�n giang h� ch�c ch�n s� b� th��ng. Ta b�n thu�c ch�a b�nh l� ch� y�u.",3,"Ta Mu�n Ch� D��c Li�u Tr� Th��ng/nv3x3","Giao d�ch/yes","Ta c� chuy�n kh�c/no");
	elseif (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("Y S�: Phi�u b�c tr�n giang h� ch�c ch�n s� b� th��ng. Ta b�n thu�c ch�a b�nh l� ch� y�u.", 2,"Giao d�ch/yes", "Ta c� chuy�n kh�c/no");
	else
		Talk(1,"","Y S�: Ta ch� ch�a tr� cho nh�ng ng��i � b�n ph�i m� th�i.")
	end
end

function nv3x3()
Talk(4,"",""..GetName()..": ��y l� th�o d��c m� Thang Anh nh� giao cho Y S�, Y S� xem c� ph�i l� d��c li�u c�n kh�ng?","Y S�: T�t, �� ta xem th�.","Y S�:�! ��y ��ng l� th� ta �ang c�n.","Y S�: C� qu� nhi�u ng��i b� th��ng, L�o phu h�i y�u, xin h�y gi�p ta b�i d��c li�u �� ch�a th��ng cho c�c �� t�, sau �� b�o c�o cho Thang Anh bi�t t�nh h�nh.")			
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4331,1,0,0},nCount=3,nBindState=-2},"D��c Li�u")
SetTask(12,220*256) ConsumeEquiproomItem(3,6,1,4330,-1)
Msg2Player("��n ch�a th��ng cho c�c �� t� (221/199)")
end;

function yes()
Sale(65);  			
end;


function no()
end;
