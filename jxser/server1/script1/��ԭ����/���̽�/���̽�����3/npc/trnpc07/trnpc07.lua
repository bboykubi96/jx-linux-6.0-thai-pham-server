-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y H�u h� ph�p c�ng lu�t �ch c�ch # ng�y nh�n 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan # h�y b� c�ng n�y ch�n h�nh d�ng c� quan b� ph�n # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4) 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 40*256) and (GetLevel() >= 40) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� kh�i ��ng 
Say("C�n c� tin/th� b�o , tri�u ��nh tr�ng th�n Th�i �y <color=Red> li�u k� color> th� ra l� h�n l� �� d�ng qua gian t� , m�c d� h�n �� c�o l�o v� qu� , nh�ng quy�t kh�ng th� �� cho n� ho�c l� r�i �i kim qu�c , theo c� th� tin tin t�c , li�u k� c�p k� t�y t�ng chu�n b� l�y ��o <color=Red> ki�m c�c <color> tr� v� T� Xuy�n , ta ph�i ng��i l�p t�c ��ng th�n �i tr��c ch�n l�i h�n , nh�t ��nh ph�i l�m cho ki�m c�c th�c ��o tr� th�nh h�n t�ng th�n ��t !", 2,"Thu�c h� tu�n l�nh /L40_get_yes","Thu�c h� s� r�ng kh�ng th� �am n�y tr�ch nhi�m n�ng n� /L40_get_no") 
		elseif (UTask_tr == 40*256+20) and (HaveItem(159) == 1) then
Talk(1,"L40_prise","��y l� ta � li�u k� tr�n ng��i t�m ���c m�t th� ") 
elseif (UTask_tr >= 10*256) and (UTask_tr < 40*256) then -- script viet hoa By http://tranhba.com  ch�a nh�n 40 c�p nhi�m v� 
Talk(1,""," luy�n binh ng�n ng�y , d�ng binh nh�t th�i , ch� c�n to�n t�m to�n � ph�c v� b�n gi�o , b�n gi�o s� kh�ng b�c ��i ng��i !") 
elseif (UTask_tr > 40*256) and (UTask_tr < 50*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 40 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","Tin/th� b�o <color=Red> li�u k� color> �� ��n <color=Red> ki�m c�c th�c ��o ��ch kh�a v�n ��ng <color> ki�m c�c m�t d�y ��a h�nh ph�c t�p , ng��i c� th� ti�u �t ti�n �� cho <color=Red> � ��n ch� color> d�n ng��i �i , nhanh �i mau tr� v� !") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,""," l�m ph�n b�n gi�o ng��i c�a , ta tuy�t ��i �� cho h�n s�ng kh�ng b�ng ch�t !") 
end 
elseif (UTask_tr >= 70) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Ngh� ���c ch�a ? mu�n � l�i ch� n�y , ho�c l� xu�i nam Trung Nguy�n ? ") 
else 
Talk(1,"","Ng��i l� ai ? ch�ng l� ng��i l� Trung Nguy�n gi�n �i�p ?") 
end 
end; 

function L40_get_yes() 
Talk(1,"","Tin/th� b�o <color=Red> li�u k� color> �� ��n <color=Red> ki�m c�c th�c ��o ��ch kh�a v�n ��ng <color> ki�m c�c m�t d�y ��a h�nh ph�c t�p , ng��i c� th� ti�u �t ti�n �� cho <color=Red> � ��n ch� <color> d�n ng��i �i , nhanh �i mau tr� v� !") 
	SetTask(4, 40*256+20)
AddNote(" � tr�n tr�i nh�n d�y t�ng th� ba th�y H�u h� ph�p c�ng lu�t �ch c�ch , ti�p nh�n v� h�nh th�ch , ��n kh�a v�n ��ng �m s�t li�u k� ") 
Msg2Player(" � tr�n tr�i nh�n d�y t�ng th� ba th�y H�u h� ph�p c�ng lu�t �ch c�ch , ti�p nh�n v� h�nh th�ch , ��n kh�a v�n ��ng �m s�t li�u k� ") 
end; 

function L40_get_no() 
Talk(1,"","C�i n�y chuy�n nh� c�ng l�m kh�ng t�t , b�n gi�o nu�i ng��i t�i l�m c�i g� ?") 
end; 

function L40_prise() 
Talk(1, "", " l�m t�t l�m , l�n n�y l�p c�ng l�n , ta nh�t ��nh s� h��ng gi�o ch� n�i ng��i ��ch h�o tho�i ") 
SetRank(59) 
DelItem(159) 
SetTask(4, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(364) 
-- script viet hoa By http://tranhba.com  AddMagic(146) -- script viet hoa By http://tranhba.com  Ng� hi�n ch�t 
add_tr(50) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i b� ��ng c�a v� # ch��ng k� th� , h�c ���c bi t� gi� m�t . ") 
AddNote("Tr� v� ng�y nh�n d�y , �em m�t th� giao cho H�u h� ph�p c�ng lu�t �ch c�ch , ho�n th�nh h�nh th�ch nhi�m v� , th�ng c�p l�m ch��ng k� th� ") 
end; 
