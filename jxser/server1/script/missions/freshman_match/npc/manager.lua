Include("\\script\\missions\\freshman_match\\head.lua")

-- script viet hoa By http://tranhba.com  v� l�m t�n t� cu�c so t�i quan vi�n 
function main() 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : t� 2005 n�m 6 th�ng 1 ng�y ��n 2005 n�m 6 th�ng 10 ng�y , m�i ng�y 20: ��n 23:00 �em c� h�nh <color=yellow> v� l�m t�n t� li�n cu�c so t�i <color>. b�n tr�ng tranh t�i m�c ��ch l� cho tay m�i #50 c�p ��n 89 c�p # s�ng l�p c�ng ��ng m�n trao ��i ��ch c� h�i , �� cao tay m�i ��ch v� ngh� , nhanh �i tham gia �i !", 1,"��ng � /want_bid_option") 
end 

function str__findicon(string) 
len = strlen(string) 
for i = 1, len do 
if (strbyte(string, i) == 93) then 
return 1 
end 
end 
return 0 
end 

function want_bid_option() 
local optiontab = {} 
if ( validateDate( CP_UPTO_TRYOUT, CP_END_TRYOUT ) ) then -- script viet hoa By http://tranhba.com  � t�n t� cu�c so t�i ��ch th�i gian l�c 
talkstr = " v� l�m t�n t� li�n cu�c so t�i quan vi�n : mu�n ghi danh tham gia v� l�m t�n t� li�n cu�c so t�i ?" -- script viet hoa By http://tranhba.com  �� quy�t ra t�ng l�nh ��i 
optiontab = { 
" ghi danh tham gia v� l�m t�n t� li�n cu�c so t�i '/regist_freshman", 
" ta mu�n ti�n v�o v� l�m t�n t� li�n cu�c so t�i '/transtoplace", 
" v� l�m t�n t� li�n cu�c so t�i tr� gi�p /help_freshmanmatch", 
" ta ch� m�t ch�t tr� l�i !/OnCancel" 
} 
elseif(tonumber( date( "%y%m%d%H" ) ) >= CP_END_TRYOUT ) then 
talkstr = " v� l�m t�n t� li�n cu�c so t�i quan vi�n : v� l�m t�n t� li�n cu�c so t�i �� k�t th�c , ng��i c� th� ki�m tra c�c m�n ph�i tr��c n�m t�n ." -- script viet hoa By http://tranhba.com  �� quy�t ra t�ng l�nh ��i 
optiontab = { 
" ki�m tra c�c t�n t� li�n cu�c so t�i /look_freshman", 
" nh�n l�y t�n t� li�n cu�c so t�i danh hi�u /catch_title", 
" v� l�m t�n t� li�n cu�c so t�i tr� gi�p /help_freshmanmatch", 
" ta ch� m�t ch�t tr� l�i !/OnCancel" 
} 
else 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : v� l�m t�n t� li�n cu�c so t�i c�n ch�a b�t ��u , xin ch� m�t ch�t !", 0); 
return 
end 

Say(talkstr, getn(optiontab), optiontab) 
end 




function catch_title() -- script viet hoa By http://tranhba.com 10 ��i m�n ph�i tr��c n�m nh�n l�y danh hi�u 
local factionnumber = GetLastFactionNumber() 
if( factionnumber < 0 or factionnumber > 9 ) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : ng��i kh�ng ph�i l� th�p ��i m�n ph�i ng��i sao ?", 0); 
return 
end 
if( tonumber(date("%y%m%d%H")) < CP_END_TRYOUT ) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : v� l�m t�n t� li�n cu�c so t�i ch�a k�t th�c , c�n ch�a ch�n l�a tr��c n�m t�n , kh�ng th� ban h�nh danh hi�u .", 0) 
return 
end 
	biwu_loadfile( FactionData[factionnumber + 1][1] );
for i = 1, 5 do 
		Name = biwu_getdata(FactionData[factionnumber+1][1], FactionData[factionnumber+1][2], "Top"..i);
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
			Title_AddTitle(factionnumber + 20, 1, TITLETIME);
			Title_ActiveTitle(factionnumber + 20);
			WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."]�ﵽ"..FactionTitle[factionnumber+1].."�ƺ�");
			Msg2Player("����"..FactionTitle[factionnumber+1].."�ƺ�");
return 1 
end 
end 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : ng��i kh�ng �� t� c�ch nh�n l�y v� l�m t�n t� li�n cu�c so t�i danh hi�u .",0); 
return 
end 


function look_freshman() 
if (tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : v� l�m t�n t� li�n cu�c so t�i c�n ch�a k�t th�c , c�n kh�ng c� quy�t cu�c so t�i ��ch m�n ph�i danh s�ch .", 0) 
return 
end 
local factab = {"Thi�u L�m /#look_list_fac(1)","Thi�n v��ng /#look_list_fac(2)","���ng m�n /#look_list_fac(3)","N�m ��c /#look_list_fac(4)","Nga Mi /#look_list_fac(5)","Th�y kh�i /#look_list_fac(6)","C�i Bang /#look_list_fac(7)","Ng�y nh�n /#look_list_fac(8)","V� ���ng /#look_list_fac(9)","C�n L�n /#look_list_fac(10)" ,"Kh�ng nh�n !/OnCancel"} 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : mu�n nh�n m�n ph�i t�n t� danh s�ch a ?", getn(factab), factab) 
end 

function look_list_fac(nfact) 
local ncount = 0 
biwu_loadfile( FactionData[nfact][1] ); 
local topfac_mem = {} 
for i = 1, 5 do 
name = biwu_getdata(FactionData[nfact][1], FactionData[nfact][2], "Top"..i); 
if (name ~= "" and name ~= nil) then 
		 	ncount = ncount + 1
topfac_mem[ncount] = name.."/OnCancel" 
end 
end 
if (ncount > 0) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :"..FactionData[nfact][3].." tr�ng tuy�n m�n ph�i danh s�ch :", getn(topfac_mem), topfac_mem); 
else 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :"..FactionData[nfact][3].." tr�ng tuy�n danh s�ch c�n kh�ng c� ", 0) 
end 
end 


function regist_freshman() 

if (GetLevel() >= 90 ) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : 90 c�p ho�c l� cao c�p h�n kh�c �em kh�ng th� tham gia v� l�m t�n t� li�n cu�c so t�i , ng��i c� th� ti�n v�o nh�n !", 0) 
return 
end 

if ( GetLevel() < 50 ) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : c�p b�c c�a ng��i kh�ng �� 50 c�p y�u c�u , kh�ng th� ghi danh tranh t�i , nh�ng l� ng��i c� th� ti�n v�o nh�n .", 0 ) 
return 
end 

if (GetLastFactionNumber() == -1) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : ng��i kh�ng ph�i l� th�p ��i m�n ph�i ng��i , kh�ng th� tham gia tranh t�i . gia nh�p th�p ��i m�n ph�i sau , m�i c� th� tham gia tranh t�i !", 0) 
return 
end 

if ( nt_gettask( CP_TASKID_REGIST ) == CP_UPTO_TRYOUT ) then 
Msg2Player("Ng��i �� b�o danh , tr�c ti�p �i g�p v� l�m t�n t� li�n cu�c so t�i quan vi�n l� c� th� ti�n v�o ." ) 
transtoplace() 
else 
local talkstr = " v� l�m t�n t� li�n cu�c so t�i quan vi�n : ng��i l�n ��u ti�n t� v� l�m t�n t� li�n cu�c so t�i sao ? mu�n tham gia sao ? " 
Say( talkstr, 2,"Ta mu�n ghi danh /sure_regist","�� cho ta xem m�t ch�t /OnCancel" ) 
return 
end 
end 

function sure_regist() 

nt_settask( CP_TASKID_REGIST, CP_UPTO_TRYOUT ) 
for i = 1096 , 1105 do 
nt_settask( i, 0 ) 
end 
nt_settask( CP_TASKID_LOGOUT, 0 ) 

transtoplace() 

end 



function look_the_time( THETIME ) 
local the_year = floor(THETIME / 1000000) 
local the_month = mod(floor(THETIME / 10000), 100) 
local the_date = mod(floor(THETIME / 100), 100) 
local the_hour = mod(THETIME,100) 
return the_month, the_date, the_hour 
end 
