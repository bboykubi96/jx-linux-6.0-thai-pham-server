-- script viet hoa By http://tranhba.com  §¹i Lý # ng­êi ®i ®­êng # ®o¹n t­ thµnh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  update by xiaoyang(2004\4\22) thóy khãi 90 cÊp nhiÖm vô 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(14) == 1 then 
allbrother_0801_FindNpcTaskDialog(14) 
return 0; 
end 
Uworld126 = GetTask(126) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld126 < 10) and (GetLevel() >= 90) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="cuiyan") then 
Talk(6,"Uworld126_get","Ai ....","C«ng tö v× sao thë dµi ?","Ng­êi tuæi trÎ ph¶i cã chÝ lín h­íng .","Ch¼ng lÏ c¸c h¹ ®Ých ý trung nh©n kh«ng cã ë ®©y .","Nµng vÉn cßn ë , nh­ng lµ , t©m ®· chÕt .","ChØ cÇn ng­¬i thµnh t©m thµnh ý , chuyÖn g× còng cã thÓ thµnh . c¸c h¹ cã c¸i g× khã kh¨n , cø viÖc nãi . .") 
elseif (Uworld126 == 10) and (HaveItem(391) == 0) then 
AddEventItem(391) 
Msg2Player("NhËn ®­îc ®o¹n t­ thµnh tin/th¬ ") 
if (GetSex() == 0) then 
Talk(1,"","Muèn gÆp mü nh©n còng kh«ng cÇn véi v¶ nh­ vËy ®i ? tin/th¬ cßn kh«ng cã cÇm . ") 
else 
Talk(1,"","C« n­¬ng quªn mang tin ") 
end 
elseif (Uworld126 == 40) then 
SetTask(126,45) 
Talk(8,"Uworld126_jump","§õng b¶o lµ !","§oµn c«ng tö , ng­¬i ng­¬i ®· cho lÖ thu thñy h­ëng v« tËn ®Ých vinh hoa phó quý , n÷ nh©n nh­ vËy tïy tiÖn cã thÓ t×m 10 c¸ , 100 c¸ , hµ khæ lµm khã m×nh ®©y .","Nãi nh­ ng­¬i vËy còng kh«ng dïng , xin/mêi c¸c h¹ nhanh lªn mét chót rêi ®i n¬i nµy .","# ®o¹n t­ thµnh , ng­¬i mêi r­îu kh«ng ¨n ¨n ph¹t r­îu , ta kh«ng chÞu næi , nÕu nh­ ng­¬i cßn kh«ng tr¶ lêi , liÒn cho ta .","Hõ ","Cho ng­¬i tiÓu tö ! ","A .....","# §oµn c«ng tö ") 
elseif (Uworld126 == 45) then -- script viet hoa By http://tranhba.com  kh«ng cã ®¸nh xong ®Ých 
Talk(1,"Uworld126_jump","Ng­¬i cìi cho ra hßa th­îng tay cña , còng trèn kh«ng tho¸t c¸i nµy miÕu , xem chiªu !") 
elseif (Uworld126 == 50) then 
Talk(8,"Uworld126_set","§oµn c«ng tö kh«ng ph¶i lµ ®èi thñ cña h¾n !","May nhê ng­¬i tíi kÞp thêi , t¹i h¹ cßn cã thÓ chÞu ®ùng ®­îc .","§èi ph­¬ng tõ ®©u tíi ®©y ?","Kh«ng hiÓu , cã lÏ lµ thu thñy ®Ých ®Þch nh©n ","..... cã , ta ®em cïng lÖ c« n­¬ng nãi l¸o , nãi ng­¬i bÞ th­¬ng nÆng .","C¸i nµy gièng nh­ kh«ng ph¶i lµ rÊt tèt .","C¶ ®êi h¹nh phóc , ch¼ng lÏ khã kh¨n kh«ng thÓ qu¸ khø sao ? ","# ®o¹n t­ thµnh # h¶o , c¸c h¹ muèn thÕ nµo ®Òu ®­îc , §oµn mç nghe tõ . ") 
elseif (Uworld126 == 70) then 
Talk(3,"U126_70","Nh­ thÕ nµo ? lÖ c« n­¬ng tíi th¨m ng­¬i sao ?","Nµng tíi , chóng ta nãi chuyÖn rÊt vui vÎ , ng­¬i gióp ta rÊt nhiÒu , ®a t¹ !","CÇn g× ph¶i quan t©m , chØ cÇn 2 ng­êi h¹nh phóc , chuyÖn nhá coi lµ c¸i g× ?") 
elseif (Uworld126 > 10) and (Uworld126 < 50)then 
Talk(1,"","Tr­íc lµ ta sai lÇm råi , thËt kh«ng hiÓu thÕ nµo c¶m t¹ !...") 
else 
Talk(2,"","Chóng ta §¹i Lý cïng tèng n­íc , hµng n¨m còng cung phông cho thiªn triÒu , t¬ lôa , nÞnh bî , x¹ h­¬ng .","Bän ng­¬i ng­êi Kim nh­ vËy tham lam , c¸c ng­¬i cèng hiÕn bao nhiªu còng kh«ng ®ñ . ") 
end 
end; 

function Uworld126_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b¹ch tªn ch­a häc d· cÇu quyÒn ®Ých , kh«ng cho phÐp tiÕp nhËn vô 
if (GetSex() == 0) then 
Talk(1,"","Huynh ®µi ®Ých h¶o ý , t­ thµnh nhí râ ") 
else 
Talk(1,"","Huynh ®µi ®Ých h¶o ý , t­ thµnh nhí râ ") 
end 
else 
Say("Thùc kh«ng d¸m giÊu giÕm , tr­íc kia t¹i h¹ cã bÞ/cha/chÞu víi nµng , b©y giê hèi hËn ®· chËm . ta l¹i mét phong th­ , hy väng c¸c h¹ cã thÓ tù tay giao cho thóy khãi cöa lÖ thu thñy ",2,"ChuyÖn nµy cã khã kh¨n g× /Uworld126_yes","T¹i h¹ cßn cã viÖc , c¸c h¹ t×m ng­êi kh¸c ®i ! /Uworld126_no") 
end 
end 

function Uworld126_yes() 
AddEventItem(391) 
SetTask(126,10) 
Msg2Player("NhËn ®­îc ®o¹n t­ thµnh tin/th¬ , ®Õn thóy khãi cöa thÊy lÖ thu thñy ") 
AddNote("NhËn ®­îc ®o¹n t­ thµnh tin/th¬ , ®Õn thóy khãi cöa thÊy lÖ thu thñy ") 
end 

function Uworld126_no() 
end 

function Uworld126_jump() 
SetFightState(1) 
NewWorld(230,1613,3175) 
end 

function Uworld126_set() 
SetTask(126,60) 
Msg2Player(" lõa g¹t thu thñy ®i xem ®o¹n t­ thµnh ") 
AddNote(" lõa g¹t thu thñy ®i xem ®o¹n t­ thµnh ") 
end 

function U126_70() 
Talk(1,"","§óng råi , thu thñy nãi duÉn ch­ëng m«n gÆp nhau ng­¬i , kh«ng hiÓu cã chuyÖn g× ?") 
SetTask(126,80) 
Msg2Player("Nghe ®­îc ®o¹n cïng lÖ nãi chuyÖn , rÊt vui vÎ . ng­¬i nhanh ®i nh×n duÉn ngËm nh©n t×m ta cã chuyÖn g× ") 
end 
