-- script viet hoa By http://tranhba.com  long m�n tr�n ng��i �i ���ng tri�u Mi nhi tay m�i nhi�m v� # sao mi�ng tin/th� 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

function main(sel) 
UTask_world26 = GetTask(26) 
if (UTask_world26 == 3) then -- script viet hoa By http://tranhba.com  nhi�m v� trung 
Talk(8,"W26_step2","Mi nhi c� n��ng # c� ng��i b�y ta sao mi�ng tin/th� cho ng��i ","C�i g� mi�ng tin/th� ","Ti�u d�ch �nh ch�t .","C�i g� ?","Ti�u d�ch �nh �� ch�t .","Kh�ng th� n�o ... ng��i g�t ta ! ta kh�ng tin !"," ( cu�i c�ng nh� th� n�o ?) "," l� ai n�i cho ng��i bi�t ?") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Ta m�i ng�y ��u � n�i n�y ch� , k�t qu� ch� ��n c�i g� ?") 
end 
end; 

function W26_step2() 
Talk(1,"","Ta , ta kh�ng th� n�i , c�o t� ") 
SetTask(26,6) 
AddNote("Sao mi�ng tin/th� cho tri�u Mi nhi , ch�a �� kh�ng ngh� t�i n�ng ph�n �ng l�n nh� v�y , c�n l� �i v� h�i h�i t�n kh�t c�i . ") 
Msg2Player("Sao mi�ng tin/th� cho tri�u Mi nhi , ch�a �� kh�ng ngh� t�i n�ng ph�n �ng l�n nh� v�y , c�n l� �i v� h�i h�i t�n kh�t c�i . ") 
end; 
