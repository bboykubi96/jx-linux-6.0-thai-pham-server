Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")

function main() 
Uworld42 = GetTask(42) 
Uworld1057 = nt_getTask(1057) 
branch_longzhuiwu() 
-- script viet hoa By http://tranhba.com elseif (Uworld42 == 50) then 
-- script viet hoa By http://tranhba.com Talk(12,""," long �u�i v� # kh�ng c�n ph�i n�i , ta c�i g� c�ng bi�t �� ti�u huynh �� , ba m��i n�m tr��c Trung Nguy�n �� t�ng c� b�n v� nh�n , c�c b�ng h�u kh�ch kh� x�ng l� � v� l�m b�n k� � ng��i c� t�ng nghe n�i ? ","Nh� ch�i # t�i h� xu�t ��o qu� m�c v�n , kh�ng r� l�m . "," long �u�i v� # giang s�n thay m�t c� m�i ng��i ra , c�i n�y c�ng kh�ng tr�ch ng��i . trong b�n ng��i ta l� l�o y�u , khi�n cho �� long c��p ph�p . b� t� c�ng h�a th��ng l� V� ���ng # Thi�u L�m cao th� . m� l�o ��i c�a ch�ng ta th��ng l�ng kh�ch , m�t tay � b�n l�u n�m ch�t � tuy�t k� , l�c �y h�n g�p ��ch th� . n�m �� b�n ta theo �u�i nh�c Nguy�n so�i chinh ph�t kim t�c , m��i ��ng m��i tuy�t , tung ho�nh thi�n h� �� l� b�c n�o ��ch kho�i � . ","Nh� ch�i # th� ra l� ti�n b�i t�ng l� v� m�c tr��ng Trung t��ng d�n , th�t k�nh th�t k�nh . "," long �u�i v� # h� , c� c�i g� t�t k�nh n� . Ho�ng th��ng m��i ba ��o kim b�i l�nh ti�n chi�u gi�t Nguy�n so�i v�i phong ba ��nh , b�n ta c�ng b� t�n qu�i th� h� cao th� �u�i t�p . l�o ��i th�m nh�t , m�t m�n anh li�t m�t h�t n�y d�ch . ��ng ti�c h�n khi �� �� n�m du c� t�ch , r�i v�o ki�t nhi�n m�t th�n bi th��ng thu tr�ng . ","Nh� ch�i # v� v�y c�c ng��i nh�n th�u th� s� , c�c ch�y �� ? "," long �u�i v� #�� h�m nay l�o ��i �� n�a �i�n n�a �i�n , c� ng�y n�m nh� kh�c ti�u t� khi m�nh nhi t�n �� kh�ng bi�t ng��i c�m ch�t l�n th�i di�p t� h�ng b�t khang n�m h�n , h�n c�ng kh�ng tr�nh . ng��i kh�ng gi�ng ng��i ��","Nh� ch�i # ch�ng l� lao �i ti�u nhi ��ch ch�nh l� th��ng l�ng kh�ch ti�n b�i ? "," long �u�i v� # ch�nh l� . h�n v� kh�nh m�nh ch�n m��i th� th�n , b�t ch�t h�i t� gi� trang l�m m�nh nhi t�n , c�ng kh�ng t�n th��ng b�n h� � t� . ng��i l�n �i t�m ng��i , thi�t kh�ng th� g�y th��ng li�u nh� ta l�o ��i t�nh m�nh . ","Nh� ch�i # Long ��i hi�p n�i ��a , t�i h� m�y tay tam gi�c m�o c�ng phu : th�i gian , c� th� n�o c�ng th��ng l�ng kh�ch ti�n b�i so s�nh . "," long �u�i v� # c�c h� qu� khi�m nh��ng , ta th�y ng��i th�n quang n�i li�m , ��nh ng�ch cao ��t , r� r�ng l� m�t nh� cao th� . l�o ��i h�m �� b�i v� th��ng t�m qu� �� ��a ��n t�u h�a nh�p ma , c�ng l�c th�c �� t�n th�t th�i n�a . h�n h�m nay � �i�m th��ng s�n trung �n c� . ng��i c�i n�y �i �i . ","Nh� ch�i # c�m �n t� b�i . ") 
-- script viet hoa By http://tranhba.com SetTask(42,60) 
-- script viet hoa By http://tranhba.com AddNote("Nh�n ���c nhi�m v� : �i �i�m th��ng s�n t�m th��ng l�ng kh�ch h�i th�m ��a tr� m�t t�ch tin t�c .") 
-- script viet hoa By http://tranhba.com Msg2Player("Nh�n ���c nhi�m v� : �i �i�m th��ng s�n t�m th��ng l�ng kh�ch h�i th�m ��a tr� m�t t�ch tin t�c .") 
-- script viet hoa By http://tranhba.com elseif (Uworld42 >= 60) then 
-- script viet hoa By http://tranhba.com Talk(1,""," long �u�i v� # ng��i kh�ng c� th��ng t�n h�i ta ��i ca �i ? ") 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com Talk(1,""," long �u�i v� # ba m��i t�i r�t n�ng ���� th�t ch�ng l� ��ch kh�ng c� hy v�ng ? ") 
-- script viet hoa By http://tranhba.com end 
end; 
