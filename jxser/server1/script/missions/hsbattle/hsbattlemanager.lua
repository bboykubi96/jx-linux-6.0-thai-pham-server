-- script viet hoa By http://tranhba.com  d� thi l�u tr�nh 
-- script viet hoa By http://tranhba.com 1# c�ng ch� nh�p kh�u ��ch Npc ��i tho�i , l�a ch�n ti�n v�o th� m�y c� chi�n khu 
-- script viet hoa By http://tranhba.com 2# n�u nh� ph� h�p �i�u ki�n d� thi l� ti�n v�o chi�n khu b�n trong # kh�c m�t t�m b�n �� # , c�ng l�y 0 tr�n doanh m� th�c ti�n v�o 
-- script viet hoa By http://tranhba.com 3# nh� ch�i c�ng hai b�n Npc ��i tho�i , t� do l�a ch�n tham d� ��ch tr�n doanh . 
-- script viet hoa By http://tranhba.com 4# nh� ch�i Pk t� vong sau �em t� ��ng b� v�n ra s�n b�n ngo�i , nh�ng � b�n ��a �� b�n trong 
-- script viet hoa By http://tranhba.com 5# khi nh� ch�i t� vong l�c , s� t� ��ng h��ng c�ng b�n �� ��ch t�t c� nh� ch�i c�ng b� tr��c m�t ��ch chi�n hu�ng . 
-- script viet hoa By http://tranhba.com 6# n�u nh� c� th� , c� th� t� Npc ��i tho�i trung hi�u r� tr��c m�t ��ch t�ng ��ng h�ng th� 
-- script viet hoa By http://tranhba.com 7# tranh t�i c� th� d�a theo c�p b�c chia l�m c�c lo�i cu�c so t�i tr�ng 
-- script viet hoa By http://tranhba.com  v�o chi�n khu ��ch Npc# l�a ch�n tr�n doanh ��ch Npc 

Include("\\script\\missions\\hsbattle\\hshead.lua");
Include("\\script\\tong\\tong_header.lua");
Include("\\script\\missions\\huashanqunzhan\\dailog.lua");
MapTab = {}; 
MapCount = 1; 
MapTab[1]= {212, 1577, 3288}; 

function main() 
-- script viet hoa By http://tranhba.com [DinhHQ] 
-- script viet hoa By http://tranhba.com 20110330: change request 30/03/2011 
--do 
--Talk(1, "","Ch�c n�ng t�m th�i t�t ") 
--return 
--end 
local tbSay = 
{ 
"<dec><npc> ��i hi�p t�m ta c� chuy�n g� ? ", 
--" Hoa S�n tuy�t ��nh l�i ��i /HSBattle_Dailog_Main", 
} 
tinsert(tbSay,"Hoa S�n l�i ��i /#huashanqunzhan_SignUpMain(1)") 
tinsert(tbSay,"K�t th�c ��i tho�i /OnCancel") 
CreateTaskSay(tbSay) 
end; 


function HSBattle_Dailog_Main() 
-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
SetTask(300, 2); 
SetTask(301, 2605); 
SetTask(302, 3592); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
Say("Tr��c m�t v�n kh�ng c� ng��i ghi danh l�i ��i m�t m�nh ��u , ngh�a s� mu�n th� m�t ch�t sao ?",0) 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 
if (ms_state == 0) then 
Say("Tr��c m�t v�n kh�ng c� b�t k� bang h�i ghi danh tranh t�i ! ngh�a s� mu�n th� m�t ch�t sao ?", 3,"C� th� !/OnRegister","Bang h�i l�i ��i quy t�c l� th� n�o d�ng ��ch ? /OnHelp","�� cho ta mu�n mu�n !/OnCancel"); 
elseif (ms_state == 1) then 
OnReady(); 
elseif (ms_state == 2) then 
OnFighting(); 
else 
ErrorMsg(2) 
end; 

SubWorld = OldSubWorld; 
end 


function OnHelp() 
Talk(8, "","Bang h�i l�i ��i l� tr�n giang h� c� bang h�i h�c t�p v� ngh� ��ch ��a ph��ng , ��y l� c�ng b�nh so t�i ��a �i�m ","Mu�n tham gia bang h�i l�i ��i , ��u ti�n c�n t�i g�p ta th�n th�nh , th�n th�nh ng��i c�n l� tranh t�i bang h�i ��ch bang ch� . ","H�p th�nh ��i sau , 2 b�n ��i tr��ng t��ng lai ghi danh , hai b�n bang ch� m�i ng��i c�n ph� 1000 v�n l��ng . ","Ph� ho�n h�u , tranh t�i th�n th�nh k�t th�c . � nh�ng kh�c 2 c� bang h�i th�i �i�m tranh t�i , kh�ng th� ghi danh ","Th�n th�nh sau khi th�nh c�ng , hai b�n th�nh vi�n c� 10 ph�t ti�n v�o ��u tr�ng . sau �� , tranh t�i ch�nh th�c b�t ��u !" ,"Th�ng b�i l�y quy�t v�i song ph��ng t�ch ph�n s� l��ng . hoa h�ng bang h�i th�nh vi�n l�m cho ��i ph��ng tr�ng th��ng ��ch , �em ��t ���c 3 ph�n , ��i ph��ng b� kh�u tr� 1 ph�n ","Tranh t�i k�t th�c , c�i n�o bang h�i ��ch t�ch ph�n cao , �em ��t ���c th�ng l�i !","Ngo�i ra , � tranh t�i l�c , n�u nh� c� v�a kh�ng c� tranh t�i th�nh vi�n , kia th�ng l�i �em thu�c v� b�n kia . ","Chi�n th�ng ��ch bang h�i c� th� thu h�i 500 v�n l��ng , ngo�i ra c�n c� th� ��t ���c 400 v�n l��ng ti�n th��ng c�ng 12000 ch�t kinh nghi�m tr� gi� # thua nh�t ph��ng kh�ng th� c�m tr� v� �� tr� ti�n , c�n ph�i b� kh�u tr� 14000 �i�m bang h�i kinh nghi�m tr� gi� . "); 
end; 

function OnRegister() 
-- script viet hoa By http://tranhba.com  ghi danh 
if (GetTeamSize() ~= 2) then 
ErrorMsg(1) 
return 
else 
if (IsCaptain() ~= 1) then 
ErrorMsg(5) 
return 
end; 

OldPlayer = PlayerIndex; 
for i = 1, 2 do 
PlayerIndex = GetTeamMember(i); 
if (GetTongFigure() ~= TONG_MASTER or GetCash() < MS_SIGN_MONEY) then 
PlayerIndex = OldPlayer 
ErrorMsg(2) 
return 
end; 
end; 
PlayerIndex = OldPlayer; 

TongIdTab = {}; 
TongNameTab = {}; 
for i = 1, 2 do 
PlayerIndex = GetTeamMember(i); 
if (Pay(MS_SIGN_MONEY) == 0) then 
WriteLog(GetTongName().." bang h�i ��ng "..MS_SIGN_MONEY.." bang h�i l�i ��i tranh t�i thao t�c ph� kh�ng th�nh c�ng !!!! "); 
PlayerIndex = OldPlayer 
ErrorMsg(3) 
return 
else 
TongNameTab[i], TongIdTab[i] = GetTongName(); 
WriteLog(TongNameTab[i].." bang h�i ��ng "..MS_SIGN_MONEY.." bang h�i l�i ��i tranh t�i thao t�c ph� th�nh c�ng ! "); 
end; 
end; 
PlayerIndex = OldPlayer; 

OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
ErrorMsg(3) 
return 
end; 
SubWorld = idx; 

OpenMission(MISSIONID); 
for i = 1, 2 do 
			SetMissionV(MS_TONG1ID + i - 1, TongIdTab[i]);
end; 

SetMissionS(1, TongNameTab[1]); -- script viet hoa By http://tranhba.com 1#2 hai MissionString c�t gi� bang h�i ��ch t�n 
SetMissionS(2, TongNameTab[2]); 

str = "<#> b�t ��u bang h�i l�i ��i , hai b�n v� "..TongNameTab[1].."<#> c�ng "..TongNameTab[2]; 
AddGlobalNews(str); 
SubWorld = OldSubWorld; 
Msg2Team("C�c v� �� ho�n th�nh ghi danh , xin/m�i chu�n b� . 10 ph�t sau �em ch�nh th�c khai chi�n "); 
Say("C�c v� �� ho�n th�nh ghi danh , xin/m�i chu�n b� . 10 ph�t sau �em ch�nh th�c khai chi�n ",0); 
end; 
end; 

function OnReady() 
str = "<#> tr��c m�t bang h�i l�i ��i �ang ��ng � ti�n v�o ��u tr�ng giai �o�n , xin/m�i "..GetMissionS(1).."<#> c�ng "..GetMissionS(2).." bang h�i th�nh vi�n <#> nhanh l�n m�t ch�t ti�n v�o ��u tr�ng , chu�n b� b�t ��u tranh t�i !"; 
Say(str, 2,"Ta th�ch h�p �i�u ki�n , ta mu�n ti�n v�o ��u tr�ng /OnJoin","Ta mu�n m��n c� h�i n�y tr� gi�p m�i ng��i tr� n�n c��ng ��i h�n /OnCancel"); 
end; 

function ErrorMsg(ErrorId) 
if (ErrorId == 1) then 
Say("Song ph��ng bang h�i mu�n th�n th�nh tranh t�i , ��u ti�n mu�n th�nh l�p h�p th�nh ��i sau m�i c� th� th�n th�nh . ",0) 
elseif (ErrorId == 2) then 
Say("Ghi danh bang ch� c�n l� tr��c m�t ��i ng� ��ch ��i tr��ng , h�n n�a mu�n d�n �� 500 v�n l��ng ",0) 
elseif (ErrorId == 3) then 
Say("Ghi danh xu�t hi�n h� , xin li�n l�c nh�n vi�n qu�n l� ",0); 
elseif (ErrorId == 4) then 
Say("Ng��i kh�ng ph�i l� �ang so t�i th�nh vi�n c�a bang h�i , kh�ng th� v�o !", 0); 
elseif(ErrorId == 5) then 
Say("Ghi danh bang ch� c�n l� tr��c m�t ��i ng� ��ch ��i tr��ng ",0); 
else 

end; 

return 
end; 

function OnJoin() 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 

if (GetTongName() == GetMissionS(1)) then 
JoinCamp(1) 
elseif (GetTongName() == GetMissionS(2)) then 
JoinCamp(2) 
else 
ErrorMsg(4) 
end; 

ms_state = GetMissionV(MS_STATE); 
if (ms_state == 2) then 
SetFightState(1) 
elseif(ms_state == 1) then 
SetFightState(0) 
else 
return 
end; 
SubWorld=OldSubWorld 

end; 

function OnFighting() 
str = "<#> tr��c m�t bang h�i l�i ��i �ang ti�n h�nh tranh t�i , xin/m�i "..GetMissionS(1).."<#> c�ng "..GetMissionS(2).."<#> bang h�i th�nh vi�n ti�n v�o tranh t�i ��u tr�ng !"; 
Say(str, 2,"Ta ph� h�p �i�u ki�n , ta mu�n ti�n v�o ��u tr�ng /OnJoin","Ta kh�ng ph� h�p �i�u ki�n , ta kh�ng mu�n ti�n v�o ! /OnCancel"); 
end; 

function OnCancel() 
end; 
