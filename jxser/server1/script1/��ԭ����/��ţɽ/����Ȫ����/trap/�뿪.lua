-- script viet hoa By http://tranhba.com  chu v�n tuy�n ch� � truy�n t�ng �i�m r�i �i .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-08) 
-- script viet hoa By http://tranhba.com  tr� l�i ph�c b� S�n T�y # thi�n t�m ��ng nh�p kh�u # 

function main() 
if (GetSex() == 0) then 
Talk(1,"","Ng��i mau mau xu�ng n�i , ph�a sau v�n l� l�i quy�t ��ch ti�ng m�ng # ti�u t� th�i , ng��i ��ng ch�y '! ") 
else 
Talk(1,"","Ng��i mau mau xu�ng n�i , ph�a sau v�n l� l�i quy�t ��ch ti�ng m�ng # ti�u t� th�i , ng��i ��ng ch�y '! ") 
end 
i = random(0,99) 
if (i < 33) then 
NewWorld(41, 1951, 2989) 
elseif (i < 67) then 
NewWorld(41, 1685, 3268) 
else 
NewWorld(41, 1788, 3085) 
end 
end 
