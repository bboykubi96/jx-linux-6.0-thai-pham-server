-- script viet hoa By http://tranhba.com  2007 n¨m n¨m míi h¹ t¹p 
-- script viet hoa By http://tranhba.com  céng 4 tê 

Include("\\script\\lib\\string.lua")

-- script viet hoa By http://tranhba.com <playerbless> -- script viet hoa By http://tranhba.com  [ thu t¹p ng­êi tªn ] 
-- script viet hoa By http://tranhba.com <name> -- script viet hoa By http://tranhba.com  [ ph¸t t¹p ng­êi tªn ] 
tbMessage={ 
["6,1,1346"] = " chóc <color=red><playerbless><color> míi mét n¨m an khang h­ng v­îng .<color=red><name><color>", 
["6,1,1347"] = " chóc <color=red><playerbless><color> n¨m míi mäi sù nh­ ý , lµm ¨n ph¸t ®¹t .<color=red><name><color>", 
["6,1,1348"] = " chóc <color=red><playerbless><color> n¨m míi vµo tµi vµo léc , mäi sù h­ng th«ng .<color=red><name><color>", 
["6,1,1349"] = " chóc <color=red><playerbless><color> an khang h­ng v­îng , gia ®×nh kháe m¹nh , lµm ¨n ph¸t ®¹t .<color=red><name><color>", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

function main(sel) 

if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ngµi ®ang ph¸t chóc phóc ng÷ , xin chê mét chót mét c¸i !"); 
return 1; 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 
SetTaskTemp(ITEM_TASK_TEMP,sel); 

Say("Ngµi muèn ë ngµy lÔ chi tÕ cho th©n h÷u ph¸t ®Ñp nhÊt tèt chóc phóc sao ", 2,"Muèn /sendWish","T¹m thêi kh«ng cÇn /wishCancel"); 
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
Msg2Player("Ngµi muèn chóc phóc ng­êi cña b©y giê kh«ng cã ë ®©y tuyÕn , chê chót mét lÇn thö l¹i !."); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function wishCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
