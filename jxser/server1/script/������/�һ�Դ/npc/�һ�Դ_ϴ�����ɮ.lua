--Vo danh tang vo danh bi canh
-- script viet hoa By http://tranhba.com  t¾m kü n¨ng ®iÓm ®İch ph¶n béi t¨ng 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-29) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-02-04) t¾m ®iÓm söa ®æi v× cã thÓ t¾m 255 lÇn 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-27) tiÓu nhi mÊt tİch nhiÖm vô (Uworld42 = GetTask(42)) 
-- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng thiÕt ®Şnh : lÇn ®Çu kü n¨ng (1), lÇn ®Çu thñy tinh (257), nhiÒu lÇn thñy tinh (10), miÔn phİ (1024) 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_event\\tochieukynang150\\head.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

--dofile("script/Á½ºşÇø/ÌÒ»¨Ô´/npc/ÌÒ»¨Ô´_Ï´µãµÄÅÑÉ®.lua")
--dofile("script/global/g7vn/g7configall.lua")

if vodanhtang150 == 0 then
Say("Tİnh n¨ng v« danh bİ c¶nh t¹m thêi ®ang ®ãng") 
return
end

-- script viet hoa By http://tranhba.com  Uworld137 = GetTask(137) 
-- script viet hoa By http://tranhba.com  UTask_world13 = GetTask(13) 
Uworld42 = GetTask(42) 
tbTrainSkill150:ResetDailyTask() 
-- script viet hoa By http://tranhba.com  SetTaskTemp(1,0) -- script viet hoa By http://tranhba.com  phôc vŞ , tr¸nh khái bÊt kú quÊy nhiÔu 
if (Uworld42 == 40) then -- script viet hoa By http://tranhba.com  tiÓu nhi mÊt tİch nhiÖm vô 
Talk(12,"","Ta ®Õn t×m mÊt tİch ®øa trÎ ! ","A di ®µ phËt , ta lµ ng­êi trong s¹ch , kh«ng hiÓu , kh«ng hiÓu . ","Hy väng ®¹i s­ tõ bi , nãi cho ta nghe !","N¨m Êy ta bŞ trôc xuÊt s­ m«n , ph­¬ng tr­îng cã tõ bi sao ","Kh«ng hiÓu ®¹i s­ v× sao chuyÖn mµ bŞ trôc xuÊt s­ m«n ? ","Ng­¬i hái nhiÒu nh­ vËy lµm g× ? ha ha ha , l·o n¹p kh«ng chØ cã muèn cïng ng­¬i nãi t¹i sao bŞ trôc xuÊt s­ m«n , cßn ph¶i nãi cho ng­¬i biÕt mÊt tİch ®øa trÎ chuyÖn cña ","Ha ha , th× ra lµ hßa th­îng ph¹m giíi liÔu ","A di ®µ phËt , thiÖn tai thiÖn tai !","R­îu thŞt ®· ¨n råi , t©m kh«ng h­íng phËt liÔu . ","Ha ha , h¶o . ng­¬i cïng ta cã duyÕn , ta cho ng­¬i biÕt !","§¹i s­ , m­êi ng­êi mÖnh kh«ng ph¶i lµ nãi giìn ®İch ","H¶o , ng­¬i ®i t×m mét ng­êi gäi long ®uæi vò , chØ cã h¾n míi biÕt ng­êi kia ë ®©u trong ") 
SetTask(42,50) 
AddNote("MÊt tİch ®øa trÎ nhiÖm vô # ®i t×m long ®uæi vò , hái th¨m mÊt tİch ®øa trÎ ®İch tin tøc . ") 
Msg2Player("MÊt tİch ®øa trÎ nhiÖm vô # ®i t×m long ®uæi vò , hái th¨m mÊt tİch ®øa trÎ ®İch tin tøc . ") 
-- script viet hoa By http://tranhba.com  elseif (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  cho phĞp t¾m ®iÓm # kh«ng hÒ n÷a h¹n chÕ hång danh t¾m ®iÓm # 
-- script viet hoa By http://tranhba.com  if (Uworld137 > 20) and (Uworld137 <= 30) then -- script viet hoa By http://tranhba.com  2004-06-11 kü n¨ng ®æi míi cho mét lÇn miÔn phİ t¾m ®iÓm # kh«ng bao gåm b¹ch tªn # 
-- script viet hoa By http://tranhba.com  Say("Thİch minh # nh×n ë ng­¬i còng lµ l·o Giang hå ®İch ph©n th­îng , kh«ng cã thñy tinh ta còng cho ng­¬i nÆng thiÕt kü n¨ng 1 lÇn , cã muèn hay kh«ng n¾m chÆc c¬ héi nµy ? ",2,"H¶o , ta muèn nÆng thiÕt kü n¨ng /rollback_0611","Ta cßn lµ chËm mét chót trë l¹i ®i /no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 0) then -- script viet hoa By http://tranhba.com  kh«ng t¾m ®iÓm # cho phĞp dïng kü n¨ng hoÆc b¶o th¹ch t¾m # 
-- script viet hoa By http://tranhba.com  Talk(1,"rollback_get","Thİch minh # tiÕp nhËn <color=red> dŞch c©n tÈy tñy <color> ®èi víi ng­¬i ®İch c¨n cèt sÏ t¹o thµnh nhÊt ®Şnh tæn th­¬ng , ng­¬i vÉn muèn ta thay ng­¬i tÈy tñy ? ") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 511) then -- script viet hoa By http://tranhba.com  t¾m ®iÓm ®· ®¹t th­îng h¹n , kh«ng thÓ n÷a lµm bÊt kú t¾m ®iÓm thao t¸c 
-- script viet hoa By http://tranhba.com  Talk(1,"","Thİch minh # ng­¬i tÈy tñy ®İch sè lÇn b©y giê qu¸ nhiÒu , kh«ng thÓ lµm tiÕp liÔu . nÕu nh­ m¹nh h¬n ®­îc n÷a tÈy tñy lêi cña , sî r»ng sÏ kinh m¹ch ®øt ®o¹n , trë thµnh phÕ nh©n #") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 255) then -- script viet hoa By http://tranhba.com  t¾m ®iÓm ®· ®¹t th­îng h¹n , nh­ng ch­a dïng b¶o th¹ch ®æi trë vÒ kü n¨ng ®iÓm 
-- script viet hoa By http://tranhba.com  Say("Thİch minh # ng­¬i tÈy tñy ®İch sè lÇn b©y giê qu¸ nhiÒu , kh«ng thÓ lµm tiÕp liÔu . ngoµi ra ng­¬i nÕu nh­ cã thÓ t×m ®­îc ba viªn tô thiªn ®Şa v¹n vËt chi nguyªn khİ thñy tinh lêi cña , cßn cã thÓ lîi dông nã tu bæ ng­¬i mét chót ë lÇn ®Çu tiªn tÈy tñy lóc kinh m¹ch bŞ tæn th­¬ng . ",2,"Ta ®· mang theo ba viªn thñy tinh tíi /found_jewel_yes","VËy coi nh­ xong /no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 >= 257) and (UTask_world13 < 511) then -- script viet hoa By http://tranhba.com  nhiÒu lÇn t¾m ®iÓm # v« b¶o th¹ch ®æi trë vÒ kü n¨ng chøc n¨ng # 
-- script viet hoa By http://tranhba.com  Say("Thİch minh # cßn muèn tÈy tñy lêi cña , trõ m­êi v¹n l­îng b¹c cßn nhÊt ®Şnh ph¶i cã thñy tinh b¶o vÖ lßng cña ng­¬i m¹ch , nÕu kh«ng lÊy ng­¬i kia ®· cã tæn th­¬ng kinh m¹ch b©y giê qu¸ møc hung hiÓm . ",2,"Ch­ bµn sù vËt ®· chuÈn bŞ tháa ®¸ng /NEWpay_yes","VËy coi nh­ xong /rollback_no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 >= 1) and (UTask_world13 < 256) then -- script viet hoa By http://tranhba.com  nhiÒu lÇn t¾m ®iÓm # h¬n n÷a cã thÓ dïng b¶o th¹ch ®æi trë vÒ kü n¨ng ®iÓm # 
-- script viet hoa By http://tranhba.com  Say("Thİch minh # cßn muèn tÈy tñy lêi cña , trõ m­êi v¹n l­îng b¹c cßn nhÊt ®Şnh ph¶i cã thñy tinh b¶o vÖ lßng cña ng­¬i m¹ch , nÕu kh«ng lÊy ng­¬i kia ®· cã tæn th­¬ng kinh m¹ch b©y giê qu¸ møc hung hiÓm . kh¸c , nÕu nh­ ng­¬i cã ba viªn thñy tinh , tèt nhÊt hay lµ tr­íc ®em mét lÇn tÈy tñy lóc trong kinh m¹ch l­u l¹i tæn th­¬ng tr­íc cho tu bæ liÔu , l©u th× bÊt lîi . ",3,"Xin gióp ta tu bæ lÇn tr­íc kinh m¹ch bŞ tæn th­¬ng /found_jewel_yes","Ta muèn tr­íc t¾m thªm lÇn n÷a tñy /NEWpay_yes","VËy coi nh­ xong /rollback_no") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(1,"","Khai ph¸t ng­êi # t¾m ®iÓm tr¹ng th¸i xuÊt hiÖn sai lÇm , xin/mêi cïng trß ch¬i nh©n viªn qu¶n lı (GM) liªn l¹c . ") 
-- script viet hoa By http://tranhba.com  end 
else 
-- script viet hoa By http://tranhba.com  thiÕu tØnh ®èi tho¹i # gi¶i thİch t¾m ®iÓm söa ®æi # 
local szTitle = " thİch minh # b©y giê chØ cÇn t×m tïy tiÖn thµnh thŞ nµo ®İch phu xe , còng cã thÓ ®­a ng­¬i ®i “ tÈy tñy ®¶o ” , so bÇn t¨ng tÈy tñy cµng thªm ph­¬ng tiÖn . " 
szTitle = szTitle .. " bÊt qu¸ ta bªn nµy cã thÓ ®­a c¸c ng­¬i ®i <color=yellow> v« danh bİ kİnh <color> , ë n¬i nµo cã thÓ dïng kinh nghiÖm ®Ó ®æi lÊy mét İt kü n¨ng ®İch ®é thuÇn thôc . " 

local tbOpt = {} 
-- script viet hoa By http://tranhba.com - gia t¨ng vËt phÈm ®­a 150 tu luyÖn trŞ gi¸ -- script viet hoa By http://tranhba.com  Modified By NgaVN - 20121207 
tinsert(tbOpt, {"§ãng vËt phÈm ", tbTrainSkill150.LoadItem, {tbTrainSkill150}}) 
-- script viet hoa By http://tranhba.com  ®i vµo tr­íc cÇn ph¸n ®o¸n cã hay kh«ng cô cã 150 cÊp kü n¨ng , nÕu kh«ng kh«ng tiÔn 

-- script viet hoa By http://tranhba.com  ®­a ta ®i v« danh bİ c¶nh - - Modified By NgaVN - 20121207 
tinsert(tbOpt, {"§­a ta ®i v« danh bİ kİnh ", toWumingmijin}) 
tinsert(tbOpt, {"Ta suy nghÜ thªm h¹ ", no}) 

CreateNewSayEx(szTitle, tbOpt) 


-- script viet hoa By http://tranhba.com  i = random(0,2) 
-- script viet hoa By http://tranhba.com  if (i == 0) then 
-- script viet hoa By http://tranhba.com  Talk(1,"","Thİch minh # kÓ tõ cã tèt h¬n tÈy tñy chç ®i , ta chç nµy lËp tøc liÒn trë nªn cöa nh­ng la t­íc liÔu . ") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Thİch minh # dŞch c©n tÈy tñy ®İch c«ng phu xuÊt tõ DŞch c©n kinh , nh­ng lµ muèn tu luyÖn m«n c«ng phu nµy ng­êi cña tù th©n l¹i nhÊt ®Şnh ph¶i tan hÕt toµn th©n c«ng lùc , hoµn toµn lµ lµm ng­êi lµm g¶ . ®¸ng hËn ta v× ThiÕu L©m mµ tu tËp m«n c«ng phu nµy , quay ®Çu l¹i l¹i bŞ ®uæi ra khái ThiÕu L©m #") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  elseif (i == 1) then 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Thİch minh # tham ®iÓm tµi l¹i cã c¸i g× kh«ng ®óng , ch¼ng lÏ ng­êi xuÊt gia liÒn nhÊt ®Şnh ph¶i b÷a ¨n phong uèng lé sao ? l¹i v× c¸i nµy ®em ta ®uæi ra khái ThiÕu L©m . bÊt qu¸ còng tèt , b©y giê ta nh­ vËy ng­îc l¹i h¬n tiªu dao tù t¹i #") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(2,"","Thİch minh # ng­¬i lµ tíi t×m ta tÈy tñy sao ? bÇn t¨ng ta mÆc dï bÇn tµi , bÊt qu¸ còng kh«ng nhÉn lõa ng­¬i . ","Thİch minh # b©y giê ng­¬i chØ cÇn t×m tïy tiÖn thµnh thŞ nµo ®İch phu xe , còng cã thÓ ®­a ng­¬i ®i “ tÈy tñy ®¶o ” , so bÇn t¨ng tÈy tñy cµng thªm ph­¬ng tiÖn . ") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Thİch minh # dŞch c©n tÈy tñy mÆc dï thÇn diÖu , nh­ng bŞ tÈy tñy ng­êi c¨n cèt l¹i vÉn cã nhÊt ®Şnh tæn th­¬ng , v× vËy muèn tÈy tñy lêi cña nhÊt ®Şnh ph¶i suy nghÜ kü cµng . ") 
-- script viet hoa By http://tranhba.com  end 
end 
end; 

function toWumingmijin() 
local tbSkill_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,} 
local bResult = 0 
for i=1, getn(tbSkill_150) do 
if HaveMagic(tbSkill_150[i]) ~= -1 then 
bResult = 1 
break 
end 
end 

if bResult == 1 then 
NewWorld(967,1634, 3231) 
else 
Talk(1,"","Häc ®­îc 150 kü n¨ng sau l¹i ®i v« danh bİ c¶nh !") 
end 
end 

function rollback_0611() -- script viet hoa By http://tranhba.com  v× (2004-06-11) thiÕt kÕ miÔn phİ t¾m ®iÓm 
if (GetCash() >= 100000) then 
SetTaskTemp(1,1024) -- script viet hoa By http://tranhba.com  lÇn nµy t¾m ®iÓm t¨ng l­îng v× 1024 
rollback_prise() 
else 
Talk(1,"","Ng­¬i hµnh tÈu giang hå l©u nh­ vËy , 100000 hai ®Òu kh«ng cã sao ?") 
end 
end 

function rollback_1212() -- script viet hoa By http://tranhba.com  v× (2003-12-12) thiÕt kÕ miÔn phİ t¾m ®iÓm # ®· hñy bá # 
if (GetCash() >= 100000) then 
SetTaskTemp(1,1) -- script viet hoa By http://tranhba.com  lÇn nµy t¾m ®iÓm t¨ng l­îng v× 1 
rollback_prise() 
else 
Talk(1,"","Chót tiÒn nµy ®Òu kh«ng cã , sao ®­îc ®i giang hå ?!") 
end 
end 

function found_jewel_yes() -- script viet hoa By http://tranhba.com  t×m ®­îc b¶o th¹ch , ®æi trë vÒ kü n¨ng ®iÓm 
if (GetCash() >= 100000) then 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
		if (j238+j239+j240 == 3) then
Pay(100000) 
			SetTask(13,GetTask(13) + 256)	-- script viet hoa By http://tranhba.com  °Ñ±äÁ¿¸Ä³ÉÓÃ¹ı±¦Ê¯µÄ×´Ì¬
for i = 1,j238 do DelItemEx(238) end 
for i = 1,j239 do DelItemEx(239) end 
for i = 1,j240 do DelItemEx(240) end 
AddMagicPoint(3) -- script viet hoa By http://tranhba.com  bæ trë vÒ t¾m ®iÓm khÊu trõ ®İch 3 ®iÓm . 
Talk(1,"KickOutSelf","Tèt l¾m , ng­¬i b©y giê nghØ ng¬i mét chót , kh«i phôc mét chót !") 
		elseif (j238+j239+j240 > 3) then
Say("Ng­¬i cho ta 3 viªn thñy tinh tr­íc , ta míi cã thÓ gióp ng­¬i !",1,"VËy ta chê mét chót trë l¹i /rollback_no") 
else 
Talk(1,"","Ng­¬i kh«ng ®ñ 3 viªn thñy tinh ") 
end 
else 
Talk(1,"","Tèt l¾m , ng­¬i b©y giê nghØ ng¬i mét chót , kh«i phôc mét chót !") 
end 
end 

function rollback_get() 
Say("Tèt l¾m , ta rÊt mÖt mái . ng­¬i cho ta chñy ®Êm l­ng !",2,"§©y lµ m­êi v¹n l­îng , xin/mêi ®¹i s­ nhËn lÊy . /pay_yes","VËy coi nh­ liÔu /rollback_no") 
end; 

function rollback_no() 
Talk(1,"","§ang chê ng­¬i ®¹i gi¸ quang l©m , h·y thu ®Õn m­êi v¹n l­îng , ha ha !. ") 
end; 

function pay_yes() -- script viet hoa By http://tranhba.com  lÇn ®Çu t¾m ®iÓm , lµ dïng ®İch b¶o th¹ch # kh«ng trõ kü n¨ng # 
if (GetCash() >= 100000) then 
if (GetByte(GetTask(13),2) == 0) then -- script viet hoa By http://tranhba.com  nÕu dïng qua thñy tinh còng kh«ng n÷a cho phĞp dïng thñy tinh t¾m ®iÓm 
Say("Ng­¬i tr­íc cho ta 3 viªn thñy tinh , ta míi cã thÓ gióp ng­¬i !",3,"Ta cã 3 viªn /pay_jewel","Ta kh«ng cã , kinh m¹ch bŞ th­¬ng , kh«ng chŞu næi . /jewel_none","VËy ta liÒn tèi nay gióp ng­¬i /rollback_no") 
else 
jewel_none() 
end 
else 
Talk(1,"","§©y lµ ng­¬i ®İch thµnh ı sao ? ng­¬i trë vÒ ®i th«i ! ") 
end 
end 

function pay_jewel() 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
	if (j238+j239+j240 == 3) then
SetTaskTemp(1,257) -- script viet hoa By http://tranhba.com  nhí lµ dïng b¶o th¹ch t¾m ®İch ®iÓm # t¾m ®iÓm thay ®æi l­îng trŞ gi¸ lµ 257 , kh«ng ph¶i lµ 1# 
Talk(2,"rollback_prise","Tèt l¾m , ng­¬i b©y giê nghØ ng¬i mét chót , kh«i phôc mét chót !","B©y giê ngåi ë phİa tr­íc ta ") 
	elseif (j238 + j239 + j240 > 3) then
Say("Ng­¬i tr­íc cho ta 3 viªn thñy tinh , ta míi cã thÓ gióp ng­¬i !",1,"VËy ta chê mét chót trë l¹i /rollback_no") 
else 
Talk(1,"","Ng­¬i râ rµng kh«ng cã 3 viªn thñy tinh ") 
end 
end 

function NEWpay_yes() -- script viet hoa By http://tranhba.com  lÇn thø hai # cïng sau nµy # t¾m ®iÓm lóc ®iÒu dông , trùc tiÕp kiÓm tra tiÒn cïng b¶o th¹ch , kh«ng hÒ n÷a ghi chĞp cã hay kh«ng b¶o th¹ch t¾m 
if (GetCash() >= 100000) then 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
		if (j238+j239+j240 == 3) then
SetTaskTemp(1,10) -- script viet hoa By http://tranhba.com  ®· b¾t ®Çu t¾m ®iÓm l­u tr×nh 
Talk(2,"rollback_prise","Tèt l¾m , ng­¬i b©y giê nghØ ng¬i mét chót , kh«i phôc mét chót !","B©y giê ngåi ë phİa tr­íc ta ") 
		elseif (j238 + j239 + j240 > 3) then
Say("Ng­¬i tr­íc cho ta 3 viªn thñy tinh , ta míi cã thÓ gióp ng­¬i !",1,"VËy ta chê mét chót trë l¹i /rollback_no") 
else 
Talk(1,"","Ng­¬i râ rµng kh«ng cã 3 viªn thñy tinh ") 
end 
else 
Talk(1,"","100000 hai ®Òu kh«ng cã , ta gióp thÕ nµo ng­¬i ?") 
end 
end 

function jewel_none() 
-- script viet hoa By http://tranhba.com 	SetTask(13,GetTask(13) + 1)
SetTaskTemp(1,1) -- script viet hoa By http://tranhba.com  nhí lµ dïng kü n¨ng ®iÓm ®Õm t¾m ®İch ®iÓm # t¾m ®iÓm thay ®æi l­îng trŞ gi¸ lµ 1 , kh«ng ph¶i lµ 257# 
Talk(2,"rollback_prise","Tèt l¾m , ng­¬i b©y giê nghØ ng¬i mét chót , kh«i phôc mét chót !","B©y giê ngåi ë phİa tr­íc ta ") 
end 

function rollback_cancel() -- script viet hoa By http://tranhba.com  ®· bu«ng tha v« dông hµm sè 
i = GetTaskTemp(1) 
if (i > 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ ®· b¾t ®Çu l­u tr×nh , hoµn tr¶ 10W l­îng b¹c 
Talk(1,"","Ta cßn ng­¬i tiÒn !") 
Msg2Player("Tr¶ tiÒn l¹i cho ng­¬i . ") 
end 
end 

function rollback_prise() 
-- script viet hoa By http://tranhba.com - tr­íc trõ tiÒn cïng b¶o th¹ch # ®­a thay ®æi l­îng 
UTask13 = GetTask(13) 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
addon = GetTaskTemp(1) 
if (addon == 1024) then -- script viet hoa By http://tranhba.com  lµ miÔn phİ ®Æc thï t¾m ®iÓm 
		Uworld137 = GetTask(137) + 40
SetTask(137,Uworld137) 
AddMagicPoint(3) 
elseif (addon == 257) then -- script viet hoa By http://tranhba.com  lµ lÇn ®Çu t¾m ®iÓm , h¬n n÷a lµ dïng b¶o th¹ch t¾m ®İch 
for i = 1,j238 do DelItem(238) end 
for i = 1,j239 do DelItem(239) end 
for i = 1,j240 do DelItem(240) end 
AddMagicPoint(3) -- script viet hoa By http://tranhba.com  thªm 3 ®iÓm kü n¨ng , ®Ó tiªu t¾m ®iÓm khÊu trõ ®İch 3 ®iÓm võa ®óng chèng l¹i . 
		SetTask(13,UTask13 + 257)	-- script viet hoa By http://tranhba.com  Ï´µã±äÁ¿µÄ¸Ä±äÎªÔ­±¾Öµ¼ÓÉÏ´Ë´ÎÔö¼ÓÖµ£¨Ãâ·ÑÌØÊâÏ´µãµÄ+0£©
elseif (addon == 10) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ lÇn ®Çu t¾m ®iÓm , ph¶i cã b¶o th¹ch . còng thªm 3 ®iÓm kü n¨ng 
for i = 1,j238 do DelItem(238) end 
for i = 1,j239 do DelItem(239) end 
for i = 1,j240 do DelItem(240) end 
AddMagicPoint(3) 
		SetTask(13,UTask13 + 1)	-- script viet hoa By http://tranhba.com  Ï´µã±äÁ¿µÄ¸Ä±äÎªÔ­±¾Öµ¼ÓÉÏ´Ë´ÎÔö¼ÓÖµ
elseif (addon == 1) then -- script viet hoa By http://tranhba.com  lÇn ®Çu t¾m ®iÓm , dïng lµ kü n¨ng 
SetTask(13,1) -- script viet hoa By http://tranhba.com  t¾m ®iÓm thay ®æi l­îng ®İch söa ®æi v× vèn lµ trŞ gi¸ céng thªm lÇn nµy gia t¨ng trŞ gi¸ 
else 
Talk(1,"","TÈy tñy tr¹ng th¸i cã sai lÇm , xin liªn l¹c GM gi¶i quyÕt !") 
return 0 
end 
Pay(100000) 
-- script viet hoa By http://tranhba.com - sau ®ã b¾t ®Çu t¾m ®iÓm 
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c«ng kh¸c thao t¸c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” kh¸c thao t¸c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh trõ kü n¨ng còng trë vÒ tÊt c¶ kü n¨ng ®iÓm # bao gåm khinh c«ng chê ®Æc thï kü n¨ng # 
x = 0 
	if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
rollback_point = n - x - 3 -- script viet hoa By http://tranhba.com  ®em kü n¨ng ®iÓm lµm ë kh«ng ®iÓm ®Õm hoµn tr¶ , nh­ng tr­íc khÊu trõ khinh c«ng chê 
	if (rollback_point + GetMagicPoint() < 0) then		-- script viet hoa By http://tranhba.com  Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£Áô£©
rollback_point = -1 * GetMagicPoint() 
end 
AddMagicPoint(rollback_point) 
-- script viet hoa By http://tranhba.com  AddMagic(53,1) -- script viet hoa By http://tranhba.com  Èn nóp trô cét kü n¨ng # tr­êng binh # ng¾n binh # tÇm xa # kh«ng cÇn xö lı 
-- script viet hoa By http://tranhba.com  AddMagic(1,1) 
-- script viet hoa By http://tranhba.com  AddMagic(2,1) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua khinh c«ng lµ thªm trë vÒ nguyªn cã cÊp bËc 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” gièng nhau xö lı 
if (UTask13 == 254) or (UTask_13 == 510) then -- script viet hoa By http://tranhba.com  ®· kh«ng cã t¾m ®iÓm c¬ héi , nh¾c nhë mét c¸i nhµ ch¬i 
Msg2Player("Dïng 3 viªn thñy tinh tiÕn hµnh kü n¨ng tÈy tñy , ng­¬i nªn trë vÒ nhµ nghØ ng¬i mét chót !") 
Say("Ng­¬i tÈy tñy qu¸ nhiÒu lÇn , kinh m¹ch rèi lo¹n , b©y giê <color=red> kh«ng thÓ tÈy tñy liÔu <color> !",1,"Ta biÕt . /KickOutSelf") 
else 
Msg2Player("§· tÈy tñy hoµn kü n¨ng ®iÓm , ng­¬i cã thÓ tiÕn hµnh lÇn n÷a ph©n phèi !") 
Say("§· tÈy tñy hoµn kü n¨ng ®iÓm , ng­¬i cã thÓ tiÕn hµnh lÇn n÷a ph©n phèi !",1,"H¶o . /KickOutSelf") 
end 
-- script viet hoa By http://tranhba.com  KickOutSelf() 
end; 

function no() 
end 
