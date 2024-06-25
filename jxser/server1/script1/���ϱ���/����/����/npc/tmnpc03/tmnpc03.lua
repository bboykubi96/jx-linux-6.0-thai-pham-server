-- script viet hoa By http://tranhba.com description: §­êng m«n b×nh th­êng ®Ö tö tróc h¶i cöa thø ba 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(10) == 1 then 
allbrother_0801_FindNpcTaskDialog(10) 
return 0; 
end 
UTask_tm = GetTask(2) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 60) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
if (HaveItem(33) == 0) then 
Talk(1,"","B¾t ®­îc mµu xanh tróc tr­îng sau ®ã t×m ta !") 
elseif (HaveItem(34) == 0) then 
Talk(1,"","B¾t ®­îc mµu tr¾ng tróc tr­îng sau ®ã t×m ta !") 
else 
Talk(1,"enroll_V3_Q1","§¸p ®èi víi ta ®İch ba quÎ , liÒn cã thÓ lÊy ®­îc <color=Red> mµu tİm tróc tr­îng <color> , nghe râ rµng :") 
end 
elseif (Uworld37 == 80) then -- script viet hoa By http://tranhba.com  ®· qua ba quan 
if (HaveItem(35) == 1) then 
Talk(1,"","NÕu muèn thuËn lîi v­ît qua kiÓm tra , ng­¬i nhÊt ®Şnh ph¶i cÇm ®ñ ba chu«i tróc tr­îng , sau ®ã giao cho ng­êi ®i ra cöa .") 
else 
AddEventItem(35) 
Talk(1,"","T¹i sao ®em tróc tr­îng nĞm lo¹n ë trong rõng c©y , ta gióp ng­¬i nhÆt trë l¹i , kh«ng muèn n÷a nĞm lo¹n liÔu ! ") 
end 
elseif (GetFaction() == "tangmen") then 
Talk(1,"","Mäi ng­êi ®Òu lµ ®ång m«n huynh ®Ö , ng­¬i kh«ng cÇn vät vµo tróc h¶i ba quan ! ") 
else 
Talk(1,"","Kh«ng nªn ch¹y lo¹n , cÈn thËn bŞ con khØ c¾n !") 
end 
end; 

function enroll_V3_Q1() 
Say("Thø nhÊt quÎ lµ “ ®ang nam cïng ch¸nh ®«ng :", 3, " liÖt háa oanh l«i /enroll_V3_Q2","N­íc löa kh«ng tha /False1","Qu¹t giã thæi löa /False1") 
end; 

function False1() 
Talk(1,"","Thø nhÊt quÎ ®¸p sai lÇm råi , cã lÏ nh÷ng con khØ kia cöa sÏ nãi cho ng­¬i biÕt .") 
end; 

function enroll_V3_Q2() 
Say("§óng råi , nghe kü , thø hai quÎ lµ “ ®«ng nam cïng chİnh b¾c ':", 3,"Nói cao n­íc tr­êng /False2","Phong sinh thñy khëi /enroll_V3_Q3", " l«i lÖ phong hµnh /False2") 
end; 

function False2() 
Talk(1,"","Kh«ng ®óng , t¹i sao kh«ng ®i hái hái nh÷ng con khØ kia ®©y ?") 
end; 

function enroll_V3_Q3() 
Say("Kh«ng tÖ , cuèi cïng mét quÎ lµ “ t©y b¾c cïng t©y nam ”#", 3,"ThŞnh hµnh n­íc th­îng /False3","Thiªn b¨ng ®Şa liÖt /enroll_V3_prise","S¬n thanh thñy tó /False3") 
end; 

function False3() 
Talk(1,"","Sai lÇm råi , ®õng t­ëng r»ng ng­êi nhÊt ®Şnh so con khØ th«ng minh , nãi kh«ng chõng bän hä so ng­¬i biÕt ph¶i cßn nhiÒu h¬n ®©y ! ") 
end; 

function enroll_V3_prise() 
Talk(1,"","Ba quÎ ng­¬i tÊt c¶ ®Òu ®¸p ®óng råi , ®©y lµ ng­¬i muèn mµu tİm tróc tr­îng . nÕu nh­ ng­¬i ba chu«i tróc tr­îng ®Òu ®· cÇm ®ñ , còng cã thÓ ®i giao cho ng­êi ®i ra cöa , thuËn lîi qu¸ quan .") 
AddEventItem(35) 
Msg2Player(" ë cöa thø ba tr¶ lêi §­êng m«n tr¸ng ®inh 8 quÎ vÊn ®Ò , ®¹t ®­îc tö tróc tr­îng . ") 
Uworld37 = SetByte(GetTask(37),1,80) 
SetTask(37,Uworld37) 
AddNote(" ë cöa thø ba tr¶ lêi §­êng m«n tr¸ng ®inh 8 quÎ vÊn ®Ò , ®¹t ®­îc tö tróc tr­îng . ") 
end; 
