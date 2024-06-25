Include([[\script\missions\springfestival\head.lua]]); 


function springfestival06_login() 
if (sf06_isactive() ~= 0) then 
Msg2Player("GÇn nhÊt , quan phñ cö hµnh <color=yellow> xua ®uæi 30 tuæi ng­êi ho¹t ®éng <color>. ë <color=yellow>19:00 ®Õn 23:00<color> c¸c vÞ nh©n sÜ cã thÓ ®Õn nha m«n ghi danh tham gia ho¹t ®éng .") 
end 
end 

if login_add then login_add(springfestival06_login, 2) end 