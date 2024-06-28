-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y phong ®­êng ®­êng chñ hoµn nhan tuyÕt y 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\12) gia nhËp 90 cÊp m«n ph¸i nhiÖm vô 

Include("\\script\\global\\skills_table.lua")

Include("\\script\\item\\skillbook.lua")

function main() 
UTask_tr = GetTask(4); 
Uworld127 = GetTask(127) 
if(GetSeries() == 3) and (GetFaction() == "tianren") then 
if(UTask_tr == 30*256) and (GetLevel() >= 30) then 
Say("MÊy ngµy n÷a chİnh lµ ta mÉu hËu ## ®¹i kim hoµng sau ®İch sinh nhËt , Bæn ®­êng chñ tİnh to¸n lµm mét mãn kim lò ngäc y cho mÉu hËu lµm quµ tÆng , nh­ng lµ cßn thiÕu bèn lo¹i b¶o th¹ch <color=Red> c¸p m¸u ®á # b¨ng tinh lam # tæ mÉu xanh biÕc # v©n méng tö color>. ta nghe nãi ë <color=Red> tÇn l¨ng trong <color> cã thËt nhiÒu gi¸ trŞ liªn thµnh ®İch b¶o th¹ch , ng­¬i nguyÖn ı gióp ta ®i t×m mét chót sao ?", 2,"V× c«ng chóa ra søc vinh h¹nh chi tíi /L30_get_yes","Thuéc h¹ cßn cã mét chuyÖn /L30_get_no") 
		elseif(UTask_tr == 30*256+20) and (HaveItem(59) == 1) and (HaveItem(60) == 1) and (HaveItem(61) == 1) and (HaveItem(62) == 1) then
L30_prise() 
elseif(UTask_tr > 30*256) and (UTask_tr < 40*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 30 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","Ng­¬i cã thÓ gäi <color=Red> « §­êng chñ color> mang tíi <color=Red> tÇn l¨ng <color>, nhí 4 lo¹i b¶o th¹ch <color=Red> c¸p m¸u ®á <color>, <color=Red> b¨ng tinh lam <color>, <color=Red> tæ mÉu xanh biÕc <color>, <color=Red> v©n méng tö color>.") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô , ch­a xuÊt s­ # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","Phô v­¬ng cÇn ta trî gióp thu phôc trong chèn vâ l©m nguyªn , nÕu nh­ ngµy nhÉn d¹y kh«ng thÓ lÊy ®­îc phô v­¬ng ta ®İch trî gióp , th× kh«ng thÓ nh­ vËy ph¸t triÓn .") 
end 
elseif(Uworld127 == 10) and (HaveItem(374) == 1) then 
Talk(15,"Uworld127_killer","Cung kİnh ThÊt c«ng chóa ®iÖn h¹ ","H¾n tõ ®©u tíi ®©y , t¹i sao tíi ? ng­¬i muèn chÕt a ","T¹i h¹ kh«ng d¸m cÇm t¸nh m¹ng cña m×nh nãi giìn .","A , ng­¬i thËt lµ lín gan , b©y ®©u / ng­êi võa tíi , kĞo ra ngoµi cho chã ¨n .","Nghe nãi c«ng chóa t×m mét con ®¹i ®iªu ? õ/d¹ , ng­¬i biÕt n¬i ®ã cã sao ?","MÆc dï t¹i h¹ kh«ng hiÓu , nh­ng lµ chØ cÇn ng­¬i ®¸p øng mét ®iÒu kiÖn , ta liÒn lËp tøc cã thÓ b¾t ®Õn nã #!"," l¹i lµ mét thİch thæi ®İch ng­êi .","§¹i qu©n Kim m· hïng hËu , thÕ nµo kh«ng sî chÕt ? ta lµm sao d¸m lõa g¹t ThÊt c«ng chóa ?","Ng­¬i muèn c¸i g× ®iÒu kiÖn ?"," ë ta lóc trë l¹i , kh«ng thÓ giÕt bªn trong phñ bÊt luËn kÎ nµo ","ThËt lµ buån c­êi , nÕu nh­ mét n¨m sau ng­¬i cßn ch­a cã trë l¹i , lµm sao b©y giê ?","Ta b¶o ®¶m mét th¸ng trë l¹i .","H¶o , qu©n tö nhøt ng«n . mét th¸ng sau , nÕu nh­ kh«ng thÊy ng­¬i , liÒn giÕt hoµn bän hä !","Kh«ng cã ngµy nµo ®ã .") 
elseif(Uworld127 == 10) then 
Talk(1,"","Kh«ng cã lÖnh bµi , ng­¬i d¸m vµo c«ng chóa phñ ? thËt lµ gan lín , tha thø ng­¬i kh«ng ph¶i lµ ¸c ı , mau rêi ®i n¬i nµy , lÇn sau chí cã tr¸ch ta .") 
elseif(Uworld127 == 20) and (HaveItem(374) == 0) then 
Talk(1,"","TiÓu tö nµy , mau cót . ®i mau , nÕu kh«ng c¾t ch©n cña ng­¬i ") 
elseif(Uworld127 == 30)and(HaveItem(369) == 1) then 
DelItem(369) 
Talk(6,"Uworld127_over","TuyÕt y c«ng chóa , ®©y lµ ng­¬i muèn ®¹i ®iªu .","H¶o , h¶o . ng­¬i qu¶ nhiªn kh«ng sai ","Nh­ng lµ , hay lµ cã ng­êi muèn lÊy ®Çu cña ta .","Kh«ng nªn cïng bän hä so ®o , sau nµy ng­¬i ®i theo ta lµ ®­îc .","Xin tha thø , t¹i h¹ hµnh tÈu giang hå qu¸n , kh«ng muèn víi ai liÔu ","..... d¸m ë tr­íc mÆt cña ta nãi nh­ vËy , chØ cã mét ng­êi .") 
elseif(Uworld127 == 30) then 
Talk(1,"","§¹i ®iªu ®©y ? b¾t ®­îc nhanh lªn mét chót lÊy ra ") 
elseif(Uworld127 == 255) then 
if(GetSex() == 0) then 
Talk(1,"","H¶o tû tû , lÇn sau tíi cïng tuyÕt y ch¬i .") 
else 
Talk(1,"","H¶o ca ca , lÇn sau tíi cïng tuyÕt y ch¬i .") 
end 
elseif(UTask_tr >= 70) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Ng­¬i thËt lµ İt cã ®İch anh hïng , hy väng chóng ta lµ huynh ®Ö , kh«ng ph¶i lµ cõu nh©n , cã c¬ héi ta h­íng phô v­¬ng ®Ò cö ng­¬i , phôc vô ®¹i kim , muèn cho nam triÒu hoµng ®Õ båi mÖnh ") 
else 
Talk(1,"","Ngµy nhÉn d¹y gi¸o chñ lµ ®¹i kim quèc s­ , phô v­¬ng rÊt nÆng dïng h¾n , cho nªn , ®Ó cho ta gia nhËp bæn gi¸o lµm §­êng chñ ") 
end 
end; 

function L30_get_yes() 
Talk(1,"","Phong ®­êng ®­êng chñ thËt tèt qu¸ , nh­ng lµ nghe nãi ®i tÇn l¨ng ®İch ®­êng rÊt nguy hiÓm , rÊt nhiÒu ng­êi ®i t×m ch©u b¸u còng bá m¹ng , ng­¬i cã thÓ ®Õn biÖn kinh ®i t×m phu xe , nh­ng lµ <color=Red> « §­êng chñ <color> quen thuéc phİa t©y khu vùc , ng­¬i cã thÓ ®Ó cho h¾n dÉn ng­¬i ®i .") 
	SetTask(4, 30*256+20)
AddNote(" ë trªn trêi nhÉn d¹y tÇng thø ba gÆp giã ®­êng ®­êng chñ hoµn nhan tuyÕt y (213, 201) , nhËn <color=red> b¶o th¹ch nhiÖm vô <color>. # ®i tÇn l¨ng t×m 4 lo¹i b¶o th¹ch ") 
Msg2Player(" ë trªn trêi nhÉn d¹y tÇng thø ba gÆp giã ®­êng ®­êng chñ hoµn nhan tuyÕt y (213, 201) , nhËn <color=red> b¶o th¹ch nhiÖm vô <color>. # ®i tÇn l¨ng t×m 4 lo¹i b¶o th¹ch ") 
end; 

function L30_get_no() 
Talk(1,"","..........?") 
end; 

function L30_prise() 
Talk(1,"","Ng­¬i thËt lµ lîi h¹i , lo¹i nµy b¶o th¹ch còng cã thÓ t×m ®­îc , mÉu hËu nhÊt ®Şnh rÊt thİch c¸i nµy ngäc y !") 
SetRank(58) 
DelItem(59) 
DelItem(60) 
DelItem(61) 
DelItem(62) 
SetTask(4, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(141) 
-- script viet hoa By http://tranhba.com  AddMagic(138) 
-- script viet hoa By http://tranhba.com  AddMagic(140) 
add_tr(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("§em bèn lo¹i b¶o th¹ch ®­a cho phong ®­êng ®­êng chñ hoµn nhan tuyÕt y , hoµn thµnh b¶o th¹ch nhiÖm vô . bŞ ®ãng cöa # u minh tö sÜ , häc ®­îc vâ c«ng # liÖt háa t×nh thiªn , ®Èy s¬n ®iÒn h¶i , bay hång v« tŞch . ") 
AddNote("Håi thiªn nhÉn d¹y , ®em bèn lo¹i b¶o th¹ch ®­a cho phong ®­êng ®­êng chñ hoµn nhan tuyÕt y , hoµn thµnh b¶o th¹ch nhiÖm vô . bŞ ®ãng cöa # u minh tö sÜ . ") 
end; 

function Uworld127_killer() 
DelItem(374) 
SetTask(127,20) 
AddNote("TiÕp nhËn vô # ®Õn kiÕm c¸c b¾t ®¹i ®iªu ") 
Msg2Player("TiÕp nhËn vô # ®Õn kiÕm c¸c b¾t ®¹i ®iªu ") 
end 

function Uworld127_over() 
if (GetTask(4) >= 70*256) and (GetTask(4) ~= 75*256) then -- script viet hoa By http://tranhba.com  lµ ngµy nhÉn xuÊt s­ ®Ö tö 
Talk(2,"","Ngµy nhÉn bİ th­ giao cho ng­¬i , nÕu nh­ cù tuyÖt , ta liÒn giÕt ng­¬i , tuyÖt kh«ng nuèt lêi .","§· nh­ vËy , t¹i h¹ kh«ng thÓ kh«ng tiÕp nhËn .") 
if (HaveMagic(361) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(361,1) 
end 
if (HaveMagic(362) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(362,1) 
end 
if (HaveMagic(391) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(391) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("§em ®¹i ®iªu cho hoµn nhan tuyÕt y , häc ®­îc v©n long kİch , Thiªn Ngo¹i L­u Tinh , nhiÕp hån lo¹n t©m . trë vÒ b¸o tin cho L­u l·o gia . ") 
SetTask(127,110) 
else 
Talk(1,"","H¶o , lÇn sau nhí ®Õn xem tuyÕt y !") 
SetTask(127,100) 
Msg2Player("§em ®¹i ®iªu cho hoµn nhan tuyÕt y , trë vÒ b¸o tin cho L­u l·o gia ") 
end 
end 
