-- script viet hoa By http://tranhba.com ==== th­êng dïng trô cét hµm sè ====-- script viet hoa By http://tranhba.com  
if (not COMMON_HEAD) then 
COMMON_HEAD = 1 

-- script viet hoa By http://tranhba.com  thËt lµ trë vÒ v1, nÕu kh«ng trë vÒ v2 
-- script viet hoa By http://tranhba.com  chê hiÖu víi VB ®İch IIf(b, v1, v2) , t­¬ng tù víi C ®İch (b? v1: v2) 
function iif(b, v1, v2) 
if b then 
return v1 
else 
return v2 
end 
end 

-- script viet hoa By http://tranhba.com  ®em ®Õm tæ më ra , trë vÒ ®Õm tæ lı mÆt ®İch mçi h¹ng nhÊt # mét lo¹i kh«ng cÇn ®iÒn viÕt n# 
function unpack(tb, n) 
if (not n) then 
n = 1 
end 
if (n >= getn(tb)) then 
return tb[n] 
end 
	return tb[n], unpack(tb,n+1)
end 

-- script viet hoa By http://tranhba.com  ®em tÊt c¶ tham sæ thèng nhÊt thµnh mét vµi tæ 
function pack(...) 
return arg 
end 

-- script viet hoa By http://tranhba.com  ®em ®Õm tæ liªn tiÕp thµnh mét ch÷ phï chuçi 
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

-- script viet hoa By http://tranhba.com  an toµn chuyÓn ®æi v× con sè , kh«ng thÓ chuyÓn ®æi lóc trë vÒ n_default hoÆc 0 , sÏ kh«ng trë vÒ nil 
function tonum(var, n_default) 
local n = tonumber(var) 
if (not n) then 
n = iif(n_default, n_default, 0) 
end 
return n 
end 

-- script viet hoa By http://tranhba.com  ®em tù phï chuçi hñy ®i chia lµm ®Õm tæ t×nh thÕ 
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

-- script viet hoa By http://tranhba.com  trë vÒ ®Şnh tr­êng tù phï chuçi # bªn tr¸i ®èi víi ®ñ # 
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

-- script viet hoa By http://tranhba.com  trë vÒ ®Şnh tr­êng tù phï chuçi # bªn ph¶i ®èi víi ®ñ # 
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

-- script viet hoa By http://tranhba.com  trë vÒ ®Şnh tr­êng tù phï chuçi # c­ trung # 
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

-- script viet hoa By http://tranhba.com  tù phï chuçi trung str_from thay thÕ v× str_to 
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

-- script viet hoa By http://tranhba.com  an toµn tù phï chuçi # gi¶i tİch dïng # 
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

-- script viet hoa By http://tranhba.com  an toµn tù phï chuçi # biÓu hiÖn dïng # 
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

-- script viet hoa By http://tranhba.com  v« İch hµm sè 
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

-- script viet hoa By http://tranhba.com  ë biÓu tb trung ngÉu nhiªn lùa chän , trë vÒ tõ 1 b¾t ®Çu ®İch t¸c dÉn , nÕu nh­ lùa chän thÊt b¹i lµ trë vÒ 0 
-- script viet hoa By http://tranhba.com  chó ı # biÓu trung ®İch h¹ng v× phÇn tr¨m so , nh­ 87.53 bµy tá 87.53% 
-- script viet hoa By http://tranhba.com  tû nh­ r¬i xuèng tû sè v× {10, 50, 40} , lµ ngÉu nhiªn ®Õm 30 ®em trë vÒ 50 chç ë t¸c dÉn 2 
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
