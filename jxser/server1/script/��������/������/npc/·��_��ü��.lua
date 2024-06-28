-- script viet hoa By http://tranhba.com  long m«n trÊn ng­êi ®i ®­êng triÖu Mi nhi tay míi nhiÖm vô # sao miÖng tin/th¬ 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

function main(sel) 
UTask_world26 = GetTask(26) 
if (UTask_world26 == 3) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung 
Talk(8,"W26_step2","Mi nhi c« n­¬ng # cã ng­êi bµy ta sao miÖng tin/th¬ cho ng­¬i ","C¸i g× miÖng tin/th¬ ","TiÕu dŞch ¶nh chÕt .","C¸i g× ?","TiÕu dŞch ¶nh ®· chÕt .","Kh«ng thÓ nµo ... ng­¬i g¹t ta ! ta kh«ng tin !"," ( cuèi cïng nh­ thÕ nµo ?) "," lµ ai nãi cho ng­¬i biÕt ?") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Ta mçi ngµy ®Òu ë n¬i nµy chê , kÕt qu¶ chê ®Õn c¸i g× ?") 
end 
end; 

function W26_step2() 
Talk(1,"","Ta , ta kh«ng thÓ nãi , c¸o tõ ") 
SetTask(26,6) 
AddNote("Sao miÖng tin/th¬ cho triÖu Mi nhi , ch­a ®ñ kh«ng nghÜ tíi nµng ph¶n øng lín nh­ vËy , cßn lµ ®i vÒ hái hái tªn khÊt c¸i . ") 
Msg2Player("Sao miÖng tin/th¬ cho triÖu Mi nhi , ch­a ®ñ kh«ng nghÜ tíi nµng ph¶n øng lín nh­ vËy , cßn lµ ®i vÒ hái hái tªn khÊt c¸i . ") 
end; 
