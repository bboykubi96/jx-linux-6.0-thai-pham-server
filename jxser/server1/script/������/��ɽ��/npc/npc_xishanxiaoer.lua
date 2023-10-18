--TÝnh n¨ng vi s¬n ®¶o t©y s¬n tiÓu nhÞ edit by mcteam

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\xishancun\\xishancun_head.lua")
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

dofile("script/½­ÄÏÇø/Î÷É½´å/npc/npc_xishanxiaoer.lua")
dofile("script/global/g7vn/g7configall.lua")

if divisondao == 0 then
	Say("Vi S¬n §¶o t¹m thêi ch­a më")
	return
end

-- script viet hoa By http://tranhba.com  Uworld1064 = nt_getTask(1064) 
-- script viet hoa By http://tranhba.com  local name = GetName() 
-- script viet hoa By http://tranhba.com  if ( Uworld1064 < 2) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n ch­a hoµn thµnh t©y s¬n tù nhiÖm vô 
-- script viet hoa By http://tranhba.com  Talk(1,"","T©y s¬n tiÓu nhÞ # mÊy ngµy nay khÝ trêi ph¶n phôc v« th­êng , ta còng kh«ng t©m t­ ra biÓn ®¸nh c¸ liÔu . ") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 2 ) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n ®· hoµn thµnh t©y s¬n tù nhiÖm vô , nh­ng ch­a ®i t©y s¬n tù , h¬n n÷a kh«ng cïng t©y s¬n tiÓu nhÞ ®èi tho¹i qu¸ 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  Say("T©y s¬n tiÓu nhÞ # ng­¬i muèn ®i t©y s¬n tù ? ®¸ng tiÕc t©y s¬n tù cßn ch­a më ®Ó , t¹m thêi kh«ng thÓ qu¸ khø . bÊt qu¸ ng­¬i yªn t©m , ta ®· nhí ng­¬i , qua mÊy ngµy ng­¬i trùc tiÕp tíi t×m ta tèt l¾m , ta dÉn ng­¬i th­îng t©y s¬n tù . ",0) 
-- script viet hoa By http://tranhba.com  Describe(DescLink_XiShanXiaoEr.."<#># vÞ kh¸ch quan kia , t×m ta cã g× quý kiÒn ? cã ph¶i hay kh«ng muèn mua c¸ ®©y ? <enter>" 
-- script viet hoa By http://tranhba.com  ..name.."<#># kh«ng ph¶i vËy , ph¶i kh«ng tØnh nh©n sÜ ®Ó cho ta tíi t×m ng­¬i . <enter> t©y s¬n tiÓu nhÞ # lµ h¾n , ta biÕt . ng­¬i còng ph¶i ®i t©y s¬n tù ®i , ®i th«i , ta ®©y liÒn dÉn ng­¬i ®i . bÊt qu¸ t©y s¬n tù c¸i chç nµy qua còng kh«ng ph¶i lµ nh­ vËy ph­¬ng tiÖn , h¬n n÷a hung hiÓm dÞ th­êng , ng­¬i ph¶i nhiÒu thªm cÈn thËn yªu . <enter>", 
-- script viet hoa By http://tranhba.com  2,"Chóng ta lªn ®­êng ®i /task007","Ta cßn lµ sau ®ã l¹i ®i ®i /task006") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 3) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n ®· hoµn thµnh t©y s¬n tù nhiÖm vô , th¶ cïng t©y s¬n tiÓu nhÞ ®èi tho¹i qu¸ mét lÇn , nh­ng ch­a ®i t©y s¬n tù 
-- script viet hoa By http://tranhba.com  Say("T©y s¬n tiÓu nhÞ # ng­¬i b©y giê ®· chuÈn bÞ xong ®i t©y s¬n tù liÔu sao ? ",2,"Chóng ta lªn ®­êng ®i /task007","Ta cßn lµ sau ®ã l¹i ®i ®i /task006"); 
-- script viet hoa By http://tranhba.com  end; 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex); 
if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end 
local tbDailog = DailogClass:new(szNpcName); 
tbDailog.szTitleMsg = "T©y S¬n tiÓu nhÞ # ®¹i hiÖp muèn ®i T©y S¬n ®¶o ? muèn ®ãng 100 tê thÇn bÝ mËt ®å míi cã thÓ ®i ." 
--tbDailog:AddOptEntry("Ta cßn lµ sau ®ã l¹i ®i ®i  .", task006, {}); 
--tbDailog:AddOptEntry("§ång ý # ta lËp tøc ®i t×m .", task007, {}); 
tbDailog:AddOptEntry("T¹m kh«ng ®i .", no, {}); 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 

tbDailog:Show(); 

end; 
function task006() 
Uworld1064 = nt_getTask(1064) 
nt_setTask(1064,3) 
end; 

function task007() 
if (GetLevel() < 100) then 
Say("T©y s¬n tiÓu nhÞ #100 cÊp trë xuèng kh«ng thÓ ®i !",0); 
return 
end 

GiveItemUI("§ãng mÆt tra phÝ .","§em mËt ®å ®Æt ë phÝa d­íi ", "task008", "no") 

--Uworld1064 = nt_getTask(1064) 
--nt_setTask(1064,0) 
--SetFightState(1); 
--NewWorld(342,1177,2410); 
--DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h¹n chÕ kú ë t©y s¬n tù bªn trong sö dông trë vÒ thµnh phï 
--SetRevPos(175,1); -- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 

end; 

function task008(ncount) 
local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==196) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Talk(1,"","ThÇn bÝ mËt ®å kh«ng ®ñ , ë kiÓm tra xem mét chót !") 
return 
end 
if (scrollcount > 100) then 
Talk(1,"","Ta chØ cÇn 100 tê thÇn bÝ mËt ®å , kh«ng cÇn cho ta mang ®Õn nhiÒu nh­ vËy ") 
return 
end 
if (scrollcount < 100) then 
Talk(1,"","Ng­¬i giao cho ta thÇn bÝ mËt ®å kh«ng ®ñ , n÷a kiÓm tra xem mét chót !") 
return 
end 
if (scrollcount == 100) then 
for i = 1, y do 
RemoveItemByIndex(scrollidx[i]) 
end 
end; 
-- script viet hoa By http://tranhba.com SetFightState(0); 
NewWorld(342,1178,2412) 
SetFightState(1); 
end 

function no() 
end 
