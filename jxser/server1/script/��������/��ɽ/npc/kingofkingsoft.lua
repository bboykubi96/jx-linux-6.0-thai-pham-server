-- script viet hoa By http://tranhba.com  Hoa S�n tuy�t ��nh d�ng bang NPC 
-- script viet hoa By http://tranhba.com  By#Dan_Deng(2003-09-23) 
-- script viet hoa By http://tranhba.com edit by ti�u l�ng nhi�u h�n (2007-09-14) 
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function about_tong() 
Talk(7,"","�� l�p bang h�i l�m bang ch�, ng��i ch�i ph�i c� ��ng c�p t� 61 tr� l�n, �� xu�t s� r�i kh�i m�n ph�i ch� �� tr�n ��u, c� 1 nh�c v��ng ki�m v� 1 v�n l��ng trong r��ng, ��ng c�p th�ng so�i 20 tr� l�n, danh v�ng 200 tr� l�n.","# ng��i h�i th�nh l�p bang h�i c� �i�u ki�n g� , ta t�i t� t� n�i cho ng��i nghe !","��u ti�n ng��i nh�t ��nh ph�i �� xu�t s� ��c l�p x�ng x�o giang h� # ti�p theo ng��i kh�ng th� � b�t k� bang h�i trung # l�n n�a ng��i mu�n c� c� nh�t ��nh giang h� danh v�ng # cu�i c�ng ng��i th�ng su�t l�c kh�ng th� nh� v�i 30 c�p !","��t t�i nh�ng th� n�y y�u c�u sau ng��i ch� c�n t� t�ng kim tr�n chi�n tr��ng ��t ���c m�t thanh nh�c v��ng ki�m l�y n�y l�m bang ch� t�n v�t l� ���c r�i . n�u nh� ng��i th�nh l�p ��ch bang ph�i c� ��y �� nhi�u ng��i �ng h� , c�i n�y bang h�i l� c� th� tr� th�nh ch�nh th�c bang h�i m� v�n h�nh ","��u ti�n ng��i ph�i c� n�ng l�c , � 3 ng�y b�n trong �t nh�t ph�i t�m ���c 16 c� c�ng ng��i ch� th� t��ng ��u/��c ng��i c�a gia nh�p , n�u nh� kh�ng �� li�n kh�ng c� kh�ng c� bi�n ph�p kh�c , c�i n�y 3 ng�y c� th� g�i l� kh�o nghi�m k� '."," � ng��i bang h�i c� 16 ng��i sau giang h� s� cho ng��i kh�o nghi�m , n�u nh� 3 h�m sau kh�ng �� 16 ng��i giang h� c�ng kh�ng th�a nh�n ng��i bang h�i ","Cu�i c�ng , th�nh l�p bang h�i ph�i c� ��i l��ng ti�n b�c . c� g�ng ��t t�i m�c ti�u �i !") 
end 

function main(sel) 

dofile("script/global/g7vn/g7configall.lua")
dofile("script/��������/��ɽ/npc/kingofkingsoft.lua")

if(lapbanghoason == 0) then
	Say("Ch�c n�ng bang h�i t�m th�i ch�a m�.")
	return 1;
end

Tong_name,oper = GetTong() 
if (oper == 0) and (GetTask(99) == 1) then 
Say("Ti�p t�c l�p ng��i bang h�i , b�t ��u chuy�n giang h� nghi�p !",2,"B�t ��u d�ng bang /Direct_CreateTong","Ch� m�t ch�t /wait_a_moment") 
elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 61) and (GetRepute() >= 200) and (GetLeadLevel() >= 20) and (HaveItem(195) == 1) then 
Talk(4,"create_pay","Nh� ch�i # kim s�n ch��ng m�n nh�n , xin h�i ta mu�n nh� th� n�o m�i c� th� gi�ng ng��i m�t d�ng tr� th�nh khai t�ng l�p ph�i tr� th�nh m�t gi�p t�ng ch� ��y ? ","Kim s�n ch��ng m�n nh�n # ��u ti�n ng��i mu�n tin ch�c m�nh c� t��ng �ng n�ng l�c , sau �� t�m ra m�t d�ng ��c bi�t v�t ph�m l�m bang ch� t�n v�t , n�i th� d� nh� � tr�n chi�n tr��ng ph�n d�ng gi�t ��ch c� th� l�y ���c nh�c v��ng ki�m ","Nh� ch�i # nh�c v��ng ki�m ? ng��i n�i l� thanh ki�m n�y sao ? ","Kim s�n ch��ng m�n nh�n # th� ra l� ng��i �� c� n� . kh�ng t� , qu� nhi�n tu�i tr� t�i cao . ") 
else -- script viet hoa By http://tranhba.com  n�y b� ph�n v� thi�u t�nh ��i tho�i , ��i m� r�ng . 
Say("<#>"..GetName().." c� chuy�n g� kh�ng ?", 
2, 
"<#>T�m hi�u c�ch th�c th�nh l�p v� x�y d�ng bang h�i !/about_tong", 
-- script viet hoa By http://tranhba.com  "<#> nh�n l�y th�nh ch� bang h�i t��ng th��ng /talk_citytong_award", 
"<#>Kh�ng c� g� /nothing") 
-- script viet hoa By http://tranhba.com  i = random(0,1) 
-- script viet hoa By http://tranhba.com  if (i == 0) then 
-- script viet hoa By http://tranhba.com  Talk(1,"","Kim s�n ch��ng m�n nh�n # n�u nh� mu�n th�nh l�p m�nh bang h�i , s� v� n� b� ra ��i l��ng th�i gian tinh l�c c�ng t�m huy�t , thi�t kh�ng th� n�a ���ng h�y b� . ") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(4,"","Kim s�n ch��ng m�n nh�n # ng��i h�i th�nh l�p bang h�i c� �i�u ki�n g� , ta t�i t� t� n�i cho ng��i nghe . ","Kim s�n ch��ng m�n nh�n # ��u ti�n ng��i nh�t ��nh ph�i �� xu�t s� ��c l�p x�ng x�o giang h� # ti�p theo ng��i kh�ng th� � b�t k� bang h�i trung # l�n n�a ng��i mu�n c� c� nh�t ��nh giang h� danh v�ng # cu�i c�ng ng��i th�ng su�t l�c kh�ng th� nh� v�i 30 c�p . ","Kim s�n ch��ng m�n nh�n # ��t t�i nh�ng th� n�y y�u c�u sau ng��i ch� c�n t� tr�n chi�n tr��ng ��t ���c m�t thanh nh�c v��ng ki�m l�y n�y l�m bang ch� t�n v�t l� ���c r�i . n�u nh� ng��i th�nh l�p ��ch bang ph�i c� ��y �� nhi�u ng��i �ng h� , c�i n�y bang h�i l� c� th� tr� th�nh ch�nh th�c bang h�i m� v�n h�nh . ","Kim s�n ch��ng m�n nh�n # cu�i c�ng , c� th� t��ng t��ng ���c bang ph�i v�n h�nh c�n c�n ��i l��ng ti�n b�c , h��ng m�c ti�u c�a ng��i c� g�ng l�n , ng��i tu�i tr� #") 
-- script viet hoa By http://tranhba.com  Talk(6,"","Kim s�n ch��ng m�n nh�n # ng��i h�i th�nh l�p bang h�i c� �i�u ki�n g� , ta t�i t� t� n�i cho ng��i nghe . ","Kim s�n ch��ng m�n nh�n # ��u ti�n ng��i nh�t ��nh ph�i �� xu�t s� ��c l�p x�ng x�o giang h� # ti�p theo ng��i kh�ng th� � b�t k� bang h�i trung # l�n n�a ng��i mu�n c� c� nh�t ��nh giang h� danh v�ng # cu�i c�ng ng��i th�ng su�t l�c kh�ng th� nh� v�i 30 c�p . ","Kim s�n ch��ng m�n nh�n # ��t t�i nh�ng th� n�y y�u c�u sau ng��i ch� c�n t� tr�n chi�n tr��ng ��t ���c m�t thanh nh�c v��ng ki�m l�y n�y l�m bang ch� t�n v�t l� ���c r�i th�nh l�p bang h�i li�u . ","Kim s�n ch��ng m�n nh�n # b�t qu� c�n ph�i ch� � l� , ng��i mu�n tin ch�c m�nh c� t��ng �ng �nh h��ng l�c c�ng n�ng l�c l�nh ��o , ng��i nh�t ��nh ph�i � 3 ng�y b�n trong t�m ���c �t nh�t 16 t�n ch� ��ng ��o h�p ng��i t�i �ng h� ng��i , n�u kh�ng bang h�i c�ng kh�ng c�ch n�o th�nh l�p , ba ng�y nay b�nh th��ng x�ng l� � kh�o nghi�m k� � . ","Kim s�n ch��ng m�n nh�n # h�n n�a b�t c� l�c n�o n�u nh� ng��i bang h�i nh�n s� �t v�i 16 ng��i tho�i , giang h� s� l�p t�c �em ng��i bang h�i l�n n�a ti�n h�nh kh�o nghi�m , n�u nh� � trong v�ng ba ng�y kh�ng th� kh�i ph�c l�i 16 ng��i tr� l�n , giang h� ��ng ��o v�n s� kh�ng th�a nh�n ng��i bang h�i . ","Kim s�n ch��ng m�n nh�n # cu�i c�ng , c� th� t��ng t��ng ���c bang ph�i v�n h�nh c�n c�n ��i l��ng ti�n b�c , h��ng m�c ti�u c�a ng��i c� g�ng l�n , ng��i tu�i tr� #") 
-- script viet hoa By http://tranhba.com  end 
end 
end 

function create_pay() 
Say("Kim s�n ch��ng m�n nh�n # nh� v�y , ng��i ch� c�n c� ��y �� ti�n b�c �� cho bang ph�i c� th� v�n chuy�n l�n l� ���c r�i , n�i th� d� nh� c� c� 1 v�n l��ng b�c �i . ",2,"Kh�ng th�nh v�n �� , ta �� c� 2000 v�n l��ng b�c /create_pay_yes","Qu� ph� ti�n , �t m�t ch�t c� ���c hay kh�ng /create_pay_no") 
end 

function create_pay_yes() 
if (GetCash() >= 10000) then 
Pay(10000) -- script viet hoa By http://tranhba.com  thu l� ph� 
DelItem(195) -- script viet hoa By http://tranhba.com  th� ti�u t��ng quan ��o c� 
SetTask(99,1) -- script viet hoa By http://tranhba.com  c�ng ��nh th��ng d�u hi�u # ��ng th�i ��nh ngh�a v� trong bang ph�i ��ch ng��i th� nh�t # t�c bang ch� b�n th�n ## 
Direct_CreateTong() -- script viet hoa By http://tranhba.com  b�t ��u d�ng bang 
else 
Talk(1,"","Kim s�n ch��ng m�n nh�n # ng��i t�a h� c�ng kh�ng c� nhi�u ti�n nh� v�y a , nh� v�y l� kh�ng ���c . ch� ng��i c� ��y �� kinh t� n�ng l�c t�i t�m ta n�a �i . ") 
end 
end 

function create_pay_no() 
Talk(1,"","Kim s�n ch��ng m�n nh�n # � duy tr� bang h�i ��ch b�nh th��ng v�n h�nh v�n ch�nh l� r�t ph� ti�n , n�u nh� ng��i �i�u n�y c�ng th�o gi�i ho�n gi�i , theo l�o phu th�y c�n ch�a ph�i mu�n d�ng bang ��ch h�o . ") 
end 

function Direct_CreateTong() 
CreateTong(1) -- script viet hoa By http://tranhba.com  b�n ra d�ng bang ��i tho�i khu�ng , k�t th�c ch�n v�n kh�ng ch� 
end 

function wait_a_moment() 
end 

-- script viet hoa By http://tranhba.com  l�y ���c m�t nh� ch�i ch� � bang h�i chi�m l�nh ��ch th�nh ph� , tr� v� t�c d�n tr� gi� 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i bang h�i t�n 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra l�y ���c b�y ��i th�nh th� ��ch bang h�i t�n c�ng nh� ch�i bang h�i t�n so s�nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 

-- script viet hoa By http://tranhba.com  b�y t� nh� ch�i ch� � bang h�i kh�ng c� chi�m l�nh th�nh ph� 
return 0 
end 

-- script viet hoa By http://tranhba.com  ki�m tra d�n t��ng �i�u ki�n 
function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� chi�m l�nh th�nh ph� ��ch bang ph�i m�i c� th� d�n t��ng , d�n huynh �� c�a m�nh �i chi�m l�nh m�t t�a th�nh �i !") 
end 
return 0 
end 

local tong_master = GetTongMaster() 
local player_name = GetName() 
if (tong_master ~= player_name) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� bang ch� m�i c� th� nh�n l�y bang ph�i t��ng th��ng , g�i bang ch� t�i ��y ") 
end 
return 0 
end 

local wday = tonumber(date("%w")) -- script viet hoa By http://tranhba.com  h�m nay l� th� m�y ? 
local hour = tonumber(date("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� m�i tu�n m�t 9:00~20:00 m�i l� d�n t��ng th�i gian , ��n l�c �� tr� l�i �i ") 
end 
return 0 
end 

local date = tonumber(date("%Y%m%d")) 
if (date == get_citybonus_date(city_index)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tu�n n�y ��ch ph�n th��ng �� l�nh , cu�i tu�n tr� l�i �i . ") 
end 
return 0 
end 

return 1 
end 

-- script viet hoa By http://tranhba.com  nh�n l�y th�nh ch� bang h�i t��ng th��ng 
function talk_citytong_award() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 1) == 1) then 
Say("<#> nh�n l�y th�nh ch� bang h�i t��ng th��ng ", 
2, 
"<#> ta mu�n d�n 60 c� /#take_tong_award(60)", 
"<#> ta t�m th�i kh�ng d�n /nothing") 
end 
end 

-- script viet hoa By http://tranhba.com  nh�n l�y bao ti�n l� x� 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  m�t bao ti�n l� x� chi�m m�t c�ch t� 
if (CalcFreeItemCellCount() < count) then 
Talk(1, "", "<#> l�ng c�a ng��i t�i ��y , s�a sang l�i sau n�a d�n t��ng .") 
return 
end 

local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local today = tonumber(date("%Y%m%d")) 
set_citybonus_date(city_index, today) 
-- script viet hoa By http://tranhba.com  cho bao ti�n l� x� 
for i = 1, count do 
AddItem(6,1,1535,1,1,1) 
end 
local msg = date("[%y-%m-%d %H:%M] ") .. GetAccount() .. "(".. GetName().. ") get " .. count .. " <#> ��i bao ti�n l� x� from kim s�n ch��ng m�n nh�n " 
WriteLog(msg); 
Talk(1, "", "<#> ��y l� ng��i c�a ��ch ph�n th��ng , c�m �i �i ") 
end 
