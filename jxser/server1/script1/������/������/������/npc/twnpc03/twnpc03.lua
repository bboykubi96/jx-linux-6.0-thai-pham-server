-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p b�n ph�i khi�n cho d��ng h� # Thi�n v��ng 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  by xiaoyang (2004\4\20) 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tw = GetTask(3) 
Uworld121 = GetTask(121) 
-- script viet hoa By http://tranhba.com  if (UTask_tw == 70*256) and (Uworld121 == 245) then -- script viet hoa By http://tranhba.com  b�ch t�n l�m xong 90 c�p nhi�m v� sau l�i v�o Thi�n v��ng ��ch , tr�c ti�p cho k� n�ng 
-- script viet hoa By http://tranhba.com  Talk(1,"","D��ng h� # ti�u huynh �� qu� nhi�n anh h�ng xu�t ch�ng , n�i n�y c� Thi�n v��ng b� k�p m�t b� , � trong tay ng��i ��nh c� th� ph�t d��ng quang ��i . ") 
-- script viet hoa By http://tranhba.com  AddMagic("X� tr�i ch�m ") 
-- script viet hoa By http://tranhba.com  AddMagic("�u�i phong quy�t ") 
-- script viet hoa By http://tranhba.com  AddMagic("�u�i tinh tr�c th�ng ") 
-- script viet hoa By http://tranhba.com  Msg2Player("��t ���c Thi�n v��ng k� n�ng x� tr�i ch�m # �u�i phong quy�t # �u�i tinh tr�c th�ng ") 
-- script viet hoa By http://tranhba.com  SetTask(121,255) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 20*256+50) and (HaveItem(92) == 1 ) then	-- script viet hoa By http://tranhba.com  ֻ�����ߣ������߶�ʧֻҪ�ش����һ�����˾Ϳ����´����
L20_prise() 
elseif (UTask_tw == 20*256) and (GetLevel() >= 20) then 
Say("Th�m t� h�i b�o # h�m nay � <color=Red> v� l�ng s�n <color> xu�t hi�n m�t ��m <color=Red> th� ph� <color>, gi� m�o Thi�n v��ng gi�p ��ch danh ti�ng ��nh nh� c��p b� , d�n ch�ng o�n thanh t�i ��o , ng��i nguy�n � �i t�m t�i th� ph� ��ch s�o huy�t , c�ng ti�u di�t b�n h� sao ?", 2,"Thu�c h� s� h�t s�c /L20_get_yes","�� t� v� c�ng th�p k�m , ch� kh� kh�n �am n�y tr�ch nhi�m n�ng n� /L20_get_no") 
elseif (UTask_tw < 20*256) then -- script viet hoa By http://tranhba.com  ch�a nh�n 20 c�p nhi�m v� 
Talk(1,"","Ch�ng ta Thi�n v��ng gi�p danh ti�ng vang xa , v� v�y th��ng c� m�t �t ti�u nh�n gi� m�o b�n bang �� t� l�m chuy�n x�u ") 
		elseif (UTask_tw > 20*256) and (UTask_tw < 20*256+80) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�20��������δ���
Talk(1,"","��m kia th� ph� th��ng ra b�y gi� <color=Red> b�ch n��c ��ng <color> � <color=Red> v� l�ng S�n ��ng b�n <color>.") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� , ch�a xu�t s� # thi�u t�nh ��i tho�i # 
Talk(1,"","Ch�ng ta Thi�n v��ng gi�p c�ng d�n ch�ng r�ng m�i t��ng y , ng��i ph�i nh� k� tuy�t ��i kh�ng th� d�ng v� c�ng ch�n �p d�n ch�ng , nh� sao ?") 
end 
elseif (Uworld121 == 20) and (HaveItem(10) == 1) then 
Talk(7,"Uworld121_yanghu","D��ng b�n ph�i khi�n cho ","C�c h� gi�ng nh� c� c�i g� kh� n�i chi �n , c� ph�i hay kh�ng �� x�y ra chuy�n g� ?","A ... n�i n�y c� s�c vi ti�n t� ��ch m�t to�t t�c !","A ? m� tuy�t ? n�ng th� n�o ? ","Y�n t�m # H� c� n��ng ch�ng qua l� c� ch�t ti�u t�y !","Bi�t !","Ti�n t� mu�n ta truy�n l�i cho ng��i : n�u nh� 7 th�ng tr��c ng��i kh�ng t�i th�y kh�i th�y n�ng , sau n�y hai ng��i c�c ng��i �em s� kh�ng c�n ���c g�p l�i li�u ") 
elseif(Uworld121 == 50 ) then 
Talk(8,"Uworld121_yanghu2","Th� n�o ? ","# . s�c vi ti�n t� nh�t ��nh s� kh�ng h�i t�m chuy�n � ��ch ","D��ng h� ... ","N�ng n�i cho ta bi�t �i t�m kh�u anh , h�n �� �� cho t��ng t�n n�i cho ta bi�t C�n L�n ph�i ��ch k� ho�ch ","M� tuy�t , n�ng qu� nhi�n v� ta �i c�u xin kh�u anh c�i n�y ti�u nh�n , ta ph�c h�n . ","Th�t kh�ng c� c�i g� c� th� �i�n b� c�i �� v� �ch sao ","��ng b�o l� h�m nay ca h�t vui v� , h�m nay ta u�ng c�ng r�t t�n h�ng , u�ng ���c vi hu�n . thanh ti c�ng t�c tr�ng l� 50 n�m chuy�n , chuy�n d� nh� tr� b�n tay . ","Nh� ch�i :. ") 
else 
Talk(1,""," l�ng ng��i � giang h� , ch� c� nghi ng� ch� l�n , b�t k� � n�i n�o c�ng mu�n gi� v�ng t� th�n gi�a ban ng�y , n�u nh� trong l�ng ng��i c�n mu�n tr� c�i g� d� b�n chuy�n c�a t�nh l�i c�a b�t k� t�i ch� n�o c�ng s� b� ng��i ph�n b�i !") 
end 
end; 

function L20_get_yes() 
Talk(1,"","��m kia th� ph� th��ng ra b�y gi� <color=Red> b�ch n��c ��ng <color> � <color=Red>ph v� l�ng S�n ��ng b�n <color>.") 
	SetTask(3, 20*256+50)
AddNote("��n Thi�n v��ng gi�p ��ng ng�y �i�n nh�p kh�u (218, 198) , nh�n <color=red> b�ch n��c ��ng nhi�m v� <color>, ��n v� l�ng s�n b�ch n��c ��ng ti�u di�t th� ph� ") 
Msg2Player(" � tr�n tr�i v��ng gi�p ��ng ng�y �i�n ��ch l�i v�o th�y d��ng h� ti�p nh�n v� �i v� l�ng s�n b�ch n��c ��ng ti�u di�t th� ph� ") 
end; 

function L20_get_no() 
end; 

function L20_prise() 
Talk(1,"","Ng��i m�t ng��i m�t ng�a v�t v�o th� ph� ��ch s�o huy�t v� d�n tr� h�i , l�m th�t t�t # b�n t�a xem ng��i t� ch�t ch� c�n luy�n t�p m�t tr�n nh�t ��nh s� tr� th�nh n�i ti�ng ng��i trong thi�n h� v�t #") 
DelItem(92) 
SetRank(45) 
SetTask(3, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(33) 
add_tw(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i # ho�n th�nh b�ch n��c ��ng nhi�m v� b� ��ng c�a v� th� tr�i h�n �em , h�c ���c v� c�ng Thi�n v��ng gi�p ��ch t�nh t�m quy�t ") 
AddNote("Tr� l�i Thi�n v��ng ��o mang theo c�m k� giao cho d��ng h� ho�n th�nh b�ch n��c ��ng nhi�m v� , b� ��ng c�a v� th� tr�i h�n �em ") 
end; 

function Uworld121_yanghu() 
Talk(6,"","M� tuy�t # ng��i c�n g� nh� v�y ��y ? ","H� ti�n t� l� ng��i �ang l�c kh� t�m ��ch ti�n n� ! d��ng b�n ph�i khi�n cho # ng��i l� t�t r�i h�o c�m �i , �i qua l�i li�n qu�n �i ","N�u nh� sanh � th�i b�nh th�i ��i , ta ph�i c�i n�y Thi�n v��ng b�n ph�i khi�n cho ��ch h� danh l�m sao ��y ? ch� c�n c�ng ng��i b�nh an ��a s�ng � ��ng ��nh h� . nh�ng l� b�y gi� th� ��o kh�ng y�n �n , ta th� n�o ��y c� b�t k� bang h�i d�m huynh �� ��y ? ","..... a ","Nghe n�i h�m nay C�n L�n ph�i c� � �� ti�n qu�n nam ph��ng . � ��ng ��nh h� ph�t hi�n C�n L�n ph�i �� t� ��ch tung t�ch , s� l� tr��c b�n h� m�u �� gi�t h�i ch�ng ta Thi�n v��ng gi�p , b�n bang ��ch � nguy hi�m t�n vong chi t� , ta l�m sao c� th� tr� th�n s� ngo�i , vi�c �� ��n n��c n�y ta nh�t ��nh ph�i nh�t ng� nh�t th�p c�ng n�ng n�i r� r�ng ","C�ng ch� c� c�i ph��ng ph�p n�y li�u !") 
SetTask(121,30) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng 30 
DelItem(10) 
Msg2Player("C�n L�n ph�i � �� ti�n c�ng ta ng�y gi�p , d��ng h� kh�ng th� r�i �i ") 
AddNote("D��ng h� kh�ng c� m�t th�y h� m� tuy�t , ng��i �i khuy�n nh� n�ng �i ") 
end 

function Uworld121_yanghu2() 
if(GetTask(3) >= 70*256) and (GetTask(3) ~= 75*256) then -- script viet hoa By http://tranhba.com  l� Thi�n v��ng �� t� ho�c xu�t s� �� t� 
Talk(2,"","Kh� c�c ng��i , n�i cho t�i h� bi�t C�n L�n ph�i ��ch x�m l��c k� ho�ch # n�i n�y c� Thi�n v��ng b� t�ch # xin c�m tr� !","Ta nh�t ��nh t�ng c��ng li�n l�c v� ngh� , c�ng d��ng b�n ph�i khi�n cho c�ng nhau b�o v� T�ng tri�u giang s�n ") 
if (HaveMagic(322) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(322,1) 
end 
if (HaveMagic(323) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(323,1) 
end 
if (HaveMagic(325) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(325,1) 
end 
Msg2Player("H�c ���c Thi�n v��ng gi�p k� ph�p x� tr�i ch�m , �u�i tinh tr�c th�ng , �u�i phong quy�t ") 
SetTask(121,255) 
else 
SetTask(121,245) 
end 
add_repute = ReturnRepute(30,95,4) -- script viet hoa By http://tranhba.com  danh v�ng t��ng th��ng # l�n nh�t 30 �i�m , t� 100 c�p kh�i m�i c�p �� gi�m 4% 
AddRepute(add_repute) 
Msg2Player("Nhi�m v� ho�n th�nh , ng��i danh v�ng �i�m gia t�ng "..add_repute.." �i�m .") 
AddNote("Bi y�u m� tuy�t nhi�m v� # n�i cho d��ng h� C�n L�n x�m l��c k� ho�ch nh�ng l� v�n nh� c� kh�ng c� c�ch n�o ch�a tr� h� m� tuy�t c�ng d��ng h� ��ch quan h� , nhi�m v� ho�n th�nh . ") 
end 
