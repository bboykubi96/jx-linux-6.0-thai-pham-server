-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y nh�t nguy�t ��n ch� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4) 
Uworld51 = GetTask(51) 
if (Uworld51 == 50) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� ti�n h�nh trung 
Talk(5,"Uworld51_55","Nam binh gian tr� , ch�ng ta l�n n�y k� ly gi�n c�ng kh�ng thua b�i h�n c�a , ha ha . b�n h� t� gi�t l�n nhau , ti�t l� b� t�ch cho ch�ng ta , ng��i nam tri�u m�i �� h�t , c� g� ph�i s� ? ","Nghe n�i l�n tr��c gi�t m�y Thi�u L�m �� t� �� cho b�n h� c�ng ���ng m�n l�m v�o kh�ng ho�ng , l�n n�y n�a gi�t m�y ... d�/� , C�i Bang l�o th� c�ng ch�ng ta ��i ngh�ch , l�n n�y gi�t C�i Bang �� t� . ��ng r�i , � v�o c�c ��ng ph�c k�ch b�n h� .","Ng��i l� ai ? t�i n�i n�y l�m g� ?","T�i h� m�i t�i , li�n g�p ph�i ��i danh ��nh ��nh # ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � ��n ch� , nh�t th�i k�ch ��ng . �� l�u kh�ng g�p ��n ch� li�u , c�ng ng�y c�ng uy phong .","Ha ha ha , h�o .") 
elseif (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 20*256) and (GetLevel() >= 20) then 
AddNote(" � tr�n tr�i nh�n d�y qu�ng tr��ng th�y nh�t nguy�t ��n ch� � h�p t�t , tr� l�i v�n �� c�a h�n . ") 
Msg2Player(" � tr�n tr�i nh�n d�y qu�ng tr��ng th�y nh�t nguy�t ��n ch� � h�p t�t , tr� l�i v�n �� c�a h�n . ") 
Talk(8,"L20_get_test","Ai nha , n�m xong r�i , kh�ng c� m�t g�p ng��i li�u .....","Chuy�n g� ?","Ta b� khi d� !","� ��n ch� v� c�ng c�i th� , ai d�m khi d� ng��i ? ","M�t ��a b� !","��a tr� ?","Ta � ph�a ��ng trong r�ng c�y g�p ph�i m�t ��a b� , kia ti�u qu� h�i ta m�t c�i v�n �� , nh�ng l� ta tr� l�i kh�ng ���c , cho n�n , �em nh�t nguy�t song ��i phi�n thua b�i h�n li�u . chuy�n n�y n�u nh� truy�n t�i b�n ngo�i , s� b� ng��i c��i ch�t . m�c d� ta v� c�ng cao c��ng , nh�ng l� kh�ng th� c�m v� , th� n�o c�n c� m�t m�i � tr�n giang h� x�ng ��y ?","V�n �� r�t cu�c l� nh� th� n�o ?") 
		elseif (UTask_tr == 20*256+10) then 
L20_get_test() 
		elseif (UTask_tr == 20*256+20) then 
L20_get() 
		elseif (UTask_tr == 20*256+80) and (HaveItem(58) == 1 ) then
L20_prise() 
		elseif (UTask_tr == 30*256+20) then	-- script viet hoa By http://tranhba.com �ӵ�30������Ҫֱ���л�����ʼ����
Say("Mu�n ta ��a ng��i �i T�n Th�y Ho�ng l�ng ? kh�ng th�nh v�n �� , l�y tr��c n�m tr�m l��ng b�c t�i !", 2, " l�m phi�n ng��i ��a ta �o�n ���ng /L30_deliver_yes","Ta c�n l� m�nh �i th�i ! /L30_deliver_no") 
		elseif (UTask_tr == 40*256+20) then	-- script viet hoa By http://tranhba.com �ӵ�40������Ҫֱ���л���������ԭ
Say("Mu�n ta ��a ng��i �i T�n Th�y Ho�ng l�ng ? kh�ng th�nh v�n �� , l�y tr��c b�y tr�m l��ng b�c t�i !", 2, " l�m phi�n ng��i ��a ta �o�n ���ng /L40_deliver_yes","Ta c�n l� m�nh �i th�i ! /L40_deliver_no") 
		elseif (UTask_tr >= 20*256+30) and (UTask_tr < 20*256+80) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�20��������δ���
Talk(1,"","Kia ti�u qu� �ang � <color=Red> m�t ��ng ��ch r�ng c�y <color> trong , thay ta th�t t�t d�y d� h�n ") 
elseif (UTask_tr >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","M�c d� v� c�ng c�a ng��i kh�ng c� ta l�i h�i , b�t qu� ng��i c� th� gi�p ta �o�t l�i nh�t nguy�t song ��i phi�n , ta c�ng t�ng ph�c ng��i !") 
else 
Talk(4, "","Bi�t ta l� ai kh�ng ? ta ch�nh l� ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � h�p t�t !","V� c�ng thi�n h� th� t� ?","��ng v�y , gi�o ch� c�a ch�ng ta v� c�ng �� nh�t thi�n h� , tr� gi�o ch� # c�ng lu�t �ch c�ch c�ng �oan m�c du� ra , ta ch�nh l� l�i h�i nh�t n�a/r�i # nh� th� n�o ? ng��i c� t�c gi�n hay kh�ng ? kh�ng ph�c tho�i s� �� cho ng��i n�m th� m�t ch�t ta nh�t nguy�t song ��i phi�n ��ch l�i h�i !","T�ng ph�c # t�ng ph�c !") 
end 
elseif (GetTask(30) == 5) then -- script viet hoa By http://tranhba.com  nh�n ���c v� v��ng ki�m nhi�m v� , mu�n tr�c ti�p thi�t ��i ��n Hoa S�n 
Say("Mu�n ta ��a ng��i �i T�n Th�y Ho�ng l�ng ? kh�ng th�nh v�n �� , l�y tr��c n�m tr�m l��ng b�c t�i !", 2, " l�m phi�n ng��i ��a ta �o�n ���ng /L30_deliver_yes","Ta c�n l� m�nh �i th�i ! /W30_deliver_no") 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Ng��i ph�i �i n�a/r�i ? ta s� nh� ng��i ��ch , � � � ") 
else 
Talk(4, "","Bi�t ta l� ai kh�ng ? ta ch�nh l� ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � h�p t�t !","V� c�ng thi�n h� th� t� ?","��ng v�y , gi�o ch� c�a ch�ng ta v� c�ng �� nh�t thi�n h� , tr� gi�o ch� # c�ng lu�t �ch c�ch c�ng �oan m�c du� ra , ta ch�nh l� l�i h�i nh�t n�a/r�i # nh� th� n�o ? ng��i c� t�c gi�n hay kh�ng ? kh�ng ph�c tho�i s� �� cho ng��i n�m th� m�t ch�t ta nh�t nguy�t song ��i phi�n ��ch l�i h�i !","T�ng ph�c # t�ng ph�c !") 
end 
end; 

function L20_get_test() 
Say("C� t�t c� h��ng b�c ��ch b� , tr��c h��ng qu�o ph�i t�i ch� chuy�n ba v�ng , sau �� v� ph�a sau chuy�n t�i ch� chuy�n ba v�ng , ti�p theo n�a h��ng qu�o ph�i , l�c n�y c�i �u�i c�a n� h��ng kia ?", 5,"Nh�m h��ng ��ng /L20_get_fail","H��ng nam /L20_get_fail","V� ph�a t�y /L20_get_fail","H��ng b�c /L20_get_fail","H��ng ��a /L20_get_pre") 
end; 

function L20_get_fail() 
	SetTask(4, 20*256+10)
Talk(1,"","Th� ra l� ng��i c�ng kh�ng bi�t a , th�t l� m�t ngu ng�c !") 
end; 

function L20_get_pre() 
	SetTask(4,20*256+20)
Talk(2, "L20_get","Ha ha ha , c�i v�n �� n�y qu� ��n gi�n n�a/r�i # b�t k� ��u kia ��n b� th� n�o chuy�n , c�i �u�i c�a n� ��u l� h��ng ��a ��ch nha !", "#! oa # ng��i qu� th�ng minh n�a/r�i # kh�ng b�ng ng��i �i gi�p ta gi�o hu�n m�t ch�t c�i �� ti�u qu� , t�m h�n ph�i v� <color=Red> nh�t nguy�t song ��i phi�n <color> .") 
end; 

function L20_get() 
Say("Coi nh� ta van ng��i , gi�p m�t tay �i ?", 2,"���c r�i , ta th� m�t ch�t /L20_get_yes","Ta c�n kh�c bi�t chuy�n c�a . /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1,"","Th�t t�t qu� # kia ti�u qu� �ang � <color=Red> m�t ��ng ��ch r�ng c�y <color> trong , thay ta th�t t�t d�y d� h�n ") 
	SetTask(4, 20*256+30)
AddNote("Th�ng minh ��a tr� nhi�m v� # t�m ���c ��a tr� , b�t ���c nh�t nguy�t song ��i phi�n cho � h�p t�t . ") 
Msg2Player("Th�ng minh ��a tr� nhi�m v� # t�m ���c ��a tr� , b�t ���c nh�t nguy�t song ��i phi�n cho � h�p t�t . ") 
end; 

function L20_get_no() 
Talk(1,"","Ngay c� ng��i c�ng kh�ng ch�u gi�p ta , ta c�n c� th� t�m ai a , � � � .") 
end; 

function L20_prise() 
Talk(1,"","Ng��i gi�p ta ph�i v� nh�t nguy�t song ��i phi�n , ��n gi�n ch�nh l� ta �n nh�n c�u m�ng a # kh�ng kh�ng kh�ng , ng��i ��n gi�n ch�nh l� ta t�i sanh ph� m�u !") 
SetRank(57) 
DelItem(58) 
SetTask(4, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(137) 
add_tr(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i th�ng l�m ng�y nh�n t� s� , h�c ���c �o �nh bay h� ") 
AddNote("�em nh�t nguy�t song ��i phi�n cho � h�p t�t , ho�n th�nh th�ng minh ��a tr� nhi�m v� , th�ng l�m t� s� ") 
end; 

function W30_deliver_yes() -- script viet hoa By http://tranhba.com  v� v��ng ki�m nhi�m v� , mu�n tr�c ti�p thi�t ��i ��n Hoa S�n 
if (GetCash() >= 300) then 
Pay(300) 
NewWorld(2, 2288, 4091) 
else 
Talk(1,"","Kh�ng c� b�c nh�ng xin/m�i kh�ng t�i ta ��i danh ��nh ��nh # ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � h�p t�t .") 
end 
end; 

function W30_deliver_no() 
Talk(1,"","�i�m n�y b�c c� th� mua ���c c�i g� ?") 
end; 

function L30_deliver_yes() -- script viet hoa By http://tranhba.com  ng�y nh�n 30 c�p nhi�m v� , mu�n tr�c ti�p thi�t ��i ��n T�n Th�y Ho�ng l�ng 
if (GetCash() >= 500) then 
Pay(500) 
NewWorld(7, 2235, 2847) 
else 
Talk(1,"","Ai c�ng bi�t , kh�ng c� b�c nh�ng xin/m�i kh�ng t�i ta ��i danh ��nh ��nh # ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � h�p t�t .") 
end 
end; 

function L30_deliver_no() 
Talk(1,"","Hao t�i ti�u tai nghe n�i qua ch�a ? nh� v�y �t b�c c�ng kh�ng b� ���c hoa , c�n th�n m�nh tang tr�n ���ng a !") 
end; 

function L40_deliver_yes() -- script viet hoa By http://tranhba.com 40 c�p nhi�m v� , mu�n tr�c ti�p thi�t ��i ��n ki�m c�c Trung Nguy�n 
if (GetCash() >= 700) then 
Pay(700) 
NewWorld(43, 1695, 3200) 
else 
Talk(1,"","Ai c�ng bi�t , kh�ng c� b�c nh�ng xin/m�i kh�ng t�i ta ��i danh ��nh ��nh # ng�c th� l�m phong # th�ng minh tuy�t ��nh # v� c�ng thi�n h� th� t� ��ch nh�t nguy�t ��n ch� � h�p t�t .") 
end 
end; 

function L40_deliver_no() 
Talk(1,"","V�y ng��i t� t� �i th�i , c�n th�n l�c ���ng , h�c h�c !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_55() 
SetTask(51,55) 
Msg2Player("Nghe l�n � h�p t�t n�i chuy�n , chuy�n n�y qu� nhi�n t� ng�y nh�n d�y l�m , mau tr� v� b�o tin . ") 
end 
