-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y �� t� # v� v��ng ki�m nhi�m v� # ng�y nh�n �� t� k� danh nhi�m v� # 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/17 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tr = GetTask(4) 
UTask_gb = GetTask(8) 
UTask_world30 = GetByte(GetTask(30),1) 
if (UTask_world30 == 0) and (GetLevel() >= 10) and (GetFaction() ~= "tianren") then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng # y�u c�u 10 c�p tr� l�n # 
-- script viet hoa By http://tranhba.com  DelItem(50) -- script viet hoa By http://tranhba.com  ph�ng ng�a n�ng ti�p nh�n v� sau , nh� ch�i nh�t l�n nhi�m v� ��o c� 
Say(" � <color=Red> Hoa S�n th��ng <color> c� d�u m�t thanh <color=Red> v� v��ng ki�m <color>, ng��i n�o b�t ���c thanh ki�m n�y �em c� tr�ng th��ng !", 2, "# �i l�y ki�m /get_yes","Kh�ng th�ch !/get_no") 
elseif ((UTask_world30 == 5) and (HaveItem(50) == 1)) then -- script viet hoa By http://tranhba.com  c� v� v��ng ki�m 
world30_prise() 
elseif ((UTask_world30 > 0) and (UTask_world30 < 10)) then 
Talk(1,"","<color=Red> v� v��ng ki�m <color> # gi�u � <color=Red> Hoa S�n <color>, l�n �i Hoa S�n ���ng x� xa x�i , tr�n ���ng hung hi�m n�ng n� ng��i ph�i c�n th�n !") 
elseif (UTask_world30 == 10) then -- script viet hoa By http://tranhba.com  tr��c kia ho�n th�nh nhi�m v� ng��i chuy�n ��i thay ��i l��ng tr� gi� 
Utask_world30 = SetByte(GetTask(30),1,127) 
SetTask(30,Uworld30) 
if (GetFaction() == "tianren") then 
Talk(1,"","Ng��i t�m ���c v� v��ng ki�m c�ng lao , b�n gi�o s� nh� , s� kh�ng b�c ��i ng��i !") 
else 
Talk(1,"","Nh�n � ng��i thay b�n gi�o �o�t ���c b�o ki�m ��ch ph�n th��ng , h�y thu ng��i v�o d�y ") 
end 
elseif (UTask_tr == 70*256) and (GetFaction() ~= "tianren") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Ng��i ngh� �i nam ph��ng sao ? trong ch�n v� l�m nguy�n v� s� cao th� , suy ngh� k� c�ng li�u l�i �i .") 
else 
Talk(1,"","Ng��i bi�t kh�ng ? phong ���ng ���ng ch�nh l� ���ng kim ��i kim ho�ng �� ��ch Th�t c�ng ch�a , kh�ng ch� c� ��p , v� c�ng c�n r�t cao .") 
end 
end; 

function get_yes() 
Talk(1,""," l�n �i Hoa S�n ���ng x� xa x�i , tr�n ���ng hung hi�m n�ng n� , ng��i c� th� ��n <color=Red> bi�n kinh <color> ng�i xe ng�a �i Hoa S�n ph� c�n <color=Red> ph��ng t��ng <color> c�ng c� th� xin/m�i b�n gi�o ��ch <color=Red> nh�t nguy�t ��n ch� � h�p t�t <color> h� t�ng ng��i �i tr��c .") 
SetTask(30, SetByte(GetTask(30),1,5)) 
AddNote("Ti�p nh�n v� # �i Hoa S�n t�m v� v��ng ki�m . ") 
Msg2Player("Ti�p nh�n v� # �i Hoa S�n t�m v� v��ng ki�m . ") 
end; 

function get_no() 
Talk(1,""," l�c n�o c�ng c� ng��i mu�n c�m v� v��ng ki�m t�i ��t ���c tr�ng th��ng .") 
end; 

function world30_prise() 
DelItem(50) 
i = ReturnRepute(15,19,6) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng 15 , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c 19 c�p , m�i c�p �� gi�m 6% 
Uworld30 = SetByte(GetTask(30),1,127) 
AddRepute(i) 
SetTask(30,Uworld30) 
Earn(500) 
Talk(1,"","Nh�n � ng��i thay b�n gi�o �o�t ���c b�o ki�m ��ch ph�n th��ng , h�y thu ng��i v�o d�y ") 
AddNote("Tr� v� ng�y nh�n d�y , �em v� v��ng ki�m mang cho ng�y nh�n s� t� , tr� th�nh �� t� , ��t ���c 500 hai t��ng th��ng . ") 
Msg2Player("Tr� v� ng�y nh�n d�y , �em v� v��ng ki�m mang cho ng�y nh�n s� t� , ho�n th�nh nhi�m v� . tr� th�nh ng�y nh�n d�y �� t� , ��t ���c 500 t��ng th��ng , danh v�ng gia t�ng . "..i.." �i�m .") 
end; 

function enroll_prise() 
SetFaction("tianren") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ng�y nh�n d�y 
SetCamp(2) 
SetCurCamp(2) 
AddMagic(135) 
SetRank(55) -- script viet hoa By http://tranhba.com  thi�t tr� danh hi�u 
SetRevPos(49, 28) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetTask(4, 10*256) 
Msg2Player("Hoan ngh�nh gia nh�p ng�y nh�n d�y , tr� th�nh s�t th� , h�c ���c t�n d��ng nh� m�u . ") 
AddNote("Gia nh�p ng�y nh�n d�y , tr� th�nh s�t th� , h�c ���c t�n d��ng nh� m�u . ") 
end; 

function enroll_no() 
end; 
