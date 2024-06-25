-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y T¶ hé ph¸p ®oan méc duÖ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

-- script viet hoa By http://tranhba.com  cïng nhiÖm vô míi hÖ thèng t­¬ng quan söa ®æi ®i qua ®İch ®oan méc duÖ ch©n vèn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/01/20 

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\item\\skillbook.lua")

Include("\\script\\global\\skills_table.lua")

function main() 

-- script viet hoa By http://tranhba.com  nhiÖm vô míi hÖ thèng cïng tµ gi¸o chñ tuyÕn t­¬ng quan ch©n vèn -- script viet hoa By http://tranhba.com  

local myTaskValue = GetTask(1003) 
local myCamp = nt_getCamp() 

if (myTaskValue==360) then 
task_level60_01(); 
return 
end 


-- script viet hoa By http://tranhba.com  nhiÖm vô míi hÖ thèng cïng tµ gi¸o chñ tuyÕn t­¬ng quan ch©n vèn -- script viet hoa By http://tranhba.com  

UTask_tr = GetTask(4) 
Uworld123 = GetTask(123) 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 50*256) and (GetLevel() >= 50) then 
Say("<color=Red> tinh vß ®µn chñ ph­îng hÊp nh­ <color> bŞ tèng binh b¾t ®i , nhèt ë <color=Red> biÖn kinh <color> ®İch mét tßa <color=Red> thiÕt th¸p <color> bªn trong , nÕu nh­ tèng binh tõ trong miÖng h¾n Ğp hái ra bİ mËt g× , ®em ®èi víi bæn gi¸o nghiÖp lín hÕt søc bÊt lîi , v× vËy bÊt luËn sèng chÕt , ng­¬i ®Òu ph¶i ®em ph­îng hÊp nh­ cøu ra . ", 2,"Thuéc h¹ tu©n lÖnh /yes","Thuéc h¹ chØ kh«ng chŞu næi nµy ®¹i ®¶m nhiÖm /no") 
		elseif (UTask_tr == 50*256+50) then 
L50_prise() 
		elseif (UTask_tr > 50*256) and (UTask_tr < 50*256+50) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½50¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","<color=Red> biÖn kinh thiÕt th¸p <color> nhèt <color=Red> ph­îng hÊp nh­ <color> cã <color=Red> ba ®¹o c¬ quan <color>, më ra toµn bé c¬ quan lµ ®­îc cøu ra ph­îng hÊp nh­ , nhí , bÊt luËn sèng chÕt , còng tuyÖt kh«ng thÓ ®Ó cho ph­îng hÊp nh­ r¬i vµo ng­êi Tèng trong tay !") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô , ch­a xuÊt s­ # thiÕu tØnh ®èi tho¹i # 
Skill150Dialog("Ng­êi míi ®ang d¹y bªn trong th­êng cã , th¾ng b¹i ph¶i kh«ng cã thÓ ®­îc ") 
end 
elseif (Uworld123 == 60) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  ®­êng bÊt nhiÔm “ gi¸ häa mét trÇn ” nhiÖm vô 
if (GetTask(2) >= 70*256) and (GetTask(2) ~= 75*256) then -- script viet hoa By http://tranhba.com  §­êng m«n ®Ö tö hoÆc §­êng m«n xuÊt s­ ®İch míi cã thÓ häc ®­îc kü n¨ng 
Talk(11,"Uworld123_step4a","Chê l©u nh­ vËy , §­êng m«n bİ tŞch qu¶ nhiªn kh«ng c« phô ta !","A , qu¶ nhiªn lµ kh«ng khã , tiÕc nuèi lµ thiªn h¹ kh«ng ai nghÜ ®Õn .","§oan méc tiªn sinh , ng­¬i xem cã thÓ hiÓu §­êng m«n bİ tŞch dÆm vâ c«ng sao ? ","Bİ tŞch viÕt qu¸ râ liÔu , cã c¸i g× kh«ng hiÓu ?","ThËt lµ kh«ng d¸m giÊu giÕm , ta tr­íc sau nh×n rÊt İt s¸ch , v× vËy kh«ng hiÓu .","§· nh­ vËy , cã c¸i g× kh«ng hiÓu liÒn hái ta .","............","...............?","............","...............?") 
else 
Talk(1,"Uworld123_step4b","Chê l©u nh­ vËy , §­êng m«n bİ tŞch qu¶ nhiªn kh«ng c« phô ta !") 
end 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Skill150Dialog("Thµnh tùu ®¹i sù ng­êi , cÇn kh«ng c©u nÖ tiÓu tiÕt , vİ nh­ lµm chuyÖn g× còng tr«ng tr­íc tr«ng sau # sî ®Çu sî ®u«i , vËy th× c¸i g× còng lµm kh«ng ®­îc !") 
else 
Skill150Dialog("Vâ c«ng vèn v« ch¸nh tµ , chØ cã m¹nh yÕu . giang hå chuyÖn , cã thÓ ng­êi trë nªn , thiªn h¹ chi thÕ , c­êng gi¶ ch­ëng chi .") 
end 
end; 

function Skill150Dialog(szTitle) 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = format("<npc>%s", szTitle) 
G_TASK:OnMessage("Ngµy nhÉn ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function yes() 
Talk(1,"","<color=Red> biÖn kinh thiÕt th¸p <color> nhèt <color=Red> ph­îng hÊp nh­ <color> cã <color=Red> ba ®¹o c¬ quan <color>, më ra toµn bé c¬ quan lµ ®­îc cøu ra ph­îng hÊp nh­ , nhí , bÊt luËn sèng chÕt , còng tuyÖt kh«ng thÓ ®Ó cho ph­îng hÊp nh­ r¬i vµo ng­êi Tèng trong tay !") 
	SetTask(4, 50*256+20)
Msg2Player("ThÊy T¶ hé ph¸p ®oan méc duÖ , nhËn cøu ng­êi nhiÖm vô , ®Õn biÖn kinh thiÕt th¸p cøu ph­îng hÊp nh­ ") 
AddNote("ThÊy T¶ hé ph¸p ®oan méc duÖ , nhËn cøu ng­êi nhiÖm vô , ®Õn biÖn kinh thiÕt th¸p cøu ph­îng hÊp nh­ ") 
end; 

function no() 
Talk(1,"","Ng­¬i th©n lµ bæn gi¸o ch­ëng kú khiÕn cho , ngay c¶ chót chuyÖn nhá nµy còng lµm kh«ng ®­îc , nh­ thÕ nµo phôc chóng ?") 
end; 

function L50_prise() 
Talk(1,"","Ng­¬i mÆc dï lµ míi ®Ö tö , nh­ng lµ cã thÓ ®¶m ®­¬ng tr¸ch nhiÖm nÆng nÒ , bæn gi¸o rÊt cÇn gièng nh­ ng­¬i gièng nhau ng­êi , ta sÏ cïng gi¸o chñ nãi , cho ng­¬i s¾c phong .") 
SetRank(60) 
SetTask(4, 60*256) 
SetTask(21,0) -- script viet hoa By http://tranhba.com  sau khi dïng xong liÒn ®em phô trî thay ®æi l­îng thanh linh , liÒn víi sau nµy t¸i diÔn lîi dông 
-- script viet hoa By http://tranhba.com  AddMagic(143) 
add_tr(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i bŞ s¾c phong lµm ngµy nhÉn d¹y hé gi¸o khiÕn cho .") 
AddNote("Håi thiªn nhÉn d¹y thÊy T¶ hé ph¸p ®oan méc duÖ phôc mÖnh , hoµn thµnh cøu ng­êi nhiÖm vô , th¨ng lµm hé gi¸o khiÕn cho ") 
end; 

function Uworld123_step4a() 
DelItem(377) 
if (HaveMagic(339) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(339,1) 
end 
if (HaveMagic(302) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(302,1) 
end 
if (HaveMagic(342) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(342,1) 
end 
if (HaveMagic(351) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(351) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Ng­¬i häc ®­îc nhiÕp hån bãng tr¨ng , m­a sa lª hoa , cöu cung bay tinh !") 
Msg2Player("§oan méc duÖ tiÕp tôc mêi/xin ng­¬i ®i cho ®­êng bÊt nhiÔm b¸o tin .") 
SetTask(123,75) 
Talk(2,""," lµm phiÒn ng­¬i truyÒn lêi cho bÊt nhiÔm c«ng tö , nãi ®oan méc duÖ sÏ kh«ng ®Ó cho h¾n thÊt väng . ","H¶o , t¹i h¹ c¸m ¬n tiÒn bèi chØ gi¸o . ") 
end 

function Uworld123_step4b() 
DelItem(377) 
SetTask(123,70) 
Talk(1,"","RÊt tèt , lµm phiÒn ng­¬i truyÒn lêi cho bÊt nhiÔm c«ng tö , nãi ®oan méc duÖ sÏ kh«ng ®Ó cho h¾n thÊt väng . ") 
Msg2Player("§oan méc duÖ tiÕp tôc mêi/xin ng­¬i ®i cho ®­êng bÊt nhiÔm b¸o tin .") 
end 
