-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng mét trÇn 20 cÊp nhiÖm vô #50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) röa s¹ch oan khuÊt nhiÖm vô 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tm = GetTask(2); 
Uworld51 = GetTask(51) 
-- script viet hoa By http://tranhba.com  if (GetTask(123) >= 80) and (Uworld51 < 10) and (GetReputeLevel(GetRepute()) >= 8) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Talk(2,"Uworld51_get", 13429, 13430) 
if (Uworld51 == 20) then 
Talk(5,"Uworld51_30","V« còng kh«ng khoanh tay ®øng nh×n , nh­ cò ®ang t×m biÖn ph¸p , chØ v× phô th©n ta ®ang hoµi nghi ta , ta hµnh ®éng sî r»ng bÊt tiÖn .","Nh­ng lµ , ta biÕt mÊy ngµy tr­íc cã mÊy ThiÕu L©m cao thñ gÆp n¹n , vÕt th­¬ng cïng bæn m«n tuyÖt kû mét d¹ng , phô th©n ta hoµi nghi ta tiÕt lé bæn m«n tuyÖt kû .","Ng­¬i ®i gÆp ch­ëng m«n gi¶i thİch râ ","V« dông , phô th©n ta ®ang tøc giËn , sÏ kh«ng cho ta c¬ héi gi¶i thİch , tin tøc nµy ta còng lµ nghe ®­êng h¾c nãi .","NÕu nh­ lµ nh­ vËy , ch­ëng m«n ®èi víi ta v« dông thµnh kiÕn , cã lÏ ta cã thÓ gióp ng­¬i .") 
elseif (Uworld51 == 55) then 
Talk(6,"Uworld51_60","Mét trÇn c«ng tö , ta míi võa tõ ngµy nhÉn d¹y nghe ®­îc tin tøc , ¸m s¸t ThiÕu L©m cao thñ chuyÖn qu¶ nhiªn lµ bän hä lµm , nÕu kh«ng c«ng tö bëi v× muèn cïng ng­¬i tranh quyÒn , ®em bæn m«n bİ tŞch mang cho ngµy nhÉn d¹y .","Cã chuyÖn nµy ? nÕu kh«ng cho dï muèn trë thµnh ch­ëng m«n , còng kh«ng cã thÓ lµm nh­ vËy a .","TiÕc nuèi lµ ta ®ang bŞ hoµi nghi , phô th©n ta l¹i kh«ng tin ta , ta muèn lËp tøc cïng ®­êng h¾c s­ phã th­¬ng l­îng mét chót .","Ngµy nhÉn d¹y kÕ tiÕp ¸m s¸t môc tiªu lµ C¸i Bang , xin/mêi c«ng tö nh¾c nhë C¸i Bang tr¸nh khái ngµy nhÉn d¹y thõa c¬ h·m h¹i .","Bæn m«n bİ kİp r¬i vµo trong tay ®Şch nh©n , nhÊt ®Şnh ph¶i cÇm vÒ , nÕu kh«ng lµm phiÒn ng­¬i gióp tiªu diÖt thİch kh¸ch , cÇm trë vÒ bİ kİp .","Cã thÓ !") 
elseif (Uworld51 == 70) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô # ®· ®o¹t l¹i bİ kİp 
Talk(2,"Uworld51_80","Mét trÇn c«ng tö , t¹i h¹ ®· hoµn thµnh sø m¹ng , b¾t ®­îc bİ kİp .","§a t¹ ng­¬i , ta ®· cïng ®­êng h¾c s­ phã th­¬ng l­îng , mêi/xin ng­¬i cïng phô th©n ta nãi râ ch©n t­íng , bëi v× chuyÖn nµy tõ ng­¬i ®iÒu tra , chØ cã ng­¬i nãi míi cã thuyÕt phôc lùc .") 
elseif (Uworld51 == 90) then 
Talk(2,"Uworld51_100","Phô th©n ta nãi nh­ vËy a ? thËt tèt qu¸ , ta muèn ®em c¸i tin tøc tèt nµy nãi cho ngËm khãi míi ®­îc . ","Ha ha , ®Ó cho ta ®i mét chuyÕn , lÇn tr­íc lµ xÊu tin tøc , lÇn nµy lµ tin tøc tèt .") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
if (UTask_tm == 20*256) and (GetLevel() >= 20) then -- script viet hoa By http://tranhba.com 20 cÊp nhiÖm vô khëi ®éng 
Talk(2, "L20_get","Ta cã mét c« mÉu , gäi lµ <color=Red> ®­êng u <color>, lµ cha ta duy nhÊt muéi muéi , n¨m ®ã bëi v× vi ph¹m m«n quy , g¶ cho ng­êi bªn ngoµi , bŞ tæ phô ®uæi ra khái nhµ , hai m­¬i n¨m ch­a tõng gÆp nhau . ta biÕt cha mÆc dï trong miÖng kh«ng nãi , nh­ng lµ h¾n hÕt søc t­ëng niÖm c« muéi muéi nµy .","Ch­ëng m«n kia t¹i sao kh«ng nhËn nµng trë vÒ §­êng m«n , ng­êi mét nhµ ®oµn viªn ®©y ?") 
		elseif (UTask_tm == 20*256+60) then 
Talk(2, "","§­êng u s­ c« ®· tha thø ch­ëng m«n , nµng muèn ta ®­a c¸i nµy <color=Red> kim h¹ng vßng <color> giao cho ch­ëng m«n .","Cã thËt kh«ng ? thËt tèt qu¸ # ng­¬i thËt lµ cã b¶n l·nh , nhanh ®i ®em <color=Red> kim h¹ng vßng <color> giao cho ta cha ®i # h¾n ®ang ë <color=Red> tiÕp kh¸ch ®¹i s¶nh <color> trong .") 
Msg2Player("Trë vÒ nghŞ sù phßng t×m ®­êng mét trÇn , biÕt ch­ëng m«n ®­êng thï ®ang phßng kh¸ch .") 
			SetTask(2,20*256+70)
		elseif (UTask_tm == 20*256+70) then
Talk(1, "","ThËt tèt qu¸ # nhanh ®i ®em <color=Red> kim h¹ng vßng <color> giao cho ta cha ®i # h¾n ®ang ë <color=Red> tiÕp kh¸ch ®¹i s¶nh <color> trong .") 
		elseif (UTask_tm == 50*256+20) then		-- script viet hoa By http://tranhba.com 50¼¶ÈÎÎñ
Talk(4, "","§¹i s­ huynh , ng­¬i biÕt ngµy h«m qua cã ai ®i qua ¸m khİ phßng sao ?","Tèi ngµy h«m qua gièng nh­ <color=Red> Tam s­ ®Ö ®­êng hßa <color> cïng <color=Red> Ngò s­ ®Ö ®­êng nguyªn <color> ®i qua .","Kh«ng biÕt bän hä giê kh¾c nµy ë n¬i nµo ?", "<color=Red>Ng?s?#<color> Ngò s­ ®Ö <color> míi võa råi véi véi vµng vµng ®i <color=Red> giang t©n th«n <color> th¨m h¾n ng· bÖnh ®İch c÷u c÷u , Tam s­ ®Ö còng ®i ra ngoµi , nh­ng kh«ng biÕt ®i n¬i nµo . ") 
			SetTask(2, 50*256+40)
Msg2Player(" ë nghŞ sù phßng , tõ ®­êng mét trÇn chç biÕt Tam s­ ®Ö ®­êng hßa cïng Ngò s­ ®Ö ®­êng nguyªn ®i qua ¸m khİ phßng .") 
AddNote(" ë nghŞ sù phßng , tõ ®­êng mét trÇn chç biÕt Tam s­ ®Ö ®­êng hßa cïng Ngò s­ ®Ö ®­êng nguyªn ®i qua ¸m khİ phßng , hai ng­êi rÊt kh¶ nghi , ®­êng nguyªn ®i giang t©n th«n nh×n c÷u c÷u , ®­êng cïng kh«ng hiÓu ®i n¬i nµo .") 
		elseif (UTask_tm == 50*256+40) then							-- script viet hoa By http://tranhba.com 50¼¶ÈÎÎñ
Talk(1,"","T¹i sao ng­¬i hái ai vµo ¸m khİ phßng ? ®· x¶y ra chuyÖn g× ?") 
elseif (UTask_tm > 20*256) and (UTask_tm < 30*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 20 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","C« tr­îng sau khi chÕt , c« mÉu mét mùc ë t¹i phİa sau nói <color=Red> kh«ng lßng d¹ nµo cèc <color> ®İch mét gian nhµ l¸ trong , nµng tõ kh«ng thÊy §­êng m«n ng­êi trong , ta ®i liÔu nhiÒu lÇn , còng chØ cã thÓ ë <color=Red> cöa <color> h­íng nµng thØnh an , lÇn nµy liÒn nhê cËy ng­¬i ! ") 
elseif (UTask_tm >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","§a t¹ ng­¬i hãa gi¶i phô th©n ta cïng c« c« ®İch ©n o¸n ") 
else 
Talk(1,"","§­êng m«n lµ vâ l©m ®İch trung l­u chØ trô , kh«ng chØ cã dùa vµo vâ c«ng , cßn cã c«ng phu ¸m khİ , ¸m khİ lµ cña chóng ta ­u thÕ .") 
end 
elseif (Uworld51 >= 10) and (Uworld51 < 100) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô # tiÕn hµnh trung 
Talk(1,"","Mét trÇn mÆc dï bÊt tµi , nh­ng lµ , kh«ng thÓ v× vËy liÒn ®em vâ c«ng truyÖn ngo¹i nh©n . ") 
elseif (Uworld51 >= 100) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô # ®· hoµn thµnh 
Talk(1,"","NÕu nh­ kh«ng ph¶i lµ ng­¬i gióp ta röa s¹ch oan khuÊt , chuyÖn nµy kh«ng hiÓu sÏ nh­ thÕ nµo , ta cïng ngËm khãi muèn c¶m t¹ ng­¬i míi lµ !") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Cã r·nh rçi nhí ®Õn xem chóng ta .") 
else 
Talk(1,"","Ng­¬i lµ võa nhËp m«n ®İch ®Ö tö ph¶i kh«ng ?") 
end 
end; 

function L20_get() 
DelItem(41) -- script viet hoa By http://tranhba.com  phßng ngõa nÆng tiÕp nhËn vô sau , nhµ ch¬i nhÆt lªn nhiÖm vô ®¹o cô 
Say("Th­¬ng l­îng ", 2,"§Ó cho ta muèn nghÜ biÖn ph¸p /L20_get_yes","Kh«ng cã c¸ch nµo /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1,"","C« tr­îng sau khi chÕt , c« mÉu mét mùc ë t¹i phİa sau nói <color=Red> kh«ng lßng d¹ nµo cèc <color> ®İch mét gian nhµ l¸ trong , nµng tõ kh«ng thÊy §­êng m«n ng­êi trong , ta ®i liÔu nhiÒu lÇn , còng chØ cã thÓ ë <color=Red> cöa <color> h­íng nµng thØnh an , lÇn nµy liÒn nhê cËy ng­¬i ! ") 
	SetTask(2, 20*256+20)
AddNote(" ë nghŞ sù phßng (507,319) thÊy ®­êng mét trÇn , nhËn <color=red> ®­êng u nhiÖm vô <color>, ®Õn kh«ng lßng d¹ nµo cèc hãa gi¶i ®­êng u cïng ch­ëng m«n ®İch ©n o¸n .") 
Msg2Player(" ë nghŞ sù phßng thÊy ®­êng mét trÇn , nhËn ®­êng u nhiÖm vô , ®Õn kh«ng lßng d¹ nµo cèc hãa gi¶i ®­êng u cïng ch­ëng m«n ®İch ©n o¸n .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_get() 
Say("Ai , nãi rÊt dµi dßng , ng­¬i cã thÓ gióp ta truyÒn lêi cho duÉn ngËm khãi sao ?",2,"DÔ dµng , lµ c¸i g× néi dung ®©y ?/Uworld51_get_yes","§Çu ta ®au , ng­¬i t×m nh÷ng ng­êi kh¸c ®i ./L20_get_no") 
end 

function Uworld51_get_yes() 
Talk(1,"","Cïng c« c« ta nãi # phô th©n ta kh«ng hiÓu thÕ nµo ®ét nhiªn ph¶n ®èi h«n nh©n cña chóng ta , h«n lÔ cã thÓ sÏ cã khã kh¨n , nh­ng lµ , c« c« kh«ng cÇn qu¸ lo l¾ng .") 
SetTask(51,10) 
Msg2Player("TiÕp nhËn vô # gióp ®­êng mét trÇn truyÒn lêi cho duÉn ngËm khãi .") 
AddNote("NhËn röa s¹ch oan khuÊt nhiÖm vô # gióp ®­êng mét trÇn truyÒn lêi cho duÉn ngËm khãi .") 
end 

function Uworld51_30() 
SetTask(51,30) 
Msg2Player("Ng­¬i quyÕt ®Şnh ®i gÆp ®­êng thï ch­ëng m«n , gióp ®­êng mét trÇn gi¶i thİch .") 
end 

function Uworld51_60() 
SetTask(51,60) 
Msg2Player("§­êng mét trÇn mêi/xin ng­¬i ®i vµo cóc ®éng tiªu diÖt kim quèc thİch kh¸ch , ®o¹t bİ kİp trë l¹i ") 
end 

function Uworld51_80() 
SetTask(51,80) 
Msg2Player("§­êng mét trÇn c¶m t¹ ng­¬i trî gióp h¾n , ®ång thêi hy väng ng­¬i cã thÓ gióp h¾n vµ ®­êng thï ch­ëng m«n nãi râ rµng .") 
end 

function Uworld51_100() 
SetTask(51,100) 
i = random(35,45) 
AddRepute(i) -- script viet hoa By http://tranhba.com  thªm danh väng 
Msg2Player("§­êng mét trÇn c¶m t¹ trî gióp cña ng­¬i , ng­¬i danh väng gia t¨ng "..i.." ®iÓm .") 
Msg2Player("Ng­¬i tù nguyÖn mang tin tøc tèt cho duÉn ngËm khãi , trî gióp nµng gi¶m bít rÇu rØ .") 
end 

function L20_get_no() 
end; 
