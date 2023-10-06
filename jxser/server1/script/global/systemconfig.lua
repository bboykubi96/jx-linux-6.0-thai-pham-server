
-- SYSTEM CONFIG 
SERVER_MODE  = "TEST";--OPEN | TEST
SERVER_OPEN_DATE = "20231007";--Y m d
SERVER_OPEN_HOUR = "2030";--H M
--------------------------------------
DEF_PRODUCT_REGION_CN		= 0;	
DEF_PRODUCT_REGION_CN_IB	= 1;
DEF_PRODUCT_REGION_TW		= 2;
DEF_PRODUCT_REGION_MY		= 3;
DEF_PRODUCT_REGION_VN		= 4;

SYSCFG_PRODUCT_REGION_NAME, SYSCFG_PRODUCT_REGION_ID = GetProductRegion();

----------------------------------------
SYSCFG_GAMEBANK_GOLDSILVER_OPEN = 1;

SYSCFG_GAMEBANK_GOLD_GET 		= 1;
SYSCFG_GAMEBANK_GOLD_PAY 		= 1; 
SYSCFG_GAMEBANK_GOLD_COIN 		= 1; 
SYSCFG_GAMEBANK_GOLD_USE 		= 1; 

SYSCFG_GAMEBANK_SILVER_GET 	= 1; 
SYSCFG_GAMEBANK_SILVER_PAY 	= 1;
SYSCFG_GAMEBANK_SILVER_COIN = 1; 
SYSCFG_GAMEBANK_SILVER_USE 	= 1; 

SYSCFG_GAMEBANK_TICKET_OPEN = 1; 
SYSCFG_GAMEBANK_TICKET_GET 	= 1; 
SYSCFG_GAMEBANK_TICKET_PAY 	= 1; 
SYSCFG_GAMEBANK_TICKET_COIN = 1; 
SYSCFG_GAMEBANK_TICKET_USE 	= 1; 
---------------------------------------------------------------

SYSCFG_EXTPOINTID7_LOGINMSG	= 1;	

SYSCFG_SHOP_OPEN            = 1;

SYSCFG_TAOHUAISLAND_OPEN    = 1;

SYSCFG_AWARDPERDAY_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_AWARDPERDAY_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------

SYSCFG_PAYMONTHAWARD_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_PAYMONTHAWARD_OPEN = 1;
end
---------------------------------------------------------------

SYSCFG_PARTNER_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_PARTNER_OPEN = 1;
end
---------------------------------------------------------------

SYSCFG_NEWTONG_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN_IB or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_NEWTONG_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------
function IncludeForRegionVer(strPath, strLuaFileName)
	
	local strFullName = strPath;
		
	if(SYSCFG_PRODUCT_REGION_NAME == nil) then	
		print("region_version error!!!\n");
		return
	end
	
	strFullName = strFullName..SYSCFG_PRODUCT_REGION_NAME.."\\"..strLuaFileName;
	print(strFullName);	
	Include(strFullName);
end

function IsVip()
	if (GetAccLeftTime() > 0) then 
		return 1;
	end
	return 0
end;

function IsServerOpen()
	local nDate = tonumber(date("%Y%m%d"));--20231007
	local nTime = tonumber(GetLocalDate("%H%M"));--2030
	
	if (SERVER_MODE =="OPEN" && nDate >= SERVER_OPEN_DATE and nTime >= SERVER_OPEN_HOUR ) then		
		print("Check IsOpen: Open nDate= " .. nDate .. "nTime: "..nTime);
		return 1;		
	else
		print("Check IsOpen: Test nDate= " .. nDate .. "nTime: "..nTime);
		return 0;
	end
end