-- script viet hoa By http://tranhba.com  ��i h�i v� l�m th� v� 
Include("\\script\\missions\\championship\\head.lua")
Include("\\script\\missions\\championship\\tryout\\head.lua")
function main() 
Say("Cu�c so t�i tr�ng quan vi�n : l�n tranh t�i n�y �em t� anh h�ng thi�n h� c�ng v� l�m h�o ki�t tr�ng tuy�n ra 90 v� v� l�m cao th� ��i bi�u tham gia to�n khu ��i h�i v� l�m # m�i/xin ng��i �i tham gia long tr�ng ��ch ��i h�i v� l�m !", 1,"��ng � /want_enrol_option") 
end 

function want_enrol_option() 
cp_syntaskround() 
if (validateDate(CP_UPTO_TRYOUT, CP_END_TRYOUT)) then 
local optiontab = { 
" tham gia m�n ph�i d� ch�n cu�c so t�i /want_enrol", 
" tra x�t ta b�y gi� d� ch�n cu�c so t�i ��ch th�nh t�ch /look_sort", 
" m�n ph�i d� ch�n cu�c so t�i tr� gi�p /help_tryout", 
" ta m�t h�i tr� l�i !/OnCancel" 
} 
Say("Mu�n �i ��i h�i v� l�m ", getn(optiontab), optiontab) 
elseif(tonumber(date("%y%m%d%H")) > CP_END_TRYOUT) then 
Say("��i h�i v� l�m d� ch�n cu�c so t�i k�t th�c , ng��i c� th� ��n tr��c khi an th�y ��i h�i v� l�m quan vi�n nh�n tr�ng ch�n danh s�ch .", 0) 
else 
nHour = mod(CP_UPTO_TRYOUT, 100) 
nDay = floor(mod(CP_UPTO_TRYOUT, 10000) / 100) 
nMonth = floor(mod(CP_UPTO_TRYOUT, 1000000) / 10000) 
Say("��i h�i v� l�m d� ch�n cu�c so t�i �em t� ch�c v�i "..date("%Y").." n�m "..nMonth.." th�ng "..nDay.." ng�y "..nHour.." ch�nh th�c b�t ��u , xin/m�i ti�p t�c ch� � !",0) 
end 
end 

function want_enrol() 
-- script viet hoa By http://tranhba.com if v�n tr��ng m�c ��ch nh�ng kh�c vai tr� �� ghi danh then 
-- script viet hoa By http://tranhba.com  Say("V�n s� tr��ng m�c � v�n d�ng/u�ng �� c� vai tr� tham gia m�n ph�i d� ch�n cu�c so t�i , l� nh�ng kh�c vai tr� � v�n d�ng/u�ng kh�ng th� d� thi . xin/m�i � bu�ng tha cho d� thi vai tr� t� c�ch sau , l�i d�ng v�n vai tr� ghi danh d� thi #", 0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com end 
if (nt_gettask(CP_TASKID_REGIST) == 9) then -- script viet hoa By http://tranhba.com  �� h�y b� ghi danh t� c�ch 
Say("Ng��i �� b� qua tham gia m�n ph�i d� ch�n cu�c so t�i ��ch t� c�ch , kh�ng th� ti�p t�c ghi danh tham gia tranh t�i .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_TITLE) == 9) then -- script viet hoa By http://tranhba.com  �� l�y ���c quy�t cu�c so t�i v�ng t� c�ch 
Say("Ng��i �� l�y ���c tuy�n th� t� c�ch , kh�ng mu�n ��n c�i n�y n�a c��p v� !", 0) 
return 
end 
local nHour = mod(CP_UPTO_TRYOUT, 100) 
local opentime = TRYOUT_TIMER_2 / 60 / 60 / FRAME2TIME 
if (GetMissionV(MS_STATE) == 0) then 
local talkstr = " m�n ph�i d� ch�n cu�c so t�i b�t ��u v�i m�i ng�y "..nHour..":00 �i�m "..opentime..", b�y gi� l� "..date("%H:%M")..", ��i tr� l�i �i !" 
Say(talkstr, 0) 
return 
elseif (GetMissionV(MS_STATE) == 2) then 
local talkstr = " cu�c thi ��u n�y khu �ang ti�n h�nh tranh t�i , xin ch� ch�t m�t cu�c !" 
Say(talkstr, 0) 
return 
end 

Say("M�n ph�i d� ch�n cu�c so t�i b�t ��u v�i m�i ng�y "..nHour..":00 �i�m "..opentime.." l�c , ghi danh th�i gian l� 5 ph�t , tranh t�i th�i gian l� 10 ph�t , m�i ng��i ch� c� th� tham gia "..CP_MAXROUND.." c�c tranh t�i . �ang chu�n b� khu ghi danh sau , ng��i c� th� l�a ch�n r�i �i ho�c l� ch� ��i . c�n c� tranh t�i th�nh t�ch ch�n l�a 5 ng��i ��i bi�u m�n ph�i tham gia khu v�c t�ng quy�t cu�c so t�i ", 2,"Ta mu�n tham gia d� ch�n !/sure_enrol_1","�� cho ta xem m�t ch�t /OnCancel") 
end 

function sure_enrol_1() 
Say("Minh ch� c� l�nh , � v� l�m t�n t� li�n cu�c so t�i trung nghi�m c�m s� d�ng <color=red>PK thu�c men <color>, tham gia tr��c ng��i mu�n xem � tr�n ng��i c� hay kh�ng c� lo�i n�y thu�c men , n�u nh� kh�ng ki�m tra l� s� b� d�ng cu�c so t�i . ta s� thanh tr� ng��i d� th��ng PK tr�ng th�i . <color=red> ti�n v�o cu�c so t�i tr�ng l�c , ng��i mu�n xem trang b� ��ch ti�u hao �i�m . ti�n v�o cu�c so t�i tr�ng sau , nghi�m c�m d�i �i v�t ph�m . ng��i n�u l�i ki�m tra c�ng c� trong r��ng ��ch v�t ph�m ��y �� sao ? ",2,"Ta chu�n b� xong !/sure_enrol_2","Ta m�t h�i tr� l�i !/OnCancel") 
end 

function sure_enrol_2() 
Say("H�i tr��ng quan vi�n :<color=red> ti�n v�o chu�n b� khu c�ng tranh t�i khu , nh� ch�i kh�ng th� d�i �i trong t�i �eo l�ng ��ch v�t ph�m , nh�ng l� c�n c� th� s� d�ng c�ng c� r��ng c�ng trong t�i �eo l�ng ��ch v�t ph�m . ng��i ki�m tra m�t c�i c�ng c� trong r��ng ��ch v�t ph�m �� ch�a ?",2,"X�c ��nh /sure_enrol","Ta c�n kh�ng c� chu�n b� !/OnCancel") 
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
Say("Ng��i th�t l�n ��m # l�i d�m kh�ng tu�n th� minh ch� v� l�m ��ch ra l�nh , t� ti�n mang c�m thu�c ti�n v�o , nhanh l�n r�i �i !", 0) 
return 
end 

if (keyitem[1] == 0 and keyitem[2] == 0 and keyitem[3] == 0) then 
Say("C�ng c� c�a ng��i lan trong kh�ng c� thu�c men , �em thu�c men b� v�o c�ng c� lan #<color=red> ti�n v�o cu�c so t�i tr�ng sau c�m ch� d�i �i v�t ph�m , xin/m�i x�c ��nh c�ng c� lan c� ph�i l� hay kh�ng m�n ��ch ?<color>", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
local talkstr = " ng��i l�n ��u ti�n tham gia d� ch�n mu�n ��ng 10 v�n l��ng ��ch ti�n ghi danh ." 
Say(talkstr, 2,"��y l� 10 v�n l��ng ./pay_enrol_money","Ch� ta xem m�t ch�t /OnCancel") 
return 
end 

join_tryout() 
Msg2Player("Ti�n v�o tranh t�i khu sau , kh�ng th� d�i �i trong t�i �eo l�ng ��ch v�t ph�m , nh�ng l� v�n nh� c� c� th� s� d�ng t�i �eo l�ng c�ng c�ng c� trong r��ng ��ch v�t ph�m . "); 
end 

function pay_enrol_money() 
if (GetCash() >= CP_CASH) then 
Pay(CP_CASH) 

nt_settask(CP_TASKID_REGIST, CP_UPTO_TRYOUT) 
for i = 1084 , 1092 do 
nt_settask(i, 0) 
end 

join_tryout() 
return 
end 
Say("Ng��i ti�n ghi danh kh�ng �� , �� 10 v�n l��ng tr� l�i !", 0) 
end 

function look_sort() 
if (nt_gettask(CP_TASKID_ROUND) == 0) then 
Say("Ng��i b�y gi� c�n kh�ng c� tham gia b�t k� tranh t�i !", 0) 
else 
Say("��i h�i v� l�m m�n ph�i d� ch�n cu�c so t�i m�i ng��i nhi�u nh�t tham gia "..CP_MAXROUND.." l�n . ng��i b�y gi� �� tham gia <color=yellow>"..nt_gettask(CP_TASKID_ROUND).."<color> c�c tranh t�i , l�y ���c t�ng ph�n l� #"..nt_gettask(CP_TASKID_POINT)..", th�ng "..nt_gettask(CP_TASKID_WIN).." tr�ng , b�i "..nt_gettask(CP_TASKID_LOSE).." tr�ng , c�ng "..nt_gettask(CP_TASKID_TIE).." tr�ng .", 0) 
end 
end 
