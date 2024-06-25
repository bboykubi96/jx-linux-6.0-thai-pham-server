
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online ngÉu nhiªn nhiÖm vô nhiÖm vô quyÓn trôc xóc ph¸t ch©n vèn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/01 PM 16:40 

-- script viet hoa By http://tranhba.com  chØ cã h¾n vµ nµng hai ng­êi 
-- script viet hoa By http://tranhba.com  bän hä yªu nhau 
-- script viet hoa By http://tranhba.com  nµng nhí 
-- script viet hoa By http://tranhba.com  tay cña h¾n vuèt ve ë da cña nµng th­îng ®İch «n t×nh 
-- script viet hoa By http://tranhba.com  h¾n h«n gièng nh­ ®iÓu bÇy ë trªn trêi xÑt qua 
-- script viet hoa By http://tranhba.com  h¾n ë th©n thÓ nµng bªn trong b¹o lÖ cïng phãng tóng 
-- script viet hoa By http://tranhba.com  h¾n ngñ thêi ®iÓm ®İch d¸ng vÎ trµn ®Çy thuÇn ch©n 
-- script viet hoa By http://tranhba.com  nµng nhí , s¸ng sím nµng tØnh l¹i ®İch mét kh¾c , h¾n ë bªn c¹nh nµng 
-- script viet hoa By http://tranhba.com  nµng trîn trßn m¾t , nh×n ¸nh r¹ng ®«ng xuyªn thÊu qua rÌm cöa sæ tõng ®iÓm tõng ®iÓm chiÕu vµo 
-- script viet hoa By http://tranhba.com  trong lßng cña nµng bëi v× h¹nh phóc mµ ®au ®ín 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng kho ñng hé 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  ®ång b¹n hÖ thèng ñng hé 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  häc vµo nhiÖm vô hÖ thèng ®Çu v¨n kiÖn , bao hµm ngÉu nhiªn nhiÖm vô 
Include("\\script\\task\\system\\task_main.lua");

strPublic = "<color=green> nhiÖm vô quyÓn trôc <color>#"; 

function main(nIndex) 

local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®İch index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 

local nTaskID = GetItemMagicLevel(nIndex, 1); 

local nNowTaskID = GetTask(ID_RANDOMBOOK); -- script viet hoa By http://tranhba.com  lÊy ®­îc tr­íc mÆt quyÓn trôc nhiÖm vô ID 

local nTaskState = 0; -- script viet hoa By http://tranhba.com  tr­íc mÆt quyÓn trôc nhiÖm vô tr¹ng th¸i 

if (GetProductRegion() == "cn") then 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng cho gäi ra ®ång b¹n 
if partnerindex==0 or partnerstate==0 then 
Msg2Player(strPublic.."<color=yellow> ng­¬i kh«ng cã cho gäi ®ång b¹n kh«ng c¸ch nµo häc lÊy quyÓn trôc néi dung bªn trong nga #<color>"); 
return 1; 
end; 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n mçi ngµy 8 lÇn h¹n chÕ cã hay kh«ng phï hîp 
if checkTaskBookEnable()~=1 then 
Msg2Player(strPublic.."<color=white> ng­¬i h«m nay qu¸ mÖt mái , cßn lµ chê ngµy mai n÷a më ra nhiÖm vô nµy ®i #<color>"); 
return 1; 
end; 


if nNowTaskID ~= 0 then 
nTaskState = GetTaskStatus(TaskName(GetTask(ID_RANDOMBOOK))); 
end; 

if nTaskState>0 and nTaskState<3 then 
Say("<color=green> nhiÖm vô quyÓn trôc <color># ngµi tr­íc mÆt cã cßn ch­a hoµn thµnh quyÓn trôc nhiÖm vô , ng­¬i nhÊt ®Şnh ph¶i tiÕp nhËn nhiÖm vô míi sao ? ", 
2, 
" ®óng vËy , ta muèn bu«ng tha cho tr­íc ®İch quyÓn trôc nhiÖm vô /#_confirmRandomBookTask("..nIndex..")", 
" kh«ng ®­îc , cßn lµ v©n v©n ®i /OnTaskExit"); 
return 1; 
else 

-- script viet hoa By http://tranhba.com  thanh kh«ng nhiÖm vô quyÓn trôc bªn trong ghi l¹i nhiÖm vô , nÕu kh«ng kh«ng thÓ dïng nhiÖm vô dÉn k×nh b¾t ®Çu 
SetTaskStatus(TaskName(nTaskID), 0); 
local nResult = CloseTask(TaskName(nTaskID)); 

-- script viet hoa By http://tranhba.com  tån tr÷ vËt phÈm INDEX ë nhiÖm vô thay ®æi l­îng trung 
SetTask(ID_RANDOMBOOKTEMP, nIndex) 

ApplyTask( TaskName(nTaskID) ); 

if nResult~=1 then 
WriteTaskLog("[ tr¹ng th¸i dŞ th­êng ] ë Task ID:"..nTaskID..", kh«ng thÓ chİnh x¸c t¾t ! Process v× : TaskBook Main()."); 
end; 

return 1; 
end; 

end; 


-- script viet hoa By http://tranhba.com  x¸c nhËn tiÕp nhËn quyÓn trôc nhiÖm vô 
function _confirmRandomBookTask(nIndex) 

local nTaskID = GetItemMagicLevel(nIndex, 1); 

-- script viet hoa By http://tranhba.com  thanh kh«ng tr­íc mÆt ®ang lµm quyÓn trôc nhiÖm vô 
SetTaskStatus(TaskName(GetTask(ID_RANDOMBOOK)), 0); 
CloseTask(TaskName(GetTask(ID_RANDOMBOOK))); 

-- script viet hoa By http://tranhba.com  thanh kh«ng nhiÖm vô quyÓn trôc bªn trong ghi l¹i nhiÖm vô , nÕu kh«ng kh«ng thÓ dïng nhiÖm vô dÉn k×nh b¾t ®Çu 
SetTaskStatus(TaskName(nTaskID), 0); 
local nResult = CloseTask(TaskName(nTaskID)); 

-- script viet hoa By http://tranhba.com  tån tr÷ vËt phÈm INDEX ë nhiÖm vô thay ®æi l­îng trung 
SetTask(ID_RANDOMBOOKTEMP, nIndex) 

ApplyTask( TaskName(nTaskID) ); 

if nResult~=1 then 
WriteTaskLog("[ tr¹ng th¸i dŞ th­êng ] ë Task ID:"..nTaskID..", kh«ng thÓ chİnh x¸c t¾t ! Process v× : _confirmRandomBookTask, bá vµo tham sæ v× :"..nIndex); 
end; 

return 

end;
