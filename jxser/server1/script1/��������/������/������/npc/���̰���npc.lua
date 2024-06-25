-- script viet hoa By http://tranhba.com  thóy khãi trî gióp NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-11-21) 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " ng¹o mai " 

function main(sel) 
UTask_cy = GetTask(6) 
player_faction = GetFaction() 
if (player_faction == "cuiyan") then -- script viet hoa By http://tranhba.com  ®Ö tö bæn m«n 
RestoreLife() -- script viet hoa By http://tranhba.com  bæn m«n miÔn phİ trŞ liÖu 
RestoreMana() 
RestoreStamina() 
Say("Ta võa sanh ra liÒn bŞ vøt bá , may nhê ch­ëng m«n cøu ta , 18 n¨m ë chç nµy lín lªn , n¬i nµy c©y cèi ®Òu chİn tÊt liÔu .",7,"Cïng long n¨m ®èi tho¹i /Uworld1000_word","HiÓu râ bæn m«n ®iÓn cè /faction","HiÓu râ c¸c vŞ tû muéi /member","HiÓu râ nhiÖm vô /task_get","HiÓu râ luyÖn c«ng së tr­êng /map_help","HiÓu râ bæn m«n vâ nghÖ /skill_help","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 70*256) then -- script viet hoa By http://tranhba.com  bæn m«n xuÊt s­ 
if (UTask_cy == 80*256) and (GetTask(1) == 70*256) and (HaveMagic(93) == -1) then -- script viet hoa By http://tranhba.com  tu ch¸nh thóy khãi trë l¹i m«n ph¸i sau ®İch mét BUG , kü n¨ng dÊu hiÖu v× ch­a häc “ tõ hµng phæ ®é ” 
Talk(1,"","S­ tû lßng cña t×nh cã chót lo¹n , kh«ng cÇn lo l¾ng , b©y giê tèt l¾m !") 
else 
Say("S­ tû khã ®­îc trë l¹i , lÇn nµy tíi nh×n bän tû muéi cã chuyÖn g× kh«ng ?",6,"Nhí l¹i bæn m«n chuyÖn cò /faction","Nhí l¹i tr­íc kia bän tû muéi /member","Ta cßn cã thÓ gióp c¸i g× kh«ng ? /task_get","HiÓu râ luyÖn c«ng së tr­êng /map_help","HiÓu râ bæn m«n vâ nghÖ /skill_help","Kh«ng hái !/nothing") 
end 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ bæn m«n xuÊt s­ # kú tha m«n ph¸i # m«n ph¸i kh«ng v× v« İch tøc chØ kh«ng ph¶i lµ tay míi # 
Say("Xin hái ng­¬i ®Õn thóy khãi cöa lµ dß h«n cßn lµ phãng h÷u ®©y ? cã c¸i g× kh«ng hiÓu liÒn hái ta .",3,"HiÓu râ quı ph¸i /faction","HiÓu râ thóy khãi c¸c vŞ tû muéi /member","Kh«ng hái !/nothing") 
else -- script viet hoa By http://tranhba.com  tay míi 
Say("Ng­¬i tíi ch¬i cßn lµ tíi b¸i s­ ? ",4,"HiÓu râ quı ph¸i /faction","HiÓu râ thóy khãi c¸c vŞ tû muéi /member","HiÓu râ nhËp m«n ®iÒu kiÖn /task_get","Kh«ng hái !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m«n ph¸i giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("VËy ng­¬i muèn ta giíi thiÖu ph­¬ng diÖn nµo ®©y ?",5,"M«n ph¸i khëi nguyªn /F1","VŞ trİ ®Şa lı /F2","Giang hå ®Şa vŞ /F3","M«n ph¸i ®Æc s¾c /F4","Kh«ng hái !/nothing") 
end 

function F1() 
Say("S¸ng lËp m«n ph¸i tæ s­ bëi v× bŞ nam nh©n bŞ/cha/chŞu t×nh , cho nªn , Èn c­ ë V©n Nam biªn c¶nh , mét ngµy ë trªn ®­êng gÆp mÊy bŞ ng­îc ®·i ®İch c« g¸i , liÒn dÉn nu«i còng truyÒn thô vâ nghÖ , thóy khãi cöa còng v× vËy mµ s¸ng lËp .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F2() 
Say("N¬i nµy täa l¹c t¹i §¹i Lı nhŞ h¶i Th­¬ng S¬n , phong c¶nh xinh ®Ñp .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F3() 
Say("Bæn ph¸i cïng §­êng m«n ®­îc gäi lµ vâ l©m hai cöa , bëi v× thÇn bİ mµ danh chÊn giang hå , lµ nam tö ­íc m¬ ®Êt . ®èi víi ngo¹i nh©n , kh«ng ai biÕt thóy khãi lµ thiªn ®­êng cßn lµ ®Şa ngôc .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F4() 
Say("Bëi v× ®Ö tö bæn m«n ng­êi ng­êi ®Òu lµ tuyÖt s¾c giai nh©n , cho nªn , ®Ó cho rÊt nhiÒu nam tö còng ®éng t©m . v× vËy , s­ tæ ®Şnh bang quy , v× b¶o vÖ thóy khãi ®Ö tö , phµm lµ muèn vµo vµo thóy khãi ®İch nam tö còng ph¶i cã tuyÖt thÕ vâ c«ng , còng giao ra mét mãn hiÕm hoi tr©n b¶o , ®ång thêi ®êi thay mÆt kh«ng thÓ rêi ®i thóy khãi cöa .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thµnh viªn giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("VËy ng­¬i muèn biÕt ai ®ã ?",11,"Ch­ëng m«n duÉn ngËm khãi /Myun","H¶i ®­êng sø gi¶ ly thu thñy /Mli","Thñy tiªn sø gi¶ yªn hiÓu xinh ®Ñp /Myan","S¾c vi sø gi¶ hµ mé tuyÕt /Mhe"," lª hoa sø gi¶ chung linh tó /Mzhong","Xu©n h­¬ng bµ bµ /Mchun","NÕu lan /Mruo","Phong tróc /Mfeng","C­êi cóc /Mxiao","Ng¹o mai /Mao","Kh«ng hái !/nothing") 
end 

function Myun() 
Say("Ch­ëng m«n duÉn ngËm khãi vŞ trİ # thóy khãi l©u täa ®é : 35,75<enter> thuë nhá ë thóy khãi trong m«n lín lªn , biÕt §­êng m«n ®­êng mét trÇn , khiÕn nµng yªu h¾n . hai ng­êi v­ît qua nÆng nÒ khã kh¨n , rèt côc ®i tíi cïng nhau , sau §­êng m«n cïng thóy khãi cöa cïng chung tiÕn thèi , kÕt thµnh liÔu ®ång minh .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 

end 

function Mli() 
Say("H¶i ®­êng sø gi¶ ly thu thñy <enter> tİnh t×nh cao ng¹o , xem th­êng thiªn h¹ hÕt th¶y nam nh©n , cã chót cËy m¹nh kh«ng nãi ®¹o lı . bëi v× ph¶n ®èi duÉn ngËm khãi cïng ®­êng mét trÇn yªu nhau .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Myan() 
Say("Thñy tiªn sø gi¶ yªn hiÓu xinh ®Ñp , vŞ trİ # thñ ngäc ®×nh , täa ®é #: 43, 90<enter> bÒ ngoµi v¨n nh­îc , néi t©m l¹i hÕt søc kiªn c­êng . khi cßn nhá kú mÉu bŞ kú phô di khİ , bÇn bÖnh chÊt thªm , bŞ ng­êi khi dÔ mµ chÕt . ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mhe() 
Say("S¾c vi sø gi¶ hµ mé tuyÕt . vŞ trİ # b¸ch hoa ®×nh . täa ®é : 52, 85<enter> tİnh t×nh «n nhu khĞo lĞo , yªu Thiªn v­¬ng gióp bªn ph¶i khiÕn cho d­¬ng hå , nh­ng lµ hai ng­êi tuæi t¸c chªnh lÖch c¸ch xa # d­¬ng hå so hµ mé tuyÕt ®¹i rÊt nhiÒu # , d­¬ng hå mÆc dï còng yªu nµng , nh­ng lµ d­¬ng hå kh«ng muèn bu«ng tha cho Thiªn v­¬ng gióp , cuèi cïng thø nhÊt sinh ë l¹i thóy khãi cöa , t­ t×nh nhi n÷ cïng sù nghiÖp ®Æt chung mét chç , d­¬ng hå lùa chän ng­êi sau , v× vËy d­¬ng hå thµnh hµ mé tuyÕt trong lßng vÜnh viÔn Èn ®au . . ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mzhong() 
Say(" lª hoa sø gi¶ chung linh tó enter> nhá tuæi nhÊt , nh­ng lµ nhÊt cã tiÒn ®å . cha mÑ bŞ ng­êi Kim lµm h¹i , cöa n¸t nhµ tan , cho nªn s©u hËn ng­êi Kim ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mchun() 
Say("Xu©n h­¬ng bµ bµ vŞ trİ # sau v­ên hoa täa ®é : 40,74<enter> xu©n h­¬ng bµ bµ lµ ch­ëng m«n ®İch nha hoµn , nµng ®èi víi chóng ta ®Æc biÖt th©n thiÕt .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mruo() 
Say("NÕu lan vŞ trİ # qu¶ng tr­êng täa ®é : 48,84 phô tr¸ch : giao dŞch binh khİ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mfeng() 
Say("Phong tróc vŞ trİ # qu¶ng tr­êng täa ®é : 51,85 phô tr¸ch : giao dŞch trang bŞ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mxiao() 
Say("C­êi ®µo vŞ trİ # qu¶ng tr­êng täa ®é : 53,86 phô tr¸ch : giao dŞch thuèc men ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function Mao() 
Say("Ng¹o mai chİnh lµ ta ! ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhiÖm vô giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_cy = GetTask(6) 
if (UTask_cy < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng/ch­a vµo cöa 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ ®¹i m¹n ®µ la hoa , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_enroll","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 10*256) and (UTask_cy < 20*256) then 
Say("<#> ng­¬i tr­íc m¾t ®İch nhiÖm vô lµ thóy m­a tr©m , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L10","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 20*256) and (UTask_cy < 30*256) then 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ ®¹i m¹n ®µ la hoa , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L20","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 30*256) and (UTask_cy < 40*256) then 
Say("<#> ng­¬i tr­íc m¾t ®İch nhiÖm vô lµ vò y nghª th­êng . b©y giê ®· # "..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L30","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 40*256) and (UTask_cy < 50*256) then 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ tiªu diÖt ¸c ph¸ch §iÓm th­¬ng s¬n , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L40","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 50*256) and (UTask_cy < 60*256) then 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ b¾t thiªn tµm th¸p ¨n trém , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L50","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 60*256) and (UTask_cy < 70*256) then 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ cÊm ®Şa mª cung bİ mËt , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_L60","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_cy >= 70*256) and (UTask_cy < 80*256) then 
Say("<#> ng­¬i tr­íc m¾t ®ang nhËn ®İch nhiÖm vô lµ trë l¹i s­ m«n , b©y giê ®· #"..UTask_cy.."<#>.",4,"TiÕp tôc mæ tr­íc m¾t ®İch nhiÖm vô /T_return","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
else 
Say("<#> ng­¬i b©y giê cã thÓ tù do ra vµo m«n ph¸i , t¹m thêi kh«ng cã t©m ®İch nhiÖm vô , b©y giê ®· #"..UTask_cy.."<#>.",3,"HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 
end 

function T_all() 
Say("Ng­¬i nghÜ hiÓu râ nhiÖm vô g× ? ",10,"NhËp m«n nhiÖm vô /T_enroll","NhiÖm vô thóy m­a tr©m /T_L10","NhiÖm vô ®¹i m¹n ®µ la hoa /T_L20","NhiÖm vô vò y nghª th­êng /T_L30","NhiÖm vô tiªu trõ §iÓm th­¬ng s¬n ¸c ph¸ch /T_L40","NhiÖm vô b¾t thiªn tµm th¸p ¨n trém /T_L50","NhiÖm vô cÊm ®Şa mª cung /T_L60","NhiÖm vô trë l¹i s­ m«n /T_return","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","Muèn nhËp m«n häc vâ nghÖ , chØ cÇn thuéc tİnh lµ thñy hÖ , kh«ng gia nhËp nh÷ng m«n ph¸i kh¸c , cÊp bËc 10 cÊp trë lªn , ®Õn bè kú tay míi th«n cïng bæn m«n hoa khiÕn cho ®èi tho¹i . sau ®ã , theo thø tù hoµn thµnh 5 c¸ m«n ph¸i nhiÖm vô , ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau , ®em thµnh tµi xuÊt s­ . ") 
end 

function T_L10() 
Talk(4,"t_all","Sau khi nhËp m«n , cÊp bËc 10 cÊp trë lªn , ng­¬i cã thÓ tiÕp nhËn vô thóy m­a tr©m . hoµn thµnh nµy nhiÖm vô , ng­¬i th¨ng lµm tam phÈm hoa khiÕn cho , häc ®­îc <color=blue> thóy khãi ®ao ph¸p cïng thóy khãi song ®ao <color>. ","B­íc ®Çu tiªn : ë <color=blue> thóy khãi l©u <color> thÊy <color=blue> ch­ëng m«n duÉn ngËm khãi <color> tiÕp nhËn vô ®i <color=blue> ®«ng nam bªn rõng c©y <color> t×m <color=red> thóy m­a tr©m <color> . ","Thø 2 b­íc : ë ®«ng nam bªn rõng c©y ®¸nh b¹i <color=blue> löa hå color> cÇm trë vÒ <color=red> thóy m­a tr©m <color> ","Thø 3 b­íc : trë vÒ <color=blue> thóy khãi l©u <color> h­íng ch­ëng m«n phôc mÖnh <color=blue> duÉn ngËm khãi <color>, ®ãng <color=red> thóy m­a tr©m <color> nhiÖm vô hoµn thµnh ") 
end 

function T_L20() 
Talk(4,"t_all","Hoµn thµnh nhiÖm vô thóy khãi tr©m sau , cÊp bËc 20 trë lªn , ng­¬i cã thÓ tiÕp nhËn vô ®¹i m¹n ®µ la hoa . hoµn thµnh nµy nhiÖm vô ng­¬i ®em th¨ng lµm <color=blue> nhŞ phÈm hé hoa khiÕn cho color>, häc ®­îc <color=red> b¨ng t©m bªn tr¸i ¶nh <color> ","B­íc ®Çu tiªn : ë <color=blue> thñ ngäc ®×nh <color>, thÊy <color=blue> yªn hiÓu xinh ®Ñp <color> tiÕp nhËn vô ®i <color=blue> t©y b¾c bªn <color> h¸i <color=red>10 buéi c©y ®¹i m¹n ®µ la hoa <color> ","Thø 2 b­íc : h¸i hoa lóc ph¶i cÈn thËn <color=blue> ®éc tİnh ph¸t t¸c tr­íc <color> cÇn trë vÒ <color=blue> thñ ngäc ®×nh <color> gi¶i ®éc , nÕu kh«ng , ®éc tİnh ph¸t t¸n ®Õn toµn th©n ","Thø 3 b­íc : h¸i ®Õn 10 buéi c©y ®¹i m¹n ®µ la hoa , trë vÒ thñ ngäc ®×nh phôc mÖnh , hoµn thµnh nhiÖm vô ") 
end 

function T_L30() 
Talk(7,"t_all","Sau khi hoµn thµnh nhiÖm vô ®¹i m¹n ®µ la hoa cïng cÊp bËc 30, ng­¬i cã thÓ tiÕp nhËn vô vò y nghª th­êng . hoµn thµnh nµy nhiÖm vô ng­¬i ®em th¨ng lµm nhÊt phÈm hoa khiÕn cho , còng häc ®­îc <color=blue> vô ®¸nh lª hoa <color>. ","B­íc ®Çu tiªn : ë <color=blue> b¸ch hoa thİnh <color>, thÊy <color=blue> hµ mé tuyÕt <color> tiÕp nhËn vô ®i <color=blue># §oµn l·o n«ng <color> ë <color=blue> §¹i Lı color> t hiÓu râ lo¹i <color=blue> vò y nghª th­êng <color> ®İch bİ mËt ","Thø 2 b­íc : ®i §¹i Lı §oµn l·o n«ng chç ph¸t hiÖn th­¬ng thÕ cña h¾n t©m , bëi v× ch¸u g¸i bŞ <color=blue># §iÓm th­¬ng s¬n <color> ®İch c­êng ®¹o b¾t , ®i ngay cøu <color=blue> nµng <color> . ","Thø 3 b­íc : ®Õn <color=blue> §iÓm th­¬ng s¬n thæ phØ ®éng <color>, ®¸nh b¹i <color=blue> thæ phØ thñ lÜnh color>, cøu ra ch¸u g¸i . ","Thø 4 b­íc : biÕt lo¹i vò y nghª th­êng cÇn ph¶i cã <color=blue> ng©n tuyÕt c¸ <color> sinh tr­ëng ë <color=blue> nhŞ h¶i <color>, <color=red> bİch th­êng ph­îng ®iÖp <color> ë <color=blue> con b­ím tuyÒn bªn c¹nh <color>, cïng <color=red> hång con giun <color> ë <color=blue> v©n n«ng ®×nh phô cËn <color>. ","Thø 5 b­íc : ®Õn nhŞ h¶i t×m <color=blue> thuyÒn nhµ <color> mua <color=red> ng©n tuyÕt c¸ <color>, ®Õn con b­ím tuyÒn cÇm bİch th­êng ph­îng ®iÖp , ë n«ng v©n ®×nh ®µo con giun ","Thø 6 b­íc : ®i <color=blue> b¸ch hoa ®iÖn <color> cÇm lo¹i vò y nghª th­êng ®İch bİ tŞch , nãi cho <color=blue> hµ mé tuyÕt <color>, ®ång thêi , cÇm ng©n tuyÕt c¸ , bİch th­êng ph­îng ®iÖp cïng hång con giun cho nµng , hoµn thµnh . ") 
end 

function T_L40() 
Talk(5,"t_all","Hoµn thµnh nhiÖm vô ®ång thêi cÊp bËc tíi 40 cÊp , ng­¬i cã thÓ tiÕp nhËn vô trõ §iÓm th­¬ng s¬n ¸c ph¸ch . hoµn thµnh nµy nhiÖm vô ng­¬i ®em th¨ng lµm hoa tiªn sø gi¶ , häc ®­îc <color=blue> hµn b¨ng hé th©n <color> ","B­íc ®Çu tiªn : thÊy <color=blue> yªn hiÓu xinh ®Ñp <color> ë <color=blue> ngµy ®iÖn <color>, tiÕp nhËn vô tiªu trõ <color=blue> ¸c ph¸ch color> ë <color=blue> §¹i Lı color> ","Thø 2 b­íc : ®Õn lín lı t×m <color=blue> ¸c ph¸ch <color>, ph¸t hiÖn mét c¸i <color=blue> ®­êng <color> tiÕn vµo mËt ®¹o ®¸nh b¹i <color=blue> trî thñ cña h¾n <color>, gi¶i cøu trong mËt ®¹o ®İch thiÕu n÷ , ®ång thêi biÕt ¸c ph¸ch b¾t mÊy c« n­¬ng th­îng <color=blue># §iÓm th­¬ng s¬n <color> . ","Thø 3 b­íc : ®Õn <color=blue># §iÓm th­¬ng s¬n #<color>, ®¸nh b¹i <color=blue> trî thñ , hé viÖn , hé vÖ <color>, b¾t ®­îc <color=red>3 c¸i ch×a khãa <color>, cøu ra <color=blue> thiÕu n÷ color> . ","Thø 4 b­íc : trë l¹i <color=blue> Nga Mi ngµy ®iÖn <color>, thÊy yªn hiÓu xinh ®Ñp phôc mÖnh , hoµn thµnh . ") 
end 

function T_L50() 
Talk(5,"t_all","Hoµn thµnh nhiÖm vô §iÓm th­¬ng s¬n nhiÖm vô , th¶ cÊp bËc ®¹t tíi 50 cÊp trë lªn , ng­¬i cã thÓ tiÕp nhËn vô thiªn tµm th¸p . hoµn thµnh nµy nhiÖm vô ng­¬i ®em th¨ng lµm hoa tinh , häc ®­îc <color=blue> tuyÕt ¶nh <color> ","B­íc ®Çu tiªn : thÊy <color=blue> ch­ëng m«n duÉn ngËm khãi <color> ë <color=blue> thóy khãi l©u <color>, tiÕp nhËn vô , trî gióp sïng th¸nh tù b¾t <color=blue> ®¹o tÆc <color> ®¸nh c¾p <color=red> ng« ®ång Quan ¢m #<color> ","Thø 2 b­íc : ®Õn <color=blue> sïng th¸nh tù color> cïng <color=blue> h­ viªn ph­¬ng tr­îng ®èi tho¹i <color>, tiÕn vµo thiªn tµm th¸p , biÕt ®¹o tÆc tiÕn vµo <color=blue> thiªn tµm th¸p <color>. ","Thø 3 b­íc : tiÕn vµo thiªn tµm th¸p , mçi tÇng lÇu ®Òu ph¶i ®¸nh b¹i ®¹o tÆc , ®o¹t l¹i <color=red> ng« ®ång Quan ¢m #<color>. ","Thø 4 b­íc : trë vÒ <color=blue> thóy khãi l©u <color>, thÊy duÉn ngËm khãi phôc mÖnh , hoµn thµnh . ") 
end 

function T_L60() 
Talk(6,"t_all","Hoµn thµnh nhiÖm vô thiªn tµm th¸p sau , cÊp bËc ®¹t tíi 50 cÊp , ng­¬i cã thÓ tiÕp tôc nhËn cÊm ®Şa mª cung nhiÖm vô . hoµn thµnh nhiÖm vô sau , ng­¬i bŞ ®ãng cöa v× hoa tiªn , thuËn lîi xuÊt s­ ","B­íc ®Çu tiªn : thÊy <color=blue> xu©n h­¬ng bµ bµ color> ë <color=blue> sau v­ên hoa <color>, tiÕp nhËn vô ®i <color=blue> cÊm ®Şa <color> t×m ra m«n quy sù thËt . ","Thø 2 b­íc : ®Çu tiªn t¹i <color=blue> cÊm ®Şa mª cung <color> t×m ®­îc mét khèi <color=red> ti m¹t <color>, sau ®ã tiÕn vµo cÊm ®Şa cuèi cïng lµ <color=blue># ®o¹n tr­êng cèc <color> ","Thø 3 b­íc : cïng mét vŞ <color=blue> v« danh l·o gi¶ ®èi tho¹i <color> nghe h¾n nãi lËp ph¸i s­ tæ chuyÖn cña , ®¹t ®­îc <color=red> mét phong th¬ color> ghi chĞp tÊt c¶ mäi chuyÖn ","Thø 4 b­íc : trë vÒ <color=blue> sau v­ên hoa sau <color>, cïng xu©n h­¬ng bµ bµ nãi t×m ®­îc ®İch ®å . ","Thø 5 b­íc : ®Õn <color=blue> thóy khãi l©u <color> mang <color=red> tin/th¬ color> giao cho <color=blue> ch­ëng m«n <color>, nhiÖm vô hoµn thµnh ") 
end 

function T_return() 
Talk(3,"t_all","Thµnh míi sau khi xuèng nói , ®ång thêi cÊp bËc ®¹t tíi 60 cÊp , ng­¬i cã thÓ trë l¹i s­ m«n . ®em th¨ng lµm hoa thÇn , häc ®­îc tuyÖt häc <color=blue> môc d· sao r¬i , bİch sãng biÓn d©ng sinh , b¨ng cèt tuyÕt t©m <color> ","B­íc ®Çu tiªn : cÊp bËc v­ît qua 60 cÊp sau , thÊy <color=blue> duÉn ngËm khãi <color> ë <color=blue> ch¸nh thÊt <color>, xin/mêi nµng trë vÒ thóy khãi ","Thø 2 b­íc : ®ãng <color=red>50000 hai <color>, trë vÒ thóy khãi ") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - kÕt thóc -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
