-- script viet hoa By http://tranhba.com ======== v�n ki�n ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  v�n ki�n t�n #string.lua 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2004-6-1 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-24 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  ph�t tri�n lua kh�ng cung c�p t� ph� chu�i x� l� h�m s� 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  tr� ch�i ch�n v�n # ki�m hi�p t�nh duy�n in t� n�t b�n 
-- script viet hoa By http://tranhba.com  kim s�n nhuy�n ki�n (software) c� ph�n c�ng ty h�u h�n , copyright 1992-2005 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  

if not STRING_HEAD then 
STRING_HEAD = 1 


-- script viet hoa By http://tranhba.com  tr� xu�ng ba h�m s� #replace()#split()#join()# t�n t�i m�t �t t� �oan , c� common.lua trung l�n n�a ��nh ngh�a li�u ba c�ng t�n h�m s� 
-- script viet hoa By http://tranhba.com  v� �� tr�nh cho b�n v�n m�n �em common.lua trung ��ch h�m s� bao tr�m r�i , t�ng th�m n�y �i�u ki�n ph�n �o�n 
-- script viet hoa By http://tranhba.com by fanzai 2005-12-28 20:46 
-- script viet hoa By http://tranhba.com  if (not COMMON_HEAD) then 
if (1) then 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #replace(str,pattern,s) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  d�ng t� ph� chu�i s thay th� t� ph� chu�i str trung ��ch pattern 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  str# nguy�n t� ph� chu�i n 
-- script viet hoa By http://tranhba.com  pattern# mu�n thay ��i t� ph� chu�i 
-- script viet hoa By http://tranhba.com  s# thay th� pattern ��ch t� ph� chu�i 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  thay th� sau ��ch t� ph� chu�i . 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function replace(str,pattern,s) 
/* 
local startS,endS = strfind(str,pattern) 
while(startS) do 
		str = strsub(str,1,startS-1)..s..strsub(str,endS+1,strlen(str))
startS,endS = strfind(str,pattern) 
end 
return str 
*/ 
PushString(str) 
ReplaceString(pattern, s) 
return PopString() 
end 
-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #split(str,splitor) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2004-6-1 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2004-6-1 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  �em t� ph� chu�i str d�ng ph�n li�t ph� splitor ph�n li�t th�nh ��m t� h�nh th�c 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  str# b� ph�n li�t ��ch t� ph� chu�i 
-- script viet hoa By http://tranhba.com  splitor# ph�n li�t ph� , n�u nh� n�n tham s� kh�ng c� , cam ch�u v� #,# 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  b� ph�n li�t ��ch ��m t� # n�u nh� t� ph� chu�i str trung kh�ng c� bao h�m ph�n li�t ph� splitor , 
-- script viet hoa By http://tranhba.com  l� tr� v� ��ch ��m t� ch� c� # c� nguy�n t� , nguy�n t� n�i dung ch�nh l� str b�n th�n # 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  local s = "aaa,bbb,ccc,ddd" 
-- script viet hoa By http://tranhba.com  local arr = splite(s,",") 
-- script viet hoa By http://tranhba.com  l� , arr ��ch n�i dung v� # 
-- script viet hoa By http://tranhba.com  arr[1]#aaa 
-- script viet hoa By http://tranhba.com  arr[2]#bbb 
-- script viet hoa By http://tranhba.com  arr[3]#ccc 
-- script viet hoa By http://tranhba.com  arr[4]#ddd 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function split(str,splitor) 
if(splitor==nil) then 
splitor="," 
end 
local strArray={} 
local strStart=1 
local splitorLen = strlen(splitor) 
local index=strfind(str,splitor,strStart) 
if(index==nil) then 
strArray[1]=str 
return strArray 
end 
local i=1 
while index do 
strArray[i]=strsub(str,strStart,index-1) 
		i=i+1
		strStart=index+splitorLen
index = strfind(str,splitor,strStart) 
end 
strArray[i]=strsub(str,strStart,strlen(str)) 
return strArray 
end 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #join(arr,insertor) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2004-6-1 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-24 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  �em m�t duy ��m t� arr b�n trong ��ch nguy�n t� n�i dung d�ng insertor li�n ti�p , arr ��ch 
-- script viet hoa By http://tranhba.com  nguy�n t� t�t nh�t v� t� ph� chu�i lo�i h�nh , con s� lo�i h�nh c�ng c� th� # 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  arr# b� li�n ti�p ��ch ��m t� 
-- script viet hoa By http://tranhba.com  insertor# c�m v�o ph� , n�n tham s� kh�ng c� , cam ch�u c�m v�o ph� v� #,# 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  tr� v� li�n ti�p sau ��ch t� ph� chu�i # n�u nh� arr kh�ng c� b�t k� nguy�n t� , l� tr� v� 
-- script viet hoa By http://tranhba.com nil# 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  local sarr = {"a","b","c","d"} 
-- script viet hoa By http://tranhba.com  local s = join(sarr,",") 
-- script viet hoa By http://tranhba.com  l� #s ��ch k�t qu� v� 
-- script viet hoa By http://tranhba.com  s#"a,b,c,d" 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function join(tb, str_sep) 
if (not str_sep) then 
str_sep = "," 
end 
local str = "" 
if (getn(tb) > 0) then 
PushString(tb[1]) 
for i = 2, getn(tb) do 
AppendString(str_sep) 
AppendString(tb[i]) 
end 
str = PopString() 
end 
return str 
end 

end -- script viet hoa By http://tranhba.com if (not COMMON_HEAD) then 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #trim(str) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2004-6-1 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-24 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  th� ti�u t� ph� chu�i str l��ng �oan ��ch tr�ng kh�ng k� hi�u , n�u nh� kh�ng c� tr�ng kh�ng k� hi�u , l� 
-- script viet hoa By http://tranhba.com  kh�ng th� ti�u # 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  str# b� th� ti�u tr�ng kh�ng k� hi�u ��ch t� ph� chu�i 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  b� th� ti�u tr�ng kh�ng ph� ��ch t� ph� chu�i 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  local s = " dddd " 
-- script viet hoa By http://tranhba.com  s = trim(s) 
-- script viet hoa By http://tranhba.com  l� , s ��ch k�t qu� v� # 
-- script viet hoa By http://tranhba.com  s#"dddd" 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function trim(str) 
/* 
	local start,last = strfind(str,"%S+.*%S+")
print(tostring(start).."|"..tostring(last)) 
if(start==nil or last==nil) then 
return str 
end 
return strsub(str,start,last) 
*/ 
PushString(str) 
TrimString() 
return PopString() 
end 

-- script viet hoa By http://tranhba.com -RGB con s� chuy�n ��i th�nh 16 v�o ch� b�y t� ��ch t� ph� chu�i 
function toColor(r,g,b) 
if(not tonumber(r)) then r=0 end 
if(not tonumber(g)) then g=0 end 
if(not tonumber(b)) then b=0 end 
if(r<0) then r=0 end 
if(g<0) then g=0 end 
if(b<0) then g=0 end 
if(r>255) then r=255 end 
if(g>255) then g=255 end 
if(b>255) then b=255 end 
	return r*65536+g*256+b
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com - �em ng� h�nh tr� s� chuy�n ��i th�nh m�u s�c r�c r� ng� h�nh ch� h�n 
SERIESWORD = { 
{ " kim ", "metal" }, 
{ " m�c ", "wood" }, 
{ " n��c ", "water" }, 
{ " l�a ", "fire" }, 
{ " ��t ", "earth" } 
} 

function toSeriesColorText(text, sno) 
if (sno < 0 or sno >= getn(SERIESWORD)) then 
return text; 
else 
		return "<color="..SERIESWORD[sno+1][2]..">"..text.."<color>";
end 
end 

function toSeries(sno, bUnColorful) 
if(not tonumber(sno)) then return "error" end 
if(sno < 0 or sno > 4) then return " v� " end 
if (bUnColorful == 1) then 
		return SERIESWORD[sno+1][1];
else 
		return toSeriesColorText(SERIESWORD[sno+1][1], sno);
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com - �em c�p b�c con s� chuy�n ��i th�nh m�u s�c r�c r� c�p b�c ch� h�n 
LEVELWORD = { 
"<color="..toColor(200,200,200).."> 1 c�p <color>", 
"<color="..toColor(0,200,0).."> 2 c�p <color>", 
"<color="..toColor(200,0,0).."> 3 c�p <color>", 
"<color="..toColor(200,0,200).."> 4 c�p <color>", 
"<color="..toColor(200,200,0).."> 5 c�p <color>", 
"<color="..toColor(0,0,255).."> 6 c�p <color>", 
"<color="..toColor(0,255,0).."> 7 c�p <color>", 
"<color="..toColor(255,0,0).."> 8 c�p <color>", 
"<color="..toColor(255,0,255).."> 9 c�p <color>", 
"<color="..toColor(255,255,0)..">10 c�p <color>", 
} 

function toLevel(lvl) 
if(not tonumber(lvl)) then return "error" end 
if(lvl < 0 or lvl > 10) then return " kh�ng bi�t " end 
return LEVELWORD[lvl] 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function transferDigit2CnNum(nDigit) 
local tbModelUnit = { 
[1] = "", 
[2] = " v�n ", 
[3] = " �c ", 
}; 

local nDigitTmp = nDigit; -- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng , 
local n4LenNum = 0; -- script viet hoa By http://tranhba.com  m�i m�t l�n ��i v�i nDigit l�y 4 v� thao t�c ,n4LenNum b�y t� l�y ra ��ch ��m ��ch tr� gi� 
local nPreNum = 0; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t l�n ti�n h�nh l�y 4 v� thao t�c n4LenNum ��ch tr� gi� 
local szCnNum = ""; -- script viet hoa By http://tranhba.com  ch�nh l� mu�n c�u k�t qu� 
local szNumTmp = ""; -- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng , m�i l�y b�n v� ��ch thao t�c trung l�y ���c Trung v�n con s� 

if (nDigit == 0) then 
szCnNum = "0"; 
return szCnNum; 
end 

if (nDigit < 0) then 
nDigitTmp = -nDigit; 
end 

-- script viet hoa By http://tranhba.com  chia ra t� c� , v�n , �c ba �o�n c�n nh�c , b�i v� nDigit ��ch tr� gi� �t h�n 1 v�n �c , cho n�n m�i m�t �o�n ��u kh�ng v��t qua 4 v� 
for i = 1, getn(tbModelUnit) do 
szNumTmp = ""; 
n4LenNum = mod(nDigitTmp , 10000); 
if (n4LenNum ~= 0) then 
-- script viet hoa By http://tranhba.com szNumTmp = transfer4LenDigit2CnNum(n4LenNum); -- script viet hoa By http://tranhba.com  l�y ���c n�n b�n v� ��ch Trung v�n bi�u ��t th�c 
szNumTmp = n4LenNum 
szNumTmp = szNumTmp..tbModelUnit[i]; -- script viet hoa By http://tranhba.com  c�ng th�m ��n v� 
end 
szCnNum = szNumTmp..szCnNum; 

nPreNum = n4LenNum; 
nDigitTmp = floor(nDigitTmp / 10000); 
if (nDigitTmp == 0) then 
break; 
end 
end 
if (nDigit < 0) then 
szCnNum = "-"..szCnNum; 
end 
return szCnNum; 
end 

end 
