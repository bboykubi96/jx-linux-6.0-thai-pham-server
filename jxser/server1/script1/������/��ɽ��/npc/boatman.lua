-- script viet hoa By http://tranhba.com  t�y s�n t� thuy�n phu 

function main() 
Say("Ng��i ngh� ng�i thuy�n �i D��ng Ch�u ? 500 hai !", 2,"H�o ! �i !/toyangzhou","Kh�ng ng�i thuy�n /no"); 
end 

function toyangzhou() 
if( GetCash() >= 500 ) then 
NewWorld( 80,1369,3369 ); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh�ng h�n ch� k� r�i �i t�y s�n t� tr� v� D��ng Ch�u sau s� d�ng tr� v� th�nh ph� 
SetFightState(1); 
Pay( 500 ); 
else 
Talk( 1,"","Kh�ng giao ti�n kh�ng th� l�n thuy�n !"); 
end 
end 

function no() 
end
