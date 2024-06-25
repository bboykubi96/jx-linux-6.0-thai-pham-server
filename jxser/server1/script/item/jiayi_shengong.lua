
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online chuyÓn sinh nhiÖm vô b¾c ®Èu tr­êng sanh thuËt trô cét thiªn ®¹o cô 
-- script viet hoa By http://tranhba.com  FileName: jiayi_shengong.lua 
-- script viet hoa By http://tranhba.com  Edited: tö kh«ng ph¶i lµ c¸ 
-- script viet hoa By http://tranhba.com  2007-03-30 20:14:00 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\metempsychosis\\task_func.lua")

function main() 

if (check_zhuansheng_level() == 1) then 

if (GetTask(TSK_ZHUANSHENG_FLAG) == 0) then 
Msg2Player(format("§· häc ®­îc %s, cÇn häc %s míi cã thÓ c«ng thµnh danh to¹i .", "< b¾c ®Èu tr­êng sanh thuËt - trô cét thiªn >", "< b¾c ®Èu tr­êng sanh thuËt - t©m ph¸p thiªn >")); 
Say(format("§· häc ®­îc %s, nh­ng lµ , vâ c«ng nh­ cò cßn ch­a th¨ng cÊp , tho¹t nh×n n¬i nµy cßn cã bİ mËt kh«ng cã ph¸ gi¶i %s<color=yellow> %s<color> thö mæ mét c¸i tin tøc .", 
"< b¾c ®Èu tr­êng sanh thuËt - trô cét thiªn >","Tr¨ng s¸ng trÊn ","B¾c ®Èu l·o nh©n "), 0); 

SetTask(TSK_ZHUANSHENG_FLAG,1); 

WriteLog(format("[ sèng l¹i nhiÖm vô ]\t%s\tName:%s\tAccount:%s\t häc tËp cÊp bËc :%d, m«n ph¸i :%d", 
GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(), 
GetLevel(), GetLastFactionNumber())); 
return 0; 
else 
Msg2Player("§· häc < b¾c ®Èu tr­êng sanh thuËt - trô cét thiªn > liÔu , chØ cã thÓ l¹i häc < b¾c ®Èu tr­êng sanh thuËt - t©m ph¸p thiªn > lµ cã thÓ c«ng thµnh danh to¹i liÔu ."); 
return 1; 
end 

end 
return 1; 
end 
