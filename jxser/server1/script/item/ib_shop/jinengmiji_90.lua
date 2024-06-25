-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##jinengmiji_90.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### c¸c m«n ph¸i bİ tŞch , cã thÓ häc tËp 90 cÊp kü n¨ng 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-12 15:59:01 

Include("\\script\\dailogsys\\dailogsay.lua")
-- script viet hoa By http://tranhba.com # ThiÕu L©m 0 Thiªn v­¬ng 1 §­êng m«n 2 n¨m ®éc 3 Nga Mi 4 thóy khãi 5 C¸i Bang 6 ngµy nhÉn 7 Vâ §­¬ng 8 C«n L«n 9# 
sbook_list = 
{ -- script viet hoa By http://tranhba.com  c¸ch thøc #{ kü n¨ng ID, kü n¨ng cÊp bËc , bang ph¸i ID, cÇn cÊp bËc , kü n¨ng tªn s¸ch x­ng , kü n¨ng tªn } 
[2959] = { 
{318, 1, 0, 80,"ThiÕu L©m bİ tŞch ","ThiÕu L©m ch­ëng ph¸p - §¹t Ma ®é giang "}, 
{319, 1, 0, 80,"ThiÕu L©m bİ tŞch ","ThiÕu L©m c«n ph¸p - hoµnh t¶o thiªn qu©n "}, 
{321, 1, 0, 80,"ThiÕu L©m bİ tŞch ","ThiÕu L©m ®ao ph¸p - v« t­íng chĞm "}, 
}, 
[2960] = { 
{322, 1, 1, 80,"Thiªn v­¬ng bİ tŞch ","Thiªn v­¬ng ®ao ph¸p - xĞ trêi chĞm "}, 
{323, 1, 1, 80,"Thiªn v­¬ng bİ tŞch ","Thiªn v­¬ng th­¬ng ph¸p - ®uæi tinh trôc th¸ng "}, 
{325, 1, 1, 80,"Thiªn v­¬ng bİ tŞch ","Thiªn v­¬ng chïy ph¸p - ®uæi phong quyÕt "}, 
}, 
[2961] = { 
{339, 1, 2, 80,"§­êng m«n bİ tŞch ","§­êng m«n phi ®ao - nhiÕp hån bãng tr¨ng "}, 
{302, 1, 2, 80,"§­êng m«n bİ tŞch ","§­êng m«n tô tiÕn - m­a sa lª hoa "}, 
{342, 1, 2, 80,"§­êng m«n bİ tŞch ","§­êng m«n phi tiªu - cöu cung bay tinh "}, 
{351, 0, 2, 80,"§­êng m«n bİ tŞch ","§­êng m«n ngËm tÜnh - lo¹n ®¸nh tr¶ "}, 
}, 
[2962] = { 
{353, 1, 3, 80,"N¨m ®éc bİ tŞch ","N¨m ®éc ch­ëng ph¸p - ©m phong thùc cèt "}, 
{355, 1, 3, 80,"N¨m ®éc bİ tŞch ","N¨m ®éc ®ao ph¸p - huyÒn ©m chĞm "}, 
{390, 0, 3, 80,"N¨m ®éc bİ tŞch ","N¨m ®éc nhiÕp t©m thuËt - ®o¹n g©n hñ cèt "}, 
}, 
[2963] = { 
{328, 1, 4, 80,"Nga Mi bİ tŞch ","Nga Mi kiÕm ph¸p - ba nga ®ñ tuyÕt "}, 
{380, 1, 4, 80,"Nga Mi bİ tŞch ","Nga Mi ch­ëng ph¸p - phong s­¬ng bÓ ¶nh "}, 
{332, 0, 4, 80,"Nga Mi bİ tŞch h","Nga Mi phæ ®é - phæ ®é chóng sanh "}, 
}, 
[2964] = { 
{336, 1, 5, 80,"Thóy khãi bİ tŞch ","Thóy khãi ®ao ph¸p - b¨ng tïng v« ¶nh "}, 
{337, 1, 5, 80,"Thóy khãi bİ tŞch ","Thóy khãi song ®ao - b¨ng t©m tiªn tö "}, 
}, 
[2965] = { 
{357, 1, 6, 80,"C¸i Bang bİ tŞch ","C¸i Bang ch­ëng ph¸p - phi long ë trªn trêi "}, 
{359, 1, 6, 80,"C¸i Bang bİ tŞch ","C¸i Bang c«n ph¸p - thiªn h¹ v« chã "}, 
}, 
[2966] = { 
{361, 1, 7, 80,"Ngµy nhÉn bİ tŞch ","Ngµy nhÉn m©u ph¸p - v©n long kİch "}, 
{362, 1, 7, 80,"Ngµy nhÉn bİ tŞch ","Ngµy nhÉn ®ao ph¸p - Thiªn Ngo¹i L­u Tinh "}, 
{391, 0, 7, 80,"Ngµy nhÉn bİ tŞch ","Ngµy nhÉn chó thuËt - nhiÕp hån lo¹n t©m "}, 
}, 
[2967] = { 
{365, 1, 8, 80,"Vâ §­¬ng bİ tŞch ","Vâ §­¬ng ch­ëng ph¸p - ng¹o tuyÕt tiªu ngän nói "}, 
{368, 1, 8, 80,"Vâ §­¬ng bİ tŞch ","Vâ §­¬ng kiÕm ph¸p - ng­êi kiÕm hîp nhÊt "}, 
}, 
[2968] = { 
{372, 1, 9, 80,"C«n L«n bİ tŞch ","C«n L«n ngù phong - ng¹o tuyÕt tiªu ngän nói "}, 
{375, 1, 9, 80,"C«n L«n bİ tŞch ","C«n L«n ngù long - l«i ®éng cöu thiªn "}, 
{394, 0, 9, 80,"C«n L«n bİ tŞch ","C«n L«n ngù t©m - say tiªn ®¸nh cèt "}, 
}, 
} 

function LearnSkillByBook(index, list, nItemIndex, nPlayerIndex) 

if(GetLastFactionNumber() ~= list[index][3]) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chØ ®Şnh m«n ph¸i 
Msg2Player("Ngµi cÇm "..list[index][5].." nghiªn cøu nöa ngµy , kÕt qu¶ còng lÜnh héi kh«ng tíi c¸i g× ") 
return 1 
end 
if(GetLevel() < list[index][4]) then -- script viet hoa By http://tranhba.com  nh­ng ch­a tíi chØ ®Şnh cÊp bËc 
Msg2Player("Ngµi cÇm "..list[index][5].." nghiªn cøu nöa ngµy , kÕt qu¶ lÜnh héi mét chót . ") 
return 1 
end 
if(HaveMagic(list[index][1]) ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ngµi ®· cÇm "..list[index][5].." nghiªn cøu tíi nghiªn cøu ®i , nh­ng lµ còng kh«ng cã häc ®­îc c¸i g× # ") 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n tr­íc mÆt ®İch vËt phÈm lµ hay kh«ng v× ThiÕu L©m bİ tŞch , lµ lµ tr­íc thñ tiªu , sau gia t¨ng kü n¨ng 
if CallPlayerFunction(nPlayerIndex, IsMyItem, nItemIndex) ~= 1 then 
return 
end 
if CallPlayerFunction(nPlayerIndex, RemoveItemByIndex, nItemIndex) ~= 1 then 
WriteLog("Bu«ng tha cho ThiÕu L©m bİ tŞch thÊt b¹i ") 
return 
end 

AddMagic(list[index][1], list[index][2]) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 

WriteLog(date("%H%M%S")..": tr­¬ng môc :"..GetAccount()..", nh©n vËt :"..GetName()..", sö dông : "..list[index][5].." ®· häc ®­îc : "..list[index][6]); 
Msg2Player("§· häc ®­îc kü n¨ng "..list[index][6].."'. ") 
return 0 
end 

function selectskill(list, nItemIndex, nPlayerIndex) 
local szTitle = " ®¹i hiÖp muèn häc lo¹i nµo kü n¨ng " 
local tbOpt = {} 
for index,v in list do 
tinsert(tbOpt, {v[6], LearnSkillByBook, {index, list, nItemIndex, PlayerIndex}}) 
end 
tinsert(tbOpt, {"NhiÖm vô suy nghÜ thËt kü ", cancel}) 
CreateNewSayEx(szTitle, tbOpt) 
end 

function main(nItemIndex) 
Genre, DetailType, Particular=GetItemProp(nItemIndex) 
selectskill(sbook_list[Particular], nItemIndex, PlayerIndex) 
return 1 
end 
