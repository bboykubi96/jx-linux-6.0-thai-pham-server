--Hoc kinh khong tai vo su
-- script viet hoa By http://tranhba.com  tay míi th«n häc khinh c«ng nhiÖm vô vò s­ m« b¶n 
-- script viet hoa By http://tranhba.com  nhiÖm vô yªu cÇu : cÊp bËc (>=2), kim tiÒn (>=100 hai ) 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-11-04) 
IncludeLib("ITEM") 
IncludeLib("SETTING") 
Include("\\script\\lib\\basic.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")


function learn() 
UTask_world32 = GetTask(32) -- script viet hoa By http://tranhba.com  luyÖn khinh c«ng nhiÖm vô 
-- script viet hoa By http://tranhba.com  Task0025 = GetTaskTemp(25) -- script viet hoa By http://tranhba.com  ®¸nh c¸i céc gç / bao c¸t / méc nh©n ®Õm hÕt ( t¹m thêi thay ®æi l­îng ) 
Uworld1000 = GetTask(1000) 
Uworld1067 = nt_getTask(1067) 

local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tbDailog.szTitleMsg = DescLink_WuShi.."<#>: trªn giang hå ¸nh ®ao huyÕt ¶nh , kiÕm khÝ næi lªn bèn phÝa , ta l·o l¹c , kh«ng cã trÎ tuæi hËu sinh nh­ vËy liÒu m¹ng kÐo , ng­êi chÝnh lµ nh­ vËy , nhiÒu canh c¸nh , lµm viÖc t×nh ®Ých thêi ®iÓm sÏ kh«ng cã quyÕt tuyÖt . h¶i , kh«ng nãi c¸i nµy kÐo . ng­¬i t×m ta cã chuyÖn g× kh«ng ? " 
tbDailog:AddOptEntry("Ta ®ang lµm nhiÖm vô s¬ nhËp , ®Õn t×m ngµi gióp mét tay ", education_wushi) 
tbDailog:AddOptEntry("Ta chç nµy cã c¸ b¸n tiªn thÞt ®Ých nhiÖm vô ", education_collectmeat) 
tbDailog:AddOptEntry("Ta muèn h­íng ngµi häc tËp khinh c«ng ", education_fly) 
if ( Uworld1067 < 10 ) and ( Uworld1000 > 200 ) then 
-- script viet hoa By http://tranhba.com tbDailog.szTitleMsg = DescLink_WuShi.."<#>: trªn giang hå ¸nh ®ao huyÕt ¶nh , kiÕm khÝ næi lªn bèn phÝa , ta l·o l¹c , kh«ng cã trÎ tuæi hËu sinh nh­ vËy liÒu m¹ng kÐo , ng­êi chÝnh lµ nh­ vËy , nhiÒu canh c¸nh , lµm viÖc t×nh ®Ých thêi ®iÓm sÏ kh«ng cã quyÕt tuyÖt . h¶i , kh«ng nãi c¸i nµy kÐo . ng­¬i t×m ta cã chuyÖn g× kh«ng ? " 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta ®ang lµm nhiÖm vô s¬ nhËp , ®Õn t×m ngµi gióp mét tay ", education_wushi) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta chç nµy cã c¸ b¸n tiªn thÞt ®Ých nhiÖm vô ", education_collectmeat) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta muèn h­íng ngµi häc tËp khinh c«ng ", education_fly) 
tbDailog:AddOptEntry("Ta muèn häc tËp ngò hµnh kü n¨ng ", education_changewuxing) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Kh«ng cã g× , tïy tiÖn chuyÓn ng­îc l¹i ®· ", no) 
else 
-- script viet hoa By http://tranhba.com tbDailog.szTitleMsg = DescLink_WuShi.."<#>: trªn giang hå ¸nh ®ao huyÕt ¶nh , kiÕm khÝ næi lªn bèn phÝa , ta l·o l¹c , kh«ng cã trÎ tuæi hËu sinh nh­ vËy liÒu m¹ng kÐo , ng­êi chÝnh lµ nh­ vËy , nhiÒu canh c¸nh , lµm viÖc t×nh ®Ých thêi ®iÓm sÏ kh«ng cã quyÕt tuyÖt . h¶i , kh«ng nãi c¸i nµy kÐo . ng­¬i t×m ta cã chuyÖn g× kh«ng ? " 

-- script viet hoa By http://tranhba.com Describe(DescLink_WuShi.."<#>: trªn giang hå ¸nh ®ao huyÕt ¶nh , kiÕm khÝ næi lªn bèn phÝa , ta l·o l¹c , kh«ng cã trÎ tuæi hËu sinh nh­ vËy liÒu m¹ng kÐo , ng­êi chÝnh lµ nh­ vËy , nhiÒu canh c¸nh , lµm viÖc t×nh ®Ých thêi ®iÓm sÏ kh«ng cã quyÕt tuyÖt . h¶i , kh«ng nãi c¸i nµy kÐo . ng­¬i t×m ta cã chuyÖn g× kh«ng ? ", 
-- script viet hoa By http://tranhba.com 4,"Ta ®ang lµm nhiÖm vô s¬ nhËp , ®Õn t×m ngµi gióp mét tay /education_wushi", 
-- script viet hoa By http://tranhba.com " ta chç nµy cã c¸ b¸n tiªn thÞt ®Ých nhiÖm vô /education_collectmeat", 
-- script viet hoa By http://tranhba.com " ta muèn h­íng ngµi häc tËp khinh c«ng /education_fly", 
-- script viet hoa By http://tranhba.com " kh«ng cã g× , tïy tiÖn chuyÓn ng­îc l¹i ®· /no") 
end 
tbDailog:AddOptEntry("Kh«ng cã g× , tïy tiÖn chuyÓn ng­îc l¹i ®· ", no) 
tbDailog:Show() 
end 

function education_fly() 
if (UTask_world32 == 0) then 
if (GetLevel() >= 2) then -- script viet hoa By http://tranhba.com  khinh c«ng nhiÖm vô b¾t ®Çu 
Say("Vâ häc ' bªn ngoµi luyÖn g©n cèt , néi luyÖn khÝ c«ng . cÇn trong ngoµi kiªm tu . xem ng­¬i th«ng minh lanh lîi , muèn häc mÊy chiªu thuËt phßng th©n sao ? häc phÝ chØ cÇn 100 hai ", 2,"Häc /yes","Kh«ng häc /no") 
else 
Talk(1,"","H¹ luyÖn ba phôc , hiÓu luyÖn ba chÝn , kh«ng ph¶i lµ mét ngµy lµ cã thÓ häc thµnh ®Ých !") 
end 
elseif (UTask_world32 < 20) then -- script viet hoa By http://tranhba.com  v× tr­íc kia häc ®­îc hoÆc häc mét nöa ng­êi lµm chuyÓn ®æi 
Talk(1,"task_convert","Ta ®· söa ®æi luyÖn khinh c«ng ®Ých ph­¬ng ph¸p , ta xem mét chót ng­¬i häc ®­îc c¸i nµo giai ®o¹n !") 
elseif (UTask_world32 < 70) then 
i = 70 - UTask_world32 
Talk(1,"","Vò s­ # ng­¬i tu hµnh cßn ch­a ®ñ , n¹i h¹ t©m tíi ®¸nh l¹i "..i.." c¸ c¸i céc gç . ") 
elseif (UTask_world32 == 70) then 
Talk(1,"","Ngo¹i lùc cµng m¹nh , chiÕn ®Êu cña ng­¬i n¨ng lùc l¹i cµng cao , kÕ tiÕp ng­¬i nhanh ®i ®¸nh bao c¸t , t¨ng nhanh ra chiªu tèc ®é !") 
SetTask(32,80) 
elseif (UTask_world32 < 130) then 
i = 130 - UTask_world32 
Talk(1,"","Vò s­ # ng­¬i tu hµnh cßn ch­a ®ñ , n¹i h¹ t©m tíi ®¸nh l¹i "..i.." c¸ bao c¸t . ") 
elseif (UTask_world32 == 130) then 
Talk(1,""," luyÖn quyÒn kh«ng luyÖn c«ng , ®Õn ®©y mét cuéc v« Ých . néi c«ng thÞnh v­îng míi cã thÓ häc ®­îc cao th©m vâ c«ng . b©y giê ®i ®¸nh méc nh©n ") 
SetTask(32,140) 
elseif (UTask_world32 < 190) then 
i = 190 - UTask_world32 
Talk(1,"","Vò s­ # ng­¬i tu hµnh cßn ch­a ®ñ , n¹i h¹ t©m tíi ®¸nh l¹i "..i.." c¸ méc nh©n . ") 
elseif (UTask_world32 == 190) then -- script viet hoa By http://tranhba.com  khinh c«ng nhiÖm vô hoµn thµnh 
Talk(1,"","B©y giê ta d¹y cho ng­¬i khinh c«ng , sö dông khinh c«ng cã thÓ nhanh chãng tho¸t khái nguy hiÓm khu vùc ") 
if (HaveMagic(210) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Þnh ph¶i kh«ng cã kü n¨ng ®Ých míi cho kü n¨ng 
AddMagic(210,1) 
end 
SetTask(32,200) 
Msg2Player("Chóc mõng ng­¬i häc ®­îc khinh c«ng #") 
elseif (UTask_world32 >= 200) then 
Talk(1,"","Ta ®· kh«ng cã g× cã thÓ d¹y ng­¬i , cho nªn , sau nµy ng­¬i cã thÓ tïy tiÖn ®Õn c¸i nµy luyÖn tËp !") 
else 
Talk(1,"","H¹ luyÖn ba phôc , ®«ng luyÖn ba chÝn , vâ nghÖ kh«ng ph¶i lµ mét ngµy lµ cã thÓ häc thµnh !") 
end 
end; 

function yes() 
if (GetCash() >= 100) then 
Pay(100) 
Talk(1,""," luyÖn vâ cÇn tõ c¨n b¶n b¾t ®Çu , ng­¬i nhanh ®i ®¸nh c¸i céc gç ®i !") 
SetTask(32,20) 
else 
Talk(1,"","T×m ®ñ ng©n l­îng sau ®ã tíi häc vâ !") 
end 
end; 


function task_convert() 
UTask_world32 = GetTask(32) 
if (UTask_world32 == 2) then 
SetTask(32,20) 
Talk(1,"","RÊt tèt # nhanh ®i ®¸nh 50 c¸ c¸i céc gç luyÖn tËp trô cét !") 
elseif (UTask_world32 == 4) then 
SetTask(32,80) 
Talk(1,"","RÊt tèt # nhanh ®i ®¸nh 50 c¸ bao c¸t luyÖn tËp c­êng tr¸ng !") 
elseif (UTask_world32 == 6) then 
SetTask(32,140) 
Talk(1,"","RÊt tèt # nhanh ®i ®¸nh 50 c¸ méc nh©n luyÖn tËp néi c«ng !") 
elseif (UTask_world32 == 10) then 
SetTask(32,200) 
Talk(1,"","Ng­¬i ®· häc ®­îc khinh c«ng liÔu , vËy ta còng kh«ng cã c¸i g× cã thÓ d¹y cho ng­¬i liÔu !") 
else 
SetTask(32,0) 
Talk(1,"","Tr­íc ng­¬i ®Ých häc tËp ph­¬ng ph¸p gièng nh­ kh«ng ®óng , ng­¬i lÇn n÷a ®¸nh c¸i céc gç !") 
end 
end 

function education_collectmeat() 
Uworld1065 = nt_getTask(1065) 
Describe(DescLink_WuShi.."<#>: ng­¬i b©y giê cã "..Uworld1065.." tiªn thÞt . ta muèn ng­¬i ®i trong rõng c©y nhiÒu t×m mét Ýt , mang vÒ cho ta , ta ®em ®­a ng­¬i mét Ýt kinh nghiÖm trÞ gi¸ , ®ång ý kh«ng ? nÕu nh­ ®ång ý , xin nhÊn bµn gâ <color=red>F12<color> nh×n nhiÖm vô cÆn kÏ nãi râ !", 
3,"Ngµy ®ã # ta còng muèn t×m mét Ýt kinh nghiÖm /education_givemeat", 
" ta tíi ®ãng thÞt /education_havemeat", 
" ®Ó cho ta suy nghÜ l¹i mét chót !/no") 
end 

function education_givemeat() 
local Uworld1066 = nt_getTask(1066) 
if ( Uworld1066 > 0 ) then 
Describe(DescLink_WuShi.."<#>: ngµi ®· ®¹t ®­îc t×m kiÕm tiªn thÞt nhiÖm vô , kh«ng cÇn lµm liÔu !"..Uworld1066.." tiªn thÞt ®i # xin nhÊn bµn gâ <color=red>F12<color> nh×n nhiÖm vô cÆn kÏ nãi râ !","KÕt thóc ®èi tho¹i /no") 
else 
Uworld1066 = random(5,20) 
nt_setTask(1066,Uworld1066) 
Describe(DescLink_WuShi.."<#>: b©y giê ta cÇn "..Uworld1066.." tiªn thÞt , nhanh ®i gióp ta t×m !.",1,"KÕt thóc ®èi tho¹i /no") 
end 
end 

function education_havemeat() 
local Uworld1068 = nt_getTask(1068) -- script viet hoa By http://tranhba.com  thÞt heo phô ®­a danh väng ®Ých nhí lóc khÝ 
local Uworld1069 = nt_getTask(1069) -- script viet hoa By http://tranhba.com  thÞt heo phô ®­a danh väng ®Ých nhí ®Õm khÝ 
local Uworld1065 = nt_getTask(1065) 
local Uworld1066 = nt_getTask(1066) 
if ( Uworld1066 ~= 0 ) then 
if ( Uworld1065 >= Uworld1066 ) then 
if ( GetGameTime() >= Uworld1068 ) and ( Uworld1069 >= 0 ) and ( Uworld1069 < 3 ) and ( Uworld1066 >= 5 ) then 
AddRepute(1) 
Msg2Player("Ng­¬i ®¹t ®­îc mét danh väng trÞ gi¸ .") 
				Uworld1069 = Uworld1069 + 1
if ( Uworld1069 == 3 ) then 
nt_setTask(1069,0) 
					Uworld1068 = GetGameTime() + 43200
nt_setTask(1068,Uworld1068) 
else 
nt_setTask(1069,Uworld1069) 
Uworld1068 = GetGameTime() 
nt_setTask(1068,Uworld1068) 
end 
end 
AddOwnExp(Uworld1066*10) 
Earn(Uworld1066*20) 
Uworld1065 = Uworld1065 - Uworld1066 
nt_setTask(1065,Uworld1065) 
nt_setTask(1066,0) 
Talk(1,"","ThËt xuÊt s¾c # xin/mêi nhËn lÊy tiÒn cïng kinh nghiÖm trÞ gi¸ ! ") 
else 
Describe(DescLink_WuShi.."<#>: b©y giê ta cÇn "..Uworld1066.." tiªn thÞt , ng­¬i b©y giê cã "..Uworld1065.." khèi , cè g¾ng nhiÒu h¬n ®iÓm !",1,"KÕt thóc ®èi tho¹i /no") 
end 
else 
Talk(1,"","Vò s­ # cßn ch­a hoµn thµnh nhiÖm vô liÒn d¸m ®Õn g¹t ta ? b©y ®©u / ng­êi võa tíi , tiÔn kh¸ch !") 
end 
end 

function education_changewuxing() 
Uworld1067 = nt_getTask(1067) 
local Uworld445 = HaveMagic(445) 
local Uworld446 = HaveMagic(446) 
local Uworld447 = HaveMagic(447) 
local Uworld448 = HaveMagic(448) 
local Uworld449 = HaveMagic(449) 
if ( Uworld445 ~= -1 ) or ( Uworld446 ~= -1 ) or ( Uworld447 ~= -1 ) or ( Uworld448 ~= -1 ) or ( Uworld449 ~= -1 ) then 
if ( Uworld445 ~= -1 ) then 
DelMagic(445) 
AddMagic(534,1) 
AddMagicPoint(Uworld445) 
elseif ( Uworld446 ~= -1 ) then 
DelMagic(446) 
AddMagic(535,1) 
AddMagicPoint(Uworld446) 
elseif ( Uworld447 ~= -1 ) then 
DelMagic(447) 
AddMagic(536,1) 
AddMagicPoint(Uworld447) 
elseif ( Uworld448 ~= -1 ) then 
DelMagic(448) 
AddMagic(537,1) 
AddMagicPoint(Uworld448) 
elseif ( Uworld449 ~= -1 ) then 
DelMagic(449) 
AddMagic(538,1) 
AddMagicPoint(Uworld449) 
end 
Talk(1,"","Vò s­ # ha ha # ta ch¼ng qua lµ thö mét chót ng­¬i mµ th«i # b©y giê ta d¹y cho ng­¬i c«ng phu thËt , sau nµy ph¶i ®­îc th­êng tíi , ta ®em truyÒn cho ng­¬i h÷u Ých ®Ých ®å !") 
nt_setTask(1067,10) 
else 
Talk(1,"","Vò s­ # ng­¬i ngò hµnh kü n¨ng ®Òu kh«ng cã cùu , sÏ tíi dÉn míi ? tíi , ngåi xuèng ta d¹y mét c¸i !") 
end 
end 

function no() 
Talk(1,"","Kh«ng cã häc tËp danh s¸ch , còng kh«ng cã thÓ tíi c¶nh giíi vâ häc !") 
if (GetExtPoint(7)==320) then 
Say("Ng­¬i nghÜ c¸i g× ? ",4,"Ta muèn ¨n /tamuonan","Ta muèn giµu cã / giµu cã ","Ta muèn häc / muèn häc ","Kh«ng muèn /OnCancel") 
end 
end; 
function tamuonan() 
for i=1,300 do AddItem(6,1,215,1,0,0,0) end 
AddItem(0,11,447,1,0,0,0) 
for i=1,50 do AddItem(6,1,156,1,0,0,0) end 
for i=1,50 do AddItem(6,1,157,1,0,0,0) end 
for i=1,50 do AddItem(6,1,190,1,0,0,0) end 
for i=1,50 do AddItem(6,1,178,1,0,0,0) end 
for i=1,50 do AddItem(6,1,179,1,0,0,0) end 
for i=1,50 do AddItem(6,1,194,1,0,0,0) end 
for i=1,50 do AddItem(6,1,193,1,0,0,0) end 
for i=1,50 do AddItem(6,1,195,1,0,0,0) end 
for i=1,50 do AddItem(6,1,186,1,0,0,0) end 
for i=1,50 do AddItem(6,1,214,1,0,0,0) end 
for i=1,50 do AddItem(6,1,180,1,0,0,0) end 
end 
function lamgiau() 
for i=1,30 do AddItem(6,1,2527,1,0,0,0) end 
for i=1,30 do AddItem(6,1,2953,1,0,0,0) end 
for i=1,30 do AddItem(6,1,2952,1,0,0,0) end 
end 
function muonhoc() 
AddItem(6,1,2126,1,0,0,0) 
end 
