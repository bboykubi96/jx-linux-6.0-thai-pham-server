Include("\\script\\missions\\ËÎ½ğÕ½³¡PKÕ½\\ËÎ½ğÕ½³¡Í·ÎÄ¼ş.lua");
function OnTimer() 

State = GetMissionV(1) ; 
if (State == 0) then 
return 
end; 

-- script viet hoa By http://tranhba.com  ë trong vßng thêi gian quy ®Şnh , hai ®¹i qu©n ®éi kh«ng cã nhÊt ph­¬ng giÕt chÕt ®Şch chñ t­íng , lµ tranh tµi kÕt thóc 
-- script viet hoa By http://tranhba.com  tû nh­ mét mét §¹i t­íng : c¸c t­íng sÜ ! theo lİnh truyÒn tin th«ng b¸o , ®Şch qu©n t×m tíi phİa sau t¨ng viÖn bé ®éi , chóng ta bá lì .. c¬ héi . b©y giê lui binh ... v©n v©n .. 
Msg2MSAll(1,"S¾c trêi ®· tèi , t¹m thêi minh kim thu binh # l­u ®îi ngµy mai t¸i chiÕn , kh«ng giÕt ®Şch ®em thÒ kh«ng tr¶ #"); 
SetMissionV(MS_STATE,3); 
CloseMission(1); 
end;
