-- script viet hoa By http://tranhba.com description: tay míi th«n _ lı dù 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/25 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-20) v× sao VSS th­îng kh«ng ®æi míi ? nÆng viÕt söa ®æi nhiÖm vô l­u tr×nh 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world69=GetTask(69) 
if ((UTask_world69 == 0) and (GetLevel() >= 5)) then 
Talk(3, "select","Ai , v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t , v× y tiªu ph¶i ng­êi tiÒu tôy ","VŞ ®¹i ca nµy , ng­¬i cã lßng th­îng ng­êi ?","Ai , chØ tiÕc nµng cho tíi b©y giê kh«ng ®óng ta cã bÊt kú bµy tá , t¹i sao trªn c¸i thÕ giíi nµy cã ta nh­ vËy bi th¶m ng­êi cña ?") 
elseif (UTask_world69 == 4) then 
Talk(4,"W69_step2","Xu©n h­¬ng ra mét nãi cho ng­¬i # v¹t ¸o tiÖm chiÒu réng cuèi cïng døt kho¸t , c©u nµy th¬ ®İch t¸c gi¶ liÔu vÜnh l¹i kªu c¸i g× ?","Ta thËt sù lµ kh«ng nghÜ ra ®­îc !"," lµm sao sÏ vÊn ®Ò ®¬n gi¶n nh­ vËy còng sÏ kh«ng ?","ThËt kh«ng cã ı , ng­¬i cã thÓ gióp ta sao ?") 
elseif (UTask_world69 == 8) then 
Talk(2, "prise","Xu©n h­¬ng c« n­¬ng ®· ®ãn nhËn ng­¬i tİn vËt , kİnh xin ng­¬i ®Õn nhµ nµng lµm kh¸ch , chóc mõng chóc mõng !","ChiÕc nhÉn nµy lµ cña ta mét chót t©m ı , mêi/xin ng­¬i nhËn lÊy #") 
elseif (UTask_world69 == 2) then 
Talk(1,"","Nµng gäi xu©n h­¬ng , ë t¹i trÊn ®İch phİa ®«ng . c¸i thanh nµy hoa sen phiÕn lµ cña ta tİn vËt , lµm phiÒn ng­¬i gióp ta giao cho nµng .") 
elseif (UTask_world41==10) then 
Talk(1,"","Xu©n h­¬ng võa «n nhu l¹i hiÒn huÖ , cã thÓ lÊy ®­îc nµng lµ c¸i g× còng so ra kĞm ®İch !") 
else 
Talk(1,"","Sù kiÖn ng­êi nµo nhiÒu nh­ vËy t×nh !") 
end 
end 

function select() 
Say("Ng­¬i cã thÓ gióp ta h­íng nµng chuyÓn ®¹t t©m ı sao ?", 2,"Ta cã thÓ gióp ng­¬i cïng nµng nãi . /yes","ChuyÖn nµy ta kh«ng gióp ®­îc . /no") 
end; 

function yes() 
Talk(1,"","Nµng gäi xu©n h­¬ng , ë t¹i trÊn ®İch phİa ®«ng . c¸i thanh nµy hoa sen phiÕn lµ cña ta tİn vËt , lµm phiÒn ng­¬i gióp ta giao cho nµng .") 
AddEventItem(190) 
Msg2Player("TiÕp nhËn vô # gióp lı dù nh¾n nhñ t©m ı cho xu©n h­¬ng , mang lı dù ®İch tİn vËt hoa sen phiÕn cho xu©n h­¬ng . ") 
SetTask(69,2) 
AddNote("TiÕp nhËn vô # gióp lı dù nh¾n nhñ t©m ı cho xu©n h­¬ng , mang lı dù ®İch tİn vËt hoa sen phiÕn cho xu©n h­¬ng . ") 
end 

function no() 
end 

function W69_step2() 
Talk(1,"","Tu©n lÖnh !") 
SetTask(69,6) 
AddNote(" lı dù tr¶ lêi kh«ng ra vÊn ®Ò , ng­¬i gióp h¾n tr¶ lêi . ") 
Msg2Player(" lı dù tr¶ lêi kh«ng ra vÊn ®Ò , ng­¬i gióp h¾n tr¶ lêi . ") 
end 

function prise() 
SetTask(69,10) 
AddRepute(7) -- script viet hoa By http://tranhba.com  danh väng thªm 7 ®iÓm 
AddNote("§em xu©n h­¬ng ®İch tr¶ lêi mang cho lı dù , nhiÖm vô hoµn thµnh . ") 
Msg2Player("§em xu©n h­¬ng ®İch tr¶ lêi mang cho lı dù , nhiÖm vô hoµn thµnh . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if (random(0,3) == 0) then 
AddItem(0, 3, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc hoµng ngäc chiÕc nhÉn ") 
else 
AddItem(0, 3, 0, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc th¹ch chiÕc nhÉn ") 
end 
Msg2Player("Ng­¬i giang hå danh tiÕt gia t¨ng 7 c¸ ®iÓm ") 
end 
