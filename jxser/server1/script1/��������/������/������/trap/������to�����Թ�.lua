-- script viet hoa By http://tranhba.com  t�y nam nam khu th�y kh�i c�a to c�m ��a m� cung # th�y kh�i 60 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com Trap ID# t�y nam nam khu 17 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-09) 

function main(sel) 
UTask_cy = GetTask(6) 
if (UTask_cy > 60*256) and (GetFaction() == "cuiyan") then 
SetFightState(1) 
NewWorld(158, 1584, 3191); 
elseif (UTask_cy <= 60*256) then 
-- script viet hoa By http://tranhba.com  SetPos() 
Talk(1,"","Kh�ng th� v�o b�n m�n c�m ��a !") 
else 
-- script viet hoa By http://tranhba.com  SetPos() 
Talk(1,"","��y l� th�y kh�i c�m ��a , kh�ng th� v�o !") 
end 
end; 
