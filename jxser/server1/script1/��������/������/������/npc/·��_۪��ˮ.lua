-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : ng��i �i ���ng _ ly thu th�y .lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2004-12-27 14:40:10 
-- script viet hoa By http://tranhba.com  Desc : th�y kh�i 90 c�p nhi�m v� ? ? 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

Include("\\script\\task\\newtask\\master\\zhongli\\zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld126 = nt_getTask(126) 
Uworld1002 = nt_getTask(1002) 
Say("Cu�c s�ng tr�n ��i , c�n hi�u qu� tr�ng h�nh ph�c .",3,"�� ta l�m �ang tuy�n nhi�m v� /branch_branchliqiushui","�� ta l�m 90 c�p nhi�m v� /tasknpc_nity","Kh�ng h�i !/no") 
end 

function tasknpc_nity() 
Uworld126 = nt_getTask(126) 
if (Uworld126 == 10) and (HaveItem(391) == 1) then 
Talk(4,"Uworld126_lose"," ly ti�u th� , ng��i c� tin/th� ","# �o�n t� th�nh c�ng c� h�i h�n m�t ng�y ? qu� mu�n , ta kh�ng h� n�a tin t��ng nam nh�n .","C� n��ng c�n g� ph�i c� ch�p , t�c ng� n�i , s� bi�t ba ng�y qu�t m�c t��ng ��i , ch�ng l� kh�ng c� th� cho �o�n c�ng t� m�t c�i c� h�i sao ? ","Cho h�n c� h�i ? h�n r�i �i ta th�i �i�m , c� cho ta c� h�i sao ? ta kh�ng mu�n n�i li�u , ng��i kh�ng c� sao �i ngay t�m ch��ng m�n , n�ng th�ch n�i nh�ng th� n�y .") 
elseif (Uworld126 == 10) then -- script viet hoa By http://tranhba.com  kh�ng c� th� 
Talk(3,""," ly ti�u th� , ng��i c� tin/th� ","C�i g� tin/th� ?","A , ta � l�i �o�n t� th�nh n�i �� .") 
elseif (Uworld126 == 30)then 
Talk(3,"Uworld126_cant"," ly ti�u th� ",".....","Xem ra ph�i �i v� th�y �o�n c�ng t� t�m bi�n ph�p m�i ���c .") 
elseif (Uworld126 == 60)then 
Talk(12,"Uworld126_beleive"," ly ti�u th� , kh�ng xong ! ","G�p c�i g� , c� chuy�n g� t� t� n�i .","�o�n c�ng t� .","H�n nh� th� n�o ?","�o�n c�ng t� b�i v� b�o v� n�ng b� ��ch nh�n ��nh cho th�nh tr�ng th��ng , nguy hi�m t�nh m�ng !","Ng��i kh�ng c�n h� c�u li�u , ta tuy�t ��i s� kh�ng tin/th� ng��i !","T�i h� l�y m�nh � giang h� ��ch danh ti�ng b�o ��m , ta kh�ng l�a g�t c� n��ng ..","Ch�ng l� ?.... t� th�nh . nhi�u n�m nh� v�y , ng��i c�n g� ph�i thay ng��i kh�c ch�u t�i , nh�ng n�m n�y , ta t�nh t�nh c�ng thay ��i li�u , c� r�t nhi�u c�u h�n , ng��i kh�ng c� v� c�ng , th�t l� kh� m�nh .","N�u nh� ng�y �� n�ng tha th� h�n c�ng s� kh�ng nh� v�y .","M�y ng�y nay ta kh�ng ng� ���c , trong l�ng l�o suy ngh� h�n , b�y gi� h�n � ��u ?","��i L� ","Ta s� l�p t�c ��n n�i �� , t�t c� c�u h�n ��u �� k�t th�c !") 
elseif (Uworld126 > 10) and (Uworld126 < 60) then -- script viet hoa By http://tranhba.com  nhi�m v� trung ��ch thi�u t�nh ��i tho�i 
Talk(1,"","Ta c�ng t� th�nh kh�ng c� b�t k� ki�n ngay c� , ng��i kh�ng c�n nhi�u l�i ! ") 
else 
Talk(1,"","M�n ch� kh�ng th� c�ng ���ng m�t th�n th�nh th�n , nh� v�y �em kh�ng tu�n theo m�n quy .....") 
end 
end 

function Uworld126_lose() 
DelItem(391) 
nt_setTask(126,20) 
Msg2Player("Nh�n tin/th� sau , ly thu th�y kh�ng c� m�t ch�t c�m ��ng , ng��i quy�t ��nh �i t�m du�n ng�m nh�n tr� gi�p #.") 
AddNote("Nh�n tin/th� sau , ly thu th�y kh�ng c� m�t ch�t c�m ��ng , ng��i quy�t ��nh �i t�m du�n ng�m nh�n tr� gi�p #.") 
end 

function Uworld126_cant() 
nt_setTask(126,40) 
Msg2Player(" ly thu th�y kh�ng nghe khuy�n c�o , ng��i quy�t ��nh tr� v� t�m �o�n t� th�nh .") 
AddNote(" ly thu th�y kh�ng nghe khuy�n c�o , ng��i quy�t ��nh tr� v� t�m �o�n t� th�nh .") 
end 

function Uworld126_beleive() 
nt_setTask(126,70) 
Msg2Player(" ly thu th�y trong l�ng c�n c� �o�n t� th�nh , quy�t ��nh �i g�p h�n m�t l�n cu�i , k� ho�ch th�nh c�ng .") 
AddNote(" ly thu th�y trong l�ng c�n c� �o�n t� th�nh , quy�t ��nh �i g�p h�n m�t l�n cu�i , k� ho�ch th�nh c�ng .") 
end 

function branch_branchliqiushui() 
Uworld1002 = nt_getTask(1002) 
liqiushui() 
end 

function no() 
end
