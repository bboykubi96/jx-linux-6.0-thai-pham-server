-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n mét trÊn ph¸i linh d­îc 
-- script viet hoa By http://tranhba.com  ¨n vµo sau cã thÓ t¨ng lªn 5 ®iÓm tiÒm n¨ng ®iÓm 
-- script viet hoa By http://tranhba.com  cïng trÊn ph¸i linh d­îc céng dïng thay ®æi l­îng , thø nhÊt Byte ghi chÐp linh ®an sö dông sè lÇn , thø hai Byte ghi chÐp linh d­îc sö dông sè lÇn 

-- script viet hoa By http://tranhba.com  Edited by tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  2008/03/03 23:29 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\lib\\gb_modulefuncs.lua")


TSK_ZHENPAILINGDAN_USECNT = 1882; 
TSK_TOUSHI_FLAG = 1881 -- script viet hoa By http://tranhba.com  “ mang nghÖ ®Çu s­ ” thèi lui ra m«n ph¸i dÊu hiÖu 
-- script viet hoa By http://tranhba.com  0# kh«ng th©n thØnh chuyÓn ®Çu m«n ph¸i hoÆc chuyÓn ®Çu m«n ph¸i thµnh c«ng # cïng chuyÓn chøc sè lÇn cïng nhau quyÕt ®Þnh ##1# thµnh c«ng th©n thØnh chuyÓn ®Çu m«n ph¸i # 
TSK_TOUSHI_COUNT = 1883 -- script viet hoa By http://tranhba.com  “ mang nghÖ ®Çu s­ ” chuyÓn chøc ®Ých sè lÇn 

function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  if (gb_GetModule("SWITH_DAIYITOUSHI") ~= 1) then 
-- script viet hoa By http://tranhba.com  Say("ThËt xin lçi , nªn chøc n¨ng t¹m thêi bÞ nhèt , më ra thêi gian sÏ ë chê mét chót th«ng b¸o ", 0); 
-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end 

local nValue = GetTask(TSK_ZHENPAILINGDAN_USECNT); 
local nTimes = GetByte(nValue, 2); 

local str ={ 
" nghiªn cøu mét håi trÊn ph¸i linh d­îc cßn ch­a ph¶i sÏ sö dông ( kh«ng chuyÓn m«n ph¸i kh«ng thÓ sö dông )", 
" trÊn ph¸i linh d­îc míi võa ¨n vµo , ®an ®iÒn lËp tøc liÒn sinh ra mét cæ nhiÖt khÝ l­u h­íng kú kinh b¸t m¹ch ( gia t¨ng 5 c¸ tiÒm n¨ng ®iÓm )", 
" tay cÇm trÊn ph¸i linh d­îc ph¸t hiÖn nã kh«ng cã c«ng hiÖu liÔu ( ®· sö dông ®Õn cao nhÊt th­îng h¹n liÔu )" 
} 

if(nTimes >= 15) then -- script viet hoa By http://tranhba.com  sö dông v­ît qua sè lÇn 
Msg2Player(str[3]) 
return 1; 
-- elseif (GetTask(TSK_TOUSHI_FLAG) == 0 and GetTask(TSK_TOUSHI_COUNT) <= 0) then -- script viet hoa By http://tranhba.com  chuyÓn ®Çu m«n ph¸i thµnh c«ng míi cã thÓ sö dông 
-- Msg2Player(str[1]) 
-- return 1; 
else -- script viet hoa By http://tranhba.com  t­ëng th­ëng 5 ®iÓm tiÒm n¨ng ®iÓm 
AddProp(5); 
		SetTask(TSK_ZHENPAILINGDAN_USECNT, SetByte(nValue, 2, nTimes + 1));
Msg2Player(str[2]); 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tAdd Prop 5 by ZhenPaiLingYao", 
" trÊn ph¸i linh d­îc ", 
GetLocalDate("%Y-%m-%d %X"), 
GetName(), GetAccount())); 
return 0; 
end 
end 
