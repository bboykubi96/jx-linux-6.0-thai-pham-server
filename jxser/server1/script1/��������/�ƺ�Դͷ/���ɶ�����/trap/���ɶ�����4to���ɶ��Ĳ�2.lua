-- script viet hoa By http://tranhba.com  t�y b�c b�c khu l�u ti�n ��ng t�ng ba 4to l�u ti�n ��ng b�n t�ng 2 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 33 
-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n m� cung F3-F4 trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q3","Ng��i th�y m�t c� quan , ph�a tr�n c� kh�c ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L60_q3() 
Say("Thi�u h�o ph� th�n c�a l� Th�i b�ch kim tinh , h�n � m�t ngh�o kh� ��ch th�n trang cu�c s�ng , v� v�y l�i x�ng ngh�o tang th� . thi�u h�o t�ng � ��ng ph��ng th�nh l�p �i�u v��ng qu�c , qu�c n�i ��ch v�n v� b� quan ��u l� �i�u . trong �� y�n t� l� b�n l� quan trung ��ch m�t con , ng��i bi�t n� tr��ng quan l� c�i g� l� quan sao ",4,"Xu�n /L60_S3_correct","H� /L60_S3_wrong","Thu /L60_S3_wrong","��ng /L60_S3_wrong") 
end 

function L60_S3_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(13) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(13) == 1)) then
Msg2Player("Ng��i theo nh� c�u tr� l�i m�t , c� quan s� d�n ng��i ��n t�ng th� t� ") 
SetFightState(1); 
NewWorld(128, 1586, 3217); 
else 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t c�n kh�ng c� b�t k� ph�n �ng n�o ") 
end 
end; 

function L60_S3_wrong() 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t c�n kh�ng c� b�t k� ph�n �ng n�o ") 
end; 
