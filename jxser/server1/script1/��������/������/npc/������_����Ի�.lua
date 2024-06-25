-- script viet hoa By http://tranhba.com description: tay míi th«n _ xu©n h­¬ng 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/25 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-20) 

function main() 
UTask_world69=GetTask(69) 
if (UTask_world69 == 2) and (HaveItem(190) == 1) then 
Talk(4,"W69_step1","Xu©n h­¬ng c« n­¬ng , cã ng­êi gäi ta ®­a c¸i nµy giao cho ng­¬i ","C¸i nµy ... lµ ai ®­a cho ng­¬i ?","C« n­¬ng cÈn thËn suy nghÜ mét chót , nhÊt ®Şnh biÕt ®­a lÔ vËt nµy ng­êi cña ."," lêi nh­ vËy ... ng­êi kia th­êng nhí tíi ' v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t ' ®İch th¬ , nh­ng lµ h¾n kh«ng biÕt t¸c gi¶ liÔu vÜnh tªn g× , ®óng kh«ng ?") 
elseif (UTask_world69 == 6) then 
Say("Ng­¬i lµ thÕ nµo tr¶ lêi ®İch ? th¬ v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t ®İch t¸c gi¶ liÔu vÜnh cßn nãi c¸i g× ?",4," liÔu b¶y thay ®æi /W69_false"," liÔu thay ®æi /W69_false"," liÔu b¶y /W69_true"," liÔu ba thay ®æi /W69_false") 
else 
Talk(1,"","Ta sanh ë c¸i nµy , sinh tr­ëng ë c¸i nµy , kh«ng biÕt thÕ giíi bªn ngoµi lµ d¹ng g× tö .") 
end 
end; 

function W69_step1() 
DelItem(190) 
SetTask(69,4) 
AddNote("§em hoa sen giao cho xu©n h­¬ng chuyÓn ®¹t lı dù ®èi víi nµng lßng cña ı . xu©n h­¬ng ®Ò kú # v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t , c©u nµy th¬ ®İch t¸c gi¶ liÔu vÜnh l¹i kªu c¸i g× ? ") 
Msg2Player("§em hoa sen giao cho xu©n h­¬ng chuyÓn ®¹t lı dù ®èi víi nµng lßng cña ı . xu©n h­¬ng cho ng­¬i ra c¸ ®Ò # v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t , c©u nµy th¬ ®İch t¸c gi¶ liÔu vÜnh l¹i kªu c¸i g× ? ") 
end 

function W69_true() 
Talk(1,"","Tèt l¾m , ng­¬i nãi cho h¾n biÕt # ngµy mai ®Õn nhµ ta lµm kh¸ch !") 
SetTask(69,8) 
AddNote("Tr¶ lêi chİnh x¸c , xu©n h­¬ng xin ng­¬i nh¾n dïm cho lı dù ngµy mai ®Õn nhµ nµng ch¬i . ") 
Msg2Player("Tr¶ lêi chİnh x¸c , xu©n h­¬ng xin ng­¬i nh¾n dïm cho lı dù ngµy mai ®Õn nhµ nµng ch¬i . ") 
end 

function W69_false() 
Talk(1,"","Sai lÇm råi , cho ng­¬i chót thêi gian suy nghÜ mét chót ") 
Msg2Player("Ng­¬i tr¶ lêi sai lÇm , cè g¾ng lªn , chí l·ng phİ lı dù ®İch th©m t×nh ") 
end 
