-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng rçi r·nh 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2) 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then 
if (UTask_tm == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 cÊp nhiÖm vô khëi ®éng 
Talk(3, "L50_step0","C¸i nµy nh­ng nh­ thÕ nµo cho ph¶i !","§­êng rçi r·nh s­ thóc , x¶y ra chuyÖn g× ?","Ng­¬i cã chç kh«ng biÕt , bæn ®­êng trø cã <color=Red> mét bé color>'# ¸m khİ phæ # , chia lµm trªn d­íi hai s¸ch , phİa trªn cÆn kÏ ghi l¹i bæn m«n tÊt c¶ ¸m khİ chÕ ph¸p cïng c¸ch dïng , chİnh lµ bæn m«n tuyÖt kh«ng truyÒn ra ngoµi ®İch bİ kİp . nµy bİ kİp tõ ta b¶o qu¶n , v× lı do an toµn , ta ®em trªn d­íi hai s¸ch ph©n ®Æt ë hai hép s¾t trong , nh­ng lµ h«m nay ta l¹i ph¸t hiÖn hép s¾t trung ®İch th­îng s¸ch bŞ ng­êi ®iÒu ®æi thµnh mét quyÓn kh«ng cã ch÷ thiªn th­ . bİ kİp l­u l¹c , ®©y chİnh lµ kh«ng ph¶i chuyÖn ®ïa chuyÖn cña a !") 
		elseif (UTask_tm == 50*256+80) then
if ( HaveItem(48) == 1) then -- script viet hoa By http://tranhba.com  cã ¸m khİ phæ 
Talk(2, "L50_prise","§­êng rçi r·nh s­ thóc , th× ra lµ trém # ¸m khİ phæ # ng­êi cña lµ Tam s­ huynh ®­êng hßa , ta ®· ®em bİ kİp ®o¹t l¹i tíi , ng­¬i xem cã ph¶i thËt vËy hay kh«ng ?","Kh«ng tÖ , ®©y chİnh lµ quyÓn kia l­u l¹c ®İch # ¸m khİ phæ # , ng­¬i lµm gèc ®­êng tiªu gi¶i liÔu mét cuéc di thiªn ®¹i häa , thËt lµ c«ng lao kh«ng nhá a !") 
else -- script viet hoa By http://tranhba.com  mÊt xö lı 
Talk(1,"","MÆc dï t×m ra liÔu ph¶n ®å ®­êng hßa , nh­ng lµ kh«ng ®em ¸m khİ phæ t×m trë vÒ lµ kh«ng ®­îc !") 
end 
elseif (UTask_tm > 50*256) and (UTask_tm < 60*256) then -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh 50 cÊp nhiÖm vô 
Talk(1,"","§­êng rçi r·nh # bİ kİp bŞ ®¹o , kh«ng ph¶i chuyÖn ®ïa , kh«ng chØ cã l·o phu tho¸t kh«ng khái liªn quan , cßn cã thÓ cã thÓ dİnh lİu rÊt nhiÒu ng­êi v« téi !") 
elseif (UTask_tm >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","May nhê ng­¬i tiªu gi¶i liÔu s©n nµy di thiªn ®¹i häa , nÕu kh«ng hËu qu¶ thiÕt t­ëng kh«ng chŞu næi !") 
else 
Talk(1,"","C«ng phu ¸m khİ , ng­¬i cã c¸i g× chç kh«ng hiÓu cã thÓ hái l·o phu !") 
end 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Trªn giang hå , minh th­¬ng dÔ tr¸nh , ¸m tiÓn khã phßng .") 
else -- script viet hoa By http://tranhba.com  thiÕu tØnh ®èi tho¹i 
Talk(1,"","Thiªn h¹ ®İch c«ng phu ¸m khİ , nÕu nh­ l·o phu nhËn thø hai , kh«ng ai d¸m nhËn thø nhÊt , ng­¬i cã tøc giËn hay kh«ng ?") 
end 
end; 

function L50_step0() 
Talk(2,"L50_get","Bæn m«n ®Ò phßng s©m nghiªm , ngo¹i nh©n kh«ng hiÓu bİ kİp giÊu ë n¬i nµo , muèn trém còng trém kh«ng tíi , cho nªn , ®¹o bİ kİp ng­êi cña thÇn xuÊt quû mét , nhÊt ®Şnh còng cã thÓ ®Õn gÇn ®¹o tÆc . ta hoµi nghi cã néi gian , nh­ng lµ chuyÖn nµy quan hÖ träng ®¹i , nÕu nh­ nãi cho ch­ëng m«n , ®em ®­a tíi hiªn nhiªn ®¹i ba , ta chØ hy väng nhanh lªn mét chót t×m ®­îc ®¹o tÆc , sÏ ®em chuyÖn nµy thë b×nh th­êng !","Bİ kİp lóc nµo bŞ ®¹o ®İch ?") 
end; 

function L50_get() 
Say("C¨n cø suy ®o¸n , bİ kİp ph¶i lµ ngµy h«m qua bŞ ®¸nh c¾p ®İch !", 2,"Trî gióp t×m kiÕm bİ kİp /L50_get_yes","Kh«ng thÓ ra søc /L50_get_no") 
end; 

function L50_get_yes() 
Talk(1,"","Ta ®i h­íng nh÷ng ng­êi kh¸c <color=Red> hái th¨m mét chót <color> , nãi kh«ng chõng sÏ cã ®Çu mèi g× !") 
	SetTask(2, 50*256+20)
AddNote(" ë trong tèi khİ phßng thÊy ®­êng rçi r·nh (504, 317) , nhËn <color=red> t×m ¸m khİ phæ nhiÖm vô color> ") 
Msg2Player("NhËn ¸m khİ phæ nhiÖm vô , ®i t×m bŞ ®¹o ®İch ¸m khİ phæ . ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
DelItem(48) 
SetRank(30) 
SetTask(2, 60*256) 
-- script viet hoa By http://tranhba.com  AddMagic(349) 
add_tm(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("§em ¸m khİ phæ giao cho ®­êng rçi r·nh , th¨ng lµm §­êng m«n Tø l·o m«n nh©n , häc ®­îc sĞt ®¸nh thuËt ") 
AddNote("§em ¸m khİ phæ giao cho ®­êng rçi r·nh , nhiÖm vô hoµn thµnh , th¨ng lµm §­êng m«n Tø l·o m«n nh©n . ") 
end; 
