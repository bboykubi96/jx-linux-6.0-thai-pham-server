-- script viet hoa By http://tranhba.com  ��i h�i v� l�m th� v� 

Include("\\script\\missions\\freshman_match\\tryout\\head.lua")
function main() 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : t� 2005 n�m 6 th�ng 1 ng�y ��n 2005 n�m 6 th�ng 10 ng�y , m�i ng�y 20: ��n 23:00 �em c� h�nh <color=yellow> v� l�m t�n t� li�n cu�c so t�i li�n cu�c so t�i <color>. b�n tr�ng tranh t�i m�c ��ch l� cho tay m�i #50 c�p ��n 89 c�p # s�ng l�p c�ng ��ng m�n trao ��i ��ch c� h�i , �� cao tay m�i ��ch v� ngh� , nhanh �i tham gia �i !", 1,"��ng � /want_bid_option") 
end 

function want_enrol_option() 
if (validateDate(CP_UPTO_TRYOUT, CP_END_TRYOUT)) then 
local optiontab = { 
" tham gia v� l�m t�n t� li�n cu�c so t�i /want_enrol", 
" v� l�m t�n t� li�n cu�c so t�i th�nh t�ch !/look_sort", 
" v� l�m t�n t� li�n cu�c so t�i tr� gi�p /help_freshmanmatch", 
" ta ch� m�t ch�t tr� l�i !/OnCancel" 
} 
Say("Mu�n tham gia v� l�m t�n t� li�n cu�c so t�i sao ?", getn(optiontab), optiontab) 
elseif(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
Say("V� l�m t�n t� li�n cu�c so t�i �� k�t th�c , ��ng h�ng tr��c n�m ��ch c� th� ��n tr��c khi an th�y v� l�m t�n t� li�n cu�c so t�i quan vi�n (182, 202) nh�n l�y danh hi�u .", 0) 
else 
nHour = mod(CP_UPTO_TRYOUT, 100) 
nDay = floor(mod(CP_UPTO_TRYOUT, 10000) / 100) 
nMonth = floor(mod(CP_UPTO_TRYOUT, 1000000) / 10000) 
Say("V� l�m t�n t� li�n cu�c so t�i �em b�t ��u t� "..date( "%Y" ).." n�m "..nMonth.." th�ng "..nDay.." ng�y "..nHour.." ch�nh th�c b�t ��u , xin/m�i ti�p t�c ch� � !", 0 ) 
end 
end 

function want_enrol() 
if ( nt_gettask( CP_TASKID_REGIST ) ~= CP_UPTO_TRYOUT ) then 

if (GetLevel() >= 90 ) then 
Say("90 c�p tr� l�n kh�ng th� tham gia tranh t�i .", 0) 
return 
end 

if ( GetLevel() < 50 ) then 
Say("C�p b�c c�a ng��i kh�ng �� 50 c�p y�u c�u , kh�ng th� ghi danh tranh t�i !", 0 ) 
return 
end 

end 
local nHour = mod( CP_UPTO_TRYOUT, 100 ) 
local opentime = TRYOUT_TIMER_2 / 60 / 60 / FRAME2TIME 
if (GetMissionV( MS_STATE ) == 0) then 
local talkstr = " v� l�m t�n t� li�n cu�c so t�i m�i ng�y t� "..nHour..":00 l�c "..opentime..", b�y gi� l� "..date( "%H:%M" )..", ch� m�t ch�t tr� l�i �i !" 
Say(talkstr, 0) 
return 
elseif (GetMissionV(MS_STATE) == 2) then 
local talkstr = " v� l�m t�n t� li�n cu�c so t�i �ang ti�n h�nh , xin ch� ch�t m�t cu�c !" 
Say(talkstr, 0) 
return 
end 

Say("V� l�m t�n t� li�n cu�c so t�i m�i ng�y t� "..nHour..":00 l�c "..opentime..", ghi danh th�i gian l� 5 ph�t , tranh t�i th�i gian l� 15 ph�t , t�t c� m�i ng��i c� th� tham gia ."..CP_MAXROUND.." tranh t�i . ghi danh ti�n v�o chu�n b� tranh t�i khu v�c sau , ng��i c� th� r�i �i ho�c l� ��i ��n tranh t�i th�i gian . .", 2,"Ta mu�n tham gia tranh t�i !/sure_enrol_1","�� cho ta xem m�t ch�t /OnCancel") 
end 

function sure_enrol_1() 
Say("C�n c� minh ch� v� l�m ��ch hi�u l�nh , � tranh t�i trung nghi�m c�m s� d�ng PK thu�c , ng��i mu�n nh�n m�t ch�t tr�n ng��i ng��i c� hay kh�ng c�i n�y thu�c , n�u kh�ng s� b� d�ng cu�c so t�i . ta �em th� ti�u ng��i d� th��ng PK tr�ng th�i . <color=red> ti�n v�o cu�c so t�i tr�ng l�c , ng��i c�n nh�n trang b� ��ch ti�u hao �� . ti�n v�o ��u tr�ng sau , nghi�m c�m di ��ng v�t ph�m . ng��i ki�m tra m�t c�i xem m�t ch�t trang b� �� ch�a ?",2,"Ta �� chu�n b� xong !/sure_enrol_2","Ta ch� m�t ch�t tr� l�i !/OnCancel") 
end 

function sure_enrol_2() 
Say("H�i tr��ng quan vi�n :<color=red> ti�n v�o chu�n b� khu v�c c�ng tranh t�i khu v�c , nh� ch�i kh�ng th� di ��ng trang b� d�m v�t ph�m , nh�ng l� , c� th� s� d�ng v�t ph�m . ng��i mau ki�m tra m�t ch�t n�i c� lan th��ng ��ch v�t ph�m �� ch�a ?",2,"X�c nh�n /sure_enrol","Ta c�n kh�ng chu�n b� xong !/OnCancel") 
end 

function sure_enrol() 
local forbiditem_con = 0 
local forbiditem_key = 0 
local keyitem = {} 
local keyitem_g = {} 
local keyitem_d = {} 
local keyitem_p = {} 
for i = 1, 3 do 
keyitem[i] = ITEM_GetImmediaItemIndex (i) 
if (keyitem[i] ~= 0) then 
keyitem_g[i], keyitem_d[i], keyitem_p[i] = GetItemProp(keyitem[i]) 
else 
keyitem_g[i] = 0 
keyitem_d[i] = 0 
keyitem_p[i] = 0 
end 
end 
for i = 1, getn(CP_FORBID_ITEM) do 
forbiditem_con = CalcEquiproomItemCount( CP_FORBID_ITEM[i][2][1], CP_FORBID_ITEM[i][2][2], CP_FORBID_ITEM[i][2][3], CP_FORBID_ITEM[i][2][4] ) 
if (forbiditem_con > 0) then 
break 
end 
for j = 1, 3 do 
if (keyitem_g[j] == CP_FORBID_ITEM[i][2][1] and keyitem_d[j] == CP_FORBID_ITEM[i][2][2] and keyitem_p[j] == CP_FORBID_ITEM[i][2][3]) then 
forbiditem_key = 1 
break 
end 
end 
end 
if(forbiditem_con > 0 or forbiditem_key > 0) then 
Say("Ng��i th�t l� gan l�n , d�m kh�ng nghe t� minh ch� v� l�m ��ch ra l�nh , t� ti�n mang c�m thu�c ti�n v�o , mau r�i �i n�i n�y !", 0) 
return 
end 

if (keyitem[1] == 0 and keyitem[2] == 0 and keyitem[3] == 0) then 
Say("Tr��c m�t c�ng c� c�a ng��i lan Th��ng H�i kh�ng c� v�t ph�m , xin/m�i l�a ch�n v�t ph�m b� v�o ch�nh x�c v� tr� !<color=red> ti�n v�o cu�c so t�i tr�ng sau , ��u � di ��ng v�t ph�m , xin x�c nh�n c�ng c� lan th��ng ��ch v�t ph�m c�ng s�a sang l�i xong ch�a ?", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
local talkstr = " ng��i m�i l� l�n ��u ti�n tham gia a ? mu�n tham gia sao ?" 
Say(talkstr, 2,"Ta mu�n tham gia !/pay_enrol_money","�� cho ta xem m�t ch�t /OnCancel") 
return 
end 

join_tryout() 
Msg2Player("Ti�n v�o tranh t�i khu v�c sau , kh�ng th� di ��ng trang b� d�m v�t ph�m , nh�ng l� c� th� s� d�ng v�t ph�m "); 
end 

function pay_enrol_money() 

nt_settask(CP_TASKID_REGIST, CP_UPTO_TRYOUT) 
for i = 1084 , 1092 do 
nt_settask(i, 0) 
end 
nt_settask( CP_TASKID_LOGOUT, 0) 
join_tryout() 
end 

function look_sort() 
if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
for i = 1096 , 1105 do 
nt_settask(i, 0) 
end 
nt_settask( CP_TASKID_LOGOUT, 0) 
end 

if (nt_gettask(CP_TASKID_ROUND) == 0) then 
Say("Tr��c m�t ng��i c�n ch�a c� b�t k� tr�ng l�n tranh t�i !", 0) 
else 
Say("V� l�m t�n t� li�n cu�c so t�i cho ph�p m�i ng��i nhi�u nh�t tham gia "..CP_MAXROUND.." l�n , b�y gi� ng��i �� tham gia <color=yellow>"..nt_gettask(CP_TASKID_ROUND).."<color> l�n , t��ng th��ng v� "..nt_gettask(CP_TASKID_POINT)..", th�ng "..nt_gettask(CP_TASKID_WIN).."t tr�ng , thua "..nt_gettask(CP_TASKID_LOSE).." tr�ng , c�ng "..nt_gettask(CP_TASKID_TIE).." tr�ng .", 0) 
end 
end 
