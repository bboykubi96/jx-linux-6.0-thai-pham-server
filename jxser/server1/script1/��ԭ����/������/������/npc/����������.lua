-- script viet hoa By http://tranhba.com  ph�i Thi�u l�m b�n binh kh� �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\23) gia nh�p ��o ���c qu�ng th�ch nhi�m v� , nh�ng t�i di�n th�m danh v�ng 

Include("\\script\\global\\repute_head.lua")

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
Uworld131 = GetTask(131) 
if (Uworld131 == 10) and (GetItemCount(138) >= 5) and (GetItemCount(121) >= 5) and (GetItemCount(118) >=5) then 
Talk(1,"U131_prise","��i s� , t�i h� �� mang v� c�c lo�i qu�ng th�ch , m�i xem nh�n .","C�i n�y qu�ng th�ch ..... c�m t� ng��i !") 
elseif (GetFaction() == "shaolin") or (Uworld38 == 127) then 
if (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >=4) and ((Uworld131 < 10) or ((GetGameTime() > Uworld131) and (Uworld131 > 255))) then 
Say("V�n t� � v�o kim qu�c ph�m vi , kho�ng c�ch n�i n�y 100 d�m th� r�n l�y ���c kim qu�c ��ch ra l�nh , kh�ng th� b�n binh kh� qu�ng th�ch cho Thi�u L�m . tr��c m�t , t� b�n trong v� kh� �� sinh t� , n�u nh� kim qu�n ti�n c�ng , s� r�ng kh�ng th� ch�ng c� . ta c�n t� m� thi�t , l��ng m� b�c , x�ch m� ��ng .",3,"��ng � �i thu t�p qu�ng th�ch . /yes1"," � tuy�n mu�n mua m�t �t binh kh� /yes","T�i h� c�n c� nh�ng chuy�n kh�c , l�n sau tr� l�i . /no") 
else 
Say("Thi�u L�m v� c�ng n�i ti�ng thi�n h� , nh�ng l� , n�u nh� kh�ng c� v� kh� , c�ng phu g� th� ��u kh�ng h�u d�ng .", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
end 
else 
Talk(1,"","Ch��ng m�n c� l�nh , b�n ph�i v� kh� ch� b�n cho ��ng m�n ") 
end 
end; 

function yes() 
Sale(69) 
end; 

function yes1() 
Talk(2,"","Thi�u L�m n�m trong tay v� l�m s� m�ng �� m�y tr�m n�m , t�i h� nguy�n � to�n l�c �ng ph� !","Ph�t t� t� bi , Thi�u L�m c�n ng��i tr� gi�p . xin gi�p ta t�m t� m� thi�t , l��ng m� b�c , x�ch m� ��ng , m�i lo�i 5 kh�i .") 
SetTask(131,10) 
Msg2Player("��ng � gi�p ph�i Thi�u l�m �i t�m t� m� thi�t , l��ng m� b�c , x�ch m� ��ng , m�i lo�i 5 kh�i . ") 
end 

function U131_prise() 
for i=1,5 do 
DelItem(138) 
DelItem(121) 
DelItem(118) 
end 
	SetTask(131,GetGameTime()+14400)
	i = GetReputeLevel(GetRepute()) + 2
AddRepute(i) 
Msg2Player("��ng qu�ng th�ch cho r�ng m�t , ho�n th�nh nhi�m v� , ng��i danh v�ng gia t�ng "..i.." �i�m .") 
end 

function no() 
end; 
