Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  t� m�u ��i 

DAY_SECOND_SUM = 60 * 60 * 24; 
WEEK_SECOND_SUM = DAY_SECOND_SUM * 7; 

TASKID_ZMD_EXPIRE_TIME = 2558; -- script viet hoa By http://tranhba.com  t� m�u ��i h�u hi�u nh�t k� nhi�m v� thay ��i l��ng 


function main(nItemIdx) 
local szMsg = "<#> ng�i ��ch t� m�u ��i h�u hi�u s� d�ng k� l� #<color=yellow>"..zmd_get_expire_date().."<color>"; 
Say(szMsg, 2,"Gia t�ng t� m�u ��i th�i gian s� d�ng m�t tu�n /#recharge("..nItemIdx..")","H�y b� /cancel"); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  t� m�u ��i sung tr� gi� 
function recharge(nItemIdx) 
if (RemoveItemByIndex(nItemIdx) ~= 1) then 
return 
end 
zmd_add_expire_date(1); 
if (GetPartnerBagLevel() ~= 10) then 
SetPartnerBagLevel(10); 
end 
Say("<#> sung tr� gi� th�nh c�ng , ng�i ��ch t� m�u ��i h�u hi�u s� d�ng k� l� #<color=yellow>"..zmd_get_expire_date().."<color>", 0); 
end 

-- script viet hoa By http://tranhba.com  t� m�u ��i ��nh l�c ki�m tra 
function zmd_check_expire_timer() 
local nExpireState = zmd_check_expire(); 
if (nExpireState == 2) then 
if (GetPartnerBagLevel() ~= 0) then 
SetPartnerBagLevel(0); 
Msg2Player("Ng��i t� m�u ��i �� qua k� li�u "); 
end 
elseif (nExpireState == 1) then 
if (random(1, 3) == 1) then 
Msg2Player("Ng��i t� m�u ��i 1 ng�y b�n trong �em qu� h�n nh�c nh� "); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  gia t�ng t� m�u ��i h�u hi�u nh�t k� # ��n v� v� chu # 
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

-- script viet hoa By http://tranhba.com  ki�m tra t� m�u ��i c� hay kh�ng �� qua h�u hi�u nh�t k� 
function zmd_check_expire() 
local nNowTime = GetCurServerTime(); 
local nNowFmtDate = tonumber(FormatTime2String("%Y%m%d", nNowTime)); 
local nExpireTime = GetTask(TASKID_ZMD_EXPIRE_TIME); 
local nExpireFmtDate = tonumber(FormatTime2String("%Y%m%d", nExpireTime)); 
if (nNowFmtDate >= nExpireFmtDate) then 
return 2; -- script viet hoa By http://tranhba.com  �� qua k� 
else 
local nRemindTime = nExpireTime - DAY_SECOND_SUM * 1; -- script viet hoa By http://tranhba.com  1 ng�y b�n trong �� k� s�p qu� h�n 
local nRemindFmtDate = tonumber(FormatTime2String("%Y%m%d", nRemindTime)); 
if (nNowFmtDate >= nRemindFmtDate) then 
return 1; -- script viet hoa By http://tranhba.com  s�p qu� h�n 
else 
return 0; -- script viet hoa By http://tranhba.com  b�nh th��ng 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�y ���c t� m�u ��i h�u hi�u nh�t k� 
function zmd_get_expire_date() 
local nExpireTime = GetTask(TASKID_ZMD_EXPIRE_TIME); 
if (nExpireTime ~= 0) then 
return FormatTime2String("%Y-%m-%d", nExpireTime - DAY_SECOND_SUM); 
else 
return " kh�ng m� ra "; 
end 
end 

function cancel() 
end 

if (GetProductRegion() == "cn_ib") then 
login_add(zmd_check_expire_timer, 2) 
end 
