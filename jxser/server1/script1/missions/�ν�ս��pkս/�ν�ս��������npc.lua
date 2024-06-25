-- script viet hoa By http://tranhba.com  tiÕp nhËn vô ®İch Npc 
-- script viet hoa By http://tranhba.com # tham dù ®İch nhµ ch¬i cÊp bËc nhÊt ®Şnh ph¶i lín h¬n 40 cÊp # 
-- script viet hoa By http://tranhba.com # tèng ph­¬ng ®İch nhµ ch¬i nhÊt ®Şnh ph¶i ®Õn Hµnh S¬n ®éc c« kiÕm chç ghi danh # 
-- script viet hoa By http://tranhba.com # kim ph­¬ng ®İch nhµ ch¬i nhÊt ®Şnh ph¶i ®Õn biÖn kinh cöa nha m«n kim quèc vâ t­íng chç ghi danh # 
-- script viet hoa By http://tranhba.com # ghi danh lóc cÇn giao n¹p nhÊt ®Şnh kim tiÒn # 
-- script viet hoa By http://tranhba.com  Update by Dan_Deng(2003-10-23) th«ng qua ®èi tho¹i thiÕt ®æi ®Õn chiÕn tr­êng bªn ngoµi ®İch , cÇn söa ®æi tr¹ng th¸i chiÕn ®Êu v× 1 

Include("\\script\\missions\\ËÎ½ğÕ½³¡PKÕ½\\ËÎ½ğÕ½³¡Í·ÎÄ¼ş.lua");


function main() 


local State = GetMissionV(1) 

-- script viet hoa By http://tranhba.com  kh«ng b¾t ®Çu 
if (State == 0 ) then 
Say("§¹i qu©n ta cßn ch­a lªn ®­êng , xin/mêi t¹m thêi nghØ ng¬i chê tin tøc !",0); 
-- script viet hoa By http://tranhba.com  NewWorld(44, 1585,3215) 
NewWorld(100,1406,3486) 
SetFightState(1) 
return 
end; 

-- script viet hoa By http://tranhba.com  t×nh huèng dŞ th­êng trùc tiÕp thèi lui ra 
if (State > 2) then 
-- script viet hoa By http://tranhba.com  NewWorld(44, 1585,3215) 
NewWorld(100,1406,3486) 
SetFightState(1) 
return 
end; 

local GroupV = GetTask(SJTASKVLAUE); 
result = 0; 
-- script viet hoa By http://tranhba.com  nÕu nh­ nªn nhµ ch¬i lµ ®· ghi danh tr«i qua , ®o¹n tuyÕn nÆng ngay c¶ tiÕn vµo , lµ nĞm vµo ®i 
result = CheckLastBattle(2, State) 
if (result == 1) then 
return 
end 

if (result == 2) then 
-- script viet hoa By http://tranhba.com  nµy c©u lµ ®Şch qu©n nhµ ch¬i cïng ®èi ph­¬ng ghi danh Npc ®İch ®èi tho¹i 
-- script viet hoa By http://tranhba.com  tû nh­ c¸c ng­¬i nh÷ng thø nµy tèng n­íc ®İch cá d©n ! chóng ta ®¹i kim quèc c¸c t­íng sÜ c¸c c¸c thiÖn chiÕn trİ dòng , thiÕt kş tung hoµnh ...... chê , cã ph¶i lµ ¸nh m¾t nh×n 
Say("Chóng ta kim quèc , ai còng kiªu dòng thiÖn chiÕn , c¸c ng­¬i tèng quèc nh©n lµm sao cã thÓ xøng víi lµ ®óng tay ®©y ?!",0) 
end 

-- script viet hoa By http://tranhba.com  ghi danh thêi kú 
if (State == 1 or State == 2) then 
MSDIdx = PIdx2MSDIdx(1, PlayerIndex); 
if (MSDIdx > 0) then 
nGroup = GetMSIdxGroup(1, MSDIdx); 

if ( nGroup == 2 ) then 
-- script viet hoa By http://tranhba.com  nµy c©u lµ bæn ph­¬ng ®· ghi danh ®İch nhµ ch¬i cïng ghi danh Npc ®İch ®èi tho¹i 
Say("ChÕt còng muèn trung thµnh víi ®¹i kim quèc , c¸c vŞ kim quèc dòng sÜ !",0) 
else 
Say("Chóng ta kim quèc , ai còng kiªu dòng thiÖn chiÕn , c¸c ng­¬i tèng quèc nh©n lµm sao cã thÓ xøng víi lµ ®óng tay ®©y ?!",0); 
end 

return 
end; 
end; 

if (State == 1) then 
if (GetMSPlayerCount(1,2) >= MAX_J_COUNT) then 
Say("Qu©n lùc cña chóng ta tr­íc m¾t ®· ®ñ tiªu diÖt tèng n­íc , tr¸ng sÜ xin chê chót mét lÇn ®i !", 0) 
return 
end; 

-- script viet hoa By http://tranhba.com  tû nh­ , tr­íc m¾t tèng n­íc quèc lùc kh«ng chÊn , tèng n­íc d©n chóng sinh linh ®å th¸n , chóng ta ®¹i kim quèc . . . . 
Say("Tèng triÒu ®· ®Õn mau b¹i mÊt ®İch lóc , c¸c vŞ muèn cïng chóng ta cïng nhau h­ëng thô vinh hoa phó quı sao ? chØ cÇn ®¹t tíi 40 cÊp trë lªn , ñng hé 3000 hai lµ cã thÓ xung phong giÕt ®Şch !",2,"Ta tham gia . /Yes","§Ó cho ta muèn muèn !/No"); 
end; 

-- script viet hoa By http://tranhba.com  giao chiÕn thêi kú 
if (State == 2) then 
-- script viet hoa By http://tranhba.com  ®©y lµ ®ang chiÕn ®Êu chİnh thøc ®¸nh vang sau , kú tha kh«ng ghi danh nhµ ch¬i cïng ghi danh Npc ®İch ®èi tho¹i 
Say("Phİa tr­íc ®ang ph¸t sinh chiÕn tranh , c¸c vŞ h­¬ng th©n xin/mêi t×m tr¸nh nĞ ®İch ®Şa ph­¬ng ",0); 
return 
end; 

end; 

function Yes() 
if (GetMissionV(1) ~= 1) then 
return 
end 
if (GetLevel() >= 40) then 
if (Pay(MS_SIGN_MONEY) == 1) then 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp , kim quèc ®İch dòng sÜ , nhanh lªn tiÕn vµo chiÕn tr­êng ®i !"); 
V = GetMissionV(6); 
  SetMissionV(6, V + 1);
SJ_JoinJ(); 
SetTask(SJKILLNPC,0); 
SetTask(SJKILLPK,0); 
-- script viet hoa By http://tranhba.com CheckGoFight() 
return 
end; 
end; 

Say("Ng­¬i kh«ng ®ñ 40 cÊp hoÆc lµ kh«ng cã mang ®ñ tiÒn ",0); 
end; 

function No() 
Say("Mau trë vÒ suy nghÜ mét chót , thêi gian kh«ng nhiÒu l¾m !",0); 
end; 
