-- script viet hoa By http://tranhba.com  t�m thu�c t�nh �i�m d�ng �� th�m b�o th�ch , c� th� t�m n�m thu�c t�nh �i�m 
-- script viet hoa By http://tranhba.com  By Asmik(2004-02-26) 

function main() 
Say(" l�a ch�n ng��i mu�n c�i t�o kinh m�ch ��ch ch�ng lo�i #",5," l�c l��ng /tune_str","Th�n ph�p /tune_dex","Ngo�i c�ng /tune_vit","N�i c�ng /tune_eng","C�n kh�ng c� mu�n h�o /no") 
end 


function tune_str() 
base_str = {35,20,25,30,20} -- script viet hoa By http://tranhba.com  ng� h�nh nh�n v�t tr�i sanh l�c l��ng , t�m ti�m n�ng l�c kh�ng cho ph�p th�p h�n n�y tr� gi� 
	i = GetSeries() + 1
	if (GetStrg(1) < base_str[i] + 5) then		-- script viet hoa By http://tranhba.com  ϴ����������������������������ϴ
Say(" l�c l��ng c�a ng��i c�ng �� ��n c�c h�n !",1,"Ta �ang suy ngh� mu�n /no") 
else -- script viet hoa By http://tranhba.com  b�t ��u t�m ti�m n�ng , sau khi ho�n th�nh t� ��ng �� xu�ng tuy�n 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddStrg(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() h�m s� �� t�ng th�m ch�a ph�n x�ng ti�m n�ng 
end 
end 

function tune_dex() 
base_dex = {25,35,25,20,15} 
	i = GetSeries() + 1
	if (GetDex(1) < base_dex[i] + 5) then		-- script viet hoa By http://tranhba.com  ϴ������������������������ϴ
Say(" l�c l��ng c�a ng��i c�ng �� ��n c�c h�n !",1,"Ta �ang suy ngh� mu�n /no") 
else -- script viet hoa By http://tranhba.com  b�t ��u t�m ti�m n�ng , sau khi ho�n th�nh t� ��ng �� xu�ng tuy�n 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddDex(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() h�m s� �� t�ng th�m ch�a ph�n x�ng ti�m n�ng 
end 
end 

function tune_vit() 
base_vit = {25,20,25,30,25} 
	i = GetSeries() + 1
	if (GetVit(1) < base_vit[i] + 5) then		-- script viet hoa By http://tranhba.com  ϴ����⹦�����������������ϴ
Say(" l�c l��ng c�a ng��i c�ng �� ��n c�c h�n !",1,"Ta �ang suy ngh� mu�n /no") 
else -- script viet hoa By http://tranhba.com  b�t ��u t�m ti�m n�ng , sau khi ho�n th�nh t� ��ng �� xu�ng tuy�n 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddVit(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() h�m s� �� t�ng th�m ch�a ph�n x�ng ti�m n�ng 
end 
end 

function tune_eng() 
base_eng = {15,25,25,20,40} 
	i = GetSeries() + 1
	if (GetEng(1) < base_eng[i] + 5) then		-- script viet hoa By http://tranhba.com  ϴ����ڹ������������������ϴ
Say(" l�c l��ng c�a ng��i c�ng �� ��n c�c h�n !",1,"Ta �ang suy ngh� mu�n /no") 
else -- script viet hoa By http://tranhba.com  b�t ��u t�m ti�m n�ng , sau khi ho�n th�nh t� ��ng �� xu�ng tuy�n 
Pay(GetTaskTemp(8)) 
		SetTask(92,GetTask(92)+1)
AddEng(-5) 
-- script viet hoa By http://tranhba.com  AddProp(5) -- script viet hoa By http://tranhba.com  AddStrg() h�m s� �� t�ng th�m ch�a ph�n x�ng ti�m n�ng 
end 
end 

function no() 
AddItem(6, 1, 21, 1, 0, 0, 0) 
end
