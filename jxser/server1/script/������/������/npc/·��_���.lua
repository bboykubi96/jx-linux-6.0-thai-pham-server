--Tham cau nam nhac tran
--S?a ng?a BMW ? th?m câu nam nh?c tr?n: edit by mcteam
-- script viet hoa By http://tranhba.com  ng­êi ®i ®­êng _ trÇm c©u nam nh¹c trÊn b¸n ®Æc thï m· (80 cÊp m· ) ®Ých NPC ch©n vèn 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-10) 

Include("\\script\\tong\\tong_header.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\activitysys\\npcfunlib.lua")

function main() 

dofile("script/Á½ºþÇø/ÄÏÔÀÕò/npc/Â·ÈË_Éò¾Ô.lua")

UWorld97 = GetTask(97) 
str, result = GetTong() 
-- script viet hoa By http://tranhba.com  if (UWorld97 >= 10) then -- script viet hoa By http://tranhba.com  ®· mua qua 
-- script viet hoa By http://tranhba.com  Talk(1,"","TrÇm c©u # ng­¬i nhÊt ®Þnh ph¶i thËt tèt ®èi ®·i con ngùa , mçi ngµy cÊp cho nã t¾m , ®Ëu bÝnh bªn trong muèn s¶m th­îng tinh mÆt ......") 
if (UWorld97 < 100) and (result == 1) and (GetTongFigure() == TONG_MASTER) then -- script viet hoa By http://tranhba.com  lµ bang chñ , kh«ng cã h­ëng thô qu¸ ­u ®·i mua m· 
SetTaskTemp(17,1000) 
else -- script viet hoa By http://tranhba.com  b×nh th­êng mua m· 
SetTaskTemp(17,1500) 
-- script viet hoa By http://tranhba.com  Talk(1,"","TrÇm c©u # thiªn lý m· th­êng cã , mµ b¸ nh¹c kh«ng th­êng cã . ®å h« # kh«ng biÕt sao #") 
end 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex); 
if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName); end 
local tbDailog = DailogClass:new(szNpcName); 
tbDailog.szTitleMsg = "<#><npc> ®¹i hiÖp ch¨n ngùa rÊt nhiÒu n¨m , chØ nh×n mét c¸i còng biÕt cã ®­îc hay kh«ng !" 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 
tbDailog:AddOptEntry("Khi ®ã lµ ng­¬i kªu ta ?", horse_get); 

tbDailog:Show(); 
end 

function horse_get() 
Talk(4,"sele_color","Anh hïng xin dõng b­íc . ","Huynh ®µi , cã c¸i g× muèn chØ gi¸o ®Ých ","T¹i h¹ lµ ThÈm C©u #, b©y giê cã mét thÊt tuÊn m·, cã thÓ bay ®i ngµn dÆm . vÞ nµy anh hïng phong th¸i bÊt phµm , nhÊt ®Þnh lµ cao thñ . ®¹i hiÖp ®Ých tuÊn m· ch­a tõng bÞ thÊt phu thuÇn phôc . ","§Ó cho ta thö nh×n tuÊn m· mét chót  ,,, ") 
end 

function sele_color() 
Say("Anh hïng nh×n ! ",6,"§©y kh«ng ph¶i lµ ¤ V©n §¹p TuyÕt sao !/buy_black","§©y kh«ng ph¶i lµ ngùa XÝch Thè sao ! /buy_red","§©y kh«ng ph¶i lµ TuyÖt ¶nh sao ! /buy_cyan","§©y kh«ng ph¶i lµ §Ých L« sao ! /buy_yellow","§©y kh«ng ph¶i lµ theo ChiÕu D¹ Ngäc S­ Tö sao ! /buy_white","§©y lµ c¸i g× m· ? ta häc thøc cã h¹n /buy_none") 
end 

function buy_black() 
the_buy(1) 
end 

function buy_red() 
the_buy(2) 
end 

function buy_cyan() 
the_buy(3) 
end 

function buy_yellow() 
the_buy(4) 
end 

function buy_white() 
--if GetCash() < 30000000 then
--Talk(1,"","cÇn cã 3000 v¹n míi mua ®­îc chiÕu d¹ !")
--return 
--end
--Pay(30000000)
--AddItem(0,10,5,5,0,0,0)
the_buy(5) 
end 

function buy_none() 
Talk(1,"","§øng ®Çu mét bang , lµ s­ tr­ëng cÊp ng­êi cña vËt cuèi cïng thÕ nµo còng kh«ng biÕt c¸i nµy lµ c¸i g× m· ? thËt kh«ng cã ý , xem ra ng­¬i xem sai lÇm råi !") 
end 

function the_buy(i) 
SetTaskTemp(49,i) 
x = GetTaskTemp(17) 
if (x == 3000) then 
Say("Kh«ng sai ! ng­¬i thËt lµ anh hïng . t¹i h¹ vèn lµ kh«ng muèn b¸n con ngùa nµy , nh­ng b©y giê tíi lóc gÊp rót cÇn 3000 v¹n , nh×n anh hïng còng thËt thÝch nã v× vËy kh¾c chÕ néi t©m kh«ng th«i b¸n cho anh hïng , hy väng anh hïng cã thÓ ®èi xö tö tÕ nã . ",2,"Ta nhÊt ®Þnh thËt tèt ®èi víi nã /buy_yes","NhÊt thêi ®i ®©u t×m nhiÒu tiÒn nh­ vËy /buy_no") 
else 
Say("Kh«ng sai ! ng­¬i thËt lµ anh hïng . t¹i h¹ vèn lµ kh«ng muèn b¸n con ngùa nµy , nh­ng b©y giê tíi lóc gÊp rót cÇn 3000 v¹n , nh×n anh hïng còng thËt thÝch nã v× vËy kh¾c chÕ néi t©m kh«ng th«i b¸n cho anh hïng , hy väng anh hïng cã thÓ ®èi xö tö tÕ nã ",2,"Ta nhÊt ®Þnh thËt tèt ®èi víi nã /buy_yes","NhÊt thêi ®i ®©u t×m nhiÒu tiÒn nh­ vËy /buy_no") 
end 
end 

function buy_yes() 
x = GetTaskTemp(17) 
if (GetCash() >= 3000 * 10000) then 
i = GetTaskTemp(49) 
if (x == 3000) then -- script viet hoa By http://tranhba.com  lµ gi¸ ­u ®·i mua , v× thay ®æi l­îng phó trÞ gi¸ , h¬n n÷a nhí mua lµ c¸i g× mµu s¾c m· 
			SetTask(97,100+i)
end 
Pay(3000 * 10000) 
AddItem(0,10,5,i,0,0,0) 
Talk(1,"","Con ngùa a con ngùa ! tõ nay vÒ sau ng­¬i liÒn theo vÞ nµy anh hïng , nhÊt ®Þnh ph¶i nghe lêi a !") 
else 
Talk(1,"","Ta trªn ng­êi b©y giê ng©n l­îng kh«ng ®ñ , ng­¬i cÇm tr­íc sè tiÒn nµy !") 
end 
end 

function buy_no() 
Talk(1,"","Ch¼ng lÏ lµ sè tiÒn nµy ®Ó cho anh hïng lµm khã ") 
end 
