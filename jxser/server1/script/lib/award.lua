-- script viet hoa By http://tranhba.com ==== ph�n th��ng c�ch th�c ====-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Award = {type, detail, amount} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  type: ph�n th��ng lo�i h�nh 
-- script viet hoa By http://tranhba.com  nil# nhi�u ph�n th��ng #0#function#1#AddItem#2#AddGoldItem#3# kh�ng ph�i l� v�t ph�m # 
-- script viet hoa By http://tranhba.com  4# ��u x�c su�t ng�u nhi�n v�t ph�m #5# ��nh x�c su�t ngay sau �� v�t ph�m # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  detail: c� th� v�t ph�m b�i v� type ��ch b�t ��ng m� kh�ng c� c�ng � ngh�a c�ng c�ch th�c # 
-- script viet hoa By http://tranhba.com  khi type = nil l�c , detail v� # 
-- script viet hoa By http://tranhba.com  {Award1, Award2, ��} m�t h�m h�u nhi�u Award ��ch ��m t� , tr�nh t� s� theo th� t� �� cho trong �� m�i ph�n th��ng 
-- script viet hoa By http://tranhba.com  khi type = 0 l�c , detail c� th� c� hai lo�i ph��ng th�c # 
-- script viet hoa By http://tranhba.com  function n�n h�m s� c� th� ho�n th�nh cho c�ng ��c th� n�o �� ��ch t��ng th��ng ��ch ch�c n�ng 
-- script viet hoa By http://tranhba.com  {function, param1, param2, ��} h�m h�u h�m s� c�ng c�n tham s� ��ch ��m t� 
-- script viet hoa By http://tranhba.com  khi type = 1 l�c , detail v� # 
-- script viet hoa By http://tranhba.com  {x1,x2,x3,x4,x5,x6} ng�m 6 c� nguy�n t� ��m t� , b�y t� AddItem(x1,x2,x3,x4,x5,x6) ��ch 6 c� tham s� 
-- script viet hoa By http://tranhba.com  khi type = 2 l�c , detail v� # 
-- script viet hoa By http://tranhba.com  {x1,x2} ng�m 2 c� nguy�n t� ��m t� , b�y t� AddGoldItem(x1,x2) ��ch 2 c� tham s� 
-- script viet hoa By http://tranhba.com  khi type = 3 l�c , detail v� # 
-- script viet hoa By http://tranhba.com  1#AddOwnExp# 
-- script viet hoa By http://tranhba.com  nh�ng kh�c tr� s� l�u l�m ph�t tri�n 
-- script viet hoa By http://tranhba.com  khi type = 4 l�c , detail v� # 
-- script viet hoa By http://tranhba.com  {Award1, Award2, ��} tr�nh t� s� d�a theo chia ��u ��ch x�c su�t t� trong ngay sau �� l�a ch�n m�t v�t ph�m 
-- script viet hoa By http://tranhba.com  khi type = 5 l�c , detail v� # 
-- script viet hoa By http://tranhba.com  {{p1, Award1}, {p2, Award2}, ��} tr�nh t� s� d�a theo ch� ��nh x�c su�t p t� trong ngay sau �� l�a ch�n m�t v�t ph�m 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  amount: n�n ph�n th��ng s� l��ng # n�u nh� l� AddOwnExp , l� b�y t� l� kinh nghi�m tr� gi� # n�u nh� l� function , l� b�y t� v�n h�nh s� l�n # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  kh�c # 
-- script viet hoa By http://tranhba.com  n�u nh� �em Award = {Award1, Award2, ��} l�m ph�n th��ng , 
-- script viet hoa By http://tranhba.com  tr�nh t� s� hi�u v� type = nil; amount = 1 ��ch m�t t� ph�n th��ng , l�y n�y ph��ng ti�n ph�n th��ng ��m t� s�ch vi�t 
-- script viet hoa By http://tranhba.com  t�c lo�i n�y vi�t ph�p ch� hi�u v� #Award = {nil, {Award1, Award2, ��}, 0} 

Include("\\script\\task\\task_addplayerexp.lua")  -- script viet hoa By http://tranhba.com ������ۼӾ���Ĺ�������

__award_log_HEAD = {"[AWARD_GIVE]", {date, "%y-%m-%d,%H:%M"}, GetAccount, GetName} 
__award_log_HEAD.sep = "\t" 
__award_log_HEAD.bra = {"", "\t"} 

if (not AWARD_HEAD) then 
AWARD_HEAD = 1 

Include("\\script\\lib\\basic.lua");
IL("FILESYS") 

-- script viet hoa By http://tranhba.com  ghi ch�p ng�y ch� 
function __award_log(str) 
-- script viet hoa By http://tranhba.com Msg2Player("<color=white>"..str.."<color>") 
if __award_log_HEAD then 
str = totext(__award_log_HEAD)..str 
end 
WriteLog(str) 
-- script viet hoa By http://tranhba.com print(str) 
end 

-- script viet hoa By http://tranhba.com  nh�ng th�ng c�p ��ch th�m kinh nghi�m 
function award_addexp( awardexp ) 
tl_addPlayerExp(awardexp) 
end 

-- script viet hoa By http://tranhba.com  cho c�ng ph�n th��ng 
function award_give(tb_award) 
local n_type, var_detail, n_count 
if (type(tb_award[1]) == "table") then 
n_type = nil 
var_detail = tb_award 
n_count = 1 
else 
n_type = tb_award[1] 
var_detail = tb_award[2] 
n_count = tb_award[3] 
end 
local all_count = 0 
if (n_type == nil) then -- script viet hoa By http://tranhba.com  nhi�u ph�n th��ng 
while (n_count > 0) do 
for i = 1, getn(var_detail) do 
				all_count = all_count + award_give(var_detail[i])
end 
n_count = n_count - 1 
end 
elseif (n_type == 0) then -- script viet hoa By http://tranhba.com function 
while (n_count > 0) do 
if (type(var_detail) == "table") then 
__award_log("function("..join(pack(unpack(var_detail,2)))..")") 
				all_count = all_count + tonum(var_detail[1](unpack(var_detail,2)))
else 
__award_log(tostring(var_detail)) 
				all_count = all_count + tonum(var_detail())
end 
n_count = n_count - 1 
end 
elseif (n_type == 1) then -- script viet hoa By http://tranhba.com  v�t ph�m b�nh th��ng 
all_count = n_count 
while (n_count > 0) do 
__award_log("AddItem("..join(var_detail)..")") 
AddItem(unpack(var_detail)) 
n_count = n_count - 1 
end 
elseif (n_type == 2) then -- script viet hoa By http://tranhba.com  ho�ng kim v�t ph�m 
all_count = n_count 
while (n_count > 0) do 
__award_log("AddGoldItem("..join(var_detail)..")") 
AddGoldItem(unpack(var_detail)) 
n_count = n_count - 1 
end 
elseif (n_type == 3) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� v�t ph�m 
all_count = 1 
if (var_detail == 1) then -- script viet hoa By http://tranhba.com AddOwnExp 
__award_log("AddOwnExp("..n_count..")") 
award_addexp(n_count) 
else -- script viet hoa By http://tranhba.com  l�u l�m ph�t tri�n 
__award_log("award_give : error var_detail:"..tostring(var_detail)) 
end 
elseif (n_type == 4) then -- script viet hoa By http://tranhba.com  ng�u nhi�n v�t ph�m 
while (n_count > 0) do 
local giveindex = random(getn(var_detail)) 
			all_count = all_count + award_give(var_detail[giveindex])
n_count = n_count - 1 
end 
else 
__award_log("award_give : error n_type:"..tostring(n_type)) 
end 
return all_count 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n to�n b� t��ng th��ng v�t ph�m chi�m c�ch t� ��m # kh�ng cho ph�p # 
function award_count(tb_award) 
local n_type, var_detail, n_count 
if (type(tb_award[1]) == "table") then 
n_type = nil 
var_detail = tb_award 
n_count = 1 
else 
n_type = tb_award[1] 
var_detail = tb_award[2] 
n_count = tb_award[3] 
end 
local all_count = 0 
if (n_type == nil) then -- script viet hoa By http://tranhba.com  nhi�u ph�n th��ng 
while (n_count > 0) do 
for i = 1, getn(var_detail) do 
				all_count = all_count + award_count(var_detail[i])
end 
n_count = n_count - 1 
end 
elseif (n_type == 0) then -- script viet hoa By http://tranhba.com function 
all_count = n_count 
elseif (n_type == 1) then -- script viet hoa By http://tranhba.com  v�t ph�m b�nh th��ng 
all_count = n_count 
elseif (n_type == 2) then -- script viet hoa By http://tranhba.com  ho�ng kim v�t ph�m 
all_count = n_count * 2 
elseif (n_type == 3) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� v�t ph�m 
all_count = 0 
elseif (n_type == 4) then -- script viet hoa By http://tranhba.com  ng�u nhi�n v�t ph�m 
all_count = 2 
else 
__award_log("award_count : error n_type:"..tostring(n_type)) 
end 
return all_count 
end 


end 
