-- script viet hoa By http://tranhba.com description: Trung Nguy�n b�c khu ng�y nh�n b�n trong ph�ng h�c 3to ng�y nh�n d�y th�nh ��ng 1 ng�y nh�n d�y ra s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguy�n b�c khu 5 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main(sel) 
UTask_tr = GetTask(4); 
-- script viet hoa By http://tranhba.com  if (GetFaction() ~= "tianren") then 
	if (UTask_tr >= 60*256+50) and (GetFaction() == "tianren") then
NewWorld(51, 1666, 3291) 
SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
	elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then
Talk(1,"","Ng��i kh�ng c� �em n�m �em �o�n ki�m cho ho�n nhan h�ng li�t , kh�ng th� v�o th�nh ��ng .") 
SetPos(1749, 3081) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m 
else 
Talk(1,"","��y l� ng�y nh�n d�y th�nh ��ng , �i v�o ng��i kh�ng th� �i ra .") 
SetPos(1749, 3081) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m 
end 
end; 
