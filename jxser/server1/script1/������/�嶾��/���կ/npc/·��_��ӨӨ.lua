-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC ®éc tiªn tö b¹ch o¸nh o¸nh 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

Include("\\script\\global\\skills_table.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ngay c¶ cã mét Ýt ngu xuÈn kh«ng biÕt sèng chÕt , ch¼ng lÏ h­íng bæn tiªn tö cßn trÎ nh­ vËy ®Ñp còng cã lçi sao ?" 
G_TASK:OnMessage("N¨m ®éc ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta tíi t×m ng­¬i kh¸c biÖt chuyÖn cña t×nh ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_wu = GetTask(10) 
Uworld50 = GetTask(50) 
if (Uworld50 == 20) then -- script viet hoa By http://tranhba.com  ®¸nh thøc tõ Trung Nguyªn nhiÖm vô 
Talk(6,"Uworld50_20","B¹ch c« n­¬ng ! tõ x­a ch¸nh tµ bÊt l­ìng lËp , tõ ®¹i nh¹c hy väng c« n­¬ng cã thÓ rêi ®i tõ Trung Nguyªn ","Rêi ®i lêi cña h¾n ta sèng cßn cã c¸i g× ý nghÜa ? v× cïng h¾n cã thÓ lín lªn t­ thñ ta ®· söa l¹i rÊt nhiÒu , t¹i sao c¸c ng­¬i còng kh«ng thÊy ®­îc ®©y ? ","Ng­¬i thËt muèn c¶i lêi lÖnh t«n ®Ých quyÕt ®Þnh sao ?","Ta chØ muèn sím ngµy cïng Trung Nguyªn ®¹i ca thµnh th©n , sau liÒn thèi lui ra giang hå chuyªn t©m chiÕu cè l·o c«ng hµi tö , kh«ng hÒ n÷a hái tíi lo¹n thÕ chuyÖn , nh­ vËy cã téi g× ®©y ?","ThËt lµ nh­ vÇy ph¶i kh«ng ? ","¤ng trêi ë trªn cao , nh­ tiÓu n÷ cã nöa c©u h­ nãi liÒn bÞ thiªn l«i ®¸nh mµ chÕt , tiÓu n÷ kh«ng cã chót nµo c©u o¸n hËn ") 
elseif (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 20*256+10) then
i = GetItemCount(85) -- script viet hoa By http://tranhba.com  ®Çu ng­êi 
if (i >= 7) then 
Talk(1,"L20_prise","Tiªn tö , thuéc h¹ ®· ®em la tiªu b¶y quû ®Ých ®Çu cho ng­¬i ®­a tíi ") 
else 
Talk(1,"","Ng­¬i kh«ng ph¶i ®i la tiªu nói thÕ nµo cßn cã mÆt mòi ë n¬i nµy ?") 
end 
elseif ((UTask_wu == 20*256) and (GetLevel() >= 20)) then -- script viet hoa By http://tranhba.com 20 cÊp nhiÖm vô 
Talk(4,"L20_get","Uy , míi tíi # cã hiÓu quy cñ hay kh«ng a . l©u nh­ vËy , thÕ nµo cßn kh«ng cã nép lªn “ ®Çu ng­êi tr¹ng ” tíi nha ","Ng­êi nµo ®Çu tr¹ng ? ","ChÝnh lµ cïng bæn gi¸o lµ ®Þch ng­êi cña ®Ých ®Çu ","Thuéc h¹ ngu ®én , kÝnh xin tiªn tö nhiÒu h¬n chØ ®iÓm ") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Skill150Dialog("Ngay c¶ cã mét Ýt ngu xuÈn kh«ng biÕt sèng chÕt , ch¼ng lÏ h­íng bæn tiªn tö cßn trÎ nh­ vËy ®Ñp còng cã lçi sao ?") 
end 
else 
Skill150Dialog("Nh÷ng nam nh©n kia kh«ng mêi mµ tíi , ®èi víi bän hä kh¸ mét chót liÒn mét hai ®Ých m×nh b¸n m¹ng cho ta .") 
end 
end; 

function Skill150Dialog(szTitle) 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = format("<npc>%s", szTitle) 
G_TASK:OnMessage("B¹ch o¸nh o¸nh ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 


function L20_get() 
Say(" la tiªu b¶y quû mét mùc thÌm thuång bæn tiªn tö ®Ých s¾c ®Ñp , thËt lµ con cãc ghÎ muèn ¨n thÞt thiªn nga # ng­¬i th­îng mét chuyÕn la tiªu s¬n , ®em bän hä giÕt cho ta liÔu ",2," lµ # thuéc h¹ c¸i nµy ®i lÊy bän hä ®Çu ng­êi . /L20_get_yes","Thuéc h¹ vâ c«ng qu¸ kÐm , sî r»ng . /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1, "","VËy ta ë n¬i nµy mµ chê tin tøc tèt cña ng­¬i la ") 
	SetTask(10,20*256+10)
AddNote("V× b¹ch o¸nh o¸nh ®Õn la tiªu s¬n giÕt la tiªu b¶y quû ") 
Msg2Player("V× b¹ch o¸nh o¸nh ®Õn la tiªu s¬n giÕt la tiªu b¶y quû ") 
end; 

function L20_get_no() 
Talk(1,"","Ta còng biÕt ng­¬i lµ mét quû nh¸t gan , thËt v« dông !") 
end; 

function L20_prise() 
Talk(1,""," l¹c l¹c l¹c l¹c , thËt tèt ch¬i , ng­¬i rÊt cã b¶n l·nh sao , h¶o , bæn tiªn tö ®øng ra b¶o ®¶m , th¨ng ng­¬i v× ®ßi m¹ng sø gi¶ ") 
i = GetItemCount(85) -- script viet hoa By http://tranhba.com  ®Çu ng­êi 
for j = 1,i do DelItem(85) end 
SetTask(10,30*256) 
SetRank(51) 
-- script viet hoa By http://tranhba.com  AddMagic(70) 
-- script viet hoa By http://tranhba.com  AddMagic(66) 
add_wu(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i ®¹t ®­îc ®ßi m¹ng sø gi¶ ®Ých danh hiÖu , häc vâ c«ng xÝch viªm thùc ngµy , t¹p khã kh¨n thuèc tr¶i qua ") 
AddNote("V× b¹ch o¸nh o¸nh ®i giÕt la tiªu b¶y quû , bÞ ®ãng cöa v× # ®ßi m¹ng sø gi¶ ") 
end; 

function Uworld50_20() 
SetTask(50,30) 
Msg2Player("Nghe b¹ch o¸nh o¸nh lêi cña ng­¬i rÊt c¶m ®éng còng th­¬ng t©m , nh­ng lµ kh«ng biÕt lµm sao b©y giê ") 
end 
