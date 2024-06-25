Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ¸c lang bang lµ mét nhãm c­ ngô ë ¸c lang cèc ®Ých c­êng ®¹o , v× vËy míi ®­îc ®Æt tªn ¸c lang cèc . nh÷ng ng­êi nµy ®Æc biÖt ®i gieo häa l­¬ng d©n , bªu xÊu giang hå nh©n sÜ ®Ých danh dù , rÊt nhiÒu anh hïng hµo kiÖt còng muèn trõ ®i bän hä . nh­ng lµ , ng­êi nµy cã vâ l©m thÊt truyÒn ®· l©u hé thÓ thÇn c«ng , mét lo¹i ®ao th­¬ng binh khÝ còng kh«ng thÓ th­¬ng tæn ®­îc bän hä . 30 n¨m tr­íc , cã mét giang hå kú tµi ph¸t minh cµn kh«n kÝch lùc ®an , nghe nãi nªn ®an uy lùc v« cïng , nÕu nh­ ®¹i hiÖp cã thÓ t×m ®­îc nã , lµ cã thÓ dÔ dµng ®èi ph­¬ng bän hä hé thÓ thÇn c«ng , cßn d©n chóng mét an tÜnh cuéc sèng . ." 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 
tinsert(tbDailog, {"Ta muèn rêi ®i !", GoToWaiMian}) 
tinsert(tbDailog, {"Chê mét chót "}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 
end 

function GoToWaiMian() 
local tbMapList = {{11,3183,5180}, {1,1651,3279}, {37,1704,3222}, {176,1695,3294}, 
{162,1697,3277}, {78,1596,3379}, {80,1718,3201},} 
local nOutPosId = random(1, getn(tbMapList)) 
local tbPos = tbMapList[nOutPosId] 
NewWorld(tbPos[1], tbPos[2], tbPos[3]) 
end 