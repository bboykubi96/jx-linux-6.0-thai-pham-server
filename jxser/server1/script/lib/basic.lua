-- script viet hoa By http://tranhba.com ==== th��ng d�ng tr� c�t h�m s� ====-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com Developer(s): 
-- script viet hoa By http://tranhba.com  FanZai, 
-- script viet hoa By http://tranhba.com Date: 2005-9-9 
-- script viet hoa By http://tranhba.com  

BASIC_TABLE_SEPARATOR = "," -- script viet hoa By http://tranhba.com  cam ch�u Table ph�n c�ch ph� 
BASIC_TABLE_BRACKETS = {"{", "}"} -- script viet hoa By http://tranhba.com  cam ch�u Table qu�t s� 
BASIC_TAB2STR_INDEX = 0 -- script viet hoa By http://tranhba.com  c� hay kh�ng bi�u hi�n ch�n ng�n 

if (not BASIC_HEAD) then 
BASIC_HEAD = 1 

-- script viet hoa By http://tranhba.com  th�t l� tr� v� v1, n�u kh�ng tr� v� v2 
function iftrue(b, v1, v2) 
if b then 
return v1 
else 
return v2 
end 
end 

-- script viet hoa By http://tranhba.com  �em ��m t� m� ra , tr� v� ��m t� l� m�t ��ch m�i h�ng nh�t 
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
function join(tb, sep) 
if (not sep) then 
sep = BASIC_TABLE_SEPARATOR 
end 
local str="" 
/* 
for i = 1, getn(tb) do 
if (i > 1) then 
str = str .. sep 
end 
str = str .. tostring(tb[i]) 
end 
*/ 
if (getn(tb) > 0) then 
PushString(tb[1]) 
for i = 2, getn(tb) do 
AppendString(sep) 
AppendString(tb[i]) 
end 
str = PopString() 
end 
return str 
end 

-- script viet hoa By http://tranhba.com  �em t�y � lo�i h�nh chuy�n ��i v� t� ph� chu�i 
function totext(org, str_default) 
if (type(str_default) ~= "string") then 
str_default = "nil" 
end 
local orgtype = type(org) 
if (orgtype == "nil") then 
return str_default 
elseif (orgtype == "number") then 
return tostring(org) 
elseif (orgtype == "string") then 
return org 
elseif (orgtype == "table" and type(org[1]) == "function") then 
return totext(org[1](unpack(org,2)), str_default) 
elseif (orgtype == "table") then 
local str_sep = iftrue(org.sep, totext(org.sep), BASIC_TABLE_SEPARATOR) 
local tb_bra = iftrue(type(org.bra) == "table", org.bra, BASIC_TABLE_BRACKETS) 
local b_idx = iftrue(org.idx, org.idx, BASIC_TAB2STR_INDEX) 
local str = totext(tb_bra[1]) 
local tb_str = {str} 
if (b_idx == 1) then 
local b_notfirst 
for key, value in org do 
if b_notfirst then 
-- script viet hoa By http://tranhba.com  str = str .. str_sep 
					tb_str[getn(tb_str) + 1] = str_sep
else 
b_notfirst = 1 
end 
-- script viet hoa By http://tranhba.com  str = str .. "[" .. tostring(key) .. "] = " .. totext(value, str_default) 
				tb_str[getn(tb_str) + 1] = "["
				tb_str[getn(tb_str) + 1] = tostring(key)
				tb_str[getn(tb_str) + 1] = "] = "
				tb_str[getn(tb_str) + 1] = totext(value, str_default)
end 
else 
for i = 1, getn(org) do 
if (i > 1) then 
-- script viet hoa By http://tranhba.com  str = str .. str_sep 
					tb_str[getn(tb_str) + 1] = str_sep
end 
-- script viet hoa By http://tranhba.com  str = str .. totext(org[i], str_default) 
				tb_str[getn(tb_str) + 1] = totext(org[i], str_default)
end 
end 
-- script viet hoa By http://tranhba.com  return str .. totext(tb_bra[2]) 
		tb_str[getn(tb_str) + 1] = totext(tb_bra[2])
PushString(tb_str[1]) 
for i = 2, getn(tb_str) do 
AppendString(tb_str[i]) 
end 
return PopString() 
elseif (orgtype == "function") then 
return totext(org(), str_default) 
else 
return "UNKNOWN_TYPE" 
end 
end 

-- script viet hoa By http://tranhba.com  �em t�y � lo�i h�nh chuy�n ��i v� con s� 
function tonum(org, n_default) 
if (type(n_default) ~= "number") then 
n_default = 0 
end 
local orgtype = type(org) 
if (orgtype == "nil") then 
return n_default 
elseif (orgtype == "number") then 
return org 
elseif (orgtype == "string") then 
local n_num = tonumber(org) 
if n_num then 
return n_num 
else 
return n_default 
end 
elseif (orgtype == "table" and type(org[1]) == "function") then 
return tonum(org[1](unpack(org,2)), str_default) 
elseif (orgtype == "table") then 
return getn(org) 
elseif (orgtype == "function") then 
return tonum(org()) 
else 
return "UNKNOWN_TYPE" 
end 
end 

end 
