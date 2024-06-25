-- script viet hoa By http://tranhba.com  long m«n trÊn ng­êi ®i ®­êng tªn khÊt c¸i tay míi nhiÖm vô # sao miÖng tin/th¬ 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world26 = GetTask(26) 
if (UTask_world26 == 0) and (GetLevel() >= 2) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
if (GetSex() == 0) then 
Talk(4,"W26_get","VŞ ®¹i hiÖp nµy , xin gióp ta chuyÖn . ","ThÕ nµo ?","Ng­¬i cã thÓ gióp ta cho trÊn trªn ®İch Mi nhi c« n­¬ng sao c¸ miÖng tin sao ? ","Nãi c¸i g× ") 
else 
Talk(4,"W26_get","VŞ ®¹i hiÖp nµy , xin gióp ta chuyÖn . ","ThÕ nµo ?","Ng­¬i cã thÓ gióp ta cho trÊn trªn ®İch Mi nhi c« n­¬ng sao c¸ miÖng tin sao ? ","Nãi c¸i g× ") 
end 
elseif (UTask_world26 == 6) then 
Talk(1,"W26_prise","Cuèi cïng ng­¬i nãi cho ta biÕt nãi ra ®Ó cho triÖu Mi nhi thèng khæ tuyÖt väng cã ı nghÜa g× . thËt ®¸ng th­¬ng !") 
elseif (UTask_world26 >= 10) then 
Talk(1,"","Th¸ng sím kh«ng s¸ng , ®au / th­¬ng yªu ®Õn t©m can # ai nãi mïa xu©n mü , chØ thÊy hoa ®iªu linh . ®Õn n­íc nµy cßn mÆt mòi nµo gÆp ng­êi ®©y !") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","C¸i g× ? bè thİ ta a ? ®i mét chót # ta kh«ng lÊy tiÒn , kh«ng nªn c¶m thÊy ta lµ tªn khÊt c¸i .") 
end 
end; 

function W26_get() 
Say("Nãi cho nµng biÕt tiÕu ®· ¶nh ®· chÕt , cßn cã ®õng b¶o lµ lµ ta nãi !",2,"Gióp mét tay /W26_get_yes","Kh«ng gióp mét tay /W26_get_no") 
end 

function W26_get_yes() 
Talk(1,"","Kh«ng biÕt ng­¬i nãi c¸i g× # nh­ng ta còng lµ muèn ®i mét chuyÕn !") 
SetTask(26,3) 
AddNote("KÕ tiÕp nhiÖm vô # gióp tªn khÊt c¸i sao miÖng tin/th¬ cho triÖu Mi nhi ") 
Msg2Player("KÕ tiÕp nhiÖm vô # gióp tªn khÊt c¸i sao miÖng tin/th¬ cho triÖu Mi nhi ") 
end 

function W26_get_no() 
Talk(2,"","ThËt lµ kú qu¸i thØnh cÇu # ng­¬i kh«ng nãi râ rµng ta kh«ng gióp ."," lêi nh­ vËy ta t×m ng­êi kh¸c gióp mét tay tèt l¾m !") 
end 

function W26_prise() 
Talk(1,"",": mét lêi khã nãi hÕt , ®©y lµ mét chót ı tø , xin/mêi nhËn lÊy !") 
SetTask(26,10) 
AddNote("§em triÖu Mi nhi ®İch ph¶n øng nãi cho C¸i Bang , hoµn thµnh nhiÖm vô ") 
Msg2Player("§em triÖu Mi nhi ®İch ph¶n øng nãi cho C¸i Bang , hoµn thµnh nhiÖm vô ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
if(GetSex() == 0) then 
AddItem(0, 8, 1, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc mét c¸ da hé cæ tay . ") 
else 
AddItem(0, 8, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc mét ®ång xanh vßng ngäc . ") 
end 
AddRepute(5) 
Msg2Player("Ng­¬i danh väng gia t¨ng 5 ®iÓm ") 
end 
