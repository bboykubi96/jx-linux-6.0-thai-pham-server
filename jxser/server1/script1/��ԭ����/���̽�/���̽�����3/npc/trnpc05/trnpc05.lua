-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y phong ���ng ���ng ch� ho�n nhan tuy�t y 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\12) gia nh�p 90 c�p m�n ph�i nhi�m v� 

Include("\\script\\global\\skills_table.lua")

Include("\\script\\item\\skillbook.lua")

function main() 
UTask_tr = GetTask(4); 
Uworld127 = GetTask(127) 
if(GetSeries() == 3) and (GetFaction() == "tianren") then 
if(UTask_tr == 30*256) and (GetLevel() >= 30) then 
Say("M�y ng�y n�a ch�nh l� ta m�u h�u ## ��i kim ho�ng sau ��ch sinh nh�t , B�n ���ng ch� t�nh to�n l�m m�t m�n kim l� ng�c y cho m�u h�u l�m qu� t�ng , nh�ng l� c�n thi�u b�n lo�i b�o th�ch <color=Red> c�p m�u �� # b�ng tinh lam # t� m�u xanh bi�c # v�n m�ng t� color>. ta nghe n�i � <color=Red> t�n l�ng trong <color> c� th�t nhi�u gi� tr� li�n th�nh ��ch b�o th�ch , ng��i nguy�n � gi�p ta �i t�m m�t ch�t sao ?", 2,"V� c�ng ch�a ra s�c vinh h�nh chi t�i /L30_get_yes","Thu�c h� c�n c� m�t chuy�n /L30_get_no") 
		elseif(UTask_tr == 30*256+20) and (HaveItem(59) == 1) and (HaveItem(60) == 1) and (HaveItem(61) == 1) and (HaveItem(62) == 1) then
L30_prise() 
elseif(UTask_tr > 30*256) and (UTask_tr < 40*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 30 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","Ng��i c� th� g�i <color=Red> � ���ng ch� color> mang t�i <color=Red> t�n l�ng <color>, nh� 4 lo�i b�o th�ch <color=Red> c�p m�u �� <color>, <color=Red> b�ng tinh lam <color>, <color=Red> t� m�u xanh bi�c <color>, <color=Red> v�n m�ng t� color>.") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� , ch�a xu�t s� # thi�u t�nh ��i tho�i # 
Talk(1,"","Ph� v��ng c�n ta tr� gi�p thu ph�c trong ch�n v� l�m nguy�n , n�u nh� ng�y nh�n d�y kh�ng th� l�y ���c ph� v��ng ta ��ch tr� gi�p , th� kh�ng th� nh� v�y ph�t tri�n .") 
end 
elseif(Uworld127 == 10) and (HaveItem(374) == 1) then 
Talk(15,"Uworld127_killer","Cung k�nh Th�t c�ng ch�a �i�n h� ","H�n t� ��u t�i ��y , t�i sao t�i ? ng��i mu�n ch�t a ","T�i h� kh�ng d�m c�m t�nh m�ng c�a m�nh n�i gi�n .","A , ng��i th�t l� l�n gan , b�y ��u / ng��i v�a t�i , k�o ra ngo�i cho ch� �n .","Nghe n�i c�ng ch�a t�m m�t con ��i �i�u ? �/d� , ng��i bi�t n�i �� c� sao ?","M�c d� t�i h� kh�ng hi�u , nh�ng l� ch� c�n ng��i ��p �ng m�t �i�u ki�n , ta li�n l�p t�c c� th� b�t ��n n� #!"," l�i l� m�t th�ch th�i ��ch ng��i .","��i qu�n Kim m� h�ng h�u , th� n�o kh�ng s� ch�t ? ta l�m sao d�m l�a g�t Th�t c�ng ch�a ?","Ng��i mu�n c�i g� �i�u ki�n ?"," � ta l�c tr� l�i , kh�ng th� gi�t b�n trong ph� b�t lu�n k� n�o ","Th�t l� bu�n c��i , n�u nh� m�t n�m sau ng��i c�n ch�a c� tr� l�i , l�m sao b�y gi� ?","Ta b�o ��m m�t th�ng tr� l�i .","H�o , qu�n t� nh�t ng�n . m�t th�ng sau , n�u nh� kh�ng th�y ng��i , li�n gi�t ho�n b�n h� !","Kh�ng c� ng�y n�o �� .") 
elseif(Uworld127 == 10) then 
Talk(1,"","Kh�ng c� l�nh b�i , ng��i d�m v�o c�ng ch�a ph� ? th�t l� gan l�n , tha th� ng��i kh�ng ph�i l� �c � , mau r�i �i n�i n�y , l�n sau ch� c� tr�ch ta .") 
elseif(Uworld127 == 20) and (HaveItem(374) == 0) then 
Talk(1,"","Ti�u t� n�y , mau c�t . �i mau , n�u kh�ng c�t ch�n c�a ng��i ") 
elseif(Uworld127 == 30)and(HaveItem(369) == 1) then 
DelItem(369) 
Talk(6,"Uworld127_over","Tuy�t y c�ng ch�a , ��y l� ng��i mu�n ��i �i�u .","H�o , h�o . ng��i qu� nhi�n kh�ng sai ","Nh�ng l� , hay l� c� ng��i mu�n l�y ��u c�a ta .","Kh�ng n�n c�ng b�n h� so �o , sau n�y ng��i �i theo ta l� ���c .","Xin tha th� , t�i h� h�nh t�u giang h� qu�n , kh�ng mu�n v�i ai li�u ","..... d�m � tr��c m�t c�a ta n�i nh� v�y , ch� c� m�t ng��i .") 
elseif(Uworld127 == 30) then 
Talk(1,"","��i �i�u ��y ? b�t ���c nhanh l�n m�t ch�t l�y ra ") 
elseif(Uworld127 == 255) then 
if(GetSex() == 0) then 
Talk(1,"","H�o t� t� , l�n sau t�i c�ng tuy�t y ch�i .") 
else 
Talk(1,"","H�o ca ca , l�n sau t�i c�ng tuy�t y ch�i .") 
end 
elseif(UTask_tr >= 70) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Ng��i th�t l� �t c� ��ch anh h�ng , hy v�ng ch�ng ta l� huynh �� , kh�ng ph�i l� c�u nh�n , c� c� h�i ta h��ng ph� v��ng �� c� ng��i , ph�c v� ��i kim , mu�n cho nam tri�u ho�ng �� b�i m�nh ") 
else 
Talk(1,"","Ng�y nh�n d�y gi�o ch� l� ��i kim qu�c s� , ph� v��ng r�t n�ng d�ng h�n , cho n�n , �� cho ta gia nh�p b�n gi�o l�m ���ng ch� ") 
end 
end; 

function L30_get_yes() 
Talk(1,"","Phong ���ng ���ng ch� th�t t�t qu� , nh�ng l� nghe n�i �i t�n l�ng ��ch ���ng r�t nguy hi�m , r�t nhi�u ng��i �i t�m ch�u b�u c�ng b� m�ng , ng��i c� th� ��n bi�n kinh �i t�m phu xe , nh�ng l� <color=Red> � ���ng ch� <color> quen thu�c ph�a t�y khu v�c , ng��i c� th� �� cho h�n d�n ng��i �i .") 
	SetTask(4, 30*256+20)
AddNote(" � tr�n tr�i nh�n d�y t�ng th� ba g�p gi� ���ng ���ng ch� ho�n nhan tuy�t y (213, 201) , nh�n <color=red> b�o th�ch nhi�m v� <color>. # �i t�n l�ng t�m 4 lo�i b�o th�ch ") 
Msg2Player(" � tr�n tr�i nh�n d�y t�ng th� ba g�p gi� ���ng ���ng ch� ho�n nhan tuy�t y (213, 201) , nh�n <color=red> b�o th�ch nhi�m v� <color>. # �i t�n l�ng t�m 4 lo�i b�o th�ch ") 
end; 

function L30_get_no() 
Talk(1,"","..........?") 
end; 

function L30_prise() 
Talk(1,"","Ng��i th�t l� l�i h�i , lo�i n�y b�o th�ch c�ng c� th� t�m ���c , m�u h�u nh�t ��nh r�t th�ch c�i n�y ng�c y !") 
SetRank(58) 
DelItem(59) 
DelItem(60) 
DelItem(61) 
DelItem(62) 
SetTask(4, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(141) 
-- script viet hoa By http://tranhba.com  AddMagic(138) 
-- script viet hoa By http://tranhba.com  AddMagic(140) 
add_tr(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("�em b�n lo�i b�o th�ch ��a cho phong ���ng ���ng ch� ho�n nhan tuy�t y , ho�n th�nh b�o th�ch nhi�m v� . b� ��ng c�a # u minh t� s� , h�c ���c v� c�ng # li�t h�a t�nh thi�n , ��y s�n �i�n h�i , bay h�ng v� t�ch . ") 
AddNote("H�i thi�n nh�n d�y , �em b�n lo�i b�o th�ch ��a cho phong ���ng ���ng ch� ho�n nhan tuy�t y , ho�n th�nh b�o th�ch nhi�m v� . b� ��ng c�a # u minh t� s� . ") 
end; 

function Uworld127_killer() 
DelItem(374) 
SetTask(127,20) 
AddNote("Ti�p nh�n v� # ��n ki�m c�c b�t ��i �i�u ") 
Msg2Player("Ti�p nh�n v� # ��n ki�m c�c b�t ��i �i�u ") 
end 

function Uworld127_over() 
if (GetTask(4) >= 70*256) and (GetTask(4) ~= 75*256) then -- script viet hoa By http://tranhba.com  l� ng�y nh�n xu�t s� �� t� 
Talk(2,"","Ng�y nh�n b� th� giao cho ng��i , n�u nh� c� tuy�t , ta li�n gi�t ng��i , tuy�t kh�ng nu�t l�i .","�� nh� v�y , t�i h� kh�ng th� kh�ng ti�p nh�n .") 
if (HaveMagic(361) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(361,1) 
end 
if (HaveMagic(362) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(362,1) 
end 
if (HaveMagic(391) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(391) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("�em ��i �i�u cho ho�n nhan tuy�t y , h�c ���c v�n long k�ch , Thi�n Ngo�i L�u Tinh , nhi�p h�n lo�n t�m . tr� v� b�o tin cho L�u l�o gia . ") 
SetTask(127,110) 
else 
Talk(1,"","H�o , l�n sau nh� ��n xem tuy�t y !") 
SetTask(127,100) 
Msg2Player("�em ��i �i�u cho ho�n nhan tuy�t y , tr� v� b�o tin cho L�u l�o gia ") 
end 
end 
