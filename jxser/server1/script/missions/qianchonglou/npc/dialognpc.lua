Include("\\script\\missions\\qianchonglou\\rule.lua")
Include("\\script\\missions\\qianchonglou\\challenger.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("SETTING") 
function signup() 
if tbPlayerHandle:CheckDate() ~= 1 then 
local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint) 
if nAwardPoint > 0 then 
return Talk(1, "","Ng­¬i cÇn tr­íc nhËn lÊy tr­íc ®İch t­ëng th­ëng míi cã thÓ tiÕp tôc tham gia .") 
end 
end 
if ST_IsTransLife() ~= 1 and GetLevel() < 120 then 
return Talk(1, "", format("%d cÊp trë xuèng kh«ng thÓ tham gia nªn ho¹t ®éng ", 120)) 
end 
local pDungeonType = DungeonType["endless tower"] 
local pChallenger = tbChallenger:new() 
pChallenger:Update() 
if pChallenger:GetPlayTime() <= 0 then 
return Talk(1, "","H«m nay thêi giê cña ng­¬i ®· dïng xong ") 
end 
if pDungeonType then 
local pDungeon = pDungeonType:new_dungeon(pDungeonType.TEMPLATE_MAP_ID, {pChallenger}) 
if pDungeon then 
pChallenger:Update() 
local nMapId, nX, nY = pDungeon:GetTowerPos() 
NewWorld(nMapId, nX, nY) 
else 
print("fail") 
end 
end 
end 

function give_award() 
local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint) 
if nAwardPoint <= 0 then 
return Talk(1, "","# t­ëng th­ëng cña ng­¬i trŞ gi¸ kh«ng ®ñ dïng ®Ó dÉn t­ëng ") 
end 
Msg2Player(format("Ng­¬i ®· ®¹t ®­îc %d t­ëng th­ëng trŞ gi¸ ®İch t­ëng th­ëng .", nAwardPoint)) 
tbPlayerHandle:SetAwardPoint(0) 
end 
-- script viet hoa By http://tranhba.com  t¾t ngµy träng l©u chøc n¨ng - Modified By DinhHQ - 20120402 
function dialog() 
do return end 
local szTitle = " më ra phã b¶n sau , mçi nhµ ch¬i ®em ®¹t ®­îc mét chót trô cét ph©n , mçi lÇn ph¸t ra c«ng kİch ®em tiªu hao trô cét ph©n . giËn dö kh«ng gièng nhau , tiªu hao trô cét ph©n còng kh«ng gièng nhau , cã thÓ th«ng qua con chuét ®iÓm kİch mµn ¶nh chõng tíi thay ®æi giËn dö cÊp bËc . giËn dö cÊp bËc cµng cao , ®¸nh tróng qu¸i vËt ®İch c¬ héi cµng lín . ®¸nh tróng qu¸i vËt sau , ®em ®¹t ®­îc t­ëng th­ëng , khi trô cét ph©n ph©n tiªu hao hÕt sau , còng cã thÓ dïng t­ëng th­ëng ph©n ®Ó ®æi giËn dö . mçi lÇn ®¸nh tróng sè l­îng nhÊt ®Şnh ®İch qu¸i vËt , còng cã thÓ ®¹t ®­îc t­¬ng ®èi øng ®İch giËn dö , cã thÓ ®¸nh tróng chung quanh tÊt c¶ ®Şch nh©n . " 
local tbOpt = 
{ 
{"Ta muèn tham gia ", signup}, 
{"DÉn t­ëng ", give_award}, 
{"Hñy bá "} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


Include("\\script\\misc\\eventsys\\type\\npc.lua")

-- script viet hoa By http://tranhba.com pEventType:Reg("ChØ ®iÓm quan hoµng thµnh ti ,"Ngµy träng l©u ", dialog, {}) 
