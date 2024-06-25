-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC kim xµ tr¹i chñ v©n kh«ng tµ 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 
-- script viet hoa By http://tranhba.com  update by: xiaoyang(2004\4\13) gia nhËp 90 cÊp m«n ph¸i nhiÖm vô 

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
tbDailog.szTitleMsg = "<npc> chóng ta Ngò ®éc gi¸o cã v« sè lo¹i ®éc d­îc , cã mét Ýt ®éc d­îc lµ dïng mÊy tr¨m lo¹i ®éc vËt luyÖn thµnh , lo¹i nµy mËt luyÖn ®Ých ®éc chØ cÇn ®ông ph¶i mét chót xÝu sÏ kh«ng lät dÊu vÕt chÕt ®i " 
G_TASK:OnMessage("N¨m ®éc ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta tíi t×m ng­¬i kh¸c biÖt chuyÖn cña t×nh ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_wu = GetTask(10) 
Uworld124 = GetTask(124) 
if(GetSeries() == 1) and (GetFaction() == "wudu") then 
		if((UTask_wu == 40*256+10) and (HaveItem(143) == 1)) then		-- script viet hoa By http://tranhba.com  ÈÎÎñ½øÐÐÖÐ
L40_prise() 
elseif((UTask_wu == 40*256) and (GetLevel() >= 40)) then -- script viet hoa By http://tranhba.com 40 cÊp nhiÖm vô 
Say("Ng­¬i ®Õn kim m¸u r¾n ®µm ®i cho ta b¾t mét c¸i m¾t kiÕng v­¬ng m·ng xµ tíi , ta muèn hót m¸u cña nã tíi t¨ng c­êng c«ng lùc ",2,"Tu# l#h!/L40_get_yes","Thuéc h¹ cßn cã mét chuyÖn . /L40_get_no") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Skill150Dialog("§©y lµ mét c­êng gi¶ sinh tån ®Ých thÕ giíi , nÕu muèn tiÕp tôc ho¹t h·y mau luyÖn c«ng ®i !") 
end 
elseif (Uworld124 == 10) then 
Talk(9,"Uworld_envelop","V©n kh«ng tµ ","Ng­êi nµo ! thËt lµ mét ®Ñp trai ! t×m tiÓu v©n cã chuyÖn g× kh«ng ?","Mau ®­a ©m d­¬ng c­êi gi¶i d­îc lÊy ra !","Nguyªn lai lµ muèn lµm anh hïng ng­êi a ! ®­îc råi ! chØ cÇn ng­¬i ë ®©y theo ta nªn c¸i g× còng cã thÓ ","Phi # ng­¬i lµ mét ©m hiÓm ®éc ¸c ng­êi #, nÕu lµ kh«ng ®em gi¶i d­îc lÊy ra , kia ng­êi kh¸c ngay c¶ thi thÓ cña ng­¬i còng kh«ng nhËn ra ®­îc !","Hõ # ng­¬i thËt lµ kh«ng biÕt ®iÒu # tèt l¾m , ta ®©y cã mét phong th¬ , ng­¬i gióp ta mang tíi §­êng m«n giao cho tuyÖt xu©n tÈu ®­êng d· , sau ng­¬i sÏ bÞ ®Õn ng­¬i muèn ®Ých . ","Ta dùa vµo c¸i g× tin/th¬ ng­¬i ?"," l·o tö ë trªn giang hå còng lµ cã xó danh ®Ých . ng­¬i cã thÓ ®i hái mét chót nh×n , ta cßn lµ biÕt tin/th¬ ch÷ viÕt nh­ thÕ nµo ®Ých ","T¹m thêi tin t­ëng h¾n ") 
elseif (Uworld124 == 20 ) and (HaveItem(385) == 0) then 
Talk(1,"","B»ng h÷u ! ®õng nãng véi ! ta tin/th¬ cßn kh«ng cã mang , ng­¬i dïng c¸i g× ®i gÆp ®­êng d· ") 
AddEventItem(385) 
Msg2Player("NhËn lÊy v©n kh«ng tµ ®Ých tin/th¬ ") 
elseif (Uworld124 == 30) and (HaveItem(386) == 1) then 
DelItem(386) 
SetTask(124,35) 
Talk(5,"Uworld124_jump","C¸i g× ?","BÞ h¾n ph¸t hiÖn trong ®ã cã ®éc !","§iÒu nµy sao cã thÓ # ta h¹ ®éc hÕt søc cÈn thËn , h¾n lµm sao sÏ ph¸t hiÖn ®©y !","A !... ë n¬i nµy phong th­ th­îng cßn cã mét lo¹i kh¸c kú ®éc !","V©n kh«ng tµ # h¹i ng­êi cuèi cïng cã bÞ h¹i lóc # ng­¬i sèng kh«ng qu¸ h«m nay !") 
elseif (Uworld124 == 35) then 
Talk(1,"Uworld124_jump","Tíi ®©y ! tíi cïng tiÓu v©n cïng nhau ch¬i ®ïa !") 
elseif (Uworld124 == 40) and (HaveItem(387) == 0) then 
SetTask(124,35) 
Talk(2,"Uworld124_jump","V©n l·o tÆc ! mau ®­a mét lo¹i kh¸c gi¶i d­îc lÊy ra !","Phi # ta nhÊt thêi s¬ sãt míi trung liÔu ng­¬i kÕ # kh«ng muèn väng t­ëng # nh×n c¸i nµy ! ") 
elseif (Uworld124 >= 40) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh 
Talk(1,"","Ng­¬i thËt lµ ¸c ®éc ! ") 
else 
Skill150Dialog("Chóng ta Ngò ®éc gi¸o cã v« sè lo¹i ®éc d­îc , cã mét Ýt ®éc d­îc lµ dïng mÊy tr¨m lo¹i ®éc vËt luyÖn thµnh , lo¹i nµy mËt luyÖn ®Ých ®éc chØ cÇn ®ông ph¶i mét chót xÝu sÏ kh«ng lät dÊu vÕt chÕt ®i ") 
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
G_TASK:OnMessage("V©n kh«ng tµ ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function L40_get_yes() 
Talk(1,"","RÊt tèt , nhí tr­íc t×m mét khèi x¹ h­¬ng , nÕu kh«ng ng­¬i chÕ kh«ng ®­îc nã ") 
	SetTask(10,40*256+10)
AddNote("TiÕn vµo kim m¸u r¾n ®µm cho v©n kh«ng tµ b¾t m¾t kiÕng v­¬ng m·ng xµ ") 
Msg2Player("TiÕn vµo kim m¸u r¾n ®µm cho v©n kh«ng tµ b¾t m¾t kiÕng v­¬ng m·ng xµ ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(1,"","Ng­¬i nh­ng lµ sè Ýt mÊy tiÕn vµo kim m¸u r¾n ®µm sau cã thÓ cßn sèng ra ngoµi ng­êi , xem ra cßn cã chót b¶n l·nh ") 
SetTask(10,50*256) 
DelItem(143) 
SetRank(53) 
-- script viet hoa By http://tranhba.com  AddMagic(356) 
-- script viet hoa By http://tranhba.com  AddMagic(73) 
add_wu(50) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i !: tÊn th¨ng lµm : v« ®çng la s¸t ! häc ®­îc vâ c«ng # thiªn c­¬ng ®Þa s¸t tay # xuyªn tim gai ®éc # v¹n cæ thùc t©m ") 
AddNote("TiÕn vµo kim m¸u r¾n ®µm b¾t m¾t kiÕng v­¬ng m·ng xµ , cã thÓ tÊn th¨ng lµm v« ®çng la s¸t ") 
end; 

function Uworld_envelop() 
AddEventItem(385) 
SetTask(124,20) 
Msg2Player("TiÕp nhËn v©n kh«ng tµ ®Ých th­ ") 
AddNote("TiÕp nhËn v©n kh«ng tµ ®Ých th­ , ®i t×m ®­êng d· ") 
end 

function Uworld124_jump() 
SetFightState(1) 
NewWorld(234,1616,3195) 
end 
