Include([[\script\missions\springfestival\head.lua]]); 


function springfestival06_login() 
if (sf06_isactive() ~= 0) then 
Msg2Player("G�n nh�t , quan ph� c� h�nh <color=yellow> xua �u�i 30 tu�i ng��i ho�t ��ng <color>. � <color=yellow>19:00 ��n 23:00<color> c�c v� nh�n s� c� th� ��n nha m�n ghi danh tham gia ho�t ��ng .") 
end 
end 

if login_add then login_add(springfestival06_login, 2) end 