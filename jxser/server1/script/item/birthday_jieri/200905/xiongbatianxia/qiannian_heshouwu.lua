-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam b¶n - ngµn n¨m hµ thñ « 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##qiannian_heshouwu.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-05-21 12:17:35 
-- script viet hoa By http://tranhba.com  chuyÓn sinh sau vai trß sö dông , th«ng qua vËt nµy phÈm nhiÒu nhÊt ®¹t ®­îc 25 ®iÓm tiÒm n¨ng ®iÓm 

-- script viet hoa By http://tranhba.com  ====================================================== 

IncludeLib("SETTING"); 

TSK_QIANNIAN_HESHOUWU_PROP = 2597; 

function main() 
if (GetTask(TSK_QIANNIAN_HESHOUWU_PROP) >= 25) then 
Msg2Player("Nªn vËt phÈm kh«ng thÓ th¨ng cÊp ®¹i hiÖp ®Ých c«ng lùc ."); 
return 1; 
end 

if (ST_IsTransLife() ~= 1) then 
Msg2Player("§¹i hiÖp kh«ng thÓ ®¹t ®­îc bÊt kú hiÖu qu¶ nµo ."); 
return 1; 
end 

local tb_prop = { 
{pot=3,msg=" mét chót "}, 
{pot=4,msg=" kh«ng cam kÕt "}, 
{pot=5,msg=" mét Ýt "}, 
{pot=6,msg=" kh«ng Ýt "}, 
{pot=7,msg=" h¬i nhiÒu "}, 
}; 

local n_rand = random(1,5); 
local n_prop = tb_prop[n_rand].pot 
	if (n_prop + GetTask(TSK_QIANNIAN_HESHOUWU_PROP) > 25) then
n_prop = 25 - GetTask(TSK_QIANNIAN_HESHOUWU_PROP); 
end 

AddProp(n_prop); 

	SetTask(TSK_QIANNIAN_HESHOUWU_PROP,GetTask(TSK_QIANNIAN_HESHOUWU_PROP)+ n_prop);

Msg2Player(format("Sö dông sau cã thÓ ®¹t ®­îc %s hiÖu qu¶ ",tostring(n_prop))); 
end 
