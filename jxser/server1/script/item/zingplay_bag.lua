-- script viet hoa By http://tranhba.com  ch¬i ZingPlay ®¹t ®­îc phÇn th­ëng 
-- script viet hoa By http://tranhba.com  ZingPlay bao tiÒn l× x× 

-- script viet hoa By http://tranhba.com  COMMON th­êng l­îng -- script viet hoa By http://tranhba.com  
ZingPlay_Start_Date = 20081018; -- script viet hoa By http://tranhba.com  ho¹t ®éng lóc ®Çu thêi gian 
ZingPlay_End_Date = 20081107; -- script viet hoa By http://tranhba.com  bao tiÒn l× x× sö dông h¹n kú 


-- script viet hoa By http://tranhba.com  TSK nhiÖm vô thay ®æi l­îng -- script viet hoa By http://tranhba.com  
TSK_ZINGPLAY_VERSION = 2563; -- script viet hoa By http://tranhba.com  ghi chÐp ho¹t ®éng lóc ®Çu thêi gian 
TSK_ZINGPLAY_MAXEXP = 2564; -- script viet hoa By http://tranhba.com  ghi chÐp ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 

function main() 
local n_date = tonumber(GetLocalDate("%Y%m%d")); 


local n_cur_date = GetTask(TSK_ZINGPLAY_VERSION); 

if (n_cur_date ~= ZingPlay_Start_Date) then 
SetTask(TSK_ZINGPLAY_VERSION, ZingPlay_Start_Date); 
SetTask(TSK_ZINGPLAY_MAXEXP, 0); 
end 

local n_max_exp = 200000000; 
local n_one_exp = 20000000; 


if (n_date >= ZingPlay_Start_Date and n_date <= ZingPlay_End_Date) then 
local n_cur_exp = GetTask(TSK_ZINGPLAY_MAXEXP); 

if (n_cur_exp >= n_max_exp) then 
Say(format("§¹i hiÖp tõ zingplay ®¹t ®­îc trung ®· ®¹t ®­îc %d kinh nghiÖm , cho nªn , kh«ng thÓ tiÕp tôc sö dông zingplay hång bao .", n_max_exp), 0); 
return 1; 
end 

		SetTask(TSK_ZINGPLAY_MAXEXP, n_cur_exp + n_one_exp);
AddOwnExp(n_one_exp); 

local sz_msg = format("Sö dông zingplay bao tiÒn l× x× ®¹t ®­îc %d kinh nghiÖm ", n_one_exp); 

Msg2Player(sz_msg); 

WriteLog(format("%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%X"), 
GetName(), 
GetAccount(), 
sz_msg )); 
else 

Say("Ho¹t ®éng ®· kÕt thóc , kh«ng thÓ sö dông nªn vËt phÈm liÔu ."); 
return 0; 
end 
end 
