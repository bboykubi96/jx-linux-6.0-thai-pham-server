-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC La H¸n ®­êng thñ täa huyÒn khã kh¨n ThiÕu L©m xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 
-- script viet hoa By http://tranhba.com  update by xiaoyang(2004\4\15) ThiÕu L©m 90 cÊp nhiÖm vô 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")

Include("\\script\\item\\skillbook.lua")

function main() 
if allbrother_0801_CheckIsDialog(206) == 1 then 
allbrother_0801_FindNpcTaskDialog(206) 
return 0; 
end 
UTask_sl = GetTask(7) 
Uworld122 = GetTask(122) 
-- script viet hoa By http://tranhba.com  if (UTask_sl == 70*256) and (Uworld122 == 245) then -- script viet hoa By http://tranhba.com  b¹ch tªn lµm xong 90 cÊp nhiÖm vô sau l¹i nhËp m«n ph¸i ®İch , trùc tiÕp cho kü n¨ng 
-- script viet hoa By http://tranhba.com  Talk(1,"","HuyÒn khã kh¨n # a ®µ ®µ phËt , thİ chñ qu¶ nhiªn anh hïng xuÊt chóng , n¬i nµy cã ThiÕu L©m tuyÖt nghÖ mét bé , ng¾m ng­¬i ch¨m chØ luyÖn tËp , kh«ng chØ cã muèn trë thµnh vèn tù , cµng ph¶i trë thµnh Trung Nguyªn vâ l©m ®İch ®èng l­¬ng . ") 
-- script viet hoa By http://tranhba.com  AddMagic("Kim long gi¬ vuèt ") 
-- script viet hoa By http://tranhba.com  AddMagic("Hoµnh t¶o thiªn qu©n ") 
-- script viet hoa By http://tranhba.com  AddMagic("V« t­íng chĞm ") 
-- script viet hoa By http://tranhba.com  Msg2Player("Häc ®­îc ThiÕu L©m kü n¨ng kim long gi¬ vuèt # hoµnh t¶o thiªn qu©n # v« t­íng chĞm ") 
-- script viet hoa By http://tranhba.com  SetTask(122,255) 
if(GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if((UTask_sl == 60*256+10) and (HaveItem(217) == 1) and (HaveItem(215) == 1) and (HaveItem(216) == 1) and (HaveItem(214) == 1)) then		-- script viet hoa By http://tranhba.com  ÈÎÎñÍê³É
L60_prise() 
elseif((UTask_sl == 60*256) and (GetLevel() >= 50)) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô khëi ®éng 
Say("Dùa theo bæn m«n quy ®Şnh , phµm lµ bæn m«n nghÜ ra s­ ®İch ®Ö tö ®Òu ph¶i tr¶i qua 108 La h¸n trËn ®İch kh¶o nghiÖm , ng­¬i nghÜ v­ît qua ¶i sao ?",2,"§ång ı /L60_get_yes","Kh«ng muèn /L60_get_no") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","ThiÕu L©m ®ang ë kim quèc , hån h­íng nam h­íng , ph­¬ng tr­îng s­ huynh nh­ vËy rÇu rØ còng ®óng !") 
end 
elseif (Uworld122 == 20) then 
Talk(4,"Uworld122_censure","HuyÒn bëi v× ®¹i s­ , ThiÕu L©m ®Ö tö ®ang Hoa S¬n ®¸nh l«i ®µi , cho nªn , sÏ tæn h¹i ThiÕu L©m danh tiÕng .","C¸i nµo tiÓu tö tíi ®©y ? ThiÕu L©m chuyÖn cña kh«ng cÇn ng­¬i nhóng tay , ®i th«i !","T¹i h¹ ®i ngang qua Hoa S¬n , nh×n thÊy kim quèc cao thñ th©n ¶nh , sî r»ng quı ph¸i bŞ mai phôc .","ThiÕu L©m xuÊt gia ®Ö tö tr¶i réng kim quèc , kim qu©n cã c¸i g× ®éng tÜnh , ch¼ng lÏ ta cã thÓ kh«ng biÕt kh«ng ? kh«ng nªn nãi bËy , nÕu nh­ kh«ng ®i ta kh«ng kh¸ch khİ !") 
elseif (Uworld122 >= 30) and (Uworld122 < 60) then 
Talk(1,"","Cßn ®øng n¬i nµy a , muèn ta xuÊt thñ sao ?") 
elseif (Uworld122 == 70) then 
Talk(7,"U122_prise","§¹i s­ ","§¹i s­ ","Tİnh / chän , lµ ta sai lÇm råi , huyÒn khã kh¨n tõ kh«ng h­íng ng­êi nµo quú ®Çu . h«m nay h­íng tiÓu huynh ®Ö nhËn lÇm !","Ai nha , ®¹i s­ , ta kh«ng d¸m a !","T¹i sao kh«ng ? c¸c h¹ ë n­íc s©u löa nãng trung cøu c¸c ®Ö tö , thËt lµ cã t¸i t¹o chi d¹/õ .","§¹i s­ d¸m lµm d¸m chŞu , tiÓu tö b¸i phôc .") 
else 
Talk(1,"","Ng­¬i biÕt c¸i g× lµ thiÖn quyÒn quy nhÊt sao ? ®ã lµ chØ vâ häc ThiÕu L©m b¸c ®¹i tinh th©m , lÊy v« söa thiÖn !") 
end 
end; 

function L60_get_yes() 
Talk(1,"","TiÕn vµo phËt t­îng phİa sau La h¸n trËn ®i vµo cÇm # ®äc ch©u , thiÒn tr­îng , c¸ gç , b¸t vu 4 mãn tİn vËt , sau ®ã tõ ®­êng cò trë vÒ , m×nh nh×n lµm ®i ") 
	SetTask(7,60*256+10)
AddNote("TiÕp nhËn ThiÕu L©m xuÊt s­ nhiÖm vô # tiÕn vµo La h¸n trËn t×m ®­îc 4 mãn b¶o vËt # ®äc ch©u , thiÒn tr­îng , c¸ gç , b¸t vu . ") 
Msg2Player("TiÕp nhËn ThiÕu L©m xuÊt s­ nhiÖm vô # tiÕn vµo La h¸n trËn t×m ®­îc 4 mãn b¶o vËt # ®äc ch©u , thiÒn tr­îng , c¸ gç , b¸t vu . ") 
end; 

function L60_get_no() 
end; 

function L60_prise() 
Talk(2,"","Chóc mõng ng­¬i ®· x«ng qua 108 La h¸n trËn , ng­¬i cã thÓ xuÊt s­ , sau nµy hµnh tÈu giang hå , cøu tÕ gióp ng­êi , hµnh hiÖp tr­îng nghÜa , kh«ng thÓ kiªu ng¹o , nhí !","§Ö tö nhí ") 
DelItem(217) 
DelItem(215) 
DelItem(216) 
DelItem(214) 
SetRank(62) 
SetTask(7,70*256) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote(" ë La h¸n trËn t×m ®­îc 4 mãn tİn vËt giao cho huyÒn khã kh¨n , hoµn thµnh xuÊt s­ nhiÖm vô , th¨ng cÊp v« l­îng thİch t«n , thuËn lîi xuÊt s­ ") 
Msg2Player("Chóc mõng ng­¬i xuÊt s­ , ng­¬i bŞ ®ãng cöa v× v« l­îng thİch t«n ") 
end; 

function Uworld122_censure() 
SetTask(122,30) -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng v× 30 
Msg2Player("HuyÒn khã kh¨n kh«ng cã chó ı tíi ng­¬i , ng­¬i chØ cã thÓ ®i t×m huyÒn bi . ") 
AddNote("HuyÒn khã kh¨n kh«ng cã chó ı tíi ng­¬i , ng­¬i chØ cã thÓ ®i t×m huyÒn bi . ") 
end 

function U122_prise() 
if(GetTask(7) >= 70*256) and (GetTask(7) ~= 75*256) then -- script viet hoa By http://tranhba.com  lµ Thiªn v­¬ng ®Ö tö hoÆc xuÊt s­ ®Ö tö 
Talk(2,"HuyÒn khã kh¨n , kim quèc ®ang tiÕp tôc ®éng binh , trong chèn vâ l©m nguyªn ®em cã mét phen kinh thiªn ®éng ®Şa , ë n¬i nµy l·o t¨ng cã mét bé # ThiÕu L©m tuyÖt kû # , ®­a cho tiÓu h÷u , hy väng ng­¬i ch¨m chØ luyÖn c«ng , kh«ng chØ lµ trë thµnh vèn tù ®Ö tö , cßn cã thÓ ","§¹i s­ ®İch ph©n phã , tiÓu tö thÕ nµo kh«ng d¸m tu©n theo !") 
if (HaveMagic(318) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(318,1) 
end 
if (HaveMagic(319) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(319,1) 
end 
if (HaveMagic(321) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(321,1) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Häc ®­îc ThiÕu L©m kü n¨ng # §¹t Ma ®é giang , hoµnh t¶o thiªn qu©n , v« t­íng chĞm . ") 
SetTask(122,255) 
else 
SetTask(122,245) -- script viet hoa By http://tranhba.com  ®¹t ®­îc danh väng ®İch thiÕt trİ thay ®æi l­îng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh väng t­ëng th­ëng # lín nhÊt 30 ®iÓm , tõ 100 cÊp khëi mçi cÊp ®Ö gi¶m 4% 
AddRepute(add_repute) 
Msg2Player("") 
Msg2Player("Cøu ra th­êng # lı hai ng­êi , cïng thiÖn t¨ng gi¶i hßa , hoµn thµnh ThiÕu L©m nhiÖm vô , danh väng gia t¨ng . "..add_repute.." ®iÓm .") 
AddNote("Cøu ra th­êng # lı hai ng­êi , cïng thiÖn t¨ng gi¶i hßa , hoµn thµnh ThiÕu L©m nhiÖm vô . ") 
end 
