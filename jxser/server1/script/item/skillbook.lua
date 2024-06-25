-- script viet hoa By http://tranhba.com  kü n¨ng 
IncludeLib("SETTING"); 
Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  ItemParticular={MagicID,IniLevel, NeedFaction, BookName, SkillName} 
local faction_skill_list = { 
[0] = {[90] = {318, 319, 321}, [120] = {709}, [150] = {1055, 1056, 1057},}, 
[1] = {[90] = {322, 325, 323}, [120] = {708}, [150] = {1058, 1059, 1060},}, 
[2] = {[90] = {339, 302, 342, 351,}, [120] = {710}, [150] = {1069, 1070, 1071, 1110},}, 
[3] = {[90] = {353, 355, 390}, [120] = {711}, [150] = {1066, 1067},}, 
[4] = {[90] = {380, 328, 332}, [120] = {712}, [150] = {1061, 1062, 1114},}, 
[5] = {[90] = {336, 337}, [120] = {713}, [150] = {1063, 1065},}, 
[6] = {[90] = {357, 359}, [120] = {714}, [150] = {1073, 1074}}, 
[7] = {[90] = {361, 362, 391}, [120] = {715}, [150] = {1075, 1076},}, 
[8] = {[90] = {365, 368}, [120] = {716}, [150] = {1078, 1079},}, 
[9] = {[90] = {372, 375, 394}, [120] = {717}, [150] = {1080, 1081},}, 
} 

sbook_list = 
{ -- script viet hoa By http://tranhba.com  c¸ch thøc #{ kü n¨ng ID, kü n¨ng cÊp bËc , bang ph¸i ID, cÇn cÊp bËc , kü n¨ng tªn s¸ch x­ng , kü n¨ng tªn } 
[27] = {302, 1, 2, 80, "' tô tµi b¾n cung . m­a sa lª hoa ' ","M­a sa lª hoa "}, 
[28] = {351, 0, 2, 80, "' vïi lÊp tÜnh thuËt . lo¹n ®¸nh tr¶ ' ", " lo¹n ®¸nh tr¶ "}, 
[33] = {365, 1, 8, 80,"Th¸i cùc quyÒn phæ - cuèn 3 ","Thiªn §Þa V« Cùc "}, 
[34] = {368, 1, 8, 80, "' Th¸i cùc quyÒn phæ - cuèn 2' ","Ng­êi kiÕm hîp nhÊt "}, 
[35] = {361, 1, 7, 80, "' v©n long kÝch . m©u ph¸p ' ","V©n long kÝch "}, 
[36] = {362, 1, 7, 80, "' l­u tinh . ®ao ph¸p ' ","Thiªn ngo¹i l­u tinh "}, 
[37] = {325, 1, 1, 80, "' Thiªn v­¬ng chïy ph¸p . cuèn 1' ","§uæi phong quyÕt "}, 
[38] = {323, 1, 1, 80,"Thiªn v­¬ng th­¬ng ph¸p - cuèn 2 ","§uæi tinh trôc th¸ng "}, 
[39] = {322, 1, 1, 80,"Thiªn v­¬ng ®ao ph¸p - cuèn 3 ","XÐ trêi chÐm "}, 
[40] = {336, 1, 5, 80, "' thóy khãi ®ao ph¸p ' ","B¨ng tïng v« ¶nh "}, 
[41] = {337, 1, 5, 80, "' thóy khãi song ®ao ' ","B¨ng t©m tiªn tö "}, 
[42] = {328, 1, 4, 80, "' diÖt kiÕm bÝ tÞch ","Ba nga ®ñ tuyÕt "}, 
[43] = {380, 1, 4, 80, "' Nga Mi phËt quang ch­ëng bÝ tÞch ' ","Phong s­¬ng bÓ ¶nh "}, 
[45] = {339, 1, 2, 80, "' phi ®ao thuËt . nhiÕp hån bãng tr¨ng ' ","NhiÕp hån bãng tr¨ng "}, 
[46] = {342, 1, 2, 80, "' phi tiªu thuËt . cöu cung bay tinh ' ","Cöu cung bay tinh "}, 
[47] = {353, 1, 3, 80, "' n¨m ®éc ch­ëng ph¸p . cuèn 1' ", "# ©m d­¬ng thùc cèt "}, 
[48] = {355, 1, 3, 80, "' n¨m ®éc ®ao ph¸p . cuèn 2' ","HuyÒn ©m chÐm "}, 
[49] = {390, 0, 3, 80, "' n¨m ®éc nhiÕp t©m thuËt . cuèn 3' ", "# ®o¹n g©n hñ cèt "}, 
[50] = {372, 1, 9, 80, "' ngù phong thuËt ' ","Ng¹o tuyÕt tiªu ngän nói "}, 
[51] = {375, 1, 9, 80, "' ngù l«i thuËt ' ", " l«i ®éng cöu thiªn "}, 
[52] = {394, 0, 9, 80, "' ngù t©m thuËt ' ","Say tiªn ®¸nh cèt "}, 
[53] = {391, 0, 7, 80,"NhiÕp hån - nguyÒn rña ","NhiÕp hån lo¹n t©m "}, 
[54] = {357, 1, 6, 80, "' C¸i Bang ch­ëng ph¸p ' ","Phi long ë trªn trêi "}, 
[55] = {359, 1, 6, 80,"C¸i Bang c«n ph¸p ","Thiªn h¹ v« chã "}, 
[56] = {318, 1, 0, 80, "' ThiÕu L©m quyÒn ph¸p . cuèn 1' ","§¹t Ma ®é giang "}, 
[57] = {319, 1, 0, 80, "' ThiÕu L©m c«n ph¸p . cuèn 2' ","Hoµnh t¶o thiªn qu©n "}, 
[58] = {321, 1, 0, 80, "' ThiÕu L©m ®ao ph¸p . cuèn 3' ","V« t­íng chÐm "}, 
[59] = {332, 0, 4, 80, "' phæ ®é bÝ tÞch ' ","Phæ ®é chóng sanh "}, 
} 

function CheckIsCanGet150SkillTask() 
if 1==1 then
return
end
-- script viet hoa By http://tranhba.com  më ra nhiÖm vô nhËn 150 kü n¨ng - Modified By NgaVN - 20121207 
local nValue = GetTask(2885) 
if nValue > 0 then 
return 
end 
-- script viet hoa By http://tranhba.com  söa ch÷a ®¹t ®­îc 150 kü n¨ng nhiÖm vô cÇn sèng l¹i 2 lÇn trë lªn - Modified By NgaVN - 20121207 
local nTransLife = ST_GetTransLifeCount() 
local nHaveTSFlag = 0; 
if(nTransLife > 1 ) then 
nHaveTSFlag = 1 
end 

local nFact = GetLastFactionNumber() 
if nFact == nil or nFact < 0 or nFact > 9 then 
return 
end 
local tb90Skill = %faction_skill_list[nFact][90] 
local nHave90SkillFlag = 0 
for i = 1, getn(tb90Skill) do 
if HaveMagic(tb90Skill[i]) >= 0 then 
nHave90SkillFlag = 1 
break 
end 
end 
local tb120Skill = %faction_skill_list[nFact][120] 
local nHave120SkillFlag = 0 
for i = 1, getn(tb120Skill) do 
if HaveMagic(tb120Skill[i]) >= 0 then 
nHave120SkillFlag = 1 
break 
end 
end 
local tb150Skill = %faction_skill_list[nFact][150] 
local nHave150SkillFlag = 0 
for i = 1, getn(tb150Skill) do 
if HaveMagic(tb150Skill[i]) >= 0 then 
nHave150SkillFlag = 1 
break 
end 
end 
if nHave150SkillFlag == 0 then 
if nHaveTSFlag ==1 and nHave90SkillFlag == 1 and nHave120SkillFlag == 1 and GetLevel() >= 150 then 
Msg2Player("<color=yellow> b©y giê ng­¬i cã thÓ nhËn 150 cÊp kü n¨ng nhiÖm vô <enter>") 
else 
local szMsg = " ng­¬i nghÜ nhËn 150 cÊp kü n¨ng nhiÖm vô cÇn " 
local nFlag = 0 

if nHave90SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s häc ®­îc 90 kü n¨ng ", szMsg) 
nFlag = 1 
end 
if nHave120SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s häc ®­îc 120 cÊp kü n¨ng ", szMsg) 
nFlag = 1 
end 

-- script viet hoa By http://tranhba.com - söa ch÷a ®¹t ®­îc 150 kü n¨ng nhiÖm vô cÇn sèng l¹i 2 lÇn trë lªn - Modified By NgaVN - 20121207 
if nHaveTSFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s sèng l¹i 2 lÇn trë lªn ", szMsg) 
nFlag = 1 
end 

if GetLevel() < 150 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s ®¹t tíi 150 cÊp ", szMsg) 
nFlag = 1 
end 
szMsg = format("<color=yellow>%s<color>", szMsg) 
Msg2Player(szMsg) 
end 
end 
end 

function LearnSkillByBook(index, list) 

if(GetLastFactionNumber() ~= list[index][3]) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chØ ®Þnh m«n ph¸i 
Msg2Player("Ng­¬i cÇm "..list[index][5].." nghiªn cøu ®· l©u , kÕt qu¶ cßn lµ c¸i g× còng kh«ng cã lÜnh ngé ") 
return 1 
end 
if(GetLevel() < list[index][4]) then -- script viet hoa By http://tranhba.com  nh­ng ch­a tíi chØ ®Þnh cÊp bËc 
Msg2Player("Ng­¬i cÇm "..list[index][5].." nghiªn cøu ®· l©u , kÕt qu¶ lÜnh héi rÊt Ýt . ") 
return 1 
end 
if HaveMagic(list[index][1]) >= list[index][2] then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· cÇm "..list[index][5].." nghÜ tíi nghÜ lui , nh­ng lµ còng kh«ng cã häc ®­îc c¸i g× # ") 
return 1 
end 

AddMagic(list[index][1], list[index][2]) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 

CheckIsCanGet150SkillTask() 

WriteLog(date("%H%M%S")..": tr­¬ng môc :"..GetAccount()..", nhiÖm vô :"..GetName()..", sö dông : "..list[index][5].." ®· häc ®­îc : "..list[index][6]); 
Msg2Player("§· häc ®­îc kü n¨ng "..list[index][6].."'. ") 
return 0 

end 

function main(sel) 
Genre, DetailType, Particular=GetItemProp(sel) 
return LearnSkillByBook(Particular, sbook_list); 
end 

-- script viet hoa By http://tranhba.com  më ra nhiÖm vô nhËn 150 cÊp kü n¨ng - Modified By NgaVN - 20121207 
if login_add then login_add(CheckIsCanGet150SkillTask, 2) end
