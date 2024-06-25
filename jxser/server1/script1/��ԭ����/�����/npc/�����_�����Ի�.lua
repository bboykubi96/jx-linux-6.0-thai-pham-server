-- script viet hoa By http://tranhba.com description: tay míi th«n _ hoa hoa 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com 73 UTask_world45 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world45=GetTask(73) 
if (UTask_world45 == 0) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Say("Ng­¬i xem thÊy ta tiÓu Long liÔu sao ? ta tªn lµ h¾n ®i mua ®­êng , ®îi rÊt l©u ®Òu kh«ng thÊy trë l¹i , ®i ®©u t×m còng kh«ng thÊy , ta lo l¾ng muèn chÕt ! ", 2,"Ta gióp ng­¬i ®i t×m /yes","Ta kh«ng thÓ gióp ng­¬i /no") 
elseif (UTask_world45 == 1) then 
Talk(1,""," lµm phiÒn ng­¬i gióp ta t×m h¾n !") 
elseif (UTask_world45 >= 10) then 
Talk(1,"","C¸m ¬n ng­¬i gióp ta t×m ®­îc h¾n .") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Ta tiÓu Long thËt lµ nghŞch ngîm !") 
end 
end 

function yes() 
Talk(1,""," lµm phiÒn ng­¬i ! ") 
SetTask(73,1) 
AddNote("TiÕp nhËn vô # trî gióp hoa hoa t×m vÒ tiÓu Long . ") 
Msg2Player("TiÕp nhËn vô # trî gióp hoa hoa t×m vÒ tiÓu Long . ") 
end 

function no() 
end 
