Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\missions\\zhaojingling\\head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local tbPaiMingAward = 
{ 
[1] = 
{ 
nExp_tl = 20e6 
}, 
[2] = 
{ 
nExp_tl = 15e6 
}, 
[3] = 
{ 
nExp_tl = 13e6 
}, 
[4] = 
{ 
nExp_tl = 10e6 
}, 
[5] = 
{ 
nExp_tl = 8e6 
}, 
[6] = 
{ 
nExp_tl = 6e6 
}, 
[7] = 
{ 
nExp_tl = 5e6 
}, 
[8] = 
{ 
nExp_tl = 4e6 
}, 
[9] = 
{ 
nExp_tl = 3e6 
}, 
[10] = 
{ 
nExp_tl = 2e6 
}, 
} 

local tbAllPaiMingAward = 
{ 
[1]={ 
[1]={szName=" chÝ t«n bÝ b¶o ",tbProp={6,1,2375,1,0,0},nRate = 20.0,nCount = 3,}, 
[2]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 40.0,nCount = 4,}, 
[3]={nJxb=1,nRate = 20.0,nCount = 30000000,}, 
[4]={nExp_tl=1,nRate = 20.0,nCount = 60000000,}, 
}, 
[2]={ 
[1]={szName=" chÝ t«n bÝ b¶o ",tbProp={6,1,2375,1,0,0},nRate = 20.0,nCount = 2,}, 
[2]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 40.0,nCount = 3,}, 
[3]={nJxb=1,nRate = 20.0,nCount = 24000000,}, 
[4]={nExp_tl=1,nRate = 20.0,nCount = 48000000,}, 
}, 
[3]={ 
[1]={ 
[1]={szName=" chÝ t«n bÝ b¶o ",tbProp={6,1,2375,1,0,0},}, 
[2]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},}, 
nRate = 25.0, 
}, 
[2]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 25.0,}, 
[3]={nJxb=1,nRate = 25.0,nCount = 22000000,}, 
[4]={nExp_tl=1,nRate = 25.0,nCount = 44000000,}, 
}, 
[4]={ 
[1]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,nCount = 2,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 18000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 36000000,}, 
}, 
[5]={ 
[1]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,nCount = 2,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 16000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 32000000,}, 
}, 
[6]={ 
[1]={szName=" chÝ t«n bÝ b¶o ",tbProp={6,1,2375,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 12000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 24000000,}, 
}, 
[7]={ 
[1]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 10000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 20000000,}, 
}, 
[8]={ 
[1]={szName=" n­íc tÆc tµi b¶o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 8000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 16000000,}, 
}, 
[9]={ 
[1]={nJxb=1,nRate = 50.0,nCount = 5000000,}, 
[2]={nExp_tl=1,nRate = 50.0,nCount = 10000000,}, 
}, 
[10]={ 
[1]={nJxb=1,nRate = 50.0,nCount = 3000000,}, 
[2]={nExp_tl=1,nRate = 50.0,nCount = 6000000,}, 
}, 
} 

local szRemoteScript = "\\script\\event\\zhaojingling\\event.lua"

function dialogmain() 
local tbOpt = {} 
local szTitleMsg = "<npc> ng­êi tuæi trÎ , ng­¬i nghÜ huÊn luyÖn m×nh ph¶n øng n¨ng lùc sao ? thö t×m ®­îc cµng nhiÒu h¬n <color=yellow> méc nh©n <color> ®em ®¹t ®­îc t­ëng th­ëng " 
local szTitleMsg = format("%s, mçi ngµy ng­¬i chØ cã <color=yellow>%d<color> lÇn c¬ héi cã thÓ miÔn phÝ tham gia , cè g¾ng luyÖn tËp nga ", szTitleMsg, MAXGAMETIME) 
tinsert(tbOpt, {"Ta muèn thö nh×n mét chót ", onok}) 
tinsert(tbOpt, {"NhËn lÊy t­ëng th­ëng ", getaward}) 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, {"Tra xÐt tr­íc mét ngµy tr­íc m­êi tªn ", querytopten}) 
tinsert(tbOpt, {" liªn quan tíi huÊn luyÖn méc nh©n mét chuyÖn ", detail}) 
tinsert(tbOpt, {"Tr­íc m¾t ta bÒ bén nhiÒu viÖc , chê mét chót trë l¹i .", oncancel}) 
CreateNewSayEx(szTitleMsg, tbOpt) 
end 

function onok() 
local tbOpt = {} 
tinsert(tbOpt, {"Cã thÓ !", wantjoin}) 
tinsert(tbOpt, {"Ta cã viÖc gÊp , chê ta mét chót ", oncancel}) 
CreateNewSayEx("<npc> ng­¬i ®i bªn kia chuÈn bÞ ®i , chê mét l¸t ®em b¾t ®Çu trang bÞ ", tbOpt) 
end 

function wantjoin() 
if checkjoingame() ~= 1 then 
return 
end 
dojoingame() 
end 

function detail() 
local tbOpt = {} 
tinsert(tbOpt, {"Ta biÕt !", oncancel}) 
CreateNewSayEx("<npc> huÊn luyÖn méc nh©n mét cuéc lµ <color=yellow>15<color> phót , trong ®ã , <color=yellow>5<color> phót chuÈn bÞ , ghi danh tham gia sau , ng­¬i sÏ bÞ ®¸nh ®Õn chuÈn bÞ khu , ho¹t ®éng b¾t ®Çu sau , ng­¬i ®em bÞ mang vµo tuÇn tra xe , nÕu nh­ ë n¬i nµo ng­¬i thÊy <color=yellow> méc nh©n <color> chØ cÇn dïng con chuét <color=yellow> ®iÓm kÝch bªn tr¸i kiÖn <color> ®Õn phÝa trªn lµ ®­îc , bÊt qu¸ , ng­¬i sÏ bÞ ng­êi kh¸c ng¨n trë , lóc nµy , ng­¬i cã thÓ sö dông ®¹o cô tíi ®èi phã t×nh huèng nh­ thÕ , chØ cÇn ng­¬i t×m ®­îc rÊt nhiÒu <color=yellow> méc nh©n <color> ®em ®¹t ®­îc t­¬ng øng t­ëng th­ëng ", tbOpt) 
end 

function oncancel() 
end 

function checkjoingame() 
if PlayerFunLib:CheckTotalLevel(MINLEVEL, "125 cÊp cïng 125 cÊp trë lªn hoÆc lµ ®· sèng l¹i ®Ých tr¸ng sÜ , míi cã thÓ tham gia méc nh©n ho¹t ®éng ", ">=") ~= 1 then 
return 
end 
local nCurHour = tonumber(GetLocalDate("%H")) 
if nCurHour >= 0 and nCurHour < 12 then 
Talk(1, "","Mçi ngµy 12 lóc ®Õn 24 lóc , b¾t ®Çu b¾t méc nh©n ho¹t ®éng , tr­íc m¾t kh«ng ph¶i lµ ho¹t ®éng thêi gian ") 
return 
end 
local nTimes = GetTaskA(TSK_PLAYTIMES, TSK_DAYKEY) 
if nTimes >= MAXGAMETIME then 
Talk(1, "","Mçi ngµy chØ cã thÓ tham gia 3 trµng , ngµy mai trë l¹i ®i . ") 
return 
end 

if GetTask(TSK_RANK) ~= 0 and GetTask(TSK_COUNT_ONETIME) > 0 then 
Talk(1, "","CÇn nhËn lÊy ngµy h«m qua ®Êu tr­êng lÇn t­ëng th­ëng míi cã thÓ tiÕp tôc tham gia , nhanh ®i dÉn t­ëng ®i . ") 
return 
end 

return 1 
end 

function dojoingame() 
local nMapId, nX, nY = GetWorldPos() 
SetTask(TSK_LEAVERMAPID, nMapId) 
SetTask(TSK_LEAVERPOSX, nX) 
SetTask(TSK_LEAVERPOSY, nY) 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\zhaojingling\\templet\\gametemplet.lua", "GameTemplet:MoveTo", PREPARE_MAP, POSPATH, 2, PREPAREPOSENDLINE)	
end 

function getaward() 
local tbOpt = {} 
tinsert(tbOpt, {"NhËn lÊy mçi trµng ®øng hµng t­ëng th­ëng ", getonetimeaward}) 
-- script viet hoa By http://tranhba.com Change request 14/7/2011 - Modified by DinhHQ - 20110714 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, {"Mçi ngµy tæng ®øng hµng t­ëng th­ëng ", getallpaimingaward}) 
CreateNewSayEx("<npc> xin/mêi dÉn hoµn tr­íc trµng lÇn t­ëng th­ëng sau míi cã thÓ tiÕp tôc tham gia phÝa d­íi tranh tµi ", tbOpt) 
end 

function checkbox() 
local nWidth = 1 
local nHeight = 1 
local nCount = 2 
if CountFreeRoomByWH(nWidth, nHeight) >= nCount then 
return 1 
else 
local szMsg = format("V× b¶o vÖ ®¹i hiÖp ®Ých tµi s¶n , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", nCount, nWidth, nHeight) 
Talk(1,"", szMsg) 
return 
end 
end 

function getonetimeaward() 
local nRank = GetTask(TSK_RANK) 
local nCount = GetTask(TSK_COUNT_ONETIME) 
if nRank <= 0 or nRank > 10 then 
Talk(1, "","Kh«ng cã mÊu chèt ®Ých t­ëng th­ëng ") 
return 
end 
if nCount <= 0 then 
Talk(1, "","Kh«ng cã mÊu chèt ®Ých t­ëng th­ëng ") 
return 
end 

if checkbox() ~= 1 then 
return 
end 
tbAwardTemplet:GiveAwardByList(%tbPaiMingAward[nRank],"NhËn lÊy mçi tuÇn mçi ng­êi ho¹t ®éng ®øng hµng t­ëng th­ëng ") 
SetTask(TSK_RANK, 0) 
end 

function getallpaimingaward() 
local nIsAward = GetTaskA(TSK_IS_AWARD, TSK_IS_AWARD_DAYKEY) 
if nIsAward > 0 then 
Talk(1, "","Tæng ®øng hµng t­ëng th­ëng ®· lÜnh ") 
return 
end 
local obj = ObjBuffer:New() 
obj:Push(GetName()) 
	DynamicExecute("\\script\\missions\\zhaojingling\\enterdialog.lua",
"RemoteExecute", %szRemoteScript, "tbJingLing:g2s_GetFormerPaiMing", obj.m_Handle, "receivepaiming", 0) 
obj:Destroy() 
end 

function receivepaiming(nParam, ResultHandle) 
local szName = ObjBuffer:PopObject(ResultHandle) 
local nPaiMing = ObjBuffer:PopObject(ResultHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex == nil or nPlayerIndex <= 0 then 
return 
end 
if nPaiMing ~= nil and nPaiMing <= 10 then 
if dogetallpaimingaward(nPlayerIndex, nPaiMing) == 1 then 
CallPlayerFunction(nPlayerIndex, AddTaskA, TSK_IS_AWARD, TSK_IS_AWARD_DAYKEY, 1) 
CallPlayerFunction(nPlayerIndex, Msg2Player, format("NhËn lÊy tæng ®øng hµng t­ëng th­ëng %s", nPaiMing)) 
end 
else 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Kh«ng cã mÊu chèt ®Ých t­ëng th­ëng ") 
end 
end 

function dogetallpaimingaward(nPlayerIndex, nPaiMing) 
if CallPlayerFunction(nPlayerIndex, checkbox) ~= 1 then 
return 
end 
CallPlayerFunction(nPlayerIndex, tbAwardTemplet.GiveAwardByList, tbAwardTemplet, %tbAllPaiMingAward[nPaiMing],"NhËn lÊy mçi ngµy méc nh©n ho¹t ®éng ®øng hµng t­ëng th­ëng ") 
return 1 
end 

function querytopten() 
local obj = ObjBuffer:New() 
obj:Push(GetName()) 
	DynamicExecute("\\script\\missions\\zhaojingling\\enterdialog.lua",
"RemoteExecute", %szRemoteScript, "tbJingLing:g2s_QueryTopTen", obj.m_Handle, "displaytopten", 0) 
obj:Destroy() 
end 

function displaytopten(nParam, ResultHandle) 
local szName = ObjBuffer:PopObject(ResultHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex == nil or nPlayerIndex <= 0 then 
return 
end 

local tbTopTen = ObjBuffer:PopObject(ResultHandle) 
if tbTopTen == nil then 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Tr­íc m¾t cßn kh«ng cã ®øng hµng ") 
return 
end 
local nCount = getn(tbTopTen) 
if nCount == 0 then 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Tr­íc m¾t cßn kh«ng cã ®øng hµng ") 
return 
end 
local szMsg = format("%-32s%-10s\n","Tªn ","Ph©n sè ") 
for i=1, nCount do 
local szTemp = format("%-32s%-10d\n", tbTopTen[i][1], tbTopTen[i][2]) 
szMsg = szMsg.. szTemp 
end 
CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szMsg, {{"KÕt thóc ®èi tho¹i "}}) 
end 
