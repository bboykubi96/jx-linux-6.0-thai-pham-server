Include("\\script\\missions\\宋金战场PK战\\宋金战场头文件.lua");
function OnTimer() 

State = GetMissionV(1) ; 
if (State == 0) then 
return 
end; 

-- script viet hoa By http://tranhba.com  � trong v遪g th阨 gian quy nh , hai i qu﹏ i kh玭g c� nh蕋 phng gi誸 ch誸 ch ch� tng , l� tranh t礽 k誸 th骳 
-- script viet hoa By http://tranhba.com  t� nh� m閠 m閠 Чi tng : c竎 tng s� ! theo l輓h truy襫 tin th玭g b竜 , ch qu﹏ t譵 t韎 ph輆 sau t╪g vi謓 b� i , ch髇g ta b� l� .. c� h閕 . b﹜ gi� lui binh ... v﹏ v﹏ .. 
Msg2MSAll(1,"S綾 tr阨  t鑙 , t筸 th阨 minh kim thu binh # l璾 i ng祔 mai t竔 chi課 , kh玭g gi誸 ch 甧m th� kh玭g tr� #"); 
SetMissionV(MS_STATE,3); 
CloseMission(1); 
end;
