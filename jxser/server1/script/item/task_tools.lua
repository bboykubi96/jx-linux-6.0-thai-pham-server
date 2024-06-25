
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online nhiÖm vô hÖ thèng c«ng cô ch©n vèn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/07/29 PM 12:30 

-- script viet hoa By http://tranhba.com  ph¸o b«ng . ®ªm h«m ®ã ®İch ph¸o b«ng . 
-- script viet hoa By http://tranhba.com  nµng nhí h¾n ë m­a to ng­êi cña bÇy trung , ®øng ë sau l­ng cña nµng «m ë nµng . 
-- script viet hoa By http://tranhba.com  h¾n Êm ¸p ®İch da , h¾n mïi vŞ ®¹o quen thuéc . ph¸o b«ng chiÕu s¸ng ¸nh m¾t cña nµng . 
-- script viet hoa By http://tranhba.com  hÕt th¶y kh«ng thÓ v·n håi …… 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  ®ång b¹n hÖ thèng ñng hé 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng kho ñng hé 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  häc vµo nhiÖm vô hÖ thèng ®Çu v¨n kiÖn , bao hµm ngÉu nhiªn nhiÖm vô 
Include("\\script\\task\\system\\task_main.lua");

strTitle = "<color=green> nhiÖm vô cÈm nang <color>#"; 
strTitle_Normal = strTitle.." ngµi muèn tra xĞt c¸i nµo sù kiÖn ®©y ? <enter>" 
strTitle_None = strTitle.." ngµi tr­íc mÆt kh«ng cã bÊt cø chuyÖn g× mãn ®ang tiÕn hµnh . "; 
strPublic = "<color=green> nhiÖm vô cÈm nang <color>#" 

-- script viet hoa By http://tranhba.com  ®em main() ®æi thµnh main_back lµ ®­îc ®em toµn bé c«ng cô cÊm dïng 
function main_back() 

Say(strTitle.." ngµi muèn dïng vÜ ®¹i ®İch béi l«i t­ së sinh thµnh nhiÖm vô cÈm nang lµm c¸i g× ®Êy ? ",7, 
" tra xĞt tr­íc mÆt ta ®ang tiÕn hµnh chuyÖn cña mãn /ShowEventMain", 
" thñ ®éng b¾t ®Çu mét ®· tån t¹i nhiÖm vô /MenuStartTask", 
" ngÉu nhiªn lÊy ®­îc mét ®ång b¹n ngÉu nhiªn nhiÖm vô /MenuGetRandomTask", 
" lÊy ®­îc mét c¸i nhiÖm vô cÇn thiÕt ®İch tÊt c¶ vËt phÈm /MenuGetTaskItem", 
" ®em mét c¸i nhiÖm vô biÕn thµnh cßn ch­a b¾t ®Çu /MenuSetTaskClearn", 
" ®em mét chuyÖn mãn tÊt c¶ nhiÖm vô thanh kh«ng /MenuSetEventClearn", 
" t¾t /Task_Exit"); 

return 1; 

end; 

-- script viet hoa By http://tranhba.com  nhµ ch¬i lùa chän tra xĞt sù kiÖn , t¹i h¹ mÆt nhãm xuÊt xø cã ®ang tiÕn hµnh chuyÖn cña mãn cung nhµ ch¬i lùa chän 
function ShowEventMain() 

local i=0; 
local aryEvent = EnumEventList(); 
local aryTalkText = {strTitle_Normal}; 

if aryEvent==nil then 
Say(strTitle_None, 0); 
return 
end; 

for i,j in aryEvent do 
rawset(aryTalkText, 
				getn(aryTalkText)+1,
TaskEvent(i, 1, 1).."/#ShowEventDetail("..i..")"); 
end; 

	rawset(aryTalkText, getn(aryTalkText)+1, "¹Ø±Õ/OnTaskExit");

SelectSay(aryTalkText); 

return 1; 


end; 


function ShowEventDetail(nEventID) 

local aryTask = EnumEventTask(nEventID); 
local strMain = {strTitle.." trë xuèng lµ ngµi ë <color=yellow>"..TaskEvent(nEventID, 1, 1).."<color> ®İch t×nh huèng cÆn kÏ #<enter><enter>"} -- script viet hoa By http://tranhba.com  nhiÖm vô liÖt biÓu tù phï chuçi 

local i=0; 


for i=1, getn(aryTask) do 
strMain[1] = strMain[1]..GetTaskText(TaskName(aryTask[i]), 1, 3)..GetTaskStatusText(aryTask[i]).."<enter>"; 
end; 

	rawset(strMain, getn(strMain)+1, "Çå¿Õ´ËÈÎÎñ/#_ClearnTaskState("..nEventID..")");
	rawset(strMain, getn(strMain)+1, "·µ»ØÖ÷Ä¿Â¼/main");
	rawset(strMain, getn(strMain)+1, "¹Ø±Õ/OnTaskExit");

SelectDescribe(strMain); 

end; 


-- script viet hoa By http://tranhba.com  mai gi¬ ra tr­íc mÆt ®ang tiÕn hµnh chuyÖn cña mãn 
function EnumEventList() 

local aryTask = EnumTaskList(); -- script viet hoa By http://tranhba.com  lÊy ®­îc tr­íc mÆt ®ang tiÕn triÓn nhiÖm vô 
local aryEvent = {} 
local i=0; 

if aryTask==nil then return nil; end; 

for i=1, getn(aryTask) do 
rawset(aryEvent, 
GetTaskEventID(aryTask[i]), 
1); 
end; 

return aryEvent; 

end; 


-- script viet hoa By http://tranhba.com  mai gi¬ ra mét chuyÖn mãn së bao hµm ®İch nhiÖm vô , trë vÒ mét vµi tæ 
function EnumEventTask(nEventID) 

local aryTask = {}; 

local nEvent = GetEventTaskCount(nEventID); 

CDebug:MessageOut(" lÊy ®­îc sù kiÖn #"..nEventID.." ®İch nhiÖm vô c¸ ®Õm v× #"..nEvent); 

local i=0; 

if nEvent==0 then return nil; end; 

for i=1, nEvent do 
CDebug:MessageOut("§ang gia nhËp nhiÖm vô ®Õm tæ #"..TaskNo(GetEventTask(nEventID, i))); 
rawset(aryTask, 
				getn(aryTask)+1,
TaskNo(GetEventTask(nEventID, i)) 
); 
end; 

return aryTask; 

end; 


-- script viet hoa By http://tranhba.com  lùa chän thñ ®éng b¾t ®Çu mét c¸i nhiÖm vô 
function MenuStartTask() 
AskClientForString("_StartTask", "", 1, 20,"§­a vµo nhiÖm vô biªn sè hoÆc tªn #"); 
end; 


-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu hµm sè , thñ ®éng b¾t ®Çu mét nhiÖm vô míi 
function _StartTask(taskName) 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ con sè lµ ®em nã biÕn thµnh nhiÖm vô tªn 
if tonumber(taskName)~=nil then 
taskName = TaskName(taskName); 
end; 

SetTaskStatus(taskName, 0); 
CloseTask(taskName); 
ApplyTask(taskName); 

end; 


-- script viet hoa By http://tranhba.com  ngÉu nhiªn lùa chän mét ®ång b¹n ngÉu nhiªn nhiÖm vô 
function MenuGetRandomTask() 

local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®İch index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local nResult = 0; 

if partnerindex==0 or partnerstate==0 then 
Msg2Player(strPublic.."<color=yellow> kh«ng cã cho gäi ®ång b¹n kh«ng thÓ lÊy ®­îc ngÉu nhiªn nhiÖm vô #<color>"); 
return 
end; 

nResult = initRandomTask(); 

if nResult==0 then 
CDebug:MessageOut("NgÉu nhiªn nhiÖm vô chän vµo tay liÔu cïng th­îng mét c¸i nhiÖm vô gièng nhau ID#"); 
end; 

end; 


-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu hµm sè , thanh kh«ng mét chuyÖn mãn tÊt c¶ nhiÖm vô tr¹ng th¸i , bao gåm t¹m thêi thay ®æi l­îng 
function _ClearnTaskState(nEventID) 

local aryTask = EnumEventTask(nEventID); 

if aryTask==nil then return end; 

for i=1, getn(aryTask) do 
CDebug:MessageOut("§ang thanh kh«ng "..TaskName(aryTask[i]).." nhiÖm vô tr¹ng th¸i "); 
SetTaskStatus(TaskName(aryTask[i]), 0); 
CloseTask(TaskName(aryTask[i])); 
end; 

Say(strTitle.." ngµi ®· thanh kh«ng liÔu <color=yellow>"..TaskEvent(nEventID, 1, 1).."<color> h¹ ®İch tÊt c¶ ph©n chi nhiÖm vô ", 0); 

end; 



-- script viet hoa By http://tranhba.com  lÊy ®­îc mét c¸i nhiÖm vô cÇn thiÕt ®İch tÊt c¶ vËt phÈm 
function MenuGetTaskItem() 
AskClientForString("_GetTaskItem", "", 1, 20,"Xin/mêi ®­a vµo nhiÖm vô con sè biªn sè #"); 
end; 


-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu hµm sè # lÊy ®­îc mét c¸i nhiÖm vô cÇn thiÕt ®İch tÊt c¶ vËt phÈm 
function _GetTaskItem(taskID, nIndex) 

local taskName = TaskName(taskID); 

-- script viet hoa By http://tranhba.com  nÕu nh­ truyÒn vµo chİnh lµ ®Æc thï tù phï 9999 lêi cña lµ trùc tiÕp lÊy ngÉu nhiªn nhiÖm vô tr­íc mÆt ®İch 
if tonumber(taskID)==9999 then taskName=TaskName(GetTask(1301)); end; 

-- script viet hoa By http://tranhba.com  kiÓm tra nµy nhiÖm vô lµ t×m hoµng kim trang bŞ h·y t×m vËt phÈm b×nh th­êng 
local checkType = GetTaskCollectType(taskName); 

-- script viet hoa By http://tranhba.com  nhiÖm vô cÇn t×m kiÕm vËt phÈm liÖt biÓu 
local aryOrgCollect = {}; 

-- script viet hoa By http://tranhba.com  nhiÖm vô muèn ®İch vËt phÈm biªn sè 
local w_Genre, w_Detail, w_Particular, w_Level, w_GoodsFive, w_GoodsNum, w_DelGoods, w_Quality = 0,0,0,0,0,0,0,0; 

local i,j,k=0,0,0; 

-- script viet hoa By http://tranhba.com  lÊy ®­îc cÇn t×m kiÕm vËt phÈm liÖt biÓu 
if checkType>=1 then 
aryOrgCollect = GetTaskCollectRow(taskName); 
else 
Say("Nªn nhiÖm vô kh«ng cã thu tËp vËt phÈm ®İch néi dung #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ b¾t ®­îc lµ b×nh th­êng trang bŞ 
if checkType==1 then 

-- script viet hoa By http://tranhba.com  lÊy ®­îc truyÒn vµo tíi vËt phÈm liÖt biÓu 
for j, k in aryOrgCollect do 

-- script viet hoa By http://tranhba.com  dïng tù ®Şnh nghÜa ®İch chuyÓn ®æi con sè hµm sè tíi chuyÓn ®æi biÓu c¸ch dÆm con sè tiªu chİ 
w_Genre = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Genre_Row)); 
w_Detail = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Detail_Row)); 
w_Particular = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Particular_Row)); 
w_Level = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Level_Row)); 
w_GoodsFive = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsFive_Row)); 
w_GoodsNum = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsNum_Row)); 
w_DelGoods = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_DelGoods_Row)); 

if w_Level==-1 then w_Level=1; end; 
if w_GoodsFive==-1 then w_GoodsFive=0 end; 

for i=1, w_GoodsNum do 
AddItem(w_Genre, w_Detail, w_Particular, w_Level, w_GoodsFive, 0, 0); 
end; 

end; 

else 

-- script viet hoa By http://tranhba.com  lÊy ®­îc truyÒn vµo tíi vËt phÈm liÖt biÓu 
for j, k in aryOrgCollect do 

w_Quality = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Quality_Row)); 
w_GoodsNum = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsNum_Row)); 

for i=1, w_GoodsNum do 
AddGoldItem(0, w_Quality); 
end; 

end; 

end; 

end; 



-- script viet hoa By http://tranhba.com  ®em mét c¸i nhiÖm vô thiÕt trİ thµnh cßn ch­a b¾t ®Çu ®İch tr¹ng th¸i 
function MenuSetTaskClearn() 
AskClientForString("_SetTaskClearn", "", 1, 20,"Xin/mêi ®­a vµo nhiÖm vô con sè biªn sè #"); 
end; 


function _SetTaskClearn(taskID, nIndex) 

if TaskName(taskID)==0 or TaskName(taskID)==nil then 
Say(strTitle.." ng­¬i cã ph¶i hay kh«ng hå ®å ? nhiÖm vô nµy sè còng kh«ng tån t¹i nga #", 0); 
return 
end; 

SetTaskStatus(TaskName(taskID), 0); 
CloseTask(TaskName(taskID)); 

Say(strTitle.." ngµi ®· ®em <color=yellow>"..TaskName(taskID).."<color> biÕn thµnh cßn ch­a b¾t ®Çu ®İch tr¹ng th¸i . ", 0); 

end; 


-- script viet hoa By http://tranhba.com  ®em mét chuyÖn mãn trong tÊt c¶ nhiÖm vô còng thanh kh«ng 
function MenuSetEventClearn() 
AskClientForString("_SetEventClearn", "", 1, 20,"Xin/mêi ®­a vµo sù kiÖn con sè biªn sè #"); 
end; 


function _SetEventClearn(eventID, nIndex) 

local nEvent = GetEventTaskCount(eventID); 

if nEvent==0 then 
Say(strTitle.." ng­¬i cã ph¶i hay kh«ng hå ®å ? chuyÖn nµy mãn biªn sè còng kh«ng tån t¹i nga #", 0); 
return 
end; 

_ClearnTaskState(eventID); 
end; 


-- script viet hoa By http://tranhba.com  dïng tù phï chuçi bµy tá mét c¸i nhiÖm vô ®İch tr¹ng th¸i 
function GetTaskStatusText(nTaskID) 

local aryText = { 
[0]=" - <color=red> kh«ng b¾t ®Çu <color>", 
[1]=" - <color=green> ®ang tiÕn hµnh <color>", 
[2]=" - <color=yellow> ®· hoµn thµnh <color>", 
[3]=" - <color=yellow> ®· dÉn t­ëng <color>", 
} 

return aryText[GetTaskStatus(TaskName(nTaskID))]; 

end;
