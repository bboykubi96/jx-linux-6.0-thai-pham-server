-- script viet hoa By http://tranhba.com description: Trung Nguy�n b�c khu ng�y nh�n d�y th�nh ��ng 1to ng�y nh�n d�y th�nh ��ng 2 ng�y nh�n d�y ra s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguy�n b�c khu 7 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main(sel) 
UTask_tr = GetTask(4) 
UTask_tr60tmp = GetTask(28) 
	if (UTask_tr60tmp == 15) then		-- script viet hoa By http://tranhba.com  bin: 1000 + 0100 + 0010 + 0001
SetFightState(1) 
NewWorld(52, 1729, 3225) 
		SetTask(4, 60*256+70)
SetTask(28,0) -- script viet hoa By http://tranhba.com  �em t� thay ��i l��ng ph�c v� bu�ng th� 
-- script viet hoa By http://tranhba.com  AddNote(" l�y ���c b�n c�u kh�u quy�t , ti�n v�o th�nh ��ng t�ng th� hai . ") 
	elseif (UTask_tr >= 60*256+70) and (GetFaction() == "tianren") then
SetFightState(1) 
NewWorld(52, 1729, 3225) 
else 
Talk(1,"","Ch# l# ## <color=Red>b l�p c# kh# quy#<color>, kh t�n g th?v k� t#g hai c# Th#h #ng.") 
SetPos(1767, 3186) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m 
AddNote("Mu l�p v k� t#g hai, ph ti�n l# ## b l�p c# kh# quy#. ") 
end 
end; 
