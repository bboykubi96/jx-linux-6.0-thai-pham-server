-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng v�n 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2); 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if ((UTask_tm >= 30*256+50) and (UTask_tm <= 30*256+60) and (HaveItem(42) == 1)) then		-- script viet hoa By http://tranhba.com 30������
L30_prise() 
elseif (UTask_tm >= 40*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","Ng��i gi�p ta b�o n�y ��i th� , ng��i n�i , ng��i mu�n c�i g� , ta t�t c� ��u cho ng��i !") 
else -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh 30 c�p nhi�m v� # thi�u t�nh ��i tho�i # 
Talk(1,"","Ti�u xuy�n , ta h�i t� ��ng th��ng �� th� n�y h�n n�y , m�t ng�y kh�ng b�o , ta ch�t kh�ng nh�m m�t !") 
end 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Giang h� hi�m g�t , ng��i m�t th�n m�t m�nh h�nh t�u giang h� , ph�i nhi�u th�m c�n th�n ! ") 
else 
Talk(1,"","Ta b�nh th�n h�n nh�t gi�t ng��i c��p b�c ��ch th� ph� !") 
end 
end; 

function L30_prise() 
Talk(2, "","���ng v�n s� th�c , ta �� t�m ���c nh�ng th� kia tr�i ph� , thay ng��i b�o th� , ��y l� �o�t l�i ��ch # h�a kh� ph� # , ch� c�n ng��i giao n� cho ch��ng m�n , c�ng s� kh�ng n�a b� tr�ch ph�t li�u !","Ta cu�i c�ng coi l� ��i ��n c�i ng�y n�y , ng��i n�i , ng��i mu�n c�i g� , ta t�t c� ��u cho ng��i !") 
DelItem(42) 
SetRank(28) 
SetTask(2, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(50) 
-- script viet hoa By http://tranhba.com  AddMagic(54) 
-- script viet hoa By http://tranhba.com  AddMagic(47) 
-- script viet hoa By http://tranhba.com  AddMagic(343) 
add_tm(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m ���ng m�n c�p tr��c h� v� , h�c ���c �u�i t�m ti�n , ��y tr�i hoa ng� , xuy�n tim ��m . ") 
AddNote("Tr� l�i h�a kh� ph�ng , giao h�a kh� ph� cho ���ng v�n , ho�n th�nh h�a kh� ph� nhi�m v� , th�ng l�m c�p tr��c h� v� ") 
end; 
