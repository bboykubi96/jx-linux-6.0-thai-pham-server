-- script viet hoa By http://tranhba.com  l�y ���c d�ng | ph�n chia ��ch tham s� ��ch h�m s� . 
function GetParam(strParam, index) 
nLastBegin = 1 
for i=1, index - 1 do 
nBegin = strfind(strParam, "|", nLastBegin) 
-- script viet hoa By http://tranhba.com if nBegin == nil then 
-- script viet hoa By http://tranhba.com  print(strParam) 
-- script viet hoa By http://tranhba.com  return "0" 
-- script viet hoa By http://tranhba.com end 
		nLastBegin = nBegin + 1
end; 
num = 1 
strnum = strsub(strParam, nLastBegin) 
nEnd = strfind(strnum, "|") 
if nEnd == nil then 
return strnum 
end 
str1 = strsub(strnum,1,nEnd -1); 
return str1 
end; 

-- script viet hoa By http://tranhba.com ���Ժ�����ȡ��y=kx+c
function Linear(x,k,c) 
	return floor(k*x+c);
end; 

-- script viet hoa By http://tranhba.com ���κ�����ȡ��y=ax^2+bx+c
function Quadratic(x,a,b,c) 
	return floor(a*x*x+b*x+c);
end; 
