-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC ��t ma vi�n huy�n bi 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 
-- script viet hoa By http://tranhba.com  update by: xiaoyang(2004\4\15) ph�i Thi�u l�m 90 c�p nhi�m v� 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
Uworld122 = GetTask(122) 
if(GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if(UTask_sl == 20*256+128) then		-- script viet hoa By http://tranhba.com 20�����������
L20_prise() 
elseif((UTask_sl == 20*256) and (GetLevel() >= 20)) then -- script viet hoa By http://tranhba.com 20 c�p nhi�m v� 
Talk(2,"L20_get","G�n nh�t t� trong t� Ph�c Ki�n ph� �i�n t�i n�m tr�n danh ngh�a �� t� , l� nam Thi�u L�m ��ch ph��ng tr��ng �� c� t�i , b�i v� c�i n�y n�m r�t ng��i �em to�n b� nam Thi�u L�m huy�n n�o g� ch� kh�ng y�n , ph��ng tr��ng kh�ng c�ch n�o , ch� ��nh ph�i g�i hy v�ng v�o v�n t� c� th� gi�o h�a b�n h� , n�o bi�t c�i n�y n�m nam r�t c�n b�n kh�ng nghe gi�o h�a , c� ng�y du th� h�o r�i r�nh , ch�c l� sanh phi , th�t l� l�m cho ��u ng��i �au ","C�i n�y n�m r�t ng��i b�y gi� � n�i n�o ?") 
else 
Talk(1,"","Ng��i xu�t gia ch� tr�ng minh t�m k�t t�nh !") 
end 
elseif(Uworld122 == 10) then 
Talk(5,"Uworld122_find","Huy�n bi ��i s� , � tr�n cao Hoa S�n ��ch tr�n ���ng c� r�t nhi�u Thi�u L�m �� t� ��nh nhau t�i ch�t , kh�ng hi�u l� b�i v� c�i g� ?","Thi�u L�m mu�n � trong h�ng �� t� l�a ch�n ng��i th�ch h�p � t�ng kinh c�c t�i tu luy�n 72 tuy�t chi�u . ng��i c� n�ng l�c ��u l� ��n t� ��t ma vi�n c�ng La H�n ���ng , La H�n ���ng �� t� kh�ng gi�ng ��t ma vi�n ��ch �� t� nh� v�y lu�n l� tranh quy�n �o�t v� , chuy�n ��i kh�i ch�nh l� nh� v�y . ","��t Ma La H�n ��n t� Thi�u L�m , t�i sao mu�n tranh �o�t , ng��i n�o h�c kh�ng t�i !","�� t� c�a ta si�u ph�m xu�t ch�ng , ch�n ai b�o ng��i n�o ?","Ch�ng l� La H�n ���ng c�ng thu�c v� Thi�u L�m sao ?") 
elseif(Uworld122 >=20) and (Uworld122 < 30)then 
Talk(1,"","# �i t�m huy�n kh� kh�n ... ") 
elseif(Uworld122 == 30)then 
Talk(5,"Uworld122_alow","��i s� , huy�n kh� kh�n ��i s� kh�ng nghe ta khuy�n m� . ta �i qua Hoa S�n , th�y r�t nhi�u kim qu�c cao th� mai ph�c , s� r�ng l�i c�i g� �m m�u .","Ng��i th�t th�y ���c ?","Tuy�t ��i b�t lo�n n�i ! ","# xin/m�i �i c�ng ��t ma vi�n �� t� n�i kh�ng mu�n ��nh nhau , ��y l� ta ��ch l�nh b�i . n�u qu� th�t l� kim qu�n , hy v�ng c� th� gi�p ti�u di�t b�n h� .","T�i h� t�n m�nh .") 
elseif (Uworld122 == 50) and (HaveItem(392) == 0) then 
Talk(1,"","Th� ch� �em l�nh b�i r�i v�o ta l�o n�p n�i n�y , kh�ng c� n� s� r�ng Thi�u L�m �� t� kh�ng tin ") 
AddEventItem(392) 
Msg2Player("Nh�n Thi�u L�m t�ng ch�ng l�nh b�i ") 
elseif(Uworld122 >= 50) and (Uworld122 <= 60) then 
Talk(1,"","C� l� ch�ng ta th�t sai l�m r�i ... ") 
elseif (Uworld122 == 65) and (HaveItem(392) == 1) then 
Talk(4,"U122_finish","Hoa S�n ��ch hoa h�ng nguy hi�m c�ng h�a gi�i , may nh� kh�ng c� ph�t sinh th��ng vong .","B�n t�ng �� nh�n ���c �� t� ��ch tin t�c , th�t l� x�u h� ." ,"��i s� kh�ng n�n nh� v�y , trong l�c nguy hi�m c� th� gi�i quy�t v�n �� , th�t l� anh h�ng b�n s�c .","V� tr� tu�i n�y kh�ng mu�n tr�u l�o n�p li�u , ng��i nhanh �i t�m huy�n kh� kh�n �i , h�n c� chuy�n mu�n ��i v�i ng��i n�i , ha ha .!") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Ch��ng m�n s� huynh m�y n�m g�n ��y mu�n kh�ng kim ��ch bi�n ph�p , t�c b�c .") 
end 
end; 

function L20_get() 
Say("B�n h� �� �i ph�c ma t�y s�n , m�y ng��i n�y cho l� c� m�y chi�u c�ng kh�ng �em ng��i Trung nguy�n �� � trong m�t ?",2,"�� cho ta �i d�y d� b�n h� . /L20_get_yes","Ch� s� ta kh�ng l�m ���c /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1, "","B�n h� ���ng xa t�i c�ng l� kh�ch , ng��i xu�t th� ph�i c�n th�n nga #.") 
	SetTask(7,20*256+64)
-- script viet hoa By http://tranhba.com  SetTaskTemp(42,0) -- script viet hoa By http://tranhba.com  khai s�ng t�m th�i thay ��i l��ng #TaskTemp ��ch ID s� v� 42## h�y b� t�m th�i thay ��i l��ng # 
AddNote("Thay ��t ma vi�n th� t�a huy�n bi ��i s� d�y d� n�m r�t ng��i . ") 
Msg2Player("Thay ��t ma vi�n th� t�a huy�n bi ��i s� d�y d� n�m r�t ng��i . ") 
end; 

function L20_get_no() 
end; 

function L20_prise() 
Talk(2,"","S� th�c , ta �� thu ph�c kia n�m r�t ng��i , b�n h� t� �� v� sau kh�ng d�m n�a ch�c l� sanh phi li�u !","Ng� ph�t t� bi # thi�n tai thi�n tai !") 
SetTask(7,30*256) 
SetRank(3) 
-- script viet hoa By http://tranhba.com  AddMagic(15) 
add_sl(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
AddNote("Thu ph�c n�m r�t ng��i , th�ng c�p l�m h� t� kim c��ng . ") 
Msg2Player("Ch�c m�ng , ng��i �� th�ng c�p l�m h� t� kim c��ng , h�c ���c b�t ��ng minh v��ng v� c�ng . ") 
end; 

function Uworld122_find() 
Talk(1,"","Huy�n bi :... ng��i �i t�m huy�n kh� kh�n �i . ") 
SetTask(122,20) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng 20 
Msg2Player("Huy�n bi m� c�nh hai c�ng kh�ng ��p , b�o ng��i �i huy�n kh� x� h�i r� r�ng ") 
AddNote("Huy�n bi m� c�nh hai c�ng kh�ng ��p , b�o ng��i �i huy�n kh� x� h�i r� r�ng ") 
end 

function Uworld122_alow() 
AddEventItem(392) 
Msg2Player("B�t ���c Thi�u L�m t�ng ch�ng l�m . ") 
SetTask(122,50) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng 50 
Msg2Player("��p �ng huy�n bi , ��n Hoa S�n c�u Thi�u L�m �� t� , gi�t ch�t kim qu�c t��ng l�nh . ") 
AddNote("��p �ng huy�n bi , ��n Hoa S�n c�u Thi�u L�m �� t� , gi�t ch�t kim qu�c t��ng l�nh . ") 
end 

function U122_finish() 
DelItem(392) 
Msg2Player("��ng t�i Thi�u L�m t�ng ch�ng l�m . ") 
SetTask(122,70) 
Msg2Player("C�ng huy�n bi gi�i h�a , �i t�m huy�n kh� kh�n . ") 
AddNote("C�ng huy�n bi gi�i h�a , �i t�m huy�n kh� kh�n . ") 
end 
