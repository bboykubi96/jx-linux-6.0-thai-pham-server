function OnDeath(sel) 
Uworld42 = GetTask(42) 
if (Uworld42 == 70) then 
Talk(8,"U42_prise","Ha ha , h�o ti�u t� , kh�ng ngh� t�i ng��i c�ng l�i h�i nh� v�y ","Ti�n b�i qu� khen !","Cu�c s�ng nh� m�ng , t�nh l�i �i . m�y c�i n�y ng��i tu�i tr� kh�ng c� ��c t�i ch� c�a ta , ng��i d�n b�n h�n �i th�i !","# �a t� ti�n b�i !","Ti�u t� , nh� qu� tr�ng m�nh c� , m�t �i , h�i h�n c�ng kh�ng k�p li�u , ta � c� nh� g�p n�n ��ch th�i �i�m tr�m m� v� c�ng , ��t t�i tuy�t th� v� c�ng th� ph�i l�m th� n�o ��y ? c�n kh�ng b�ng c�ng con ch�u qu� b�nh th��ng ng�y .","T�i h� nh� ","M�y c�i n�y ��a tr� c�n d�y . ta b�nh sanh h�c ���c r�t nhi�u , ng��i c�ng mu�n b�t ch��c t�p , l�m r�t nhi�u vi�c thi�n , coi nh� l� gi�p ta t�ch c�ng ��c .","�a t� ti�n b�i !") 
Msg2Player("��nh b�i th��ng l�ng kh�ch ") 
NewWorld(167,1400,2974) 
end 
end; 

function U42_prise() 
SetTask(42,255) 
AddProp(2) 
	Ubonus86 = GetTask(86) + 1					-- script viet hoa By http://tranhba.com  ��¼��������2��Ǳ��(��һ�ֽ�+1)
if (GetByte(Ubonus86,1) >= 250) then -- script viet hoa By http://tranhba.com  cho l�i # th��ng h�n v� 250 �i�m 
Ubonus86 = 250 
end 
SetTask(86,Ubonus86) 

i = random(30,35) 
AddRepute(i) 
Msg2Player(" l�nh ng� s�m ��nh , ng��i ti�m n�ng gia t�ng 2 �i�m ") 
Msg2Player("<#> m�t t�ch ��a tr� nhi�m v� # c�u m�t t�ch ��a tr� , ho�n th�nh nhi�m v� . ng��i danh v�ng gia t�ng "..i.."<#> �i�m .") 
AddNote("M�t t�ch ��a tr� nhi�m v� # c�u m�t t�ch ��a tr� , ho�n th�nh nhi�m v� . ng��i danh v�ng gia t�ng ") 
end 
