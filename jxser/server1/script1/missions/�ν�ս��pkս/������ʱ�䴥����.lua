Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");
function OnTimer() 

State = GetMissionV(1) ; 
if (State == 0) then 
return 
end; 

-- script viet hoa By http://tranhba.com  � trong v�ng th�i gian quy ��nh , hai ��i qu�n ��i kh�ng c� nh�t ph��ng gi�t ch�t ��ch ch� t��ng , l� tranh t�i k�t th�c 
-- script viet hoa By http://tranhba.com  t� nh� m�t m�t ��i t��ng : c�c t��ng s� ! theo l�nh truy�n tin th�ng b�o , ��ch qu�n t�m t�i ph�a sau t�ng vi�n b� ��i , ch�ng ta b� l� .. c� h�i . b�y gi� lui binh ... v�n v�n .. 
Msg2MSAll(1,"S�c tr�i �� t�i , t�m th�i minh kim thu binh # l�u ��i ng�y mai t�i chi�n , kh�ng gi�t ��ch �em th� kh�ng tr� #"); 
SetMissionV(MS_STATE,3); 
CloseMission(1); 
end;
