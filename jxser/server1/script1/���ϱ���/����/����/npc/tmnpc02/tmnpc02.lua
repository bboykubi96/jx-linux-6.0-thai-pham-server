-- script viet hoa By http://tranhba.com description: §­êng m«n b×nh th­êng ®Ö tö tróc h¶i cöa thø hai 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(9) == 1 then 
allbrother_0801_FindNpcTaskDialog(9) 
return 0; 
end 
UTask_tm = GetTask(2) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 20) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
if (HaveItem(33) == 1) then 
Talk(1,"enroll_V2_Q1","C¸i nµy tróc tr­îng ®óng råi , b©y giê trë vÒ ®¸p mét c¸i vÊn ®Ò !") 
else 
Talk(1,"","§¹t ®­îc <color=Red> mµu xanh tróc tr­îng <color> sau tíi t×m ta n÷a !") 
end 
elseif (Uworld37 >= 60) and (Uworld37 < 127) then -- script viet hoa By http://tranhba.com  ®· qua cöa ¶i nµy 
if (HaveItem(34) == 1) then 
Talk(1,"","NÕu muèn thuËn lîi v­ît qua kiÓm tra , ng­¬i nhÊt ®Þnh ph¶i cÇm ®ñ ba chu«i tróc tr­îng , sau ®ã giao cho ng­êi ®i ra cöa .") 
else 
AddEventItem(34) 
Talk(1,"","T¹i sao ng­¬i ®em tróc tr­îng nÐm ë trong rõng c©y ? ta sÏ gióp ng­¬i nhÆt trë l¹i , kh«ng muèn n÷a nÐm lo¹n liÔu ! ") 
end 
else 
Talk(1,""," ë chç nµy thêi gian dµi míi biÕt , th× ra lµ ®¹i m· hÇu còng hiÓu nh©n tÝnh .") 
end 
end; 

function enroll_V2_Q1() 
Say("Cöu cung trËn cã chÝn c¸ch tö , vÝ nh­ mçi c¸ch tö ®iÒn th­îng thÝch øng ®Ých con sè , lµ cã thÓ khiÕn cho bæ tóc sau bÊt luËn tung hoµnh tµ gi¸c , mçi ba con sè t­¬ng gia ®Òu lµ m­êi l¨m , ng­¬i biÕt thÕ nµo ®iÒn sao ? thø nhÊt ®­îc ", 3, "4, 9, 2 /False1", "2, 4, 9 /False1", "2, 9, 4 /enroll_V2_Q2") 
end; 

function False1() 
Talk(1,"","Kh«ng ®óng , c¸i nµy bèn phÝa ®Ých <color=Red> ®¹i m· hÇu # ®¹i d· hÇu <color> cã thÓ so víi ng­¬i th«ng minh a , bän hä còng biÕt ®©y !") 
end; 

function enroll_V2_Q2() 
Say("§¸p ®óng råi , kia thø hai ®­îc ®©y ?", 3, "7, 5, 3 /enroll_V2_Q3", "5, 3, 7 /False2", "5, 7, 3 /False2") 
end; 

function False2() 
Talk(1,"","Kh«ng ®óng , hay lµ ®i hái mét chót c¸i nµy bèn phÝa ®Ých <color=Red> ®¹i m· hÇu # ®¹i d· hÇu <color> ®i ! ") 
end; 

function enroll_V2_Q3() 
Say("Kh«ng tÖ , kia cuèi cïng mét nhãm nªn thÕ nµo ®iÒn :", 3, "6, 8, 1 /False3", "8, 1, 6 /False3", "6, 1, 8 /enroll_V2_prise") 
end; 

function False3() 
Talk(1,"","Kh«ng ®óng , t¹i sao kh«ng ®i hái hái c¸i nµy bèn phÝa ®Ých <color=Red> ®¹i m· hÇu # ®¹i d· hÇu <color> ®©y ") 
end; 

function enroll_V2_prise() 
Talk(1,"","RÊt tèt , ng­¬i tÊt c¶ ®Òu ®¸p ®óng råi . mµu tr¾ng tróc tr­îng cho ng­¬i , còng ®õng vøt bá # ®i cöa thø ba t×m mét ng­êi kh¸c trang ®inh cÇm <color=Red> mµu tÝm tróc tr­îng <color> ®i !") 
AddEventItem(34) 
Msg2Player(" ë cöa thø hai tr¶ lêi §­êng m«n tr¸ng ®inh cöu cung trËn vÊn ®Ò , ®¹t ®­îc mµu tr¾ng tróc tr­îng . ") 
Uworld37 = SetByte(GetTask(37),1,60) 
SetTask(37,Uworld37) 
AddNote(" ë cöa thø hai tr¶ lêi §­êng m«n tr¸ng ®inh cöu cung trËn vÊn ®Ò , ®¹t ®­îc mµu tr¾ng tróc tr­îng . ") 
end; 
