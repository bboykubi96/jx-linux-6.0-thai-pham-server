-- script viet hoa By http://tranhba.com  Ngò ®éc gi¸o trî gióp NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-06) 

function main(sel) 
UTask_wu = GetTask(10) 
player_faction = GetFaction() 
if (player_faction == "shaolin") then -- script viet hoa By http://tranhba.com  ®Ö tö bæn m«n 
RestoreLife() -- script viet hoa By http://tranhba.com  bæn m«n miÔn phİ trŞ liÖu 
RestoreMana() 
RestoreStamina() 
Say(" ë bæn gi¸o nÕu lµ mét ngµy kh«ng luyÖn c«ng liÒn sèng kh«ng næi . ng­¬i ®Õn c¸i nµy t×m ta cã chuyÖn g× ?",4,"HiÓu râ bæn gi¸o sù vô /faction","HiÓu râ c¸c vŞ huynh tr­ëng /member","HiÓu râ nhiÖm vô /task_get","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 70*256) then -- script viet hoa By http://tranhba.com  bæn m«n xuÊt s­ 
Say("Tõ bæn gi¸o ®i ra ngoµi ng­êi cña cã rÊt İt trë vÒ , ng­¬i lÇn nµy trë vÒ cã chuyÖn g× ?",4,"Nhí l¹i h¹ bæn m«n ®İch chuyÖn cò /faction","Xem mét chót tr­íc kia ®¹o h÷u /member","Cã c¸i g× ta cã thÓ trî gióp ®İch /task_get","Kh«ng hái !/nothing") 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ bæn m«n xuÊt s­ # kú tha m«n ph¸i # m«n ph¸i kh«ng v× v« İch tøc chØ kh«ng ph¶i lµ tay míi # 
Say("Ng­¬i cã thÓ mÆc qu¸ trïng trïng ®éc vËt vµo xem tíi lµ kú tµi . bæn gi¸o t«n träng anh tµi . hoan nghªnh ®i th¨m !",3,"HiÓu râ quı ph¸i /faction","HiÓu râ c¸c vŞ ®¹o tr­ëng /member","Kh«ng hái !/nothing") 
else -- script viet hoa By http://tranhba.com  tay míi 
Say("Ng­¬i tíi b¸i pháng cßn lµ b¸i s­ ? nÕu nh­ tr­íc m¾t kh«ng cã lÔ vËt lêi cña ta lµ kh«ng cã høng thó ®İch . ",4,"HiÓu râ quı ph¸i /faction","HiÓu râ c¸c vŞ ®¹o tr­ëng g/member","HiÓu râ nhËp m«n ®iÒu kiÖn /task_get","Kh«ng hái !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m«n ph¸i giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("Nh­ vËy ng­¬i nghÜ ta giíi thiÖu m«n ph¸i c¸i g× ?",5,"M«n ph¸i khëi nguyªn /F1","VŞ trİ ®Şa lı /F2","Giang hå ®Şa vŞ /F3","M«n ph¸i ®Æc s¾c /F4","Kh«ng hái !/nothing") 
end 

function F1() 
Say("Bæn gi¸o lµ mÊy n¨m gÇn ®©y thµnh lËp ®İch nh­ng lµ ph¸t triÓn rÊt nhanh . néi bé tæ chøc nghiªm mËt . gi¸o chñ h¾c mÆt lang qu©n chİnh lµ Ngò ®éc gi¸o ®İch ng­êi s¸ng lËp ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F2() 
Say("Bæn gi¸o chung quanh lµ 5 ngåi linh ngän nói , muèn ®i vµo ph¶i ®­îc qu¸ trïng trïng thö luyÖn . ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F3() 
Say("Bæn gi¸o ®İch t«n chØ lµ ' İch lîi quyÕt ®Şnh ®Şch h÷u ', cã lîi liÒn lµm , bÊt kÓ c¸i g× lµ kh«ng ph¶i lµ ch¸nh tµ . Ngò ®éc gi¸o cßn cã mét con chİnh lµ ' ®¾c téi Ngò ®éc gi¸o ng­êi cña sÏ chÕt v« toµn th©y '.",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function F4() 
Say("Bæn gi¸o hµnh tung bİ Èn , qua mÊt tİch . ven ®­êng qu¸n trµ l·o b¶n còng cã thÓ cã thÓ lµ n¨m ®éc ®İch m«n ®å , nh¸y m¾t liÒn ®em ng­êi giÕt , h¹ thñ v« h×nh . thËm chİ ®èi víi ®ång m«n còng lµ v« t×nh ®İch . gi¸o ®å gi÷a còng cã thÓ cã thÓ sÏ lÉn nhau h¹ ®éc . ng­êi tróng ®éc sÏ bŞ xem th­êng ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thµnh viªn giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("Muèn mæ bæn gi¸o ®İch ng­êi nµo ?",10,"Gi¸o chñ h¾c mÆt lang qu©n /M01","Kim xµ H­¬ng chñ v©n kh«ng tµ /M02","Xİch h¹t H­¬ng chñ tµn s¸t dŞ /M03","Mùc chu H­¬ng chñ tang ch©u /M04","Ng©n thiÒm H­¬ng chñ b¹ch o¸nh o¸nh /M05","Thanh ng« H­¬ng chñ thang bËt /M06","§éc nha /M101","Gai ®éc /M102","§éc t©m /M103","Kh«ng hái !/nothing") 
end 

function M01() 
Say("Gi¸o chñ h¾c mÆt lang qu©n vŞ trİ : tæng doanh # täa ®é : 220/166<enter> lµ mét l·nh ®¹m ng­êi v« t×nh , t©m ®Şa s¾t ®¸ , kh«ng ai xem qua h¾n c­êi . chØ quan t©m nghiªn cøu c¸c lo¹i ®éc d­îc , muèn dïng ®éc thèng trŞ vâ l©m .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M02() 
Say("Kim xµ H­¬ng chñ v©n kh«ng tµ vŞ trİ : kim xµ tr¹i vŞ trİ :156/170<enter> cö chØ nãi chuyÖn tùa nh­ n÷ nh©n , khi h¾n ©m tr¾c tr¾c c­êi thêi ®iÓm , chİnh lµ h¾n muèn giÕt ng­êi thêi ®iÓm . cho lµ trªn ®êi nµy nhÊt cã vui thó chuyÖn cña t×nh chİnh lµ nh×n thÊy mét ng­êi bëi v× tróng ®éc mµ v« cïng thèng khæ ®İch d¸ng vÎ .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M03() 
Say("Xİch h¹t H­¬ng chñ tµn s¸t dŞ vŞ trİ : xİch h¹t tr¹i täa ®é : 169/184<enter> tham lam thµnh t¸nh , C«n L«n ph¸i tuyÒn ki tö thÇm h¹i s­ phô h¹ ®éc chİnh lµ dïng tiÒn tµi hèi lé h¾n sau nµy lÊy ®­îc ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M04() 
Say("Mùc chu H­¬ng chñ tang ch©u ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M05() 
Say("Ng©n thiÒm H­¬ng chñ b¹ch o¸nh o¸nh vŞ trİ # ng©n thiÒm tr¹i täa ®é : 220/209<enter> mÆt nh­ hoa ®µo , t©m tùa nh­ xµ h¹t , trªn mÆt vÜnh viÔn mang theo yªu mŞ ®İch nô c­êi , nh­ng lµ h¹ thñ so víi ai còng ngoan , cïng C«n L«n ph¸i chu thiÕu t­¬ng cÊu kÕt , mª hoÆc ph¸i Vâ §­¬ng tõ Trung Nguyªn .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M06() 
Say("Thanh ng« H­¬ng chñ thang bËt vŞ trİ # thanh ng« tr¹i täa ®é : 200/201<enter> ®éc ¸c v« sØ , n¨m ®ã h¹i chÕt thóy khãi cöa “ thñy tiªn sø gi¶ ” yªn hiÓu xinh ®Ñp ®İch mÉu th©n .",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M101() 
Say("§éc nha vŞ trİ täa ®é : 182/194 phô tr¸ch : binh khİ giao dŞch ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M102() 
Say("Gai ®éc vŞ trİ täa ®é : 184/193 phô tr¸ch : trang bŞ giao dŞch ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function M103() 
Say("§éc t©m vŞ trİ täa ®é : 187/191 phô tr¸ch : thuèc men giao dŞch ",2,"HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhiÖm vô giíi thiÖu bé phËn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_wu = GetTask(10) 
if (UTask_wu < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng/ch­a vµo cöa 
Say("Ng­¬i b©y giê cßn ch­a nhËp m«n . muèn nhËp m«n , cã thÓ ®i ®Ö tö bæn m«n tiÕp dÉn ®İch bÊt kú mét c¸i nµo tay míi th«n .",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_enroll","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 10*256) and (UTask_wu < 20*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ con nhÖn cïng tú s­¬ng ",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L10","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 20*256) and (UTask_wu < 30*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ ng­êi ®Çu tr¹ng .",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L20","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 30*256) and (UTask_wu < 40*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ méc h­¬ng ®Ønh .",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L30","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 40*256) and (UTask_wu < 50*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ m¾t kiÕng v­¬ng m·ng xµ ",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L40","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 50*256) and (UTask_wu < 60*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ ngäc san h« ",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L50","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 60*256) and (UTask_wu < 70*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ tŞ ®éc ch©u .",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_L60","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
elseif (UTask_wu >= 70*256) and (UTask_wu < 80*256) then 
Say("Ng­¬i b©y giê nhËn ®İch nhiÖm vô lµ trë l¹i s­ m«n .",4,"TiÕp tôc mæ b©y giê nhiÖm vô /T_return","HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
else 
Say("Ng­¬i cã thÓ tù do ra vµo m«n ph¸i , t¹m thêi kh«ng cã c¸i míi nhiÖm vô .",3,"HiÓu râ kh¸c nhiÖm vô /T_all","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 
end 

function T_all() 
Say("Muèn biÕt nhiÖm vô g× ",10,"NhËp m«n nhiÖm vô /T_enroll","Con nhÖn cïng tú s­¬ng nhiÖm vô /T_L10","§Çu ng­êi tr¹ng nhiÖm vô /T_L20","Méc h­¬ng ®Ønh nhiÖm vô /T_L30","M¾t kiÕng v­¬ng m·ng xµ nhiÖm vô /T_L40","Ngäc san h« nhiÖm vô /T_L50","TŞ ®éc ch©u nhiÖm vô /T_L60","Trë l¹i s­ m«n nhiÖm vô /T_return","HiÓu râ nh÷ng vÊn ®Ò kh¸c /main","Kh«ng hái !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","NÕu nh­ nhËp m«n häc nghÖ , chØ cÇn thuéc vÒ méc hÖ cïng ®Õn 10 cÊp . ®Õn bÊt kú mét c¸i nµo tay míi th«n thÊy bæn m«n tiÕp dÉn ®Ö tö liÒn cã thÓ . sau theo thø tù hoµn thµnh m«n ph¸i 5 c¸ nhiÖm vô . ®em häc ®­îc vâ c«ng lÊy ®­îc danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau ®em thµnh nghiÖp xuÊt s­ ") 
end 

function T_L10() 
Talk(5,"t_all","NhËp m«n sau cÊp bËc ®¹t tíi 10 cÊp , ng­¬i cã thÓ nhËn con nhÖn cïng tú s­¬ng ®İch nhiÖm vô . th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i cã thÓ lÊy ®­îc ®o¹t hån t¸n nh©n ®İch danh hiÖu , häc ®­îc vâ c«ng n¨m ®éc ®ao ph¸p , n¨m ®éc ch­ëng ph¸p ","1: ®Õn mùc chu tr¹i gÆp ph¶i tang ch©u , b¾t m­êi con con nhÖn , l¹i ®i mua 10 tói tú s­¬ng cho nµng luyÖn c«ng ","2: ®Õn Nh¹n §·ng s¬n th­îng b¾t m­êi con con nhÖn ","3# ®Õn long tuyÒn th«n ®İch tiÖm thuèc mua m­êi tói tú s­¬ng ","4# trë l¹i Ngò ®éc gi¸o mùc chu tr¹i giao cho tang ch©u , nhiÖm vô hoµn thµnh ") 
end 

function T_L20() 
Talk(4,"t_all","Hoµn thµnh con nhÖn cïng tú s­¬ng nhiÖm vô h¬n n÷a ®¹t tíi 20 cÊp liÒn cã thÓ nhËn ®Çu ng­êi tr¹ng nhiÖm vô . th«ng qua hoµn thµnh nhiÖm vô nµy , cã thÓ ®¹t ®­îc ®ßi m¹ng sø gi¶ ®İch danh hiÖu , häc ®­îc vâ c«ng xİch viªm thùc ngµy , t¹p khã kh¨n thuèc tr¶i qua ","1: ë ng©n thiÒm tr¹i gÆp ph¶i b¹ch o¸nh o¸nh , tiÕp nhËn vô , ®i giÕt la tiªu b¶y quû , cÇm trë vÒ 7 ng­êi ®Çu !","2: ®i tíi la tiªu s¬n , ®¸nh b¹i la tiªu b¶y quû ","3: trë l¹i ng©n thiÒm tr¹i t×m ®­îc b¹ch o¸nh o¸nh phôc mÖnh , hoµn thµnh nhiÖm vô ") 
end 

function T_L30() 
Talk(6,"t_all","Hoµn thµnh ®Çu ng­êi tr¹ng nhiÖm vô h¬n n÷a ®¹t tíi 30 cÊp , cã thÓ nhËn méc h­¬ng ®Ønh nhiÖm vô . th«ng qua hoµn thµnh nhiÖm vô nµy , cã thÓ lÊy ®­îc bãng tèi Diªm La ®İch danh hiÖu , häc ®­îc vâ c«ng u minh kh« l©u , v« h×nh cæ , tr¨m ®éc xuyªn tim , b¨ng lam huyÒn tinh ","1: ë xİch h¹t tr¹i thÊy tµn s¸t dŞ , tiÕp nhËn vô , t×m ®­îc ph¶n ®å cÇm trë vÒ méc h­¬ng ®Ønh .","2: ®Õn Vò di s¬n , ®¸nh b¹i ph¶n ®å , cÇm trë vÒ méc h­¬ng ®Ønh .","3: trë vÒ xİch huyÕt tr¹i , tµn s¸t dŞ ph¸t hiÖn méc h­¬ng ®Ønh lµ gi¶ ®İch , muèn ®i cÇm trë vÒ thËt méc h­¬ng ®Ønh ","4: trë l¹i Vò di s¬n , ®¸nh b¹i ph¶n ®å ®Çu môc , cÇm trë vÒ thËt méc h­¬ng ®Ønh !","5: trë l¹i xİch huyÕt tr¹i , ®em thËt méc h­¬ng ®Ønh giao cho tµn s¸t dŞ , hoµn thµnh nhiÖm vô . ") 
end 

function T_L40() 
Talk(5,"t_all","Hoµn thµnh méc h­¬ng ®Ønh nhiÖm vô h¬n n÷a cÊp bËc ®¹t tíi 40 cÊp , ng­¬i cã thÓ nhËn m¾t kiÕng v­¬ng m·ng xµ nhiÖm vô , th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i lÊy ®­îc phong hµo v« ®çng la s¸t , häc ®­îc vâ c«ng v¹n cæ thùc t©m , mÆc quÇn ¸o ph¸ gi¸p ","1: ë kim xµ tr¹i thÊy v©n kh«ng tµ , tiÕp nhËn nhiÖm vô , ®Õn kim m¸u r¾n ®µm b¾t mét con m¾t kİnh v­¬ng m·ng xµ cho v©n kh«ng tµ ","2: ®Õn kim m¸u r¾n ®µm tr­íc ph¶i tiÖm thuèc mua x¹ h­¬ng ","3: tiÕn vµo kim m¸u r¾n ®µm , ®¸nh b¹i m¾t kiÕng v­¬ng m·ng xµ ","4: trë vÒ kim xµ tr¹i , ®em m¾t kiÕng v­¬ng m·ng xµ giao cho v©n kh«ng tµ , hoµn thµnh nhiÖm vô ") 
end 

function T_L50() 
Talk(6,"t_all","Hoµn thµnh m¾t kiÕng v­¬ng m·ng xµ nhiÖm vô ®ång thêi ®¹t tíi 90 cÊp , ng­¬i cã thÓ nhËn ngäc san h« nhiÖm vô , th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i lÊy ®­îc phong hµo cæ ®éc t«n gi¶ , häc ®­îc vâ c«ng xuyªn tim gai ®éc ","1: ë thanh ng« tr¹i thÊy thang bËt , tiÕp nhËn nhiÖm vô , ®o¹t l¹i ngäc san h« ","2: ®Õn Vò di s¬n , tiÕn vµo ngäc hoa ®éng , ®¸nh b¹i l­u khÊu , biÕt ®­îc ngäc san h« ®· bŞ mang tíi nghiÖt long ®éng ","3: tiÕp tôc h­íng nghiÖt long ®éng , ®¸nh b¹i c­êng ®¹o , b¾t ®­îc ngäc san h« ","4: trë l¹i Ngò ®éc gi¸o thanh ng« tr¹i , ®em ngäc san h« giao cho thang bËt , nhiÖm vô hoµn thµnh ") 
end 

function T_L60() 
Talk(5,"t_all","Hoµn thµnh ngäc san h« nhiÖm vô ®ång thêi ®¹t tíi 50 cÊp , ng­¬i cã thÓ nhËn tŞ ®éc ch©u . th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i lÊy ®­îc phong hµo u minh quû khiÕn cho , thuËn lîi xuÊt s­ ","1: ®i tæng tr¹i t×m gi¸o chñ h¾c mÆt lang qu©n , tiÕp nhËn nhiÖm vô tõ nh¹n ®·ng ph¸i trong tay ®o¹t l¹i tŞ ®éc ch©u ","2: ®Õn Nh¹n §·ng s¬n , tiÕn vµo dª gi¸c ®éng ®¸nh b¹i v« sè nh¹n ®·ng ph¸i ®Ö tö , cuèi cïng ch­ëng m«n còng ngåi kh«ng yªn giao thñ ","3: ®¸nh b¹i nh¹n ®·ng ph¸i ch­ëng m«n , cÇm tr¸nh ®éc ch©u .","4: trë vÒ tæng tr¹i , ®ãng tŞ ®éc ch©u cho h¾c mÆt lang qu©n , hoµn thµnh nhiÖm vô ") 
end 

function T_return() 
Talk(3,"t_all","Th«ng qua trë l¹i s­ m«n , ng­¬i ®¹t ®­îc u minh quû v­¬ng ®İch danh hiÖu , häc ®­îc n¨m ®éc kú tr¶i qua , thiªn c­¬ng ®Şa s¸t , cuèi cïng thanh minh ","1: ®¹t tíi 60 cÊp sau , ®Õn tæng tr¹i thÊy h¾c mÆt lang qu©n gi¸o chñ , xin/mêi trë l¹i Ngò ®éc gi¸o ","2: ®­a cho m«n ph¸i 50000 hai , trë l¹i Ngò ®éc gi¸o ") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - kÕt thóc -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
