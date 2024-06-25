-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  chóc phóc t¹p 
-- script viet hoa By http://tranhba.com  tæng céng cã s¸u tê chóc phóc t¹p , mçi tê ®Ých chóc phóc ng÷ ®Òu kh«ng cïng . 

Include("\\script\\lib\\string.lua")

-- script viet hoa By http://tranhba.com <playerbless> -- script viet hoa By http://tranhba.com  [ thu t¹p ng­êi tªn ] 
-- script viet hoa By http://tranhba.com <name> -- script viet hoa By http://tranhba.com  [ ph¸t t¹p ng­êi tªn ] 
tbMessage={ 
["6,1,1328"] = "Chóc <color=red><playerbless><color> mét Gi¸ng Sinh vµ N¨m míi vui vÎ.  <color=red><name><color>", 
["6,1,1329"] = "<color=red><playerbless><color> th©n yªu, chóc nµng mét Gi¸ng Sinh vui vÎ. <color=red><name><color>", 
["6,1,1330"] = "<color=red><playerbless><color> th©n yªu, chóc chµng mét Gi¸ng Sinh vui vÎ. <color=red><name><color>", 
["6,1,1331"] = "Víi tÊt c¶ tÊm lßng, ta xin chóc cho <color=red><playerbless><color> mét Gi¸ng Sinh vui vÎ. <color=red><name><color>", 
["6,1,1332"] = "Víi tÊt c¶ tÊm lßng, ta xin chóc cho <color=red><playerbless><color> mét N¨m míi vui vÎ vµ h¹nh phóc <color=red><name><color>", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

function main(sel) 

if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ngµi tr­íc m¾t ®ang ph¸t chóc phóc ng÷ , xin chê mét chót !"); 
return 1; 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 
SetTaskTemp(ITEM_TASK_TEMP,sel); 

Say("Ng­¬i nghÜ göi gi¸ng sinh t¹p cho b»ng h÷u sao ?", 2,"Muèn /sendWish","T¹m thêi kh«ng cÇn /wishCancel"); 
return 1; 
end 

function sendWish() 
QueryWiseMan("BlessPlayerOnline", "BlessPlayerOffline", 1); 
end 

function BlessPlayerOnline(TargetName, nSelect, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
local ItemIdx = GetTaskTemp(ITEM_TASK_TEMP); 
local ItemGenre 
local DetailType 
local ParticularType 

ItemGenre,DetailType,ParticularType = GetItemProp(ItemIdx) 
local szItemkey = ItemGenre..","..DetailType..","..ParticularType; 
if (ItemIdx > 0 and tbMessage[szItemkey] ~= nil) then 
if (RemoveItemByIndex(ItemIdx) == 1) then 
local szMsg 
szMsg = replace(tbMessage[szItemkey],"<playerbless>",TargetName); 
szMsg = replace(szMsg,"<name>",GetName()); 
AddGlobalCountNews(szMsg,1); 
else 
Msg2Player("Kh«ng t×m ®­îc t¹p , xin/mêi thö mét lÇn n÷a !.") 
end 
else 
Msg2Player("Sö dông t¹p thÊt b¹i , xin/mêi thö mét lÇn n÷a .") 
end 
SetTaskTemp(ITEM_TASK_TEMP,0) 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function BlessPlayerOffline(TargetName, nP) 
Msg2Player("Ngµi muèn chóc phóc ng­êi b©y giê kh«ng cã trùc tuyÕn , chê mét chót thö l¹i !."); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function wishCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
