Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\libfestival\signin.lua]]); 

SZFILE = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\player.txt]]; 

function signin_add() 
-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
-- if (GetTask(TK_CO_PLAYTIMES) >= CO_MAXPLAYTIMES) then 
-- Say(CO_SIGNNPCNAME.." h�m nay ng��i �� tham gia <color=yellow>"..CO_MAXPLAYTIMES.." l�n <color> li�u , c� l� ng��i c�ng m�t m�i , n�n �i ngh� ng�i !", 0); 
-- return 0; 
-- end; 

if (GetTask(TK_CO_TOTAL) >= 50) then 
Say(CO_SIGNNPCNAME.." ng��i �� tham gia ng�y l� ho�t ��ng <color=yellow>50 l�n <color> li�u , tho�t nh�n c�ng m�t m�i , c�n ngh� ng�i !", 0); 
return 0; 
end; 

if (GetLevel() < CO_LEVELLIMIT) then 
Say(CO_SIGNNPCNAME.." c�p b�c c�a ng��i qu� th�p , ta kh�ng mu�n ng��i m�o hi�m , l�c n�o ��t t�i <color=yellow>"..CO_LEVELLIMIT.."<color> t�i t�m ta .", 0); 
return 0; 
end; 

if (IsCharged() == 0) then 
Say(CO_SIGNNPCNAME.." ch� c� sung tr� gi� nh� ch�i m�i c� th� tham gia ng�y l� ho�t ��ng .", 0); 
return 0; 
end; 

if (gb_GetTask(FESTIVAL_SHREWMOUSE, 1) ~= 1) then 
do return 0 end
local nNowTime = tonumber(GetLocalDate("%H")); 
local bOn = 0; 
if ((nNowTime >= 12 and nNowTime < 14) or 
(nNowTime >= 19 and nNowTime < 23) or 
(nNowTime >= 1 and nNowTime < 3)) then 
bOn = 1; 
end; 
if (bOn == 0) then 
Talk(1, "", CO_SIGNNPCNAME.."30 tu�i ng��i ho�t ��ng �em v�i m�i ng�y c� h�nh , th�i gian l� <color=yellow>12: ��n 14: 00 , 19: 00 ��n 23: 00 , 1: 00 ��n 3: 00 <color>. m�i ng��i mau t�i tham gia �i ."); 
return 0; 
else 
Talk(1, "", CO_SIGNNPCNAME.." ng��i c�ng mu�n tham gia ' xua �u�i 30 tu�i ng��i ' ho�t ��ng sao ? ti�c nu�i l� , ng��i d�n ���ng �� �i r�i , h�n �em v�i th� 0 ph�n , th� 15 ph�n , th� 30 ph�n , th� 45 ph�n sau tr� l�i "); 
return 0; 
end; 
end; 
-- if GetCash() <= 1000000 then
-- Say("Ng��i c� mang theo  �� 100 v�n ti�n h�i l� n� quan huy�n <color=green>ZhuYingTai<color> kh�ng th�?",0)
-- return 0
-- end
-- Pay(1000000)
return 1; 
end; 

-- script viet hoa By http://tranhba.com  nh� ch�i r�i �i ph� th�m thi�t tr� 
function playerleave_add() 
SetCurCamp(GetCamp()); 
tab_Itemlist = {981, 984, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994}; 

for i = 1, getn(tab_Itemlist) do 
ConsumeItem( -1, 1000, 6, 1, tab_Itemlist[i], 1 ); 
end; 
end; 

-- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng ��ch ph� th�m thi�t tr� 
function playergetinprepare_add() 
end; 

-- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i tr�ng ��ch ph� th�m thi�t tr� 
function playergetingame_add() 
	SetTask(TK_CO_PLAYTIMES, GetTask(TK_CO_PLAYTIMES) + 1);
	SetTask(TK_CO_TOTAL, GetTask(TK_CO_TOTAL) + 1);
SetCurCamp(1); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i tr�n doanh 
end;
