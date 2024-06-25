-- script viet hoa By http://tranhba.com  ph¸i ThiÕu l©m trî gióp NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-01) 

function main(sel) 
UTask_sl = GetTask(7) 
player_faction = GetFaction() 
if (player_faction == "shaolin") then -- script viet hoa By http://tranhba.com  ®Ö tö bæn m«n 
RestoreLife() -- script viet hoa By http://tranhba.com  bæn m«n miÔn phİ trŞ liÖu 
RestoreMana() 
RestoreStamina() 
Say("Vèn tù cã ngµn n¨m lŞch sö , liªn quan tíi vâ nghÖ ph­¬ng diÖn chuyÖn , cã thÓ ®i t×m ph­¬ng tr­îng hoÆc lµ c¸c vŞ thñ täa hái mét chót , nh÷ng vÊn ®Ò kh¸c cã thÓ hái ta .",4,"HiÓu râ bæn m«n ®iÓn cè /faction","HiÓu râ c¸c vŞ t«n tr­ëng /member","HiÓu râ nhiÖm vô /task_get","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 70*256) then -- script viet hoa By http://tranhba.com  bæn m«n xuÊt s­ 
Say("§Çu tiªn ng­¬i tõ méc nh©n h¹ng ®Õn La h¸n trËn , mau ®i xem mét chót c¸c vŞ s­ ®Ö ®i .",4,"Nhí l¹i bæn m«n chuyÖn tr­íc kia /faction","Nhí l¹i tr­íc kia ®¹o h÷u /member","Ta cßn cã thÓ gióp gÊp c¸i g× sao ? /task_get","Kh«ng hái !/nothing") 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ bæn m«n xuÊt s­ # kú tha m«n ph¸i # m«n ph¸i kh«ng v× v« İch tøc chØ kh«ng ph¶i lµ tay míi # 
Say("Hoan nghªnh tíi ThiÕu L©m ! c¸c vŞ cã thÓ m×nh du ngo¹n , cã c¸i g× vÊn ®Ò liÒn hái l·o n¹p .",3,"HiÓu râ quı ph¸i /faction","HiÓu râ c¸c vŞ ®¹o tr­ëng /member","Kh«ng hái !/nothing") 
else -- script viet hoa By http://tranhba.com  tay míi 
Say("Hoan nghªnh tíi ThiÕu L©m , kh«ng hiÓu lµ tíi b¸i s­ cßn lµ b¸i phËt ®©y ?",4,"HiÓu râ quı ph¸i /faction","HiÓu râ c¸c vŞ ®¹o tr­ëng /member","HiÓu râ nhËp m«n ®iÒu kiÖn /task_get","Kh«ng hái !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m«n ph¸i giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("Ng­¬i nghÜ biÕt ThiÕu L©m ph­¬ng diÖn nµo ?",5,"M«n ph¸i khëi nguyªn /F1","VŞ trİ ®Şa lı /F2","Giang hå ®Şa vŞ /F3","M«n ph¸i ®Æc s¾c /F4","Kh«ng hái !/nothing") 
end 

function F1() 
Say("ThiÕu l©m tù khai s¸ng víi b¾c ngôy hiÕu v¨n ®Õ qu¸ cïng m­êi chİn n¨m # c«ng nguyªn bèn n¨m chİn m­¬i l¨m # . lóc Êy , Thiªn tróc t¨ng ng­êi b¹t ®µ tõ T©y Vùc ®i tíi Trung Nguyªn , lÊy ®­îc kiÒn tin phËt häc hiÕu v¨n ®Õ ®İch lÔ kİnh . b¹t ®µ thÊy tung s¬n rÊt gièng mét ®ãa hoa sen , liÒn cã ı ë # hoa # trung lËp tù , hiÕu v¨n ®Õ to¹i ë thiÓu thÊt s¬n kiÕn t¹o ThiÕu l©m tù cung d­ìng b¹t ®µ . sau ®ã l¹i qu¸ h¬n ba m­¬i n¨m , nam thiªn tróc t¨ng nh©n bå ®Ò §¹t Ma ®i tíi ThiÕu l©m tù , nghiÔm La ®Ö tö , truyÒn thô thiÖn t«ng , trë thµnh Trung quèc PhËt gi¸o thiÖn t«ng khai s¬n tæ s­ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F2() 
Say("Vèn tù täa l¹c t¹i Hµ Nam tung s¬n , tung S¬n §«ng bªn lµ qu¸ kú s¬n , phİa t©y lµ thiÓu kú s¬n , mçi bªn cã 16 ®İnh '.",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F3() 
Say("Bæn ph¸i tõ x­a ®­îc gäi lµ vâ l©m m«n ph¸i thø nhÊt , lµ trong chèn vâ l©m nguyªn ®İch th¸i s¬n b¾c ®Èu . ThiÕu l©m tù to¹i dïng vâ næi tiÕng hËu thÕ . sau ®ã h¬n lÊy “ ThiÕu L©m b¶y m­¬i hai tuyÖt kû ” danh vang rÒn thiªn h¹ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F4() 
Say("Ph¸i ThiÕu l©m cã tông kinh b¸i phËt cïng luyÖn vâ còng nÆng ®İch truyÒn thèng , ®Ö tö trong m«n vâ c«ng cao c­êng , giµu cã ch¸nh nghÜa c¶m . .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thµnh viªn giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("Ngµi muèn biÕt vèn tù vÊn ®Ò g× ? ",9,"Ph­¬ng tr­îng huyÒn bëi v× ®¹i s­ /M01","§¹t ma viÖn thñ täa huyÒn bi /M02","Bµn nh­îc ®­êng thñ täa huyÒn gi¸c /M03","Tµng kinh c¸c thñ täa huyÒn tõ /M04"," La H¸n ®­êng thñ täa huyÒn khã kh¨n /M05","Rõng mùc /M101","Rõng tiÕt /M102","Rõng vi /M103","Kh«ng hái !/nothing") 
end 

function M01() 
Say("Ph­¬ng tr­îng huyÒn bëi v× ®¹i s­ vŞ trİ # ph­¬ng tr­îng thiÖn phßng täa ®é : 230,184<enter> ®éng s¸t thu chót nµo , v« cïng trİ kh«n , nh­ng lµm ng­êi th©m tµng bÊt lé , cao th©m khã l­êng ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M02() 
Say("§¹t Ma ®­êng thñ täa huyÒn bi vŞ trİ # §¹t Ma ®­êng täa ®é : 210,188<enter> lµm ng­êi thiÕt diÖn v« t­ , chÊp ph¸p nghiªm minh , nh­ng cã lóc d¹y con c­¬ng hãa , kh«ng biÕt biÕn th«ng ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M03() 
Say("Bµn nh­îc ®­êng thñ täa huyÒn gi¸c vŞ trİ # phãng sanh hå täa ®é : 220,193<enter> ghĞt ¸c nh­ thï , tİnh nãng nh­ löa , kh¼ng kh¸i hµo phãng , cã hiÖp kh¸ch khİ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M04() 
Say("Tµng kinh c¸c thñ täa huyÒn tõ vŞ trİ # tµng kinh c¸c täa ®é : 218,190<enter> b·o häc kinh th­ , gÆp chuyÖn liÒn dÉn tr¶i qua theo ®iÓn , s¸ch ngèc tö mét , lµm ng­êi tİnh t×nh theo cïng , kh«ng thİch cïng ng­êi tranh ®Êu , mäi viÖc lÊy nhÉn nhŞn lµm ®Çu , cã lóc lé ra v« cïng vu hñ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M05() 
Say(" La H¸n ®­êng thñ täa huyÒn khã kh¨n vŞ trİ # La H¸n ®­êng täa ®é : 201,192<enter> m«n hé quan niÖm nÆng , lµm ng­êi t©m cao khİ ng¹o , lßng h¸o th¾ng m¹nh , cïng §¹t ma viÖn bÊt hßa , lu«n muèn mét tranh cao thÊp . ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M101() 
Say("Rõng mùc vŞ trİ # qu¶ng tr­êng täa ®é : 211,196 phô tr¸ch # giao dŞch binh khİ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M102() 
Say("Rõng tiÕt vŞ trİ # qu¶ng tr­êng täa ®é : 209,194 phô tr¸ch # giao dŞch trang bŞ ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M103() 
Say("Rõng vi vŞ trİ # qu¶ng tr­êng täa ®é : 208,195 phô tr¸ch # giao dŞch thuèc men ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhiÖm vô giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_sl = GetTask(7) 
if (UTask_sl < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng/ch­a vµo cöa 
Say("Ng­¬i cßn ch­a nhËp m«n , muèn nhËp m«n , ®i tay míi th«n thÊy tiÕp dÉn ®Ö tö ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_enroll","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 10*256) and (UTask_sl < 20*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× méc nh©n h¹ng ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L10","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 20*256) and (UTask_sl < 30*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× rÊt ng­êi ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L20","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 30*256) and (UTask_sl < 40*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× th¸p l©m bu«ng láng ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L30","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 40*256) and (UTask_sl < 50*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× tŞch diÖt hai t¨ng ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L40","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 50*256) and (UTask_sl < 60*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× dŞch cèt tr¶i qua ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L50","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 60*256) and (UTask_sl < 70*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô v× La h¸n trËn ,",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_L60","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_sl >= 70*256) and (UTask_sl < 80*256) then 
Say("Ng­¬i tr­íc m¾t tiÕn hµnh ®İch nhiÖm vô lµm träng ph¶n s­ m«n ",4,"TiÕp tôc mæ tr­íc m¾t nhiÖm vô /T_return","HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
else 
Say("Ng­¬i cã thÓ tù do xuÊt nhËp m«n ph¸i , t¹m thêi kh«ng cã t©m nhiÖm vô ",3,"HiÓu râ nh÷ng nhiÖm vô kh¸c /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 
end 

function T_all() 
Say("Muèn biÕt nhiÖm vô g?",10,"NhËp m«n nhiÖm vô /T_enroll","NhiÖm vô méc nh©n h¹ng /T_L10","NhiÖm vô rÊt ng­êi /T_L20","NhiÖm vô th¸p l©m bu«ng láng /T_L30","NhiÖm vô tŞch diÖt hai t¨ng /T_L40","NhiÖm vô dŞch cèt tr¶i qua /T_L50","NhiÖm vô La h¸n trËn /T_L60","NhiÖm vô trë l¹i s­ m«n /T_return","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","Muèn nhËp m«n häc nghÖ , chØ cÇn chóc kim hÖ , ®¹t tíi 10 cÊp . ®i cïng tiÕp dÉn ®Ö tö ®èi tho¹i lµ ®­îc . sau khi nhËp m«n , theo thø tù hoµn thµnh m«n ph¸i nhiÖm vô , ®em häc ®­îc vâ c«ng , bŞ ®ãng cöa danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau , lµ cã thÓ xuÊt s­ . ") 
end 

function T_L10() 
Talk(4,"t_all","NhËp m«n còng ®¹t tíi 10 cÊp sau , cã thÓ tiÕp nhËn vô méc nh©n h¹ng . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm hé viÖn vò t¨ng , häc ®­îc vâ c«ng ThiÕu L©m quyÒn ph¸p , ThiÕu L©m c«n ph¸p , ThiÕu L©m ®ao ph¸p .","Thø 1 b­íc : ®Õn thiÖn phßng vu«ng tr­îng , tiÕp nhËn vô méc nh©n h¹ng , ®i lÊy kim liªn hoa .","Thø 2 b­íc : # tiÕn vµo méc nh©n h¹ng , ®¸nh b¹i méc nh©n , ®em cã 30% c¬ héi b¾t ®­îc kim liªn hoa .","Thø 3 b­íc : trë vÒ thiÖn phßng ®ãng kim liªn hoa cho huyÒn bëi v× ph­¬ng tr­îng , hoµn thµnh nhiÖm vô ") 
end 

function T_L20() 
Talk(4,"t_all","Hoµn thµnh nhiÖm vô méc nh©n h¹ng cïng ®¹t tíi cÊp bËc 20, ng­¬i cã thÓ tiÕp nhËn vô rÊt ng­êi . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm hé cÇm kim c­¬ng , häc ®­îc vâ c«ng bÊt ®éng minh v­¬ng ","Thø 1 b­íc : tíi ma ®­êng thÊy huyÒn bi , tiÕp nhËn vô , ®i phôc bß t©y s¬n d¹y dç 5 c¸ rÊt ng­êi .","Thø 2 b­íc : ®Õn phôc bß t©y s¬n , theo thø tù ®¸nh b¹i 5 c¸ rÊt ng­êi .","Thø 3 b­íc : trë vÒ §¹t Ma ®­êng , thÊy huyÒn bi phôc mÖnh , hoµn thµnh nhiÖm vô ") 
end 

function T_L30() 
Talk(5,"t_all","Hoµn thµnh nhiÖm vô rÊt ng­êi cïng ®¹t tíi cÊp bËc 30, ng­¬i cã thÓ tiÕp nhËn vô th¸p l©m bu«ng láng . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm hé ph¸p La H¸n , häc ®­îc vâ c«ng La h¸n trËn ","Thø 1 b­íc : ®Õn phãng sanh hå thÊy huyÒn gi¸c , tiÕp nhËn vô , ®Õn th¸p l©m ®¸nh b¹i hµnh tung quû bİ ng­êi cña .","Thø 2 b­íc : ®Õn th¸p l©m , ®¸nh b¹i bän hä , ph¸t hiÖn bän hä lµ kim quèc gi¸n ®iÖp , bän hä ®ång ®¶ng ®¸nh c¾p Bµn nh­îc ba la mËt nghi ngê tr¶i qua , ch¹y vµo Kim quang ®éng .","Thø 3 b­íc : ®Õn Kim quang ®éng , ®¸nh b¹i kim quèc gi¸n ®iÖp , ®o¹t l¹i Bµn nh­îc ba la mËt nghi ngê tr¶i qua h'.","Thø 4 b­íc : trë vÒ phãng sanh hå , ®ãng Bµn nh­îc ba la mËt nghi ngê tr¶i qua cho huyÒn gi¸c , hoµn thµnh nhiÖm vô ") 
end 

function T_L40() 
Talk(6,"t_all","Hoµn thµnh nhiÖm vô th¸p l©m bu«ng láng cïng ®¹t tíi cÊp bËc 40, ng­¬i cã thÓ tiÕp nhËn vô tŞch diÖt hai t¨ng . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm truyÖn tr¶i qua La H¸n , häc ®­îc vâ c«ng s­ tö hèng ","Thø 1 b­íc : ®Õn ph­¬ng tr­îng thiÖn phßng thÊy huyÒn bëi v× ph­¬ng tr­îng , tiÕp nhËn vô , t×m tŞch diÖt hai t¨ng thØnh gi¸o chuyÖn thiªn h¹ ","Thø 2 b­íc : ®Õn phİa sau nói mËt thÊt tr¶ lêi chİnh x¸c vÊn ®Ò tiÕn vµo mËt thÊt .","Thø 3 b­íc : ®¸nh b¹i trong mËt thÊt ®İch ®ång nh©n , cã thÓ më cöa , biÕt khÈu quyÕt cïng hai t¨ng nãi chuyÖn .","Thø 4 b­íc : ®Õn mËt thÊt cuèi cïng tr­íc cöa , chİnh x¸c häc khÈu quyÕt , thØnh gi¸o chuyÖn thiªn h¹ .","Thø 5 b­íc : trë vÒ ph­¬ng tr­îng thiÖn phßng , nh¾n nhñ hai t¨ng nãi cho ph­¬ng tr­îng nghe , hoµn thµnh nhiÖm vô . nÕu nh­ quªn , cã thÓ tíi thØnh gi¸o ta .") 
end 

function T_L50() 
Talk(6,"t_all","Hoµn thµnh nhiÖm vô tŞch diÖt hai t¨ng cïng ®¹t tíi cÊp bËc 50, ng­¬i cã thÓ tiÕp nhËn vô dŞch cèt tr¶i qua . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm phôc ma Thiªn v­¬ng , häc ®­îc vâ c«ng sê/chí h¾c v« l­îng , long tr¶o hæ mãng ","Thø 1 b­íc : ®Õn tµng kinh c¸c thÊy huyÒn tõ tiÕp nhËn vô , t×m rõng xa liÒu m¹ng b¾t ®­îc ' dŞch cèt tr¶i qua ' ë tµng kinh c¸c .","Thø 2 b­íc : ®Õn ®Õn luyÖn c«ng khu cïng tiÓu hßa th­îng rõng t©m ®èi tho¹i , biÕt cã thÓ dïng mét con gµ n­íng ®Ó cho rõng lßng nãi ra rõng xa ®İch bİ mËt .","Thø 3 b­íc : ®Õn biÖn kinh töu l©u mua gµ n­íng , sau ®ã trë vÒ t×m rõng trong lßng biÕt ®¹o bİ mËt .","Thø 4 b­íc : c¨n cø rõng t©m theo nh­ lêi , ®i t×m trong rõng c©y t¶ng ®¸ lín ®Çu phİa d­íi , b¾t ®­îc ' dŞch cèt tr¶i qua '.","Thø 5 b­íc : trë vÒ tµng kinh c¸c , ®ãng ' dŞch cèt tr¶i qua ' cho huyÒn tõ hoµn thµnh nhiÖm vô ") 
end 

function T_L60() 
Talk(4,"t_all","Hoµn thµnh nhiÖm vô dŞch cèt tr¶i qua cïng ®¹t tíi cÊp bËc 50, ng­¬i cã thÓ tiÕp nhËn vô La h¸n trËn . hoµn thµnh nµy nhiÖm vô , ng­¬i ®em th¨ng lµm v« l­îng ®êi t«n , thuËn lîi xuÊt s­ ","Thø 1 b­íc : ®Õn La H¸n ®­êng thÊy huyÒn khã kh¨n , tiÕp nhËn vô , tiÕn vµo La h¸n trËn cÇm 4 mãn tİn vËt : ®äc ch©u # thiÒn tr­îng # c¸ gç # b¸t vu ","Thø 2 b­íc : tiÕn vµo La h¸n trËn , ®¸nh b¹i qu¸i vËt , b¾t ®­îc bèn mãn tİn vËt .","Thø 3 b­íc : trë vÒ La H¸n ®­êng , ®ãng tİn vËt cho huyÒn khã kh¨n , hoµn thµnh nhiÖm vô ") 
end 

function T_return() 
Talk(3,"t_all","Hoµn thµnh nhiÖm vô trë l¹i s­ m«n , ng­¬i ®em th¨ng lµm hé ph¸p tr­ëng l·o , häc ®­îc vâ c«ng DŞch c©n kinh , nh­ ngµy qua/n÷a nghiÖp ","Thø 1 b­íc : ®¹t tíi 60 cÊp sau , ®i ph­¬ng tr­îng thiÖn phßng thÊy huyÒn bëi v× ph­¬ng tr­îng , th©n thØnh trë l¹i ThiÕu L©m .","Thø 2 b­íc : ®ãng 50000 hai , trë l¹i ThiÕu L©m .") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - kÕt thóc -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
