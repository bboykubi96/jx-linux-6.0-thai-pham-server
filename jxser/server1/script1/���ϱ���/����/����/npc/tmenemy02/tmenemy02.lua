-- script viet hoa By http://tranhba.com description: ���ng m�n tr�c h�i c�a th� hai ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
UTask_tmtmp = GetTaskTemp(48) 
if (Uworld37 == 20) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  mang nhi�m v� l�c , 50% ky t� s� xu�t hi�n h� m�t c�u kh�u quy�t # c�ng n�m c�u # 
if (UTask_tmtmp == 0) then 
Talk(1,"","2 4 v� vai ") 
Msg2Player(" l�y ���c kh�u quy�t � hai b�n v� vai ") 
SetTaskTemp(48,1) 
elseif (UTask_tmtmp == 1) then 
Talk(1,"","68 v� ch�n ") 
Msg2Player(" l�y ���c kh�u quy�t � s�u t�m v� ch�n ") 
SetTaskTemp(48,2) 
elseif (UTask_tmtmp == 2) then 
Talk(1,"","B�n tr�i ba b�n ph�i b�y ") 
Msg2Player(" l�y ���c kh�u quy�t � b�n tr�i ba b�n ph�i b�y ") 
SetTaskTemp(48,3) 
elseif (UTask_tmtmp == 3) then 
Talk(1,"","��i ch�n l� m�t ") 
Msg2Player(" l�y ���c kh�u quy�t � ��i ch�n l� m�t ") 
SetTaskTemp(48,4) 
elseif (UTask_tmtmp == 4) then 
Talk(1,"","N�m � trung ��ng ") 
Msg2Player(" l�y ���c kh�u quy�t � n�m � trung ��ng ") 
SetTaskTemp(48,5) 
else 
if (random(1,99) < 40) then -- script viet hoa By http://tranhba.com  ��y �� bi�u hi�n m�t l�n kh�u quy�t , sau �� li�n ph�c v� t�m th�i thay ��i l��ng # nh�n l�i mu�n l�n n�a �� t�i # 
SetTaskTemp(48,0) 
Msg2Player("Ho�n ch�nh kh�u quy�t v� # hai b�n v� vai , s�u t�m v� ch�n , b�n tr�i ba b�n ph�i b�y , ��i ch�n l� m�t , n�m � trung ��ng ") 
end 
end 
end 
end 
