-- script viet hoa By http://tranhba.com  k�t b�i ��ch h�a th��ng 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-22) 

function main(sel) 
if (GetTeamSize() > 1) and (IsCaptain() == 1) then -- script viet hoa By http://tranhba.com  ch� c� ��i tr��ng m�i c� th� kh�i ��ng k�t b�i 
Talk(1,"Wswear_select", 11374) 
else 
Talk(1,"", 11375) 
end 
end; 

function Wswear_select() 
if (GetSex() == 0) then 
P_sex = " thi�u hi�p " 
else 
P_sex = " n� hi�p " 
end 
Say("T�nh ��c thi�n s� # n�i th�t hay # ch� c�n "..P_sex.." 3000 hai s�a ph�t t��ng , chuy�n g� ��u t�t n�i .",2,"Quy�n 3000 hai . /Wswear_yes","Kh�ng c�n !/Wswear_no") 
end; 

function Wswear_yes() 
if (GetCash() >= 3000) then 
if(SwearBrother(GetTeam()) == 1)then 
Pay(3000) 
Msg2Team("Ch�c m�ng hai v� k�t ngh�a kim lan . ") 
else 
Msg2Team("��i trung c� v� ch�ng quan h� , k�t b�i th�t b�i . ") 
end 
else 
Talk(1,"", 11376) 
end 
end; 

function Wswear_no() 
end; 
