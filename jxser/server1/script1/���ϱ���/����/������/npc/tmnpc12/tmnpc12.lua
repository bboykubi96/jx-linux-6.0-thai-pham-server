-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng r�i r�nh 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2) 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then 
if (UTask_tm == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 c�p nhi�m v� kh�i ��ng 
Talk(3, "L50_step0","C�i n�y nh�ng nh� th� n�o cho ph�i !","���ng r�i r�nh s� th�c , x�y ra chuy�n g� ?","Ng��i c� ch� kh�ng bi�t , b�n ���ng tr� c� <color=Red> m�t b� color>'# �m kh� ph� # , chia l�m tr�n d��i hai s�ch , ph�a tr�n c�n k� ghi l�i b�n m�n t�t c� �m kh� ch� ph�p c�ng c�ch d�ng , ch�nh l� b�n m�n tuy�t kh�ng truy�n ra ngo�i ��ch b� k�p . n�y b� k�p t� ta b�o qu�n , v� l� do an to�n , ta �em tr�n d��i hai s�ch ph�n ��t � hai h�p s�t trong , nh�ng l� h�m nay ta l�i ph�t hi�n h�p s�t trung ��ch th��ng s�ch b� ng��i �i�u ��i th�nh m�t quy�n kh�ng c� ch� thi�n th� . b� k�p l�u l�c , ��y ch�nh l� kh�ng ph�i chuy�n ��a chuy�n c�a a !") 
		elseif (UTask_tm == 50*256+80) then
if ( HaveItem(48) == 1) then -- script viet hoa By http://tranhba.com  c� �m kh� ph� 
Talk(2, "L50_prise","���ng r�i r�nh s� th�c , th� ra l� tr�m # �m kh� ph� # ng��i c�a l� Tam s� huynh ���ng h�a , ta �� �em b� k�p �o�t l�i t�i , ng��i xem c� ph�i th�t v�y hay kh�ng ?","Kh�ng t� , ��y ch�nh l� quy�n kia l�u l�c ��ch # �m kh� ph� # , ng��i l�m g�c ���ng ti�u gi�i li�u m�t cu�c di thi�n ��i h�a , th�t l� c�ng lao kh�ng nh� a !") 
else -- script viet hoa By http://tranhba.com  m�t x� l� 
Talk(1,"","M�c d� t�m ra li�u ph�n �� ���ng h�a , nh�ng l� kh�ng �em �m kh� ph� t�m tr� v� l� kh�ng ���c !") 
end 
elseif (UTask_tm > 50*256) and (UTask_tm < 60*256) then -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh 50 c�p nhi�m v� 
Talk(1,"","���ng r�i r�nh # b� k�p b� ��o , kh�ng ph�i chuy�n ��a , kh�ng ch� c� l�o phu tho�t kh�ng kh�i li�n quan , c�n c� th� c� th� d�nh l�u r�t nhi�u ng��i v� t�i !") 
elseif (UTask_tm >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","May nh� ng��i ti�u gi�i li�u s�n n�y di thi�n ��i h�a , n�u kh�ng h�u qu� thi�t t��ng kh�ng ch�u n�i !") 
else 
Talk(1,"","C�ng phu �m kh� , ng��i c� c�i g� ch� kh�ng hi�u c� th� h�i l�o phu !") 
end 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Tr�n giang h� , minh th��ng d� tr�nh , �m ti�n kh� ph�ng .") 
else -- script viet hoa By http://tranhba.com  thi�u t�nh ��i tho�i 
Talk(1,"","Thi�n h� ��ch c�ng phu �m kh� , n�u nh� l�o phu nh�n th� hai , kh�ng ai d�m nh�n th� nh�t , ng��i c� t�c gi�n hay kh�ng ?") 
end 
end; 

function L50_step0() 
Talk(2,"L50_get","B�n m�n �� ph�ng s�m nghi�m , ngo�i nh�n kh�ng hi�u b� k�p gi�u � n�i n�o , mu�n tr�m c�ng tr�m kh�ng t�i , cho n�n , ��o b� k�p ng��i c�a th�n xu�t qu� m�t , nh�t ��nh c�ng c� th� ��n g�n ��o t�c . ta ho�i nghi c� n�i gian , nh�ng l� chuy�n n�y quan h� tr�ng ��i , n�u nh� n�i cho ch��ng m�n , �em ��a t�i hi�n nhi�n ��i ba , ta ch� hy v�ng nhanh l�n m�t ch�t t�m ���c ��o t�c , s� �em chuy�n n�y th� b�nh th��ng !","B� k�p l�c n�o b� ��o ��ch ?") 
end; 

function L50_get() 
Say("C�n c� suy �o�n , b� k�p ph�i l� ng�y h�m qua b� ��nh c�p ��ch !", 2,"Tr� gi�p t�m ki�m b� k�p /L50_get_yes","Kh�ng th� ra s�c /L50_get_no") 
end; 

function L50_get_yes() 
Talk(1,"","Ta �i h��ng nh�ng ng��i kh�c <color=Red> h�i th�m m�t ch�t <color> , n�i kh�ng ch�ng s� c� ��u m�i g� !") 
	SetTask(2, 50*256+20)
AddNote(" � trong t�i kh� ph�ng th�y ���ng r�i r�nh (504, 317) , nh�n <color=red> t�m �m kh� ph� nhi�m v� color> ") 
Msg2Player("Nh�n �m kh� ph� nhi�m v� , �i t�m b� ��o ��ch �m kh� ph� . ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
DelItem(48) 
SetRank(30) 
SetTask(2, 60*256) 
-- script viet hoa By http://tranhba.com  AddMagic(349) 
add_tm(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("�em �m kh� ph� giao cho ���ng r�i r�nh , th�ng l�m ���ng m�n T� l�o m�n nh�n , h�c ���c s�t ��nh thu�t ") 
AddNote("�em �m kh� ph� giao cho ���ng r�i r�nh , nhi�m v� ho�n th�nh , th�ng l�m ���ng m�n T� l�o m�n nh�n . ") 
end; 
