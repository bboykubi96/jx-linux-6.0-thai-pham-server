-- script viet hoa By http://tranhba.com ==== v�t ph�m h�p th�nh c�ch th�c ====-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�p th�nh c�ng th�c # 
-- script viet hoa By http://tranhba.com  COMPOSE = {Material, Award, Result_su, Result_er, Result_fa} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Award h�p th�nh l�y ���c v�t ph�m , ��nh ngh�a th�y award.lua 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Result_su, Result_er, Result_fa theo th� t� l� h�p th�nh th�nh c�ng # sai l�m # th�t b�i l�c ��ch k�t qu� bi�u hi�n , ��u c� ba lo�i bi�u ��t th�c # 
-- script viet hoa By http://tranhba.com  Result == "" l�c Say("H�p th�nh th�nh c�ng #", 0) / Say("Nguy�n li�u kh�ng ��ng #", 0) / Say("H�p th�nh th�t b�i #", 0) 
-- script viet hoa By http://tranhba.com  type(Result) == "string" l�c Say(Result, 0) 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Material h�p th�nh t�i li�u c�n thi�t 
-- script viet hoa By http://tranhba.com  Material = {nAmount, tbProp, [strName]} 
-- script viet hoa By http://tranhba.com  nAmount t�i li�u c�n ��ch s� l��ng 
-- script viet hoa By http://tranhba.com  tbProp t�i li�u c�n ��ch thu�c t�nh 
-- script viet hoa By http://tranhba.com  tbProp = {nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck} 
-- script viet hoa By http://tranhba.com  6 c� nguy�n t� c�ng AddItem ��ch 6 c� tham s� , ��c th� # 
-- script viet hoa By http://tranhba.com  n�u nh� m�t nguy�n t� v� nil , l� b�y t� kh�ng h�n ch� n�n thu�c t�nh 
-- script viet hoa By http://tranhba.com 				���ĳ��Ԫ��Ϊ"+n"�����ʾ��������Ҫ >= n
-- script viet hoa By http://tranhba.com  n�u nh� m�t nguy�n t� v� "-n" , l� b�y t� n�n thu�c t�nh c�n <= n 
-- script viet hoa By http://tranhba.com  strName l� t�i li�u t�n # c� th� ch�n ��ch , n�u nh� kh�ng �i�n vi�t , material_name h�m s� kh�ng c� hi�u qu� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  n�u nh� Material = {Material1, Material2, ��} l� b�y t� c�n nhi�u lo�i t�i li�u 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ��c �i�m # �� giao v�t ph�m c� th� tr�ng �i�p # c�n t�i li�u c� th� l� m� h� ��ch # c�n t�i li�u ��m t� c� th� nhi�u lo�i ph��ng th�c t� h�p 

if not COMPOSE_HEAD then 
COMPOSE_HEAD = 1 

Include("\\script\\lib\\basic.lua");
Include("\\script\\lib\\award.lua");

TB_PLCOMPOSE = {} 

-- script viet hoa By http://tranhba.com  ki�m tra ch� ��nh v�t ph�m thu�c t�nh c� hay kh�ng ph� h�p y�u c�u 
function __checkprop(tb_needprop, tb_itemprop) 
for i = 1, 6 do 
if (type(tb_needprop[i]) == "string") then 
if (strsub(tb_needprop[i],1,1) == "-") then 
if (tb_itemprop[i] > tonumber(strsub(tb_needprop[i],2))) then 
return nil 
end 
else 
if (tb_itemprop[i] < tonumber(tb_needprop[i])) then 
return nil 
end 
end 
elseif (tb_needprop[i] ~= nil and tb_needprop[i] ~= tb_itemprop[i]) then 
return nil 
end 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  ki�m tra c�i n�y m�t v�t ph�m l� hay kh�ng l� c�n , c�ng gi�m b�t c�n s� l��ng 
function __checkone(tb_need, tb_needcount, tb_itemprop, tb_itemcount) 
if (type(tb_needcount[1]) == "table") then 
for i = 1, getn(tb_needcount) do 
if __checkone(tb_need[i], tb_needcount[i], tb_itemprop, tb_itemcount) then 
return 1 
end 
end 
return nil 
else 
if (tb_needcount[1] > 0 and __checkprop(tb_need[2], tb_itemprop)) then 
if (tb_needcount[1] >= tb_itemcount[1]) then 
tb_needcount[1] = tb_needcount[1] - tb_itemcount[1] 
return 1 
else 
tb_itemcount[1] = tb_itemcount[1] - tb_needcount[1] 
return nil 
end 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�y ���c t�ng c�ng c�n bao nhi�u v�t ph�m c�ng th�nh l�p t��ng �ng nhu c�u s� l��ng ��m t� 
function __checkneed(tb_material) 
if (type(tb_material[1]) == "table") then 
local tb_cound = {} 
local n_count = 0 
local n 
for i = 1, getn(tb_material) do 
n, tb_cound[i] = __checkneed(tb_material[i]) 
			n_count = n_count + n
end 
return n_count, tb_cound 
else 
return tb_material[1], {tb_material[1]} 
end 
end 

-- script viet hoa By http://tranhba.com  ki�m tra t�t c� v�t ph�m l� hay kh�ng ph� h�p h�p th�nh y�u c�u , n�u nh� ph� h�p y�u c�u l� th� ti�u 
function __checkall(tb_need, n_count) 
local n_needcount, tb_count = __checkneed(tb_need) 

for i = 1, n_count do 
local n_itemidx = GetGiveItemUnit(i) 
local tb_p = {} 
tb_p[1], tb_p[2], tb_p[3], tb_p[4], tb_p[5], tb_p[6] = GetItemProp(n_itemidx) 
local n_itemcount = GetItemStackCount(n_itemidx) 
n_needcount = n_needcount - n_itemcount 
-- script viet hoa By http://tranhba.com print(i..": idx="..n_itemidx .. "("..n_itemcount..")") 
if (not __checkone(tb_need, tb_count, tb_p, {n_itemcount})) then 
return nil 
end 
end 

if (n_needcount ~= 0) then 
return nil 
end 

for i=1, n_count do 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  cho ��i tho�i tr� v� �i�u h�m s� 
function __compose(n_count) 
local tb_compose = TB_PLCOMPOSE[PlayerIndex] 
if (__checkall(tb_compose[1], n_count)) then 
if (award_give(tb_compose[2]) > 0) then 
__tellresult(tb_compose[3],"H�p th�nh th�nh c�ng #") 
else 
__tellresult(tb_compose[5],"H�p th�nh th�t b�i #") 
end 
else 
__tellresult(tb_compose[4],"Nguy�n li�u kh�ng ��ng #") 
end 
TB_PLCOMPOSE[PlayerIndex] = nil -- script viet hoa By http://tranhba.com  thanh r�i , ph�ng c� 
end 

-- script viet hoa By http://tranhba.com  b�o cho k�t qu� 
function __tellresult(var_result, str) 
local str_type = type(var_result) 
if (str_type == "string") then 
if (var_result == "") then 
Say(str, 0) 
Msg2Player(str) 
else 
Say(var_result, 0) 
Msg2Player(var_result) 
end 
elseif (str_type == "function") then 
var_result() 
elseif (str_type == "table" and type(var_result[1]) == "function") then 
var_result[1](unpack(var_error,2)) 
end 
end 


-- script viet hoa By http://tranhba.com  m� ra cho gi�i m�t 
function material_compose(tb_compose, str_title, str_text) 
TB_PLCOMPOSE[PlayerIndex] = tb_compose 
if (str_text == nil) then 
str_text = " c�n t�i li�u #"..material_name(tb_compose[1]) 
end 
GiveItemUI(totext(str_title), totext(str_text), "__compose") 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nhu c�u v�t ph�m ��ch ch� vi�t mi�u t� 
function material_name(tb_material, b_front) 
if (type(tb_material[1]) == "table") then 
local str = "" 
local n_materials = getn(tb_material) 
for i = 1, n_materials do 
local b_f = i < n_materials 
if (i > 1) then 
if (b_front or b_f) then 
str = str .. ", " 
else 
str = str .. " c�ng " 
end 
end 
str = str .. material_name(tb_material[i], b_f) 
end 
return str 
else 
return tb_material[1] .. " c� " .. tb_material[3] 
end 
end 


end
