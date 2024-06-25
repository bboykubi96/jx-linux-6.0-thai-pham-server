-- script viet hoa By http://tranhba.com ==== th��ng d�ng tr� c�t h�m s� ====-- script viet hoa By http://tranhba.com  
if (not COMMON_HEAD) then 
COMMON_HEAD = 1 

-- script viet hoa By http://tranhba.com  th�t l� tr� v� v1, n�u kh�ng tr� v� v2 
-- script viet hoa By http://tranhba.com  ch� hi�u v�i VB ��ch IIf(b, v1, v2) , t��ng t� v�i C ��ch (b? v1: v2) 
function iif(b, v1, v2) 
if b then 
return v1 
else 
return v2 
end 
end 

-- script viet hoa By http://tranhba.com  �em ��m t� m� ra , tr� v� ��m t� l� m�t ��ch m�i h�ng nh�t # m�t lo�i kh�ng c�n �i�n vi�t n# 
function unpack(tb, n) 
if (not n) then 
n = 1 
end 
if (n >= getn(tb)) then 
return tb[n] 
end 
	return tb[n], unpack(tb,n+1)
end 

-- script viet hoa By http://tranhba.com  �em t�t c� tham s� th�ng nh�t th�nh m�t v�i t� 
function pack(...) 
return arg 
end 

-- script viet hoa By http://tranhba.com  �em ��m t� li�n ti�p th�nh m�t ch� ph� chu�i 
function join(tb, str_sep) 
if (not str_sep) then 
str_sep = "," 
end 
local str = "" 
if (getn(tb) > 0) then 
/* 
str = tostring(tb[1]) 
for i = 2, getn(tb) do 
str = str .. str_sep .. tostring(tb[i]) 
end 
*/ 
PushString(tb[1]) 
for i = 2, getn(tb) do 
AppendString(str_sep) 
AppendString(tb[i]) 
end 
str = PopString() 
end 
return str 
end 

-- script viet hoa By http://tranhba.com  an to�n chuy�n ��i v� con s� , kh�ng th� chuy�n ��i l�c tr� v� n_default ho�c 0 , s� kh�ng tr� v� nil 
function tonum(var, n_default) 
local n = tonumber(var) 
if (not n) then 
n = iif(n_default, n_default, 0) 
end 
return n 
end 

-- script viet hoa By http://tranhba.com  �em t� ph� chu�i h�y �i chia l�m ��m t� t�nh th� 
function split(str, str_sep) 
if (not str_sep) then 
str_sep = "," 
end 
local tb = {} 
local n_seplen = strlen(str_sep) 
local n_start = 1 
local n_at = strfind(str, str_sep, n_start) 
while n_at do 
		tb[getn(tb)+1] = strsub(str, n_start, n_at - 1)
		n_start = n_at + n_seplen
n_at = strfind(str, str_sep, n_start) 
end 
	tb[getn(tb)+1] = strsub(str, n_start)
return tb 
end 

-- script viet hoa By http://tranhba.com  tr� v� ��nh tr��ng t� ph� chu�i # b�n tr�i ��i v�i �� # 
function strfill_left(str, n_len, str_space) 
if (not str_space) then 
str_space = " " 
end 
/* 
str = tostring(str) 
while (strlen(str) < n_len) do 
str = str..str_space 
end 
return str 
*/ 
PushString(str) 
RightFillString(n_len, str_space) 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  tr� v� ��nh tr��ng t� ph� chu�i # b�n ph�i ��i v�i �� # 
function strfill_right(str, n_len, str_space) 
if (not str_space) then 
str_space = " " 
end 
/* 
str = tostring(str) 
while (strlen(str) < n_len) do 
str = str_space..str 
end 
*/ 
PushString(str) 
LeftFillString(n_len, str_space) 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  tr� v� ��nh tr��ng t� ph� chu�i # c� trung # 
function strfill_center(str, n_len, str_space) 
if (not str_space) then 
str_space = " " 
end 
/* 
str = tostring(str) 
local b_left = 1 
while (strlen(str) < n_len) do 
if b_left then 
str = str_space..str 
else 
str = str..str_space 
end 
b_left = not b_left 
end 
return str 
*/ 
PushString(str) 
AroundFillString(n_len, str_space) 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  t� ph� chu�i trung str_from thay th� v� str_to 
function replace(str, str_from, str_to) 
/* 
local n_start, n_end = strfind(str, str_from) 
local n_len = strlen(str_to) 
while (n_start) do 
		str = strsub(str, 1, n_start-1)..str_to..strsub(str, n_end+1)
		n_start, n_end = strfind(str, str_from, n_start + n_len)
end 
return str 
*/ 
PushString(str) 
ReplaceString(str_from, str_to) 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  an to�n t� ph� chu�i # gi�i t�ch d�ng # 
function safestr(str) 
/* 
str = replace(str, "\\", "\\\\") 
str = replace(str, "'", "\\'") 
str = replace(str, '"', '\\"') 
str = replace(str, "\t", "\\t") 
str = replace(str, "\10", "\\010") 
str = replace(str, "\13", "\\013") 
str = replace(str, "\0", "\\000") 
str = replace(str, " ", "\032") 
return str 
*/ 
PushString(str) 
ReplaceString("\\", "\\\\") 
ReplaceString("'", "\\'") 
ReplaceString('"', '\\"') 
ReplaceString("\t", "\\t") 
ReplaceString("\10", "\\010") 
ReplaceString("\13", "\\013") 
ReplaceString("\0", "\\000") 
ReplaceString(" ", "\032") 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  an to�n t� ph� chu�i # bi�u hi�n d�ng # 
function safeshow(str) 
/* 
str = replace(str, "/", "\\") 
str = replace(str, "|", "!") 
return str 
*/ 
PushString(str) 
ReplaceString("/", "\\") 
ReplaceString("|", "!") 
return PopString() 
end 

-- script viet hoa By http://tranhba.com  v� �ch h�m s� 
function no() end 

end -- script viet hoa By http://tranhba.com if (not COMMON_HEAD) 

function clone(obj) 
if (type(obj) == "table") then 
local ret = {} 
for key, val in obj do 
ret[clone(key)] = clone(val) 
end 
return ret 
else 
return obj 
end 
end 

function extend(obj, derived) 
for key, val in derived do 
obj[clone(key)] = clone(val) 
end 
end 

-- script viet hoa By http://tranhba.com  � bi�u tb trung ng�u nhi�n l�a ch�n , tr� v� t� 1 b�t ��u ��ch t�c d�n , n�u nh� l�a ch�n th�t b�i l� tr� v� 0 
-- script viet hoa By http://tranhba.com  ch� � # bi�u trung ��ch h�ng v� ph�n tr�m so , nh� 87.53 b�y t� 87.53% 
-- script viet hoa By http://tranhba.com  t� nh� r�i xu�ng t� s� v� {10, 50, 40} , l� ng�u nhi�n ��m 30 �em tr� v� 50 ch� � t�c d�n 2 
function random_range(tb) 
local num = random(1, 1000000) 
local sum = 0 
for key, rate in tb do 
		sum = sum + rate * 10000
if (num <= sum) then 
return key 
end 
end 
return nil 
end 
