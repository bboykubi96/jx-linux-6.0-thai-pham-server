-- script viet hoa By http://tranhba.com  long m�n tr�n - c� d��ng ��ng - c� quan 4( th� gi�i nhi�m v� � c�u ti�u ��p �) 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2004-03-03) 

function main(sel) 
Uworld41 = GetTask(41) 
if (GetByte(Uworld41,1) == 30) and (HaveItem(352) == 1) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , c� � c� quan c�i ch�a kh�a � , ng��i kh�ng c�u ra 
if (GetBit(Uworld41,12) == 0) then -- script viet hoa By http://tranhba.com  c� quan tr��c m�t v� t�t 
Say("C� quan b�y gi� l� t�t ��ch tr�ng th�i , ng��i mu�n �em n� m� ra sao ?",2,"M� ra /Turn_On","Ti�p t�c gi� v�ng t�t /Turn_Off") 
else 
Say("C� quan b�y gi� l� m� ra ��ch tr�ng th�i , ng��i mu�n �em n� t�t sao ? ",2,"Ti�p t�c gi� v�ng m� ra /Turn_On","T�t /Turn_Off") 
end 
end 
end 

function Turn_On() 
-- script viet hoa By http://tranhba.com  Talk(1,"","C� quan m� ra . ") 
Msg2Player("C� quan m� ra ") 
Cur_Switchs = SetBit(GetTask(41),12,1) 
SetTask(41,Cur_Switchs) 
Check_Switch() 
end 

function Turn_Off() 
-- script viet hoa By http://tranhba.com  Talk(1,"","C� quan ��ng c�a . ") 
Msg2Player("C� quan ��ng c�a ") 
Cur_Switchs = SetBit(GetTask(41),12,0) 
SetTask(41,Cur_Switchs) 
Check_Switch() 
end 

function Check_Switch() 
Cur_Switchs = GetByte(GetTask(41),2) 
Set_Switchs = GetByte(GetTask(41),3) 
if (Cur_Switchs == Set_Switchs) then -- script viet hoa By http://tranhba.com  c� th� nh�t tr� , c�u ra ti�u ��p 
Uworld41 = SetByte(GetTask(41),1,100) 
SetTask(41,Uworld41) 
DelItem(352) -- script viet hoa By http://tranhba.com  sau khi th�nh c�ng l� th� ti�u c�i ch�a kh�a 
Talk(1,"","Gi�i tr� c� quan , ng��i th�nh c�ng c�u ra li�u ti�u ��p ") 
Msg2Player("Ng��i �� gi�i tr� c� quan , c�u ra ti�u ��p ") 
else 
Msg2Player("Nh�ng l� ng��i tr� l�i ng�c t�i th� ��y m�t c�i c�a , l�i v�n kh�ng nh�c nh�ch ") 
end 
end 
