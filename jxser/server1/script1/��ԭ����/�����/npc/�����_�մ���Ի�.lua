-- script viet hoa By http://tranhba.com description: tay m�i th�n _ t� ��i m� 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com 71 UTask_world43 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world43=GetTask(71) 
if ((UTask_world43==0) and (GetLevel() >= 3)) then -- script viet hoa By http://tranhba.com  gia nh�p c�p b�c h�n ch� 
Talk(2, "select","Ta ngh�ch ng�m ��ch con trai , ng��i ngh� nh� th� n�o , c� chuy�n g� ?") 
elseif (UTask_world43==2) then 
Talk(2, "","Ta khuy�n T� �� c� g�ng h�c t�p , ng��i kh�ng c�n lo l�ng .","R�t t�t , ta kh�ng hi�u th� n�o c�m t� ng��i , ��y l� kim sang thu�c , ng��i c�m l�n �i !") 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
SetTask(71,4) 
AddNote("C�ng t� ��i m� n�i , �� thuy�t ph�c trong nh� ��ch t� trung , nhi�m v� ho�n th�nh . ") 
Msg2Player("C�ng t� ��i m� n�i , �� thuy�t ph�c trong nh� ��ch t� trung , nhi�m v� ho�n th�nh . ") 
Msg2Player("C� ba t�i kim sang thu�c . ") 
AddRepute(6) 
Msg2Player("Ng��i giang h� danh v�ng gia t�ng 3 �i�m . ") 
elseif (UTask_world43==3) then 
Talk(2, "","��i m� , ta bi�t t� trung c� ch� kh� , h�n ngh� ��n chi�n tr��ng gi�t ��ch , nam nhi ch� � b�n ph��ng . �� cho h�n d�a theo l� t��ng c�a m�nh �i l�m �i .", "#, con trai l�n , kh�ng th� l�u l�i . h�n c� ch� h��ng , ta c�ng kh�ng c� th� ng�n c�n , c�m �n ng��i , c�i n�y kim sang thu�c ng��i c�m �i �i !") 
Msg2Player("C� 3 t�i kim sang thu�c . ") 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
SetTask(71,5) 
AddNote("Tr� gi�p t� ��i m� hi�u t� trung ��ch l�a ch�n , nhi�m v� ho�n th�nh ") 
Msg2Player("Tr� gi�p t� ��i m� hi�u t� trung ��ch l�a ch�n , nhi�m v� ho�n th�nh ") 
Msg2Player("C� 3 t�i kim sang thu�c . ") 
AddRepute(4) 
Msg2Player("Ng��i giang h� danh v�ng gia t�ng 4 �i�m . ") 
else 
Say("Nh�ng n�m n�y , m� con ch�ng ta hai cu�c s�ng gian kh� , ngh� ��n ch�t tr�n ��ch t��ng c�ng , ta li�n mu�n kh�c , hy v�ng con ta b�nh an v� s� ", 0) 
end 
end; 

function select() 
Say("H�n v�n l� hi�u h�c , g�n nh�t l�i mu�n nh�p ng� gi�t ��ch , th�t kh�ng hi�u h�n mu�n c�i g� ?", 2,"Ta gi�p ng��i �i h�i h�n /yes","C�i n�y ta kh�ng hi�u /no") 
end 

function yes() 
SetTask(71,1) 
AddNote("Ti�p nh�n v� # gi�p t� ��i m� hi�u r� con trai ��ch � t��ng . ") 
Msg2Player("Ti�p nh�n v� # gi�p t� ��i m� hi�u r� con trai ��ch � t��ng . ") 
end 

function no() 
end 
