function main() 
-- script viet hoa By http://tranhba.com  gia t�ng m�t kh�i �� v�n 

AddEventItem(351); 
Msg2Player("Ch�c m�ng ng�i # ng�i l�y ���c m�t kh�i n�i s�ng x� t�c �� m�nh v�n #"); 
Name = GetName(); 
str = format("Ch�c m�ng #%s l�y ���c m�t kh�i n�i s�ng x� t�c �� m�nh v�n #", Name); 
AddGlobalNews(str); 
WriteLog(date("%m%d%H%M")..str); 
DelObject(); 
end;
