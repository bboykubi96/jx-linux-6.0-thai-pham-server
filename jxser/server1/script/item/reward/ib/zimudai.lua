Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  tö mÉu ®¹i 

DAY_SECOND_SUM = 60 * 60 * 24; 
WEEK_SECOND_SUM = DAY_SECOND_SUM * 7; 

TASKID_ZMD_EXPIRE_TIME = 2558; -- script viet hoa By http://tranhba.com  tö mÉu ®¹i h÷u hiÖu nhËt kú nhiÖm vô thay ®æi l­îng 


function main(nItemIdx) 
local szMsg = "<#> ngµi ®Ých tö mÉu ®¹i h÷u hiÖu sö dông kú lµ #<color=yellow>"..zmd_get_expire_date().."<color>"; 
Say(szMsg, 2,"Gia t¨ng tö mÉu ®¹i thêi gian sö dông mét tuÇn /#recharge("..nItemIdx..")","Hñy bá /cancel"); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  tö mÉu ®¹i sung trÞ gi¸ 
function recharge(nItemIdx) 
if (RemoveItemByIndex(nItemIdx) ~= 1) then 
return 
end 
zmd_add_expire_date(1); 
if (GetPartnerBagLevel() ~= 10) then 
SetPartnerBagLevel(10); 
end 
Say("<#> sung trÞ gi¸ thµnh c«ng , ngµi ®Ých tö mÉu ®¹i h÷u hiÖu sö dông kú lµ #<color=yellow>"..zmd_get_expire_date().."<color>", 0); 
end 

-- script viet hoa By http://tranhba.com  tö mÉu ®¹i ®Þnh lóc kiÓm tra 
function zmd_check_expire_timer() 
local nExpireState = zmd_check_expire(); 
if (nExpireState == 2) then 
if (GetPartnerBagLevel() ~= 0) then 
SetPartnerBagLevel(0); 
Msg2Player("Ng­¬i tö mÉu ®¹i ®· qua kú liÔu "); 
end 
elseif (nExpireState == 1) then 
if (random(1, 3) == 1) then 
Msg2Player("Ng­¬i tö mÉu ®¹i 1 ngµy bªn trong ®em qu¸ h¹n nh¾c nhë "); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng tö mÉu ®¹i h÷u hiÖu nhËt kú # ®¬n vÞ v× chu # 
function zmd_add_expire_date(nRechargeWeek) 
local nExpireTime = GetTask(TASKID_ZMD_EXPIRE_TIME); 
local nExpireFmtDate = tonumber(FormatTime2String("%Y%m%d", nExpireTime)); 
local nNowTime = GetCurServerTime(); 
local nNowFmtDate = tonumber(FormatTime2String("%Y%m%d", nNowTime)); 
if (nExpireFmtDate < nNowFmtDate) then 
		nExpireTime = nNowTime + nRechargeWeek * WEEK_SECOND_SUM;
else 
		nExpireTime = nExpireTime + nRechargeWeek * WEEK_SECOND_SUM;
end 
SetTask(TASKID_ZMD_EXPIRE_TIME, nExpireTime); 
return FormatTime2String("%Y-%m-%d", nExpireTime); 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra tö mÉu ®¹i cã hay kh«ng ®· qua h÷u hiÖu nhËt kú 
function zmd_check_expire() 
local nNowTime = GetCurServerTime(); 
local nNowFmtDate = tonumber(FormatTime2String("%Y%m%d", nNowTime)); 
local nExpireTime = GetTask(TASKID_ZMD_EXPIRE_TIME); 
local nExpireFmtDate = tonumber(FormatTime2String("%Y%m%d", nExpireTime)); 
if (nNowFmtDate >= nExpireFmtDate) then 
return 2; -- script viet hoa By http://tranhba.com  ®· qua kú 
else 
local nRemindTime = nExpireTime - DAY_SECOND_SUM * 1; -- script viet hoa By http://tranhba.com  1 ngµy bªn trong ®Ò kú s¾p qu¸ h¹n 
local nRemindFmtDate = tonumber(FormatTime2String("%Y%m%d", nRemindTime)); 
if (nNowFmtDate >= nRemindFmtDate) then 
return 1; -- script viet hoa By http://tranhba.com  s¾p qu¸ h¹n 
else 
return 0; -- script viet hoa By http://tranhba.com  b×nh th­êng 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc tö mÉu ®¹i h÷u hiÖu nhËt kú 
function zmd_get_expire_date() 
local nExpireTime = GetTask(TASKID_ZMD_EXPIRE_TIME); 
if (nExpireTime ~= 0) then 
return FormatTime2String("%Y-%m-%d", nExpireTime - DAY_SECOND_SUM); 
else 
return " kh«ng më ra "; 
end 
end 

function cancel() 
end 

if (GetProductRegion() == "cn_ib") then 
login_add(zmd_check_expire_timer, 2) 
end 
