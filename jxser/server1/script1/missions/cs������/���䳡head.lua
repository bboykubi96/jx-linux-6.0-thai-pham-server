
-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 80; 
CS_RevData = 36; 

-- script viet hoa By http://tranhba.com  r�i �i l�n n�y tr� ch�i sau ��ch v� tr� worldid, x, y, m�t lo�i ch�nh l� ghi danh �i�m 
-- script viet hoa By http://tranhba.com CS_LeavePos = {20, 3546, 6226}; 

-- script viet hoa By http://tranhba.com  b�n ngo�i h�i tr��ng ��ch v� tr� 
CS_OuterPos = {209, 1548, 3297}; 


-- script viet hoa By http://tranhba.com  gia nh�p song ph��ng tr�n doanh l�c ��ch v� tr� 
CS_CampPos0 = {209, 1631, 3203}; -- script viet hoa By http://tranhba.com  m�u tr�ng 
CS_CampPos1 = {209, 1608, 3167}; -- script viet hoa By http://tranhba.com  m�u v�ng 
CS_CampPos2 = {209, 1674, 3246}; -- script viet hoa By http://tranhba.com  m�u �� 


-- script viet hoa By http://tranhba.com  tr� ch�i m�i m�t tr�n doanh ��ch l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 20; 



MS_CAMP1 = 1; -- script viet hoa By http://tranhba.com  song ph��ng tr�n doanh s� 
MS_CAMP2 = 2; 

MS_SIGN_MONEY = 5000; -- script viet hoa By http://tranhba.com  ti�n ghi danh 
MS_WIN_MONEY = 3000; -- script viet hoa By http://tranhba.com  m�i l�n th�ng l�i l�c , ��t ���c ��ch thu v�o 


function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 
