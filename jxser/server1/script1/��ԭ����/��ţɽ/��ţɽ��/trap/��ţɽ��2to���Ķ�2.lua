-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu phôc bß s¬n 2to thiªn t©m ®éng 2 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguyªn b¾c khu 18 

function main(sel) 
if (GetTask(129) == 50) then -- script viet hoa By http://tranhba.com  chu v©n tuyÒn nhiÖm vô 
Say("V t­ëng #n c tøc #ng, #t nhi yÕt b# nghe ti khãa g k# th h¹o th#ng, h#h nh?l?ti khãa g c# Chu V# Tuy thÝch ..",2,"# c# ng#i /U129_50","Kh tÇn g ch??#n, # v kú #ng Thi yÕt T#. /enter_cave") 
elseif (GetTask(129) == 55) then -- script viet hoa By http://tranhba.com  chiÕn ®Êu ch­a kÕt thóc , c­ìng b¸ch tiÕn vµo thiªn t©m ®éng 
Talk(1,"go_Zhome","#ng l t¹c ! Ti# chi# #y! ") 
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
Talk(4,"go_Zhome","T t¹c sao c# ng#i t t¹c sao l# h t¹c Chu huynh? ","Ng#i t?#u #n? #ng c?nhi tËp chuy#!","Xem ra b chËm th?gi?m v©n n phô , th?ra l?m# ma ch#c qu?c# b# ng#i!","H? Thi yÕt Nh th­¬ng b# ta h yªu h s? kh tÇn g ai c?th?bi# ##. Nh#g ng#i # bi# ## chuy# n phô , th?b# ta #nh ti cù ng#i c#g h l­ìng v?b yÕt kia th?gi# v#. ") 
end 

function go_Zhome() 
SetFightState(1) 
NewWorld(232,1612,3204) 
end 
