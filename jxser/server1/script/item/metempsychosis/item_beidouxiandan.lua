-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam - b¾c ®Èu tiªn ®an 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##item_beidouxiandan.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-02-26 13:30:12 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\metempsychosis\\task_func.lua");	-- script viet hoa By http://tranhba.com  ×ªÉúÍ·ÎÄ¼þ
Include("\\script\\task\\task_addplayerexp.lua");			-- script viet hoa By http://tranhba.com  ¼Óµþ¼Ó¾­Ñé

function main(nItemIndex) 
local nphase = GetTask(TSK_ZHUANSHENG_XIANDAN); 

if (nphase == 1) then 
if (ST_IsTransLife() == 1) then 
local n_itemexp = GetItemParam(nItemIndex, 1); 
if (n_itemexp > 0 and n_itemexp <= 19900) then 
tl_addPlayerExp(n_itemexp*10000000); 

SetTask(TSK_ZHUANSHENG_XIANDAN, 2); 

Msg2Player(format("§¹t ®­îc %d ngµn v¹n kinh nghiÖm .", n_itemexp)); 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tUsed,LEVEL:%d,FACTION:%d,AddExp:%d0000000", 
" b¾c ®Èu tiªn ®an ", 
GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(), 
GetLevel(), GetLastFactionNumber(), n_itemexp)); 
else 
return 1; 
end 
else 
Say("Cßn ch­a sèng l¹i th× kh«ng thÓ sö dông b¾c ®Èu tiªn ®an .", 0); 
return 1; 
end 
else 
Say("Nªn b¾c ®Èu tiªn ®an kh«ng ph¶i lµ ®¹i hiÖp ®Ých , cho nªn kh«ng thÓ sö dông .", 0); 
return 1; 
end 
end 

function GetDesc(nItemIndex) 
local n_itemexp = GetItemParam(nItemIndex, 1); 
return format(" ë tiªn ®an trong cã #%d ngµn v¹n kinh nghiÖm .", n_itemexp); 
end 
