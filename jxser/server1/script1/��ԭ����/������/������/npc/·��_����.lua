-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC r�ng t�m #50 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 50*256+10)then		-- script viet hoa By http://tranhba.com  50�����������
Talk(1,"","Ta bi�t m�t li�n quan t�i r�ng xa s� huynh ��ch b� m�t nh� , n�u nh� ng��i ngh� bi�t , �i ngay len l�n cho ta l�y con g� quay t�i , ng�y ng�y �n chay , ta th�t s� l� kh�ng ch�u ��ng ���c li�u !") 
		SetTask(7,50*256+20)
AddNote("R�ng trong l�ng bi�t ��o r�ng xa ��ch b� m�t , nh�ng l� c�n h�i l� g� n��ng m�i c� th� n�i . ") 
Msg2Player("R�ng trong l�ng bi�t ��o r�ng xa ��ch b� m�t , nh�ng l� c�n h�i l� g� n��ng m�i c� th� n�i . ") 
	elseif (UTask_sl == 50*256+20) then
if (HaveItem(123) == 1) then 
Talk(1,"","Nga , g� n��ng �n qu� ngon li�u , t�i ��y , ta cho ng��i bi�t b� m�t # r�ng xa s� huynh tr��c khi ch�t tr�n ��t vi�t 3 c� s� l� #4, 5, 3. nh�ng l� , m�i ng��i bi�t l� c� � g� ") 
Msg2Player("Mang g� n��ng cho r�ng t�m , bi�t # r�ng xa tr�n ��t vi�t xu�ng 3 c� s� 4, 5, 3. ") 
AddNote("Mang g� n��ng cho r�ng t�m , bi�t # r�ng xa tr�n ��t vi�t xu�ng 3 c� s� 4, 5, 3. ") 
DelItem(123) 
			SetTask(7,50*256+30)
else 
Talk(1,"","Ta bi�t r�ng xa s� huynh m�t b� m�t nh� , n�u nh� mu�n bi�t , nhanh �i mang c� g� n��ng cho ta , m�i ng�y ��u �n chay , th�t l� kh�ng ch�u ��ng ���c li�u !") 
end 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Ph��ng tr��ng qu� h�n y�u li�u , n�u nh� ti�p t�c nh� v�y , ng��i Kim �em khi d� ��n tr�n ��u ch�ng ta .") 
end 
end; 
