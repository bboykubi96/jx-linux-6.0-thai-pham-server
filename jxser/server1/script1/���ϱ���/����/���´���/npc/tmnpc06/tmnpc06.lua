-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng m�t tr�n 20 c�p nhi�m v� #50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) r�a s�ch oan khu�t nhi�m v� 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tm = GetTask(2); 
Uworld51 = GetTask(51) 
-- script viet hoa By http://tranhba.com  if (GetTask(123) >= 80) and (Uworld51 < 10) and (GetReputeLevel(GetRepute()) >= 8) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Talk(2,"Uworld51_get", 13429, 13430) 
if (Uworld51 == 20) then 
Talk(5,"Uworld51_30","V� c�ng kh�ng khoanh tay ��ng nh�n , nh� c� �ang t�m bi�n ph�p , ch� v� ph� th�n ta �ang ho�i nghi ta , ta h�nh ��ng s� r�ng b�t ti�n .","Nh�ng l� , ta bi�t m�y ng�y tr��c c� m�y Thi�u L�m cao th� g�p n�n , v�t th��ng c�ng b�n m�n tuy�t k� m�t d�ng , ph� th�n ta ho�i nghi ta ti�t l� b�n m�n tuy�t k� .","Ng��i �i g�p ch��ng m�n gi�i th�ch r� ","V� d�ng , ph� th�n ta �ang t�c gi�n , s� kh�ng cho ta c� h�i gi�i th�ch , tin t�c n�y ta c�ng l� nghe ���ng h�c n�i .","N�u nh� l� nh� v�y , ch��ng m�n ��i v�i ta v� d�ng th�nh ki�n , c� l� ta c� th� gi�p ng��i .") 
elseif (Uworld51 == 55) then 
Talk(6,"Uworld51_60","M�t tr�n c�ng t� , ta m�i v�a t� ng�y nh�n d�y nghe ���c tin t�c , �m s�t Thi�u L�m cao th� chuy�n qu� nhi�n l� b�n h� l�m , n�u kh�ng c�ng t� b�i v� mu�n c�ng ng��i tranh quy�n , �em b�n m�n b� t�ch mang cho ng�y nh�n d�y .","C� chuy�n n�y ? n�u kh�ng cho d� mu�n tr� th�nh ch��ng m�n , c�ng kh�ng c� th� l�m nh� v�y a .","Ti�c nu�i l� ta �ang b� ho�i nghi , ph� th�n ta l�i kh�ng tin ta , ta mu�n l�p t�c c�ng ���ng h�c s� ph� th��ng l��ng m�t ch�t .","Ng�y nh�n d�y k� ti�p �m s�t m�c ti�u l� C�i Bang , xin/m�i c�ng t� nh�c nh� C�i Bang tr�nh kh�i ng�y nh�n d�y th�a c� h�m h�i .","B�n m�n b� k�p r�i v�o trong tay ��ch nh�n , nh�t ��nh ph�i c�m v� , n�u kh�ng l�m phi�n ng��i gi�p ti�u di�t th�ch kh�ch , c�m tr� v� b� k�p .","C� th� !") 
elseif (Uworld51 == 70) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� # �� �o�t l�i b� k�p 
Talk(2,"Uworld51_80","M�t tr�n c�ng t� , t�i h� �� ho�n th�nh s� m�ng , b�t ���c b� k�p .","�a t� ng��i , ta �� c�ng ���ng h�c s� ph� th��ng l��ng , m�i/xin ng��i c�ng ph� th�n ta n�i r� ch�n t��ng , b�i v� chuy�n n�y t� ng��i �i�u tra , ch� c� ng��i n�i m�i c� thuy�t ph�c l�c .") 
elseif (Uworld51 == 90) then 
Talk(2,"Uworld51_100","Ph� th�n ta n�i nh� v�y a ? th�t t�t qu� , ta mu�n �em c�i tin t�c t�t n�y n�i cho ng�m kh�i m�i ���c . ","Ha ha , �� cho ta �i m�t chuy�n , l�n tr��c l� x�u tin t�c , l�n n�y l� tin t�c t�t .") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
if (UTask_tm == 20*256) and (GetLevel() >= 20) then -- script viet hoa By http://tranhba.com 20 c�p nhi�m v� kh�i ��ng 
Talk(2, "L20_get","Ta c� m�t c� m�u , g�i l� <color=Red> ���ng u <color>, l� cha ta duy nh�t mu�i mu�i , n�m �� b�i v� vi ph�m m�n quy , g� cho ng��i b�n ngo�i , b� t� ph� �u�i ra kh�i nh� , hai m��i n�m ch�a t�ng g�p nhau . ta bi�t cha m�c d� trong mi�ng kh�ng n�i , nh�ng l� h�n h�t s�c t��ng ni�m c� mu�i mu�i n�y .","Ch��ng m�n kia t�i sao kh�ng nh�n n�ng tr� v� ���ng m�n , ng��i m�t nh� �o�n vi�n ��y ?") 
		elseif (UTask_tm == 20*256+60) then 
Talk(2, "","���ng u s� c� �� tha th� ch��ng m�n , n�ng mu�n ta ��a c�i n�y <color=Red> kim h�ng v�ng <color> giao cho ch��ng m�n .","C� th�t kh�ng ? th�t t�t qu� # ng��i th�t l� c� b�n l�nh , nhanh �i �em <color=Red> kim h�ng v�ng <color> giao cho ta cha �i # h�n �ang � <color=Red> ti�p kh�ch ��i s�nh <color> trong .") 
Msg2Player("Tr� v� ngh� s� ph�ng t�m ���ng m�t tr�n , bi�t ch��ng m�n ���ng th� �ang ph�ng kh�ch .") 
			SetTask(2,20*256+70)
		elseif (UTask_tm == 20*256+70) then
Talk(1, "","Th�t t�t qu� # nhanh �i �em <color=Red> kim h�ng v�ng <color> giao cho ta cha �i # h�n �ang � <color=Red> ti�p kh�ch ��i s�nh <color> trong .") 
		elseif (UTask_tm == 50*256+20) then		-- script viet hoa By http://tranhba.com 50������
Talk(4, "","��i s� huynh , ng��i bi�t ng�y h�m qua c� ai �i qua �m kh� ph�ng sao ?","T�i ng�y h�m qua gi�ng nh� <color=Red> Tam s� �� ���ng h�a <color> c�ng <color=Red> Ng� s� �� ���ng nguy�n <color> �i qua .","Kh�ng bi�t b�n h� gi� kh�c n�y � n�i n�o ?", "<color=Red>Ng?s?#<color> Ng� s� �� <color> m�i v�a r�i v�i v�i v�ng v�ng �i <color=Red> giang t�n th�n <color> th�m h�n ng� b�nh ��ch c�u c�u , Tam s� �� c�ng �i ra ngo�i , nh�ng kh�ng bi�t �i n�i n�o . ") 
			SetTask(2, 50*256+40)
Msg2Player(" � ngh� s� ph�ng , t� ���ng m�t tr�n ch� bi�t Tam s� �� ���ng h�a c�ng Ng� s� �� ���ng nguy�n �i qua �m kh� ph�ng .") 
AddNote(" � ngh� s� ph�ng , t� ���ng m�t tr�n ch� bi�t Tam s� �� ���ng h�a c�ng Ng� s� �� ���ng nguy�n �i qua �m kh� ph�ng , hai ng��i r�t kh� nghi , ���ng nguy�n �i giang t�n th�n nh�n c�u c�u , ���ng c�ng kh�ng hi�u �i n�i n�o .") 
		elseif (UTask_tm == 50*256+40) then							-- script viet hoa By http://tranhba.com 50������
Talk(1,"","T�i sao ng��i h�i ai v�o �m kh� ph�ng ? �� x�y ra chuy�n g� ?") 
elseif (UTask_tm > 20*256) and (UTask_tm < 30*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 20 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","C� tr��ng sau khi ch�t , c� m�u m�t m�c � t�i ph�a sau n�i <color=Red> kh�ng l�ng d� n�o c�c <color> ��ch m�t gian nh� l� trong , n�ng t� kh�ng th�y ���ng m�n ng��i trong , ta �i li�u nhi�u l�n , c�ng ch� c� th� � <color=Red> c�a <color> h��ng n�ng th�nh an , l�n n�y li�n nh� c�y ng��i ! ") 
elseif (UTask_tm >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","�a t� ng��i h�a gi�i ph� th�n ta c�ng c� c� ��ch �n o�n ") 
else 
Talk(1,"","���ng m�n l� v� l�m ��ch trung l�u ch� tr� , kh�ng ch� c� d�a v�o v� c�ng , c�n c� c�ng phu �m kh� , �m kh� l� c�a ch�ng ta �u th� .") 
end 
elseif (Uworld51 >= 10) and (Uworld51 < 100) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� # ti�n h�nh trung 
Talk(1,"","M�t tr�n m�c d� b�t t�i , nh�ng l� , kh�ng th� v� v�y li�n �em v� c�ng truy�n ngo�i nh�n . ") 
elseif (Uworld51 >= 100) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� # �� ho�n th�nh 
Talk(1,"","N�u nh� kh�ng ph�i l� ng��i gi�p ta r�a s�ch oan khu�t , chuy�n n�y kh�ng hi�u s� nh� th� n�o , ta c�ng ng�m kh�i mu�n c�m t� ng��i m�i l� !") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","C� r�nh r�i nh� ��n xem ch�ng ta .") 
else 
Talk(1,"","Ng��i l� v�a nh�p m�n ��ch �� t� ph�i kh�ng ?") 
end 
end; 

function L20_get() 
DelItem(41) -- script viet hoa By http://tranhba.com  ph�ng ng�a n�ng ti�p nh�n v� sau , nh� ch�i nh�t l�n nhi�m v� ��o c� 
Say("Th��ng l��ng ", 2,"�� cho ta mu�n ngh� bi�n ph�p /L20_get_yes","Kh�ng c� c�ch n�o /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1,"","C� tr��ng sau khi ch�t , c� m�u m�t m�c � t�i ph�a sau n�i <color=Red> kh�ng l�ng d� n�o c�c <color> ��ch m�t gian nh� l� trong , n�ng t� kh�ng th�y ���ng m�n ng��i trong , ta �i li�u nhi�u l�n , c�ng ch� c� th� � <color=Red> c�a <color> h��ng n�ng th�nh an , l�n n�y li�n nh� c�y ng��i ! ") 
	SetTask(2, 20*256+20)
AddNote(" � ngh� s� ph�ng (507,319) th�y ���ng m�t tr�n , nh�n <color=red> ���ng u nhi�m v� <color>, ��n kh�ng l�ng d� n�o c�c h�a gi�i ���ng u c�ng ch��ng m�n ��ch �n o�n .") 
Msg2Player(" � ngh� s� ph�ng th�y ���ng m�t tr�n , nh�n ���ng u nhi�m v� , ��n kh�ng l�ng d� n�o c�c h�a gi�i ���ng u c�ng ch��ng m�n ��ch �n o�n .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_get() 
Say("Ai , n�i r�t d�i d�ng , ng��i c� th� gi�p ta truy�n l�i cho du�n ng�m kh�i sao ?",2,"D� d�ng , l� c�i g� n�i dung ��y ?/Uworld51_get_yes","��u ta �au , ng��i t�m nh�ng ng��i kh�c �i ./L20_get_no") 
end 

function Uworld51_get_yes() 
Talk(1,"","C�ng c� c� ta n�i # ph� th�n ta kh�ng hi�u th� n�o ��t nhi�n ph�n ��i h�n nh�n c�a ch�ng ta , h�n l� c� th� s� c� kh� kh�n , nh�ng l� , c� c� kh�ng c�n qu� lo l�ng .") 
SetTask(51,10) 
Msg2Player("Ti�p nh�n v� # gi�p ���ng m�t tr�n truy�n l�i cho du�n ng�m kh�i .") 
AddNote("Nh�n r�a s�ch oan khu�t nhi�m v� # gi�p ���ng m�t tr�n truy�n l�i cho du�n ng�m kh�i .") 
end 

function Uworld51_30() 
SetTask(51,30) 
Msg2Player("Ng��i quy�t ��nh �i g�p ���ng th� ch��ng m�n , gi�p ���ng m�t tr�n gi�i th�ch .") 
end 

function Uworld51_60() 
SetTask(51,60) 
Msg2Player("���ng m�t tr�n m�i/xin ng��i �i v�o c�c ��ng ti�u di�t kim qu�c th�ch kh�ch , �o�t b� k�p tr� l�i ") 
end 

function Uworld51_80() 
SetTask(51,80) 
Msg2Player("���ng m�t tr�n c�m t� ng��i tr� gi�p h�n , ��ng th�i hy v�ng ng��i c� th� gi�p h�n v� ���ng th� ch��ng m�n n�i r� r�ng .") 
end 

function Uworld51_100() 
SetTask(51,100) 
i = random(35,45) 
AddRepute(i) -- script viet hoa By http://tranhba.com  th�m danh v�ng 
Msg2Player("���ng m�t tr�n c�m t� tr� gi�p c�a ng��i , ng��i danh v�ng gia t�ng "..i.." �i�m .") 
Msg2Player("Ng��i t� nguy�n mang tin t�c t�t cho du�n ng�m kh�i , tr� gi�p n�ng gi�m b�t r�u r� .") 
end 

function L20_get_no() 
end; 
