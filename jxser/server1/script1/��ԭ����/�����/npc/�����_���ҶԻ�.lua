-- script viet hoa By http://tranhba.com description: tay míi th«n _ t« trung 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 

function main() 
UTask_world43=GetTask(71) 
if (UTask_world43==1) then 
Talk(3, "select","Huynh ®Ö lµ t« trung ? mÑ ng­¬i ®ang lo l¾ng ng­¬i !","Ta kh«ng muèn mÉu th©n lo l¾ng , nh­ng lµ ta quyÕt ®Şnh nhËp ngò !","T¹i sao ?") 
elseif (UTask_world43==2) then 
Talk(1,"","C¸m ¬n chØ ®iÓm ! ") 
elseif (UTask_world43==3) then 
Talk(1,"","VËy lµm phiÒn ng­¬i khuyªn mÉu th©n ta ! ") 
else 
Talk(1,"","Phô th©n chÕt bëi ng­êi Kim tay , c¸i thï nµy ta kh«ng thÓ quªn ! ") 
end 
end; 

function select() 
Say("B©y giê quèc gia gÆp n¹n , ta lµm sao cã thÓ chØ ®i häc ?",2,"KhuyÕn c¸o /against","T¸n thµnh /support") 
end 

function against() 
Talk(4,"","Nh­ng lµ ng­¬i cßn trÎ , qu©n tö b¸o thï m­êi n¨m kh«ng muén , häc thªm chót b¶n lÜnh , ngµy sau míi cã thÓ giÕt ®Şch ! ", "..... ng­¬i nãi còng cã ®¹o lı ","Ng­¬i biÕt lµ tèt råi , mau trë vÒ nh×n mÉu th©n ®i , nµng rÊt nhí ng­¬i !","Tèt , c¸m ¬n !") 
SetTask(71,2) 
AddNote("Khuyªn t« trung thµnh c«ng . ") 
Msg2Player("Khuyªn t« trung thµnh c«ng . ") 
end 

function support() 
Talk(3,"","Nãi rÊt hay , ng­¬i mÆc dï trÎ tuæi , nh­ng lµ chİ khİ ®¹i .","Ta muèn nhËp ngò , nh­ng lµ lo l¾ng mÉu th©n kh«ng cho ®i .","Ng­¬i yªn t©m , ta gióp ng­¬i khuyªn nµng ") 
SetTask(71,3) 
AddNote(" ñng hé t« trung ®İch quyÕt ®Şnh , trî gióp h¾n khuyªn mÉu th©n ") 
Msg2Player("ñng hé t« trung ®İch quyÕt ®Şnh , trî gióp h¾n khuyªn t« ®¹i mô ") 
end 
