-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu ph�c b� s�n 2to thi�n t�m ��ng 2 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguy�n b�c khu 18 

function main(sel) 
if (GetTask(129) == 50) then -- script viet hoa By http://tranhba.com  chu v�n tuy�n nhi�m v� 
Say("V t��ng #n c t�c #ng, #t nhi y�t b# nghe ti kh�a g k# th h�o th#ng, h#h nh?l?ti kh�a g c# Chu V# Tuy th�ch ..",2,"# c# ng#i /U129_50","Kh t�n g ch??#n, # v k� #ng Thi y�t T#. /enter_cave") 
elseif (GetTask(129) == 55) then -- script viet hoa By http://tranhba.com  chi�n ��u ch�a k�t th�c , c��ng b�ch ti�n v�o thi�n t�m ��ng 
Talk(1,"go_Zhome","#ng l t�c ! Ti# chi# #y! ") 
else 
enter_cave() 
end 
end; 

function enter_cave() 
SetFightState(1) 
NewWorld(42, 1619, 2894); 
AddTermini(108) 
end 

function U129_50() 
SetTask(129,55) 
Talk(4,"go_Zhome","T t�c sao c# ng#i t t�c sao l# h t�c Chu huynh? ","Ng#i t?#u #n? #ng c?nhi t�p chuy#!","Xem ra b ch�m th?gi?m v�n n ph� , th?ra l?m# ma ch#c qu?c# b# ng#i!","H? Thi y�t Nh th��ng b# ta h y�u h s? kh t�n g ai c?th?bi# ##. Nh#g ng#i # bi# ## chuy# n ph� , th?b# ta #nh ti c� ng#i c#g h l��ng v?b y�t kia th?gi# v#. ") 
end 

function go_Zhome() 
SetFightState(1) 
NewWorld(232,1612,3204) 
end 
