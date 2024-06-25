-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n mét trÊn ph¸i linh ®an 
-- script viet hoa By http://tranhba.com  ¨n vµo sau cã thÓ t¨ng lªn # ®iÓm kü n¨ng ®iÓm 
-- script viet hoa By http://tranhba.com  cïng trÊn ph¸i linh d­îc céng dïng thay ®æi l­îng , thø nhÊt Byte ghi chÐp linh ®an sö dông sè lÇn , thø hai Byte ghi chÐp linh d­îc sö dông sè lÇn 

-- script viet hoa By http://tranhba.com  Edited by tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  2008/03/03 23:29 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\lib\\gb_modulefuncs.lua")


TSK_ZHENPAILINGDAN_USECNT = 1882; 
TSK_TOUSHI_FLAG = 5928 -- script viet hoa By http://tranhba.com  “ mang nghÖ ®Çu s­ ” thèi lui ra m«n ph¸i dÊu hiÖu 
-- script viet hoa By http://tranhba.com  0# kh«ng th©n thØnh chuyÓn ®Çu m«n ph¸i hoÆc chuyÓn ®Çu m«n ph¸i thµnh c«ng # cïng chuyÓn chøc sè lÇn cïng nhau quyÕt ®Þnh ##1# thµnh c«ng th©n thØnh chuyÓn ®Çu m«n ph¸i # 
TSK_TOUSHI_COUNT = 1883 -- script viet hoa By http://tranhba.com  “ mang nghÖ ®Çu s­ ” chuyÓn chøc ®Ých sè lÇn 

function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  if (gb_GetModule("SWITH_DAIYITOUSHI") ~= 1) then 
-- script viet hoa By http://tranhba.com  Say("ThËt xin lçi , nªn chøc n¨ng t¹m thêi bÞ nhèt , më ra thêi gian sÏ ë chê mét chót th«ng b¸o ", 0); 
-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end 

local nValue = GetTask(TSK_ZHENPAILINGDAN_USECNT); 
local nTimes = GetByte(nValue, 1); 
local str={ 
" nghiªn cøu mét håi trÊn ph¸i linh ®an cßn ch­a ph¶i sÏ sö dông ( kh«ng chuyÓn m«n ph¸i kh«ng thÓ sö dông )", 
" míi võa uèng xong trÊn ph¸i linh ®an c¶m gi¸c mét cæ søc sèng t¹i th©n thÓ l­u ®éng ( gia t¨ng 1 c¸ kü n¨ng ®iÓm )", 
" tay cÇm trÊn ph¸i linh ®an ph¸t hiÖn nã kh«ng cã c«ng hiÖu liÔu ( ®· sö dông ®Õn cao nhÊt th­îng h¹n liÔu )" 
} 
if(nTimes >= 15) then -- script viet hoa By http://tranhba.com  sö dông sè lÇn ®· ®¹t tíi th­îng h¹n 
Msg2Player(str[3]) 
return 1; 
-- elseif (GetTask(TSK_TOUSHI_FLAG) == 0 and GetTask(TSK_TOUSHI_COUNT) <= 0) then -- script viet hoa By http://tranhba.com  chuyÓn ®Çu m«n ph¸i thµnh c«ng míi cã thÓ sö dông 
-- Msg2Player(str[1]) 
-- return 1; 
else -- script viet hoa By http://tranhba.com  t­ëng th­ëng 1 ®iÓm kü n¨ng ®iÓm 
AddMagicPoint(1); 
		SetTask(TSK_ZHENPAILINGDAN_USECNT, SetByte(nValue, 1, nTimes + 1));
Msg2Player(str[2]); 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tAdd MagicPoint 1 by ZhenPaiLingDan", 
" trÊn ph¸i linh ®an ", 
GetLocalDate("%Y-%m-%d %X"), 
GetName(), GetAccount())); 
return 0; 
end 
end 
